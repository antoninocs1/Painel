unit UFerramentas;

{----------------------------------------------------------------------------}
{ Ferramentas do sistema usadas pelo Painel:
  - Lixeira: tamanho e esvaziamento;
  - espaço livre em disco;
  - servidores de rede (gateway, DHCP, DNS) e teste de conectividade (ping);
  - programas que iniciam com o Windows (ativar/desativar como o
    Gerenciador de Tarefas, sem apagar nada);
  - processos em execução (memória, caminho, finalizar);
  - histórico (gráfico) do uso de CPU e memória;
  - bloquear o computador e desligar o monitor;
  - temperatura da CPU (WMI, lida em segundo plano);
  - verificação de nova versão do Painel no GitHub;
  - atalho de teclado global e leitura da área de transferência.                                                          }
{----------------------------------------------------------------------------}

interface

uses
  Windows, SysUtils, Classes;

type
  { PERFORMANCE_INFORMATION (psapi.h) }
  TPerfInfo = record
    cb: DWORD;
    CommitTotal, CommitLimit, CommitPeak, PhysicalTotal, PhysicalAvailable,
    SystemCache, KernelTotal, KernelPaged, KernelNonpaged, PageSize: NativeUInt;
    HandleCount, ProcessCount, ThreadCount: DWORD;
  end;
  { PROCESS_MEMORY_COUNTERS (psapi.h) }
  TProcMemCounters = record
    cb, PageFaultCount: DWORD;
    PeakWorkingSetSize, WorkingSetSize, QuotaPeakPagedPoolUsage,
    QuotaPagedPoolUsage, QuotaPeakNonPagedPoolUsage, QuotaNonPagedPoolUsage,
    PagefileUsage, PeakPagefileUsage: NativeUInt;
  end;

function PsGetPerformanceInfo(var Info: TPerfInfo; cb: DWORD): BOOL; stdcall;
  external 'psapi.dll' name 'GetPerformanceInfo';
function PsGetProcessMemoryInfo(Process: THandle; var Counters: TProcMemCounters;
  cb: DWORD): BOOL; stdcall; external 'psapi.dll' name 'GetProcessMemoryInfo';
function ShIsUserAnAdmin: BOOL; stdcall; external 'shell32.dll' name 'IsUserAnAdmin';

function FmtValue(Opt: Byte; N: Int64): string;
function FmtPct(Parte, Total: UInt64): string;
function AbrirArquivo(const Arquivo: string; const Params: string = '';
  Wnd: HWND = 0): Boolean;
function InfoLixeira(out Bytes, Itens: Int64): Boolean;
function EsvaziaLixeira: Boolean;
function EspacoDisco(const Drive: string; out Livre, Total: Int64): Boolean;
procedure ServidoresRede(Gateways, Dhcp, Dns: TStrings);
function PingHost(const Host: string; out IP: string; out Ms: Cardinal;
  Timeout: DWORD = 1000): Boolean;
procedure TestaRede(L: TStrings);
procedure ProgramasInicializacao;
procedure GerenciadorProcessos;
function ProcessoMaiorMemoria(out Nome: string; out Bytes: Int64): Boolean;
procedure RegistraUso(CpuPct, MemPct: Integer);
procedure MostraHistorico(Limite1, Limite2: Integer);
procedure BloquearComputador;
procedure DesligarMonitor;
procedure IniciaTemperatura;
procedure FinalizaTemperatura;
function TemperaturaCPU(out Graus: Double; out Fonte: string): Boolean;

const
  UrlReleases = 'https://github.com/antoninocs1/Painel/releases/latest';

type
  { Resultado da consulta ao GitHub: Versao = tag da última versão publicada
    (ex.: 'v1.83o'), Url = página para baixar, Erro <> '' se falhou }
  TRetornoVersao = reference to procedure(const Versao, Url, Erro: string);

procedure ConsultaUltimaVersao(Retorno: TRetornoVersao);
function VersaoMaisNova(const Remota, Local: string): Boolean;

const
  AtalhoPadrao = 'Win+Alt+P';
function TextoParaAtalho(const Texto: string; out Modificadores, Tecla: Cardinal): Boolean;
function LeTextoClipboard(Wnd: HWND; out Texto: string): Boolean;

implementation

uses
  Messages, Forms, Controls, Graphics, StdCtrls, ComCtrls, ExtCtrls, Dialogs,
  ShlObj, ShellAPI, Registry, TlHelp32, WinSock, IpTypes, IpHlpApi,
  ActiveX, ComObj, Variants, SyncObjs, System.JSON, System.Net.URLClient,
  System.Net.HttpClient;

{ Dimensões ajustadas ao DPI da tela (janelas criadas por código) }
function Px(V: Integer): Integer;
begin
  Result:= MulDiv(V, Screen.PixelsPerInch, 96);
end;

{----------------------------------------------------------------------------}
{-------------------Formatação-----------------------------------------------}
{ Tamanho com unidade: Opt=0 em base 1000, Opt=1 em base 1024.
  Ex.: FmtValue(1, 1536) = '1,50Kb' }
function FmtValue(Opt: Byte; N: Int64): string;
const Unidades: array[0..6] of string = ('b', 'Kb', 'Mb', 'Gb', 'Tb', 'Pb', 'Eb');
var Base, V: Double;
  I: Integer;
begin
  if Opt=0 then Base:= 1000 else Base:= 1024;
  V:= N;
  I:= 0;
  while (Abs(V)>Base) and (I<High(Unidades)) do
  begin
    V:= V/Base;
    Inc(I);
  end;
  Result:= FormatFloat('0.00', V)+Unidades[I];
end;

function FmtPct(Parte, Total: UInt64): string;
begin
  if Total = 0 then Result:= '-' else
    Result:= Format('%.1f%%', [100.0 * Parte / Total]);
end;

{ Abre um arquivo, pasta, programa ou endereço com o programa associado.
  Substitui o WinExec, que não aceita nomes com acentos (AnsiString). }
function AbrirArquivo(const Arquivo: string; const Params: string = '';
  Wnd: HWND = 0): Boolean;
var P: PChar;
begin
  if Params='' then P:= nil else P:= PChar(Params);
  Result:= ShellExecute(Wnd, 'open', PChar(Arquivo), P, nil, SW_SHOWNORMAL) > 32;
end;

{----------------------------------------------------------------------------}
{-------------------Lixeira--------------------------------------------------}
type
  { SHQUERYRBINFO (shellapi.h): compactado em 32 bits, alinhado em 64 bits }
  TRBInfo = {$IFNDEF WIN64}packed{$ENDIF} record
    cbSize: DWORD;
    i64Size, i64NumItems: Int64;
  end;

function SHQueryRecycleBin(pszRootPath: PChar; var Info: TRBInfo): HResult;
  stdcall; external 'shell32.dll' name 'SHQueryRecycleBinW';
function SHEmptyRecycleBin(Wnd: HWND; pszRootPath: PChar; dwFlags: DWORD): HResult;
  stdcall; external 'shell32.dll' name 'SHEmptyRecycleBinW';

{ Tamanho e quantidade de itens da Lixeira (todas as unidades) do usuário }
function InfoLixeira(out Bytes, Itens: Int64): Boolean;
var Q: TRBInfo;
begin
  FillChar(Q, SizeOf(Q), 0);
  Q.cbSize:= SizeOf(Q);
  Result:= SHQueryRecycleBin(nil, Q)=S_OK;
  Bytes:= Q.i64Size;
  Itens:= Q.i64NumItems;
