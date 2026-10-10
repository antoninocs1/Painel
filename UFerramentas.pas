unit UFerramentas;

{----------------------------------------------------------------------------}
{ Ferramentas do sistema usadas pelo Painel:
  - Lixeira: tamanho e esvaziamento;
  - espaço livre em disco;
  - servidores de rede (gateway, DHCP, DNS) e teste de conectividade (ping);
  - programas que iniciam com o Windows (ativar/desativar como o
    Gerenciador de Tarefas, sem apagar nada).                                }
{----------------------------------------------------------------------------}

interface

uses
  Windows, SysUtils, Classes;

function InfoLixeira(out Bytes, Itens: Int64): Boolean;
function EsvaziaLixeira: Boolean;
function EspacoDisco(const Drive: string; out Livre, Total: Int64): Boolean;
procedure ServidoresRede(Gateways, Dhcp, Dns: TStrings);
function PingHost(const Host: string; out IP: string; out Ms: Cardinal;
  Timeout: DWORD = 1000): Boolean;
procedure TestaRede(L: TStrings);
procedure ProgramasInicializacao;

implementation

uses
  Forms, Controls, StdCtrls, ComCtrls, ExtCtrls, Dialogs, ShlObj, Registry,
  WinSock, IpTypes, IpHlpApi;

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

  function Px(V: Integer): Integer; { dimensões ajustadas ao DPI da tela }
  begin
    Result:= MulDiv(V, Screen.PixelsPerInch, 96);
  end;

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

end.