end;

function EsvaziaLixeira: Boolean;
const SHERB_NOCONFIRMATION = 1;
      SHERB_NOPROGRESSUI   = 2;
      SHERB_NOSOUND        = 4;
begin
  Result:= SHEmptyRecycleBin(0, nil,
    SHERB_NOCONFIRMATION or SHERB_NOPROGRESSUI or SHERB_NOSOUND)=S_OK;
end;

{----------------------------------------------------------------------------}
{-------------------Espaço-em-disco------------------------------------------}
{ Drive no formato 'C:' }
function EspacoDisco(const Drive: string; out Livre, Total: Int64): Boolean;
var Disponivel: Int64;
begin
  Livre:= 0;
  Total:= 0;
  Result:= GetDiskFreeSpaceEx(PChar(IncludeTrailingPathDelimiter(Drive)),
    Disponivel, Total, PLargeInteger(@Livre)) and (Total>0);
end;

{----------------------------------------------------------------------------}
{-------------------Servidores-de-rede---------------------------------------}
{ Gateways, servidores DHCP e DNS de todos os adaptadores (sem repetição) }
procedure ServidoresRede(Gateways, Dhcp, Dns: TStrings);
var Tam: ULONG;
  Buf: TBytes;
  Ad: PIP_ADAPTER_INFO;

  procedure AddIps(Lista: TStrings; P: PIP_ADDR_STRING);
  var V: string;
  begin
    while P<>nil do
    begin
      V:= Trim(string(PAnsiChar(@P^.IpAddress.S[0])));
      if (V<>'') and (V<>'0.0.0.0') and (Lista.IndexOf(V)<0) then Lista.Add(V);
      P:= P^.Next;
    end;
  end;

begin
  Tam:= 0;
  if GetAdaptersInfo(nil, Tam)=ERROR_BUFFER_OVERFLOW then
  begin
    SetLength(Buf, Tam);
    if GetAdaptersInfo(PIP_ADAPTER_INFO(@Buf[0]), Tam)=NO_ERROR then
    begin
      Ad:= PIP_ADAPTER_INFO(@Buf[0]);
      while Ad<>nil do
      begin
        AddIps(Gateways, @Ad^.GatewayList);
        if Ad^.DhcpEnabled<>0 then AddIps(Dhcp, @Ad^.DhcpServer);
        Ad:= Ad^.Next;
      end;
    end;
  end;
  Tam:= 0;
  if GetNetworkParams(nil, Tam)=ERROR_BUFFER_OVERFLOW then
  begin
    SetLength(Buf, Tam);
    if GetNetworkParams(PFIXED_INFO(@Buf[0]), Tam)=NO_ERROR then
      AddIps(Dns, @PFIXED_INFO(@Buf[0])^.DnsServerList);
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Ping-(ICMP)----------------------------------------------}
type
  { IP_OPTION_INFORMATION e ICMP_ECHO_REPLY (ipexport.h) }
  TIpOptionInformation = record
    Ttl, Tos, Flags, OptionsSize: Byte;
    OptionsData: Pointer;
  end;
  PIcmpEchoReply = ^TIcmpEchoReply;
  TIcmpEchoReply = record
    Address, Status, RoundTripTime: ULONG;
    DataSize, Reserved: Word;
    Data: Pointer;
    Options: TIpOptionInformation;
  end;

function IcmpCreateFile: THandle; stdcall; external 'iphlpapi.dll';
function IcmpCloseHandle(IcmpHandle: THandle): BOOL; stdcall; external 'iphlpapi.dll';
function IcmpSendEcho(IcmpHandle: THandle; DestinationAddress: ULONG;
  RequestData: Pointer; RequestSize: Word; RequestOptions: Pointer;
  ReplyBuffer: Pointer; ReplySize, Timeout: DWORD): DWORD; stdcall;
  external 'iphlpapi.dll';

{ Endereço IPv4 (ordem de rede) de um IP ou nome }
function ResolveIPv4(const Host: string; out Addr: ULONG): Boolean;
var WSA: TWSAData;
  HE: PHostEnt;
  A: AnsiString;
begin
  Result:= False;
  Addr:= 0;
  if WSAStartup($0202, WSA)<>0 then Exit;
  try
    A:= AnsiString(Host);
    Addr:= ULONG(inet_addr(PAnsiChar(A)));
    if Addr<>ULONG($FFFFFFFF) then Exit(True);
    HE:= gethostbyname(PAnsiChar(A));
    if (HE<>nil) and (HE^.h_addr_list<>nil) and (HE^.h_addr_list^<>nil) then
    begin
      Addr:= PULONG(HE^.h_addr_list^)^;
      Result:= True;
    end;
  finally
    WSACleanup;
  end;
end;

function IpParaTexto(Addr: ULONG): string;
begin
  Result:= Format('%d.%d.%d.%d', [Addr and $FF, (Addr shr 8) and $FF,
    (Addr shr 16) and $FF, (Addr shr 24) and $FF]);
end;

{ Envia um ping. IP fica vazio se o nome não puder ser resolvido. }
function PingHost(const Host: string; out IP: string; out Ms: Cardinal;
  Timeout: DWORD = 1000): Boolean;
var Addr: ULONG;
  H: THandle;
  Dados: array[0..31] of AnsiChar;
  Resp: array[0..SizeOf(TIcmpEchoReply)+SizeOf(Dados)+63] of Byte;
begin
  Result:= False;
  IP:= '';
  Ms:= 0;
  if not ResolveIPv4(Host, Addr) then Exit;
  IP:= IpParaTexto(Addr);
  H:= IcmpCreateFile;
  if H=INVALID_HANDLE_VALUE then Exit;
  try
    FillChar(Dados, SizeOf(Dados), Ord('P'));
    if IcmpSendEcho(H, Addr, @Dados, SizeOf(Dados), nil, @Resp, SizeOf(Resp),
        Timeout)>0 then
      if PIcmpEchoReply(@Resp)^.Status=0 then
      begin
        Ms:= PIcmpEchoReply(@Resp)^.RoundTripTime;
        Result:= True;
      end;
  finally
    IcmpCloseHandle(H);
  end;
end;

{ Testa a conexão com gateway, DNS, servidor de logon e internet,
  acrescentando uma linha por teste em L. }
procedure TestaRede(L: TStrings);
var Gw, Dhcp, Dns: TStringList;
  S: string;

  procedure Testa(const Rotulo, Host: string);
  var IP, R: string;
    Ms: Cardinal;
  begin
    if PingHost(Host, IP, Ms) then
      R:= Format('%d ms', [Ms])
    else if IP='' then
      R:= 'nome não encontrado'
    else
      R:= 'sem resposta';
    if (IP<>'') and not SameText(IP, Host) then
      L.Add(Format('%s %s (%s): %s', [Rotulo, Host, IP, R]))
    else
      L.Add(Format('%s %s: %s', [Rotulo, Host, R]));
    Application.ProcessMessages; { mostra o resultado de cada teste }
  end;

begin
  Gw:= TStringList.Create;
  Dhcp:= TStringList.Create;
  Dns:= TStringList.Create;
  try
    ServidoresRede(Gw, Dhcp, Dns);
    if Gw.Count=0 then L.Add('Gateway: nenhum (sem rede?)');
    for S in Gw do Testa('Gateway', S);
    for S in Dns do Testa('DNS', S);
    S:= SysUtils.GetEnvironmentVariable('LOGONSERVER');
    while (S<>'') and (S[1]='\') do Delete(S, 1, 1);
    if (S<>'') and not SameText(S, SysUtils.GetEnvironmentVariable('COMPUTERNAME')) then
      Testa('Servidor de logon', S);
    Testa('Internet', '8.8.8.8');
    Testa('Site', 'www.google.com'); { testa também a resolução de nomes }
    L.Add('"sem resposta" pode ser só o firewall bloqueando o ping.');
  finally
    Gw.Free;
    Dhcp.Free;
    Dns.Free;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Programas-que-iniciam-com-o-Windows----------------------}
{ O Windows guarda o estado ativado/desativado (o mesmo do Gerenciador de
  Tarefas) em ...\Explorer\StartupApproved: o 1º byte do valor é ímpar quando
  o item está desativado. A entrada original (Run ou atalho) não é alterada,
  então desativar pode ser desfeito a qualquer momento.                      }
const
  KeyRun   = 'Software\Microsoft\Windows\CurrentVersion\Run';
  KeyAprov = 'Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\';

type
  TItemInicio = record
    Nome, Comando, Origem: string;
    Raiz: HKEY;           { onde fica o estado em StartupApproved }
    ChaveAprov: string;
    Ativo: Boolean;
  end;
  TItensInicio = array of TItemInicio;

function Aprovado(Raiz: HKEY; const Chave, Nome: string): Boolean;
var Reg: TRegistry;
  B: array[0..11] of Byte;
begin
  Result:= True; { sem registro de estado = ativado }
  Reg:= TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);
  try
    try
      Reg.RootKey:= Raiz;
      if Reg.OpenKeyReadOnly(Chave) and Reg.ValueExists(Nome) and
         (Reg.GetDataSize(Nome)>=1) then
      begin
        FillChar(B, SizeOf(B), 0);
        Reg.ReadBinaryData(Nome, B, SizeOf(B));
        Result:= (B[0] and 1)=0;
      end;
    except
    end;
  finally
    Reg.Free;
  end;
end;

function DefineAprovado(Raiz: HKEY; const Chave, Nome: string; Ativo: Boolean): Boolean;
var Reg: TRegistry;
  B: array[0..11] of Byte;
  FT: TFileTime;
begin
  Result:= False;
  FillChar(B, SizeOf(B), 0);
  if Ativo then B[0]:= 2 else
  begin
    B[0]:= 3;
    GetSystemTimeAsFileTime(FT); { data em que foi desativado }
    Move(FT, B[4], SizeOf(FT));
  end;
  Reg:= TRegistry.Create(KEY_READ or KEY_WRITE or KEY_WOW64_64KEY);
  try
    try
      Reg.RootKey:= Raiz;
      if Reg.OpenKey(Chave, True) then
      begin
        Reg.WriteBinaryData(Nome, B, SizeOf(B));
        Result:= True;
      end;
    except
      Result:= False;
    end;
  finally
    Reg.Free;
  end;
end;

procedure AddItem(var Itens: TItensInicio; const Nome, Comando, Origem: string;
  Raiz: HKEY; const Aprov: string);
var I: Integer;
begin
  I:= Length(Itens);
  SetLength(Itens, I+1);
  Itens[I].Nome:= Nome;
  Itens[I].Comando:= Comando;
  Itens[I].Origem:= Origem;
  Itens[I].Raiz:= Raiz;
  Itens[I].ChaveAprov:= KeyAprov+Aprov;
  Itens[I].Ativo:= Aprovado(Raiz, KeyAprov+Aprov, Nome);
end;

{ Valores de uma chave Run }
procedure LeRun(var Itens: TItensInicio; Raiz: HKEY; Visao: Cardinal;
  const Origem, Aprov: string);
var Reg: TRegistry;
  Nomes: TStringList;
  N: string;
begin
  Reg:= TRegistry.Create(KEY_READ or Visao);
  Nomes:= TStringList.Create;
  try
    try
      Reg.RootKey:= Raiz;
      if Reg.OpenKeyReadOnly(KeyRun) then
      begin
        Reg.GetValueNames(Nomes);
        for N in Nomes do
          if (N<>'') and (Reg.GetDataType(N) in [rdString, rdExpandString]) then
            AddItem(Itens, N, Reg.ReadString(N), Origem, Raiz, Aprov);
      end;
    except
    end;
  finally
    Nomes.Free;
    Reg.Free;
  end;
end;

{ Atalhos de uma pasta Inicializar }
procedure LePasta(var Itens: TItensInicio; Csidl: Integer; Raiz: HKEY;
  const Origem: string);
var Buf: array[0..MAX_PATH] of Char;
  Pasta: string;
  SR: TSearchRec;
begin
  if not Succeeded(SHGetFolderPath(0, Csidl, 0, 0, Buf)) then Exit;
  Pasta:= ExcludeTrailingPathDelimiter(Buf);
  if FindFirst(Pasta+'\*', faAnyFile, SR)=0 then
  try
    repeat
      if ((SR.Attr and faDirectory)=0) and not SameText(SR.Name, 'desktop.ini') then
        AddItem(Itens, SR.Name, Pasta+'\'+SR.Name, Origem, Raiz, 'StartupFolder');
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
end;

function ListaInicializacao: TItensInicio;
begin
  Result:= nil;
  LeRun(Result, HKEY_CURRENT_USER, 0, 'Usuário atual (registro)', 'Run');
  LeRun(Result, HKEY_LOCAL_MACHINE, KEY_WOW64_64KEY, 'Todos os usuários (registro)', 'Run');
  { programas de 32 bits (WOW6432Node), só existe no Windows de 64 bits }
  if TOSVersion.Architecture<>TOSVersion.TArchitecture.arIntelX86 then
    LeRun(Result, HKEY_LOCAL_MACHINE, KEY_WOW64_32KEY, 'Todos os usuários (32 bits)', 'Run32');
  LePasta(Result, CSIDL_STARTUP, HKEY_CURRENT_USER, 'Usuário atual (pasta)');
  LePasta(Result, CSIDL_COMMON_STARTUP, HKEY_LOCAL_MACHINE, 'Todos os usuários (pasta)');
end;

{ Janela com os programas que iniciam com o Windows. Desmarcar um item o
  desativa (vale na próxima vez que o Windows iniciar). }
procedure ProgramasInicializacao;
var F: TForm;
  LV: TListView;
  P: TPanel;
  B: TButton;
  L: TLabel;
  Itens: TItensInicio;
  I, Alterados, Falhas: Integer;

  procedure Coluna(const Titulo: string; Largura: Integer);
  begin
    with LV.Columns.Add do
    begin
      Caption:= Titulo;
      Width:= Px(Largura);
    end;
  end;

begin
  Itens:= ListaInicializacao;
  F:= TForm.CreateNew(nil);
  try
    F.Caption:= 'Programas que iniciam com o Windows';
    F.Position:= poScreenCenter;
    F.BorderIcons:= [biSystemMenu, biMaximize];
    F.ClientWidth:= Px(700);
    F.ClientHeight:= Px(400);
    F.Constraints.MinWidth:= Px(400);
    F.Constraints.MinHeight:= Px(250);

    P:= TPanel.Create(F);
    P.Parent:= F;
    P.Align:= alBottom;
    P.Height:= Px(40);
    P.BevelOuter:= bvNone;

    L:= TLabel.Create(F);
    L.Parent:= P;
    L.SetBounds(Px(8), Px(4), P.ClientWidth-Px(190), Px(32));
    L.Anchors:= [akLeft, akTop, akRight];
    L.WordWrap:= True;
    L.Caption:= 'Desmarque para desativar (como no Gerenciador de Tarefas). '+
      'Itens de "Todos os usuários" exigem executar o Painel como administrador.';

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(P.ClientWidth-Px(176), Px(8), Px(80), Px(25));
    B.Anchors:= [akTop, akRight];
    B.Caption:= '&Aplicar';
    B.ModalResult:= mrOk;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(P.ClientWidth-Px(88), Px(8), Px(80), Px(25));
    B.Anchors:= [akTop, akRight];
    B.Caption:= '&Cancelar';
    B.Cancel:= True;
    B.ModalResult:= mrCancel;

    LV:= TListView.Create(F);
    LV.Parent:= F;
    LV.Align:= alClient;
    LV.ViewStyle:= vsReport;
    LV.Checkboxes:= True;
    LV.ReadOnly:= True;
    LV.RowSelect:= True;
    Coluna('Nome', 170);
    Coluna('Origem', 170);
    Coluna('Comando', 340);
    LV.HandleNeeded; { a marcação dos itens exige a janela já criada }
    LV.Items.BeginUpdate;
    try
      for I:= 0 to High(Itens) do
        with LV.Items.Add do
        begin
          Caption:= Itens[I].Nome;
          SubItems.Add(Itens[I].Origem);
          SubItems.Add(Itens[I].Comando);
          Checked:= Itens[I].Ativo;
        end;
    finally
      LV.Items.EndUpdate;
    end;
    F.ActiveControl:= LV;

    if F.ShowModal<>mrOk then Exit;
    Alterados:= 0;
    Falhas:= 0;
    for I:= 0 to High(Itens) do
      if LV.Items[I].Checked<>Itens[I].Ativo then
        if DefineAprovado(Itens[I].Raiz, Itens[I].ChaveAprov, Itens[I].Nome,
            LV.Items[I].Checked) then
          Inc(Alterados)
        else
          Inc(Falhas);
    if Falhas>0 then
      MessageDlg(Format('%d alteração(ões) aplicada(s) e %d não permitida(s).'#13+
        'Para alterar itens de todos os usuários execute o Painel como administrador.',
        [Alterados, Falhas]), mtWarning, [mbOk], 0)
    else if Alterados>0 then
      MessageDlg(Format('%d alteração(ões) aplicada(s). Valem na próxima '+
        'inicialização do Windows.', [Alterados]), mtInformation, [mbOk], 0);
  finally
    F.Free;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Processos-em-execução------------------------------------}
const PROCESS_QUERY_LIMITED = $1000; { PROCESS_QUERY_LIMITED_INFORMATION }

function QueryImagemProcesso(hProcess: THandle; dwFlags: DWORD;
  lpExeName: PChar; var lpdwSize: DWORD): BOOL; stdcall;
  external kernel32 name 'QueryFullProcessImageNameW';

type
  { Janela com a lista de processos. Colunas: Nome, PID, Memória (conjunto
    de trabalho), Threads e Caminho. Clique no título ordena; F5 atualiza;
    Del finaliza o processo selecionado.                                    }
  TJanelaProcessos = class(TForm)
  private
    LV: TListView;
    Info: TLabel;
    FColuna: Integer;
    FDecrescente: Boolean;
    procedure Atualiza;
    procedure AtualizaClick(Sender: TObject);
    procedure FinalizaClick(Sender: TObject);
    procedure LocalClick(Sender: TObject);
    procedure ColunaClick(Sender: TObject; Column: TListColumn);
    procedure Compara(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure Tecla(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    constructor Cria;
  end;

function Compara64(A, B: Int64): Integer;
begin
  if A<B then Result:= -1 else
  if A>B then Result:= 1 else
    Result:= 0;
end;

constructor TJanelaProcessos.Cria;
var P: TPanel;

  procedure Coluna(const Titulo: string; Largura: Integer; Direita: Boolean = False);
  begin
    with LV.Columns.Add do
    begin
      Caption:= Titulo;
      Width:= Px(Largura);
      if Direita then Alignment:= taRightJustify;
    end;
  end;

  function Botao(const Texto: string; X: Integer; Evento: TNotifyEvent;
    Direita: Boolean = False): TButton;
  begin
    Result:= TButton.Create(Self);
    Result.Parent:= P;
    Result.SetBounds(X, Px(8), Px(100), Px(25));
    Result.Caption:= Texto;
    Result.OnClick:= Evento;
    if Direita then Result.Anchors:= [akTop, akRight];
  end;

begin
  inherited CreateNew(nil);
  Caption:= 'Processos em execução';
  Position:= poScreenCenter;
  BorderIcons:= [biSystemMenu, biMaximize];
  ClientWidth:= Px(720);
  ClientHeight:= Px(440);
  Constraints.MinWidth:= Px(480);
  Constraints.MinHeight:= Px(250);
  KeyPreview:= True;
  OnKeyDown:= Tecla;
  FColuna:= 2;          { começa pelos que usam mais memória }
  FDecrescente:= True;

  Info:= TLabel.Create(Self);
  Info.Parent:= Self;
  Info.Align:= alTop;
  Info.AlignWithMargins:= True;

  P:= TPanel.Create(Self);
  P.Parent:= Self;
  P.Align:= alBottom;
  P.Height:= Px(40);
  P.BevelOuter:= bvNone;
  Botao('&Atualizar (F5)', Px(8), AtualizaClick);
  Botao('Abrir &local', Px(116), LocalClick);
  Botao('&Finalizar (Del)', P.ClientWidth-Px(216), FinalizaClick, True);
  with Botao('Fe&char', P.ClientWidth-Px(108), nil, True) do
  begin
    ModalResult:= mrOk;
    Cancel:= True; { Esc fecha }
  end;

  LV:= TListView.Create(Self);
  LV.Parent:= Self;
  LV.Align:= alClient;
  LV.ViewStyle:= vsReport;
  LV.ReadOnly:= True;
  LV.RowSelect:= True;
  LV.HideSelection:= False;
  LV.OnColumnClick:= ColunaClick;
  LV.OnCompare:= Compara;
  Coluna('Nome', 170);
  Coluna('PID', 60, True);
  Coluna('Memória', 90, True);
  Coluna('Threads', 60, True);
  Coluna('Caminho', 300);
  ActiveControl:= LV;
  Atualiza;
end;

procedure TJanelaProcessos.Atualiza;
var H, P: THandle;
  PE: TProcessEntry32;
  PMC: TProcMemCounters;
  Buf: array[0..MAX_PATH] of Char;
  Tam: DWORD;
  Sel: Integer;
  Total: Int64;
  Caminho, Mem: string;
  It: TListItem;
begin
  { mantém selecionado o mesmo processo }
  if LV.Selected<>nil then Sel:= StrToIntDef(LV.Selected.SubItems[0], -1) else Sel:= -1;
  Total:= 0;
  Screen.Cursor:= crHourGlass;
  LV.Items.BeginUpdate;
  try
    LV.Items.Clear;
    H:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    if H<>INVALID_HANDLE_VALUE then
    try
      PE.dwSize:= SizeOf(PE);
      if Process32First(H, PE) then
        repeat
          FillChar(PMC, SizeOf(PMC), 0);
          PMC.cb:= SizeOf(PMC);
          Caminho:= '';
          { processos protegidos ou de outros usuários (sem administrador)
            não podem ser abertos: ficam sem memória e caminho }
          P:= OpenProcess(PROCESS_QUERY_LIMITED, False, PE.th32ProcessID);
          if P<>0 then
          try
            if not PsGetProcessMemoryInfo(P, PMC, SizeOf(PMC)) then
              PMC.WorkingSetSize:= 0;
            Tam:= Length(Buf);
            if QueryImagemProcesso(P, 0, Buf, Tam) then SetString(Caminho, Buf, Tam);
          finally
            CloseHandle(P);
          end;
          if PMC.WorkingSetSize>0 then Mem:= FmtValue(1, PMC.WorkingSetSize) else Mem:= '-';
          It:= LV.Items.Add;
          It.Caption:= string(PE.szExeFile);
          It.SubItems.Add(IntToStr(PE.th32ProcessID));
          It.SubItems.Add(Mem);
          It.SubItems.Add(IntToStr(PE.cntThreads));
          It.SubItems.Add(Caminho);
          It.Data:= Pointer(NativeUInt(PMC.WorkingSetSize div 1024)); { KB, para ordenar }
          Inc(Total, PMC.WorkingSetSize);
          if Integer(PE.th32ProcessID)=Sel then It.Selected:= True;
        until not Process32Next(H, PE);
    finally
      CloseHandle(H);
    end;
    LV.AlphaSort;
  finally
    LV.Items.EndUpdate;
    Screen.Cursor:= crDefault;
  end;
  if LV.Selected<>nil then LV.Selected.MakeVisible(False);
  Info.Caption:= Format('%d processos - memória em uso por eles: %s', [LV.Items.Count,
    FmtValue(1, Total)]);
  if not ShIsUserAnAdmin then
    Info.Caption:= Info.Caption+' (sem administrador: alguns processos aparecem sem dados)';
end;

procedure TJanelaProcessos.AtualizaClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TJanelaProcessos.FinalizaClick(Sender: TObject);
var PID: Integer;
  P: THandle;
  Nome: string;
begin
  if LV.Selected=nil then Exit;
  PID:= StrToIntDef(LV.Selected.SubItems[0], 0);
  Nome:= LV.Selected.Caption;
  if (PID<=4) or (Cardinal(PID)=GetCurrentProcessId) then
  begin
    MessageDlg('Este processo não pode ser finalizado pelo Painel.', mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg(Format('Finalizar o processo "%s" (PID %d)?'#13+
      'Dados não salvos nesse programa serão perdidos.', [Nome, PID]),
      mtWarning, [mbYes, mbNo], 0)<>mrYes then Exit;
  P:= OpenProcess(PROCESS_TERMINATE or SYNCHRONIZE, False, PID);
  try
    if (P<>0) and TerminateProcess(P, 1) then
      WaitForSingleObject(P, 2000)
    else
      MessageDlg('Não foi possível finalizar "'+Nome+'" (acesso negado ou '+
        'processo protegido).'#13'Processos do sistema e de outros usuários '+
        'exigem executar o Painel como administrador.', mtWarning, [mbOk], 0);
  finally
    if P<>0 then CloseHandle(P);
  end;
  Atualiza;
end;

{ Abre o Explorer com o executável do processo selecionado }
procedure TJanelaProcessos.LocalClick(Sender: TObject);
var Caminho: string;
begin
  if LV.Selected=nil then Exit;
  Caminho:= LV.Selected.SubItems[3];
  if Caminho='' then
    MessageDlg('Caminho não disponível para este processo.', mtInformation, [mbOk], 0)
  else
    AbrirArquivo('explorer.exe', '/select,"'+Caminho+'"', Handle);
end;

procedure TJanelaProcessos.ColunaClick(Sender: TObject; Column: TListColumn);
begin
  if Column.Index=FColuna then
    FDecrescente:= not FDecrescente
  else
  begin
    FColuna:= Column.Index;
    FDecrescente:= Column.Index in [2, 3]; { números: maiores primeiro }
  end;
  LV.AlphaSort;
end;

procedure TJanelaProcessos.Compara(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
begin
  case FColuna of
    0:    Compare:= CompareText(Item1.Caption, Item2.Caption);
    1, 3: Compare:= Compara64(StrToInt64Def(Item1.SubItems[FColuna-1], 0),
                              StrToInt64Def(Item2.SubItems[FColuna-1], 0));
    2:    Compare:= Compara64(NativeUInt(Item1.Data), NativeUInt(Item2.Data));
  else
    Compare:= CompareText(Item1.SubItems[FColuna-1], Item2.SubItems[FColuna-1]);
  end;
  if FDecrescente then Compare:= -Compare;
end;

procedure TJanelaProcessos.Tecla(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F5:     Atualiza;
    VK_DELETE: FinalizaClick(nil);
  else
    Exit;
  end;
  Key:= 0;
end;

procedure GerenciadorProcessos;
var F: TJanelaProcessos;
begin
  F:= TJanelaProcessos.Cria;
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

{ Processo que mais usa memória (conjunto de trabalho), entre os que podem
  ser consultados }
function ProcessoMaiorMemoria(out Nome: string; out Bytes: Int64): Boolean;
var H, P: THandle;
  PE: TProcessEntry32;
  PMC: TProcMemCounters;
begin
  Nome:= '';
  Bytes:= 0;
  H:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if H<>INVALID_HANDLE_VALUE then
  try
    PE.dwSize:= SizeOf(PE);
    if Process32First(H, PE) then
      repeat
        P:= OpenProcess(PROCESS_QUERY_LIMITED, False, PE.th32ProcessID);
        if P<>0 then
        try
          FillChar(PMC, SizeOf(PMC), 0);
          PMC.cb:= SizeOf(PMC);
          if PsGetProcessMemoryInfo(P, PMC, SizeOf(PMC)) and
             (Int64(PMC.WorkingSetSize)>Bytes) then
          begin
            Bytes:= PMC.WorkingSetSize;
            Nome:= string(PE.szExeFile);
          end;
        finally
          CloseHandle(P);
        end;
      until not Process32Next(H, PE);
  finally
    CloseHandle(H);
  end;
  Result:= Nome<>'';
end;

{----------------------------------------------------------------------------}
{-------------------Histórico-de-uso-(CPU-e-memória)-------------------------}
const MaxHist = 300; { uma amostra por segundo: 5 minutos }

var HistCpu, HistMem: array[0..MaxHist-1] of Byte;
  HistPos, HistQtd: Integer;

{ Chamada a cada segundo pelo Timer1 do Painel }
procedure RegistraUso(CpuPct, MemPct: Integer);

  function Limita(V: Integer): Byte;
  begin
    if V<0 then Result:= 0 else
    if V>100 then Result:= 100 else
      Result:= V;
  end;

begin
  HistCpu[HistPos]:= Limita(CpuPct);
  HistMem[HistPos]:= Limita(MemPct);
  HistPos:= (HistPos+1) mod MaxHist;
  if HistQtd<MaxHist then Inc(HistQtd);
end;

type
  { Janela (não modal) com o gráfico dos últimos 5 minutos }
  TJanelaHistorico = class(TForm)
  private
    Grafico: TPaintBox;
    Tmr: TTimer;
    FLimite1, FLimite2: Integer;
    procedure Desenha(Sender: TObject);
    procedure Tick(Sender: TObject);
    procedure Fecha(Sender: TObject; var Action: TCloseAction);
  public
    constructor Cria;
    destructor Destroy; override;
  end;

var JanelaHistorico: TJanelaHistorico;

constructor TJanelaHistorico.Cria;
begin
  inherited CreateNew(Application);
  Caption:= 'Histórico de CPU e memória (5 minutos)';
  Position:= poScreenCenter;
  FormStyle:= fsStayOnTop; { o Painel também fica sempre visível }
  BorderIcons:= [biSystemMenu];
  ClientWidth:= Px(480);
  ClientHeight:= Px(220);
  Constraints.MinWidth:= Px(240);
  Constraints.MinHeight:= Px(120);
  OnClose:= Fecha;
  Grafico:= TPaintBox.Create(Self);
  Grafico.Parent:= Self;
  Grafico.Align:= alClient;
  Grafico.OnPaint:= Desenha;
  Tmr:= TTimer.Create(Self);
  Tmr.Interval:= 1000;
  Tmr.OnTimer:= Tick;
end;

destructor TJanelaHistorico.Destroy;
begin
  JanelaHistorico:= nil;
  inherited;
end;

procedure TJanelaHistorico.Fecha(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TJanelaHistorico.Tick(Sender: TObject);
begin
  Grafico.Invalidate;
end;

procedure TJanelaHistorico.Desenha(Sender: TObject);
var Bmp: TBitmap;
  C: TCanvas;
  W, H, Topo, I, Ult: Integer;

  function YDe(Pct: Integer): Integer;
  begin
    Result:= H-1 - MulDiv(Pct, H-1-Topo, 100);
  end;

  procedure Horizontal(Pct: Integer; Cor: TColor; Estilo: TPenStyle);
  begin
    C.Pen.Color:= Cor;
    C.Pen.Style:= Estilo;
    C.Pen.Width:= 1;
    C.MoveTo(0, YDe(Pct));
    C.LineTo(W, YDe(Pct));
    C.Pen.Style:= psSolid;
  end;

  procedure Curva(const Dados: array of Byte; Cor: TColor);
  var I, Idx, X: Integer;
  begin
    C.Pen.Color:= Cor;
    C.Pen.Width:= Px(2);
    for I:= 0 to HistQtd-1 do
    begin
      Idx:= (HistPos-HistQtd+I+MaxHist) mod MaxHist;
      X:= W-1 - MulDiv(HistQtd-1-I, W-1, MaxHist-1); { mais recente à direita }
      if I=0 then C.MoveTo(X, YDe(Dados[Idx])) else C.LineTo(X, YDe(Dados[Idx]));
    end;
    C.Pen.Width:= 1;
  end;

begin
  W:= Grafico.Width;
  H:= Grafico.Height;
  Topo:= Px(20); { faixa da legenda }
  Bmp:= TBitmap.Create;
  try
    Bmp.SetSize(W, H);
    C:= Bmp.Canvas;
    C.Brush.Color:= clBlack;
    C.FillRect(Rect(0, 0, W, H));
    for I:= 1 to 3 do Horizontal(I*25, $00303030, psSolid);
    if FLimite1>0 then Horizontal(FLimite1, clOlive, psDot);
    if FLimite2>0 then Horizontal(FLimite2, clMaroon, psDot);
    Curva(HistMem, clAqua);
    Curva(HistCpu, clLime);
    { legenda com os valores atuais }
    C.Brush.Style:= bsClear;
    C.Font.Name:= 'Segoe UI';
    C.Font.Size:= 9;
    if HistQtd>0 then
    begin
      Ult:= (HistPos-1+MaxHist) mod MaxHist;
      C.Font.Color:= clLime;
      C.TextOut(Px(6), Px(2), Format('CPU: %d%%', [HistCpu[Ult]]));
      C.Font.Color:= clAqua;
      C.TextOut(Px(90), Px(2), Format('Memória: %d%%', [HistMem[Ult]]));
    end else
    begin
      C.Font.Color:= clSilver;
      C.TextOut(Px(6), Px(2), 'Aguardando dados...');
    end;
    C.Font.Color:= clGray;
    C.TextOut(W-C.TextWidth('100%')-Px(4), Topo-Px(2), '100%');
    Grafico.Canvas.Draw(0, 0, Bmp);
  finally
    Bmp.Free;
  end;
end;

{ Mostra o gráfico; Limite1/Limite2 (alerta amarelo/vermelho) viram linhas
  pontilhadas }
procedure MostraHistorico(Limite1, Limite2: Integer);
begin
  if JanelaHistorico=nil then JanelaHistorico:= TJanelaHistorico.Cria;
  JanelaHistorico.FLimite1:= Limite1;
  JanelaHistorico.FLimite2:= Limite2;
  JanelaHistorico.Show;
  JanelaHistorico.BringToFront;
  JanelaHistorico.Grafico.Invalidate;
end;

{----------------------------------------------------------------------------}
{-------------------Bloquear-e-desligar-o-monitor----------------------------}
function BloqueiaEstacao: BOOL; stdcall; external user32 name 'LockWorkStation';

procedure BloquearComputador;
begin
  if not BloqueiaEstacao then
    MessageDlg('Não foi possível bloquear o computador.', mtWarning, [mbOk], 0);
end;

procedure DesligarMonitor;
const SC_DESLIGA_MONITOR = $F170; { SC_MONITORPOWER }
begin
  Sleep(300); { o clique no menu não deve religar o monitor logo em seguida }
  { PostMessage: o SendMessage em broadcast pode travar esperando janelas
    que não respondem }
  PostMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_DESLIGA_MONITOR, 2);
end;

{----------------------------------------------------------------------------}
{-------------------Temperatura-da-CPU---------------------------------------}
{ Lida por uma thread a cada 5 s (consultas WMI podem levar centenas de ms).
  Fontes, em ordem de preferência:
  1. LibreHardwareMonitor / OpenHardwareMonitor, se estiverem em execução
     (lêem o sensor do próprio processador: valor exato);
  2. zonas térmicas ACPI (contador de desempenho do Windows, não exige
     administrador). Dá preferência à zona com 'CPU' no nome; é o sensor
     da placa-mãe/notebook, nem todo computador o informa.               }
type
  TLeitorTemperatura = class(TThread)
  private
    FEspera: TEvent;
    FZonas: OleVariant; { conexão WMI root\cimv2, reaproveitada }
    function LeMonitor(const Namespace: string; out Graus: Double): Boolean;
    function LeZonaTermica(out Graus: Double; out Zona: string): Boolean;
  protected
    procedure Execute; override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  Leitor: TLeitorTemperatura = nil;
  TravaTemp: TCriticalSection = nil;
  { protegidos por TravaTemp }
  TempLida: Boolean = False;  { a thread já fez a primeira leitura }
  TempGraus: Double = 0;
  TempFonte: string = '';     { '' = sem sensor }
  LeitorAbandonado: Boolean = False; { thread não terminou ao fechar o Painel }

const
  wbemFlagForwardOnly = $20;
  wbemFlagReturnImmediately = $10;

function ConectaWMI(const Namespace: string): OleVariant;
var Localizador: OleVariant; { OleVariant: chamada por late binding }
begin
  Localizador:= CreateOleObject('WbemScripting.SWbemLocator');
  Result:= Localizador.ConnectServer('.', Namespace);
end;

{ Número de uma propriedade WMI (-1 se nula) }
function NumWMI(const V: OleVariant): Double;
begin
  if VarIsNull(V) or VarIsEmpty(V) then Result:= -1 else Result:= V;
end;

constructor TLeitorTemperatura.Create;
begin
  FEspera:= TEvent.Create(nil, False, False, '');
  inherited Create(False);
end;

destructor TLeitorTemperatura.Destroy;
begin
  inherited;
  FEspera.Free;
end;

{ LibreHardwareMonitor/OpenHardwareMonitor: sensor 'CPU Package' (Intel) ou
  'Core (Tctl/Tdie)' (AMD); sem eles, o maior valor entre os da CPU }
function TLeitorTemperatura.LeMonitor(const Namespace: string;
  out Graus: Double): Boolean;
var Lista, Item: OleVariant;
  Enum: IEnumVARIANT;
  Lidos: LongWord;
  Nome: string;
  V, Maior: Double;
begin
  Result:= False;
  Graus:= 0;
  try
    Lista:= ConectaWMI(Namespace).ExecQuery(
      'SELECT Name, Value, Identifier FROM Sensor WHERE SensorType=''Temperature''',
      'WQL', wbemFlagForwardOnly or wbemFlagReturnImmediately);
  except
    Exit; { programa não está em execução: o namespace não existe }
  end;
  Maior:= -1;
  Enum:= IUnknown(Lista._NewEnum) as IEnumVARIANT;
  while Enum.Next(1, Item, Lidos) = S_OK do
  begin
    if Pos('cpu/', LowerCase(VarToStr(Item.Identifier)))>0 then
    begin
      V:= NumWMI(Item.Value);
      Nome:= VarToStr(Item.Name);
      if (V>0) and ((Pos('Package', Nome)>0) or (Pos('Tctl', Nome)>0)) then
      begin
        Graus:= V;
        Exit(True);
      end;
      if V>Maior then Maior:= V;
    end;
    Item:= Unassigned;
  end;
  Result:= Maior>0;
  if Result then Graus:= Maior;
end;

{ Zonas térmicas ACPI. A temperatura vem em décimos de Kelvin
  (HighPrecisionTemperature) ou em Kelvin (Temperature, Windows antigos).
  Zonas desativadas informam 0 °C e são ignoradas. }
function TLeitorTemperatura.LeZonaTermica(out Graus: Double;
  out Zona: string): Boolean;
var Lista, Item: OleVariant;
  Enum: IEnumVARIANT;
  Lidos: LongWord;
  Nome: string;
  C, Maior, Cpu: Double;
  ZonaMaior, ZonaCpu: string;
begin
  Graus:= 0;
  Zona:= '';
  if VarIsEmpty(FZonas) then FZonas:= ConectaWMI('root\cimv2');
  Lista:= FZonas.ExecQuery(
    'SELECT * FROM Win32_PerfFormattedData_Counters_ThermalZoneInformation',
    'WQL', wbemFlagForwardOnly or wbemFlagReturnImmediately);
  Maior:= -1;
  Cpu:= -1;
  Enum:= IUnknown(Lista._NewEnum) as IEnumVARIANT;
  while Enum.Next(1, Item, Lidos) = S_OK do
  begin
    Nome:= VarToStr(Item.Name);
    try
      C:= NumWMI(Item.HighPrecisionTemperature)/10;
    except
      C:= NumWMI(Item.Temperature);
    end;
    C:= C-273.15;
    if (C>5) and (C<130) then
    begin
      if (Cpu<0) and (Pos('CPU', UpperCase(Nome))>0) then
      begin
        Cpu:= C;
        ZonaCpu:= Nome;
      end;
      if C>Maior then
      begin
        Maior:= C;
        ZonaMaior:= Nome;
      end;
    end;
    Item:= Unassigned;
  end;
  if Cpu>0 then
  begin
    Graus:= Cpu;
    Zona:= ZonaCpu;
  end else
  begin
    Graus:= Maior;
    Zona:= ZonaMaior;
  end;
  Result:= Graus>0;
end;

procedure TLeitorTemperatura.Execute;
var G: Double;
  Fonte, Zona: string;
begin
  CoInitialize(nil);
  try
    while not Terminated do
    begin
      Fonte:= '';
      try
        if LeMonitor('root\LibreHardwareMonitor', G) then
          Fonte:= 'LibreHardwareMonitor'
        else if LeMonitor('root\OpenHardwareMonitor', G) then
          Fonte:= 'OpenHardwareMonitor'
        else if LeZonaTermica(G, Zona) then
          Fonte:= 'zona térmica ACPI '+Zona;
      except
        Fonte:= '';
        FZonas:= Unassigned; { reconecta na próxima leitura }
      end;
      TravaTemp.Enter;
      try
        TempLida:= True;
        TempFonte:= Fonte;
        if Fonte<>'' then TempGraus:= G else TempGraus:= 0;
      finally
        TravaTemp.Leave;
      end;
      { sem sensor, tenta de novo só a cada minuto (ex.: se o
        LibreHardwareMonitor for aberto depois do Painel) }
      if Fonte<>'' then FEspera.WaitFor(5000) else FEspera.WaitFor(60000);
    end;
  finally
    FZonas:= Unassigned;
    CoUninitialize;
  end;
end;

procedure IniciaTemperatura;
begin
  if Leitor=nil then Leitor:= TLeitorTemperatura.Create;
end;

{ Chamada ao fechar o Painel. Se uma consulta WMI demorar, não espera mais
  de 3 s: a thread é abandonada (o processo está terminando). }
procedure FinalizaTemperatura;
begin
  if Leitor=nil then Exit;
  Leitor.Terminate;
  Leitor.FEspera.SetEvent;
  if WaitForSingleObject(Leitor.Handle, 3000) = WAIT_OBJECT_0 then
    Leitor.Free
  else
    LeitorAbandonado:= True;
  Leitor:= nil;
end;

{ Última temperatura lida. Retorna False se não houver sensor; nesse caso
  Fonte explica o motivo. }
function TemperaturaCPU(out Graus: Double; out Fonte: string): Boolean;
begin
  TravaTemp.Enter;
  try
    Graus:= TempGraus;
    Result:= TempFonte<>'';
    if Result then Fonte:= TempFonte
    else if (Leitor=nil) or not TempLida then Fonte:= 'ainda não lida'
    else Fonte:= 'sensor não disponível neste computador';
  finally
    TravaTemp.Leave;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Verificação-de-nova-versão-------------------------------}
const
  UrlApiReleases = 'https://api.github.com/repos/antoninocs1/Painel/releases/latest';

{ Consulta em segundo plano a última versão publicada no GitHub. Retorno é
  chamado depois, na thread principal. }
procedure ConsultaUltimaVersao(Retorno: TRetornoVersao);
begin
  TThread.CreateAnonymousThread(
    procedure
    var Cliente: THTTPClient;
      Resp: IHTTPResponse;
      Json: TJSONValue;
      Versao, Url, Erro: string;
      Avisa: TThreadProcedure;
    begin
      Versao:= '';
      Url:= UrlReleases;
      Erro:= '';
      try
        Cliente:= THTTPClient.Create;
        try
          Cliente.ConnectionTimeout:= 5000;
          Cliente.ResponseTimeout:= 10000;
          { a API do GitHub recusa pedidos sem User-Agent }
          Resp:= Cliente.Get(UrlApiReleases, nil,
            [TNameValuePair.Create('User-Agent', 'Painel'),
             TNameValuePair.Create('Accept', 'application/vnd.github+json')]);
          if Resp.StatusCode = 200 then
          begin
            Json:= TJSONObject.ParseJSONValue(Resp.ContentAsString(TEncoding.UTF8));
            try
              if Json<>nil then
              begin
                Versao:= Json.GetValue<string>('tag_name', '');
                Url:= Json.GetValue<string>('html_url', UrlReleases);
              end;
            finally
              Json.Free;
            end;
            if Versao='' then Erro:= 'Resposta inesperada do GitHub.';
          end else
          if Resp.StatusCode = 404 then
            Erro:= 'Nenhuma versão publicada no GitHub.'
          else
            Erro:= Format('O GitHub respondeu: %d %s', [Resp.StatusCode, Resp.StatusText]);
        finally
          Cliente.Free;
        end;
      except
        on E: Exception do
          Erro:= 'Não foi possível acessar o GitHub.'#13+E.Message;
      end;
      { variável tipada: o compilador não escolhe sozinho o overload de
        Queue para um método anônimo dentro de outro }
      Avisa:= procedure
        begin
          if not Application.Terminated then Retorno(Versao, Url, Erro);
        end;
      TThread.Queue(nil, Avisa);
    end).Start;
end;

{ True se Remota for posterior a Local. Compara por partes numéricas e de
  letras: 'v1.84' > '1.83o' > '1.83' ; '1.83p' > '1.83o' ; '1.100' > '1.99'. }
function VersaoMaisNova(const Remota, Local: string): Boolean;

  procedure Partes(S: string; L: TStrings);
  var I, Tipo, T: Integer; { 1 = algarismos, 2 = letras, 0 = separador }
    Atual: string;
  begin
    S:= LowerCase(Trim(S));
    if (S<>'') and (S[1]='v') then Delete(S, 1, 1);
    Atual:= '';
    Tipo:= 0;
    for I:= 1 to Length(S) do
    begin
      if CharInSet(S[I], ['0'..'9']) then T:= 1
      else if CharInSet(S[I], ['a'..'z']) then T:= 2
      else T:= 0;
      if (T<>Tipo) and (Atual<>'') then
      begin
        L.Add(Atual);
        Atual:= '';
      end;
      if T<>0 then Atual:= Atual+S[I];
      Tipo:= T;
    end;
    if Atual<>'' then L.Add(Atual);
  end;

var A, B: TStringList;
  I, NA, NB, Cmp: Integer;
begin
  A:= TStringList.Create;
  B:= TStringList.Create;
  try
    Partes(Remota, A);
    Partes(Local, B);
    Cmp:= 0;
    I:= 0;
    while (Cmp=0) and (I<A.Count) and (I<B.Count) do
    begin
      if TryStrToInt(A[I], NA) and TryStrToInt(B[I], NB) then
        Cmp:= NA-NB
      else
        Cmp:= CompareStr(A[I], B[I]);
      Inc(I);
    end;
    if Cmp=0 then Cmp:= A.Count-B.Count; { '1.83o' é posterior a '1.83' }
    Result:= Cmp>0;
  finally
    A.Free;
    B.Free;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Atalho-de-teclado-global---------------------------------}
{ Converte textos como 'Win+Alt+P', 'Ctrl+Shift+F12' ou 'Alt+Espaço' para
  os parâmetros de RegisterHotKey. Exige ao menos um modificador. }
function TextoParaAtalho(const Texto: string; out Modificadores, Tecla: Cardinal): Boolean;
var Partes: TStringList;
  I, N: Integer;
  P: string;
begin
  Result:= False;
  Modificadores:= 0;
  Tecla:= 0;
  Partes:= TStringList.Create;
  try
    Partes.Delimiter:= '+';
    Partes.StrictDelimiter:= True;
    Partes.DelimitedText:= Texto;
    for I:= 0 to Partes.Count-1 do
    begin
      P:= AnsiUpperCase(Trim(Partes[I])); { Ansi: converte também o 'ç' }
      if P='' then Continue;
      if P='WIN' then Modificadores:= Modificadores or MOD_WIN
      else if (P='CTRL') or (P='CONTROL') then Modificadores:= Modificadores or MOD_CONTROL
      else if P='ALT' then Modificadores:= Modificadores or MOD_ALT
      else if P='SHIFT' then Modificadores:= Modificadores or MOD_SHIFT
      else if Tecla<>0 then Exit { duas teclas }
      else if (Length(P)=1) and CharInSet(P[1], ['A'..'Z', '0'..'9']) then
        Tecla:= Ord(P[1])
      else if (P[1]='F') and TryStrToInt(Copy(P, 2, 2), N) and (N>=1) and (N<=24) then
        Tecla:= VK_F1+Cardinal(N)-1
      else if (P='ESPAÇO') or (P='ESPACO') or (P='SPACE') then
        Tecla:= VK_SPACE
      else
        Exit;
    end;
    Result:= (Tecla<>0) and (Modificadores<>0);
  finally
    Partes.Free;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Área-de-transferência------------------------------------}
{ Texto copiado, se houver. Respeita os formatos com que gerenciadores de
  senha e o próprio Windows pedem para o conteúdo não ser guardado em
  históricos. }
function LeTextoClipboard(Wnd: HWND; out Texto: string): Boolean;
var FmtExcluir, FmtHistorico, FmtIgnorar: UINT;
  H: THandle;
  P: Pointer;
  Tentativa: Integer;
begin
  Result:= False;
  Texto:= '';
  FmtExcluir:= RegisterClipboardFormat('ExcludeClipboardContentFromMonitorProcessing');
  FmtHistorico:= RegisterClipboardFormat('CanIncludeInClipboardHistory');
  FmtIgnorar:= RegisterClipboardFormat('Clipboard Viewer Ignore');
  if IsClipboardFormatAvailable(FmtExcluir) or IsClipboardFormatAvailable(FmtIgnorar) or
     not IsClipboardFormatAvailable(CF_UNICODETEXT) then Exit;
  { quem acabou de copiar pode ainda estar com a área de transferência aberta }
  for Tentativa:= 1 to 5 do
  begin
    if OpenClipboard(Wnd) then Break;
    if Tentativa=5 then Exit;
    Sleep(20);
  end;
  try
    if IsClipboardFormatAvailable(FmtHistorico) then
    begin
      H:= GetClipboardData(FmtHistorico);
      if H<>0 then
      begin
        P:= GlobalLock(H);
        if P<>nil then
        try
          if PDWORD(P)^=0 then Exit; { 0 = não incluir em históricos }
        finally
          GlobalUnlock(H);
        end;
      end;
    end;
    H:= GetClipboardData(CF_UNICODETEXT);
    if H=0 then Exit;
    P:= GlobalLock(H);
    if P=nil then Exit;
    try
      Texto:= PChar(P);
    finally
      GlobalUnlock(H);
    end;
    Result:= Trim(Texto)<>'';
  finally
    CloseClipboard;
  end;
end;

initialization
  TravaTemp:= TCriticalSection.Create;

finalization
  { a thread abandonada ainda pode usar a trava }
  if not LeitorAbandonado then FreeAndNil(TravaTemp);

end.
