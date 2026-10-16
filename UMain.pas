unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, mmSystem,
  Menus, ImgList, Buttons, Grids, Calendar, ShellAPI, Gauges,
  FileCtrl, ExtDlgs, ToolWin, WinSock,
  Registry, Printers, Mask, {WinInet,}
  jpeg, System.ImageList, UAnim, Vcl.Imaging.pngimage;

const Vrs='1.83o';
      Prg= 'Painel';
  Month: array [1..12] of string=
    ('Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');
  wm_IconMessage = wm_User;
  {---CPU-Usage---------------------------------------------}
  SystemBasicInformation = 0;
  SystemPerformanceInformation = 2;
  SystemTimeInformation = 3;

const HolyDay1: array[1..13] of string=
  (('Confraternização Universal'),
  ('Carnaval'),
  ('Sexta-feira Santa'),
  ('Páscoa'),
  ('Tiradentes'),
  ('Dia Mundial do Trabalho'),
  ('Corpus Christi'),
  ('Independência do Brasil'),
  ('N. Sra. Aparecida - Padroeira do Brasil'),
  ('Finados'),
  ('Proclamação da República'),
  ('Consciência Negra'),
  ('Natal'));

type str3= string[3];
     str30= string[30];
     function Lz(d:real; g:byte): string;
     function Cstr(sts:string; xb,xe:byte): string;
     function AdjustStringNumber(Opt:byte; sts:string): string;
     function GetWinDir: string;
     function GetWinSysDir: string;
     function GetRunDir: string;
     function DiaSemana(Dts: TDateTime): str3;
     procedure EnquadrarBitmap (Largura, Altura: LongInt; Fundo: TColor);
     function GetVlrTm(STmr: string): LongInt;
     function GetTm(Opt: byte; var vlr: LongInt): string;
     function GetExe(Ext: string): string;
     procedure ReproduzSom(Arquivo: string);
type
  { Opções da limpeza do sistema (gravadas em Painel.ini) }
  TOpcoesLimpeza = record
    Temp, Navegadores, Lixeira, WinUpdate, Erros: Boolean;
    Auto: Integer;      { 0 desativada, 1 ao iniciar o Painel, 2 diária, 3 semanal }
    Ultima: TDateTime;  { última limpeza feita com estas opções }
  end;

  TMainForm = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    Details1: TMenuItem;
    Close1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Config2: TMenuItem;
    SalvarFigura1: TMenuItem;
    Minimizar1: TMenuItem;
    Finalizar: TMenuItem;
    N4: TMenuItem;
    Sobre1: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    AbrirFigura1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Dos1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Notas1: TMenuItem;
    Calculadora1: TMenuItem;
    Fechar1: TMenuItem;
    Executar1: TMenuItem;
    ImageList1: TImageList;
    ImageList3: TImageList;
    ImprimirImagem1: TMenuItem;
    PrinterSetup1: TMenuItem;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    FindDialog1: TFindDialog;
    OpenDialog1: TOpenDialog;
    ImageList2: TImageList;
    Alarm1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    LEDPaint1: TShape;
    Panel3: TPanel;
    Panel12: TPanel;
    SpeedButton8: TSpeedButton;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel4: TPanel;
    Transparent1: TMenuItem;
    N5: TMenuItem;
    Transparent2: TMenuItem;
    Lock1: TMenuItem;
    Lock2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    TabSheet2: TTabSheet;
    MonthCalendar1: TMonthCalendar;
    Panel11: TPanel;
    LabelX6: TLabel;
    LabelX3: TLabel;
    SpeedButton1: TSpeedButton;
    TabSheet3: TTabSheet;
    TabSheet6: TTabSheet;
    LabelX5: TLabel;
    SpeedButton3: TSpeedButton;
    Memo2: TMemo;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Clock1: TPaintBox;
    TabSheet9: TTabSheet;
    LabelX2: TLabel;
    BmpAnimator3: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel10: TPanel;
    TabSheet10: TTabSheet;
    Image4: TImage;
    Panel14: TPanel;
    Shape2: TShape;
    PageScroller1: TPageScroller;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    LabelX8: TLabel;
    LabelEffect1: TLabel;
    LabelEffect2: TLabel;
    SpeedButton9: TSpeedButton;
    N6: TMenuItem;
    N7: TMenuItem;
    Panel7: TPanel;
    PaintBox1: TPaintBox;
    Label22: TLabel;
    Label6: TLabel;
    Panel15: TPanel;
    Panel16: TPanel;
    Memo5: TMemo;
    Memo1: TMemo;
    Image5: TImage;
    TabSheet11: TTabSheet;
    Panel17: TPanel;
    LabelX1: TLabel;
    PageScroller2: TPageScroller;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    Panel19: TPanel;
    StringGrid1: TStringGrid;
    ScrollBar1: TScrollBar;
    Panel18: TPanel;
    LabelX9: TLabel;
    LabelX10: TLabel;
    Panel20: TPanel;
    PageScroller3: TPageScroller;
    ToolBar3: TToolBar;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    Panel6: TPanel;
    Image2: TImage;
    Panel25: TPanel;
    Image3: TImage;
    Gauge1: TGauge;
    LabelX4: TLabel;
    SpeedButton10: TSpeedButton;
    Label7: TLabel;
    Gauge2: TGauge;
    ImageList4: TImageList;
    ImageList5: TImageList;
    Image6: TImage;
    TabSheet5: TTabSheet;
    LabelX11: TLabel;
    SpeedButton11: TSpeedButton;
    Panel9: TPanel;
    Gauge3: TGauge;
    Memo3: TMemo;
    SpeedButton13: TSpeedButton;
    Panel13: TPanel;
    Image8: TImage;
    ComboBox1: TComboBox;
    TabSheet4: TTabSheet;
    Panel21: TPanel;
    Label15: TLabel;
    Gauge4: TGauge;
    Label14: TLabel;
    Panel22: TPanel;
    Label17: TLabel;
    Gauge5: TGauge;
    Label16: TLabel;
    Panel23: TPanel;
    Label19: TLabel;
    Gauge6: TGauge;
    Label18: TLabel;
    Panel24: TPanel;
    Label21: TLabel;
    Gauge7: TGauge;
    Label20: TLabel;
    Panel26: TPanel;
    Image7: TImage;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Label9: TLabel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    UseMemGauge: TGauge;
    Panel33: TPanel;
    Label10: TLabel;
    Label3: TLabel;
    Panel34: TPanel;
    RamGauge: TGauge;
    Panel35: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    SwapGauge: TGauge;
    Label12: TLabel;
    Label2: TLabel;
    Panel28: TPanel;
    Panel27: TPanel;
    Label13: TLabel;
    VirtualGauge: TGauge;
    Label4: TLabel;
    Panel29: TPanel;
    Label5: TLabel;
    Panel36: TPanel;
    LabelX7: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    function ViewPRGStartWindows: boolean;
    procedure SavePRGStartWindows;
    procedure ErasePRGStartWindows;
    function EditTextFile(Arquivo: string): boolean;
    function EditExcelFile(Arquivo: string): boolean;
    procedure ShowPicture(PictureFileName1: string);
    procedure SempreVisivel(StOpt: boolean);
    procedure Posicionar(Opt: byte);
    procedure RefreshInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Details1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Config1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ProgressUpdate(Sender: TObject; Stage: TProgressStage;
      PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string);
    procedure SalvarFigura1Click(Sender: TObject);
    procedure SavePictureDialog1Close(Sender: TObject);
    procedure AbrirFigura1Click(Sender: TObject);
    procedure OpenPictureDialog1Close(Sender: TObject);
    procedure Dos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure LabelEffect1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LabelEffect2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClosedView;
    procedure Executar1Click(Sender: TObject);
    procedure ExecuteList;
    procedure ImprimirImagem1Click(Sender: TObject);
    procedure PrinterSetup1Click(Sender: TObject);
    procedure Notas1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Alarm1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Transparent1Click(Sender: TObject);
    procedure CheckListBox2Click(Sender: TObject);
    procedure Transparent2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Lock1Click(Sender: TObject);
    procedure Lock2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MonthCalendar1GetMonthBoldInfo(Sender: TObject; Month,
      Year: LongWord; var MonthBoldInfo: LongWord);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton36Click(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure StringGrid1Enter(Sender: TObject);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton37Click(Sender: TObject);
    procedure ToolButton38Click(Sender: TObject);
    procedure ToolButton39Click(Sender: TObject);
    procedure ToolButton40Click(Sender: TObject);
    procedure ToolButton41Click(Sender: TObject);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton43Click(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton44Click(Sender: TObject);
    procedure ToolButton45Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Clock1Paint(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure AbrirLimpezaNavegador(const Navegador: string);
    procedure SpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
    FAnim: TImageAnimator; {substitui o componente TBmpAnimator}
    Hour, Minute, Second: Word; {hora corrente}
    XCenter, YCenter, Radius: Integer; {tamanho atual do formulário}
    TrayIconData: TNotifyIconData;
    FTrayAdded: Boolean;        {ícone já está na área de notificação}
    FTrayIcon: HICON;           {ícone atual da bandeja (carregado com LoadImage)}
    FTrayIconName: string;      {nome do recurso do ícone atual, ex.: 'GN-YW'}
    FTaskbarCreated: Cardinal;  {mensagem enviada quando o Explorer reinicia}
    FTrayWnd: HWND;             {janela da barra de tarefas (Shell_TrayWnd) atual}
    FTrayRetry: Integer;        {segundos restantes para recolocar o ícone após reinício do Explorer}
    FCpuUso: Double;            {Última leitura de uso da CPU (%)}
    FDiscoOcupado: Boolean;     {aba de discos: mostra espaço ocupado (True) ou livre (False)}
    FLimpando: Boolean;         {limpeza de temporários em andamento}
    FOpcoes: TOpcoesLimpeza;    {opções da limpeza (Painel.ini)}
    FAutoFeita: Boolean;        {limpeza automática "ao iniciar" já executada}
    FTarefasSeg: Integer;       {segundos desde o início (tarefas periódicas)}
    FDiscoAlertado: string;     {unidades já avisadas de pouco espaço livre}
    FUltLiberado: Int64;        {resultado da última limpeza: bytes liberados}
    FUltApagados: Integer;      {resultado da última limpeza: arquivos apagados}
    FCpuAltaSeg, FMemAltaSeg: Integer; {segundos seguidos com CPU/memória acima do limite 2}
    FCpuAvisada, FMemAvisada: Boolean; {aviso de uso alto já mostrado neste episódio}
    FTempAltaSeg: Integer;      {segundos seguidos com a CPU acima de TempAlta}
    FTempAvisada: Boolean;      {aviso de temperatura alta já mostrado neste episódio}
    FUrlAviso: string;          {endereço aberto ao clicar no balão (nova versão)}
    FConsultandoVersao: Boolean; {consulta ao GitHub em andamento}
    FAtalhoAtivo: Boolean;      {atalho global (mostrar/ocultar) registrado}
    FAtalhoTexto: string;       {atalho em texto, ex.: 'Win+Alt+P'}
    FAtalhoErro: string;        {motivo de o atalho não ter sido registrado}
    FDiaAvisado: TDateTime;     {dia cujas datas (feriados, aniversários) já foram avisadas}
    FClipboard: TStringList;    {histórico da área de transferência (mais recente primeiro)}
    FMenuClip: array[0..1] of TMenuItem; {submenus do histórico (bandeja e janela)}
    { Mover Formulário sem Título }
    procedure WMNCHitTest(var M: TWMNCHitTest);
    message wm_NCHitTest;
    procedure AdicionaTrayIcon;
    procedure RecriaTrayIcon;
    procedure VerificaTrayIcon;
    procedure AtualizaTrayIcon(CpuPct, MemPct: Integer);
    procedure MinimizarParaBandeja;
    procedure MostraPastas(Pastas: TStringList; const Cabecalho: string;
      Lixeira: Boolean);
    procedure LimpaPastas(Pastas: TStringList; const Cabecalho: string;
      Lixeira: Boolean);
    procedure CarregaOpcoesLimpeza;
    procedure SalvaOpcoesLimpeza;
    function DialogoLimpeza: Integer;
    procedure LimpezaAutomatica;
    procedure VerificaTarefas;
    procedure VerificaEspacoDisco;
    procedure MostraAviso(const Titulo, Texto: string; Alerta: Boolean);
    procedure MostraTemporarios;
    procedure LimpaTemporarios;
    procedure LimpaNavegador(const Navegador: string);
    procedure ReiniciaComoAdmin;
    procedure AtualizaMemoria;
    procedure AtualizaDiscos;
    procedure VerificaUsoAlto(CpuPct, MemPct: Integer);
    procedure VerificaTemperatura;
    procedure VerificaAtualizacao(Manual: Boolean);
    procedure AtualizacaoClick(Sender: TObject);
    procedure RegistraAtalho;
    procedure AlternaJanela;
    procedure AvisaDatasDoDia;
    procedure ClipboardMudou;
    procedure AtualizaMenuClipboard;
    procedure ClipItemClick(Sender: TObject);
    procedure ClipLimparClick(Sender: TObject);
    procedure PowerShellClick(Sender: TObject);
    procedure DefineTransparente(Valor: Boolean);
    procedure DefineTravado(Valor: Boolean);
    procedure CriaMenusFerramentas;
    procedure ProcessosClick(Sender: TObject);
    procedure HistoricoClick(Sender: TObject);
    procedure BloquearClick(Sender: TObject);
    procedure DesligarMonitorClick(Sender: TObject);
    procedure MonthCalendar1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure InfoCopiarClick(Sender: TObject);
    procedure InfoSalvarClick(Sender: TObject);
    procedure InfoRedeClick(Sender: TObject);
    procedure InfoInicializacaoClick(Sender: TObject);
    { Grava a posição da janela ao terminar de arrastá-la }
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
  protected
    procedure WndProc(var Message: TMessage); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;

  public
    { Public declarations }
    procedure IconTray (var Msg: TMessage);
    message wm_IconMessage;
  end;

var
  MainForm: TMainForm;
  BmpImg, MyBmpImage : TBitmap;
  FCount, LCount, SCount, TCount: Integer;
  CrnCount, WrnTimeCount: LongInt;
  EditorChanged, Start, StartSlideShow, StartCPU, StChange,
  GetUsageCPU, StProcess, StSch1, StOk, StEx, StBegin,
  StErr, StMem1: boolean;
  {---Memory------------------------------------------------}
  MemInfo : TMemoryStatusEx; {Ex: valores corretos acima de 4 GB também em 32 bits}
  {---Info--------------------------------------------------}
  Version1, Plattform1, PlattID1, OSBuilder1, OSService1: string;
  PlatIDN1: DWord;
  {---CPU-Usage---------------------------------------------}
  CpuOldIdle, CpuOldTotal: UInt64;

implementation

uses USelDate, UConfig, USenha, ULembrete, UWarn, UAlarm, UAddr, UStartup,
  CommCtrl, TlHelp32, IniFiles, Clipbrd, UFerramentas, UDatas;

type
  { Dá acesso ao OnMouseMove, que é protegido no TMonthCalendar }
  TMonthCalendarAcesso = class(TMonthCalendar);

const
  IdAtalho = 1;           { RegisterHotKey: mostrar/ocultar o Painel }
  MaxClipboard = 20;      { textos guardados no histórico }
  MaxTextoClip = 100000;  { textos maiores não entram no histórico }

{$R *.DFM}
{$R RYG.RES}

{----------------------------------------------------------------------------}
{-------------------------Function---DiaSemana-------------------------------}
function DiaSemana(Dts: TDateTime): str3;
const Dwk: array [1..7] of string[3]= ('Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab');
begin
  Result := Dwk[DayOfWeek(Dts)];
end;
{----------------------------------------------------------------------------}
{-------------------------Function---Lz--------------------------------------}
function Lz(d:real; g:byte): string;
var Car: string;
begin
  Str(d:0:0,Car);
  while Length(Car)<g do  Car:='0'+Car;
  Result:=Car;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---Cstr----------------------------------}
function Cstr(sts:string; xb,xe:byte): string;
var dc: byte;
    ss: string;
begin
  ss:='';
  if Length(sts)>xe then for dc:=xb to xe do ss:=ss+sts[dc] else
  for dc:=xb to Length(sts) do ss:=ss+sts[dc];
  cstr:=ss;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---AdjustStringNumber--------------------}
function AdjustStringNumber(Opt:byte; sts:string): string;
var count: byte;
    ss: string;
begin
  ss:='';
  for count:=1 to Length(Sts) do
  begin
    if (Opt=1) and CharInSet(Sts[count], [#32]) then Ss:=ss+'0';
    if (Opt=1) and CharInSet(Sts[count], ['-',',']) then Ss:=ss+Sts[Count];
    if (Opt in [0..1]) and CharInSet(Sts[count], ['0','1','2','3','4','5','6','7','8','9']) then Ss:=ss+Sts[Count];
  end;
  AdjustStringNumber:=ss;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---GetDefaultPrinterName-----------------}
function GetDefaultPrinterName: string;
// Retorna o nome da impressora padrão do Windows
begin
  try
    if Printer.PrinterIndex >= 0 then
    begin
      Result:= Printer.Printers[Printer.PrinterIndex];
    end else
    begin
      Result := '??????';
    end;
  except
    Result := '??????';
  end;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---BitsPerPixel--------------------------}
function BitsPerPixel: Integer;
var dc: HDC;
  BitsPorPixel1: Integer;
begin
  Result:= 0;
  try
    dc := GetDc(0); // 0 = vídeo
    BitsPorPixel1 := GetDeviceCaps(dc,BitsPixel);
    Result:= BitsPorPixel1;
  finally
    ReleaseDC(0,dc);
  end;
// (16, 256, 65536, 16 bit Color, 24 bit Color, 32 bit Color)
end;
{----------------------------------------------------------------------------}
{---------------------------Function---GetComputer---------------------------}
function GetComputer: string;
const Buff_Size = MAX_COMPUTERNAME_LENGTH+1;
var lpBuffer: PChar;
 nSize: DWord;
begin
  try
    nSize:= Buff_Size; lpBuffer:= StrAlloc(Buff_Size);
    GetComputerName(lpBuffer,nSize);
    Result:= string(lpBuffer);
    StrDispose(lpBuffer);
  except
  end;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---GetUsr--------------------------------}
function GetUsr: string;
const Max = 254;
var Nome: string;
  Tam: DWORD;
begin
  try
    Tam := Max - 1;
    SetLength(Nome,Max);
    GetUserName(PChar(Nome),Tam);
    SetLength(Nome,Tam-1); {Tam inclui o #0 final}
    result := Nome;
  except
  end;
end;
{----------------------------------------------------------------------------}
{---------------------------Function---GetKeyBoardLanguage-------------------}
function GetKeyBoardLanguage: string;
var ID: LangID;
  Language: array [0..100] of char;
begin
  try
    ID:=GetSystemDefaultLangID;
    VerLanguageName(ID,Language,100);
    Result:= string(Language);
  except
  end;
end;
{----------------------------------------------------------------------------}
{---------------------------Procedure---GetIPList----------------------------}
procedure GetIPList(const List: TStrings);
var WSAData: TWSAData;
  HostName: array[0..255] of AnsiChar;
  HostInfo: PHostEnt;
  InAddr: ^PInAddr;
begin
  List.Clear;
  if WSAStartup($0202, WSAData) = 0 then
  try
    if WinSock.gethostname(HostName, SizeOf(HostName)) = 0 then
    begin
      HostInfo := gethostbyname(HostName);
      if HostInfo <> nil then
      begin
        InAddr := Pointer(HostInfo^.h_addr_list);
        if (InAddr <> nil) then
          while InAddr^ <> nil do
          begin
            List.Add(string(AnsiString(inet_ntoa(InAddr^^))));
            Inc(InAddr);
          end;
      end;
    end;
  finally
    WSACleanup;
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---Mapeamentos----------------------------}
procedure Mapeamentos(const List: TStrings);
var Count: integer;
  Caminho, Drive: string;
  Tamanho: DWORD;
begin
  List.Clear;
  try
    for Count:=0 to 25 do
    begin
      Drive:= Chr(Ord('A')+Count)+':';
      Tamanho:= MAX_PATH;
      SetLength(Caminho, Tamanho);
      if WNetGetConnection(PChar(Drive),PChar(Caminho),Tamanho) = NO_ERROR then
        List.Add(LowerCase(Drive + ' - '+ string(PChar(Caminho))));
    end;
  except
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---GetOSVersionInfo-----------------------}
procedure GetOSVersionInfo(var PlatIdN:DWord; var Version, Plattform, PlattID, OSBuilder, OSService: string);
{ Usa TOSVersion (System.SysUtils), que identifica corretamente o Windows 10/11.
  GetVersionEx foi descontinuado e informa versões erradas nos Windows atuais. }
begin
  PlatIdN   := VER_PLATFORM_WIN32_NT;
  Version   := Format('%s - %d.%d (%d)', [TOSVersion.Name, TOSVersion.Major, TOSVersion.Minor, TOSVersion.Build]);
  Plattform := 'Plataforma WinNT';
  PlattID   := IntToStr(VER_PLATFORM_WIN32_NT);
  OSBuilder := IntToStr(TOSVersion.Build);
  if TOSVersion.ServicePackMajor > 0 then
    OSService := Format('Service Pack %d.%d', [TOSVersion.ServicePackMajor, TOSVersion.ServicePackMinor])
  else
    OSService := '-';
end; {- GetOSVersionInfo }

{----------------------------------------------------------------------------}
{-------------------------Function---GetCPUSpeed-----------------------------}
{ Velocidade nominal da CPU (MHz) informada pelo Windows no registro.
  Substitui a antiga medição com a instrução RDTSC em assembler, que não é
  permitida no compilador de 64 bits e travava o programa por 0,5 s. }
function GetCPUSpeed: Double;
var Reg: TRegistry;
begin
  Result:= 0;
  Reg:= TRegistry.Create(KEY_READ);
  try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('HARDWARE\DESCRIPTION\System\CentralProcessor\0') then
    begin
      if Reg.ValueExists('~MHz') then Result:= Reg.ReadInteger('~MHz');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetCPUName------------------------------}
{ Nome comercial do processador, ex.: "Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz" }
function GetCPUName: string;
var Reg: TRegistry;
begin
  Result:= '';
  Reg:= TRegistry.Create(KEY_READ);
  try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('HARDWARE\DESCRIPTION\System\CentralProcessor\0') then
    begin
      if Reg.ValueExists('ProcessorNameString') then
        Result:= Trim(Reg.ReadString('ProcessorNameString'));
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetCPUUsage-----------------------------}
{ Uso total da CPU (%) desde a chamada anterior, via GetSystemTimes.
  Substitui NtQuerySystemInformation (API não documentada cujas estruturas
  não funcionam em 64 bits). Retorna False na primeira chamada. }
function GetCPUUsage(var Usage: Double): Boolean;
var Idle, Kernel, User: TFileTime;
  NIdle, NTotal: UInt64;

  function FT(const F: TFileTime): UInt64;
  begin
    Result:= (UInt64(F.dwHighDateTime) shl 32) or F.dwLowDateTime;
  end;

begin
  Result:= False;
  if not GetSystemTimes(Idle, Kernel, User) then Exit;
  NIdle:= FT(Idle);
  NTotal:= FT(Kernel) + FT(User); { o tempo de Kernel já inclui o ocioso }
  if (CpuOldTotal <> 0) and (NTotal > CpuOldTotal) then
  begin
    Usage:= 100.0 * (1.0 - (NIdle - CpuOldIdle) / (NTotal - CpuOldTotal));
    if Usage < 0 then Usage:= 0;
    if Usage > 100 then Usage:= 100;
    Result:= True;
  end;
  CpuOldIdle:= NIdle;
  CpuOldTotal:= NTotal;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetDriveNames---------------------------}
function GetDriveNames: string;
var D1: set of 0..25;
    D2: integer;
begin
  try
    Result:= '';
    DWORD(D1):= Windows.GetLogicalDrives;
    for D2 := 0 to 25 do
    if D2 in D1 then
      Result:= Result + Chr(D2 + Ord('A'))+': ';
  except
  end;
end; {- GetDriveNames }
{----------------------------------------------------------------------------}
{-------------------------Function---GetDiskType-----------------------------}
function GetDiskType(Drive: char): string;
begin
  try
    case GetDriveType(Pchar(Drive+':\')) of
      0:               Result:= 'Undetermined.';
      1:		           Result:= 'The root directory does not exist.';
      DRIVE_REMOVABLE: Result:= 'Removable Disk';
      DRIVE_FIXED:     Result:= 'Hard Disk (Fixed)';
      DRIVE_REMOTE:    Result:= 'Remote Drive';
      DRIVE_CDROM:     Result:= 'CD-ROM Drive';
      DRIVE_RAMDISK:   Result:= 'RAM Disk';
    end;
  except
  end;
end; {- GetDiskType }
{----------------------------------------------------------------------------}
{-------------------------Procedure---GetVolInfo-----------------------------}
procedure GetVolInfo(FDrive: string; var VolLabel, VolSerial, VolFileSystem: string);
var NSerial, Flags, MaxSize: DWord;
begin
  SetLength(VolLabel,255);
  SetLength(VolFileSystem,255);
  try
    GetVolumeInformation(PChar(FDrive+':\'),PChar(VolLabel), 255, @NSerial,
      MaxSize, Flags, PChar(VolFileSystem), 255);
    VolSerial:= IntToHex(NSerial,8);
    VolLabel:= string(PChar(VolLabel));
    VolFileSystem:= string(PChar(VolFileSystem));
  except
    VolLabel:='';
    VolSerial:='';
    VolFileSystem:='';
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetTempDir------------------------------}
function GetTempDir: string;
// Retorna a pasta temporária do usuário (%TEMP%) com uma única '\' no final.
// GetTempPath já devolve a '\' final e pode vir no formato curto 8.3
// (ex.: C:\Users\NOMEUS~1\...) quando o nome do usuário é longo.
var Buf: array[0..MAX_PATH] of Char;
begin
  SetString(Result, Buf, GetTempPath(MAX_PATH, Buf));
  if (Result<>'') and (GetLongPathName(PChar(Result), Buf, MAX_PATH)>0) then
    Result:= Buf;
  if Result<>'' then Result:= IncludeTrailingPathDelimiter(Result);
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetWinDir-------------------------------}
function GetWinDir: string;
var Buf: array[0..MAX_PATH] of Char;
begin
  SetString(Result, Buf, GetWindowsDirectory(Buf, MAX_PATH));
  if Result<>'' then Result:= IncludeTrailingPathDelimiter(Result);
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetWinSysDir----------------------------}
function GetWinSysDir: string;
var Buf: array[0..MAX_PATH] of Char;
begin
  SetString(Result, Buf, GetSystemDirectory(Buf, MAX_PATH));
  if Result<>'' then Result:= IncludeTrailingPathDelimiter(Result);
end;
{----------------------------------------------------------------------------}
{-------------------------Function---GetRunDir-------------------------------}
function GetRunDir: string;
begin
  GetRunDir := ExtractFilePath(ParamStr(0));
end;
{----------------------------------------------------------------------------}
{-------------------------Function---ExecAndWait-----------------------------}
function ExecAndWait(const FileName, Params: string;
  const WindowState: Word): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos }
  CmdLine := '"' + Filename + '"' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  Result:= False;
  with SUInfo do
  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
  CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
  PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  { Aguarda até ser finalizado }
  if Result= True then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end; //- Exemplo de uso: ExecAndWait('c:\windows\notepad.exe', '', SW_SHOW);
{----------------------------------------------------------------------------}
{-------------------------Function---ExecutaComando--------------------------}
{ Executa uma linha de comando (programa e parâmetros), sem aguardar. Se não
  for um programa (documento, pasta, endereço da internet ou nome registrado
  em App Paths, ex.: "winword"), abre com o programa associado.            }
function ExecutaComando(const Comando: string): Boolean;
var SI: TStartupInfo;
  PI: TProcessInformation;
  Cmd: string;
begin
  Result:= False;
  Cmd:= Trim(Comando);
  if Cmd='' then Exit;
  FillChar(SI, SizeOf(SI), 0);
  SI.cb:= SizeOf(SI);
  UniqueString(Cmd); { CreateProcessW pode alterar o texto da linha de comando }
  if CreateProcess(nil, PChar(Cmd), nil, nil, False, NORMAL_PRIORITY_CLASS,
      nil, nil, SI, PI) then
  begin
    CloseHandle(PI.hProcess);
    CloseHandle(PI.hThread);
    Exit(True);
  end;
  Result:= AbrirArquivo(Cmd);
end;
{----------------------------------------------------------------------------}
{-------------------------function---nFileToStr------------------------------}
function nFileToStr(const nArq: TFileName): string;
var Fs: TFileStream;
  Bytes: TBytes;
begin
  Fs := TFileStream.Create(nArq, fmOpenRead or fmShareDenyWrite);
  try
    SetLength(Bytes, Fs.Size);
    if Length(Bytes) > 0 then
      Fs.ReadBuffer(Bytes[0], Length(Bytes));
  finally
    Fs.Free;
  end;
  Result := TEncoding.ANSI.GetString(Bytes);
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---EnquadrarBitmap------------------------}
procedure EnquadrarBitmap (Largura, Altura: LongInt; Fundo: TColor);
var R: TRect;
  P: TPoint;
begin
  MyBmpImage.PixelFormat:= BmpImg.PixelFormat;
  MyBmpImage.Width:= Largura;
  MyBmpImage.Height:= Altura;
  with R do
  begin
    if (BmpImg.Width <= Largura) and (BmpImg.Height <= Altura) then
    begin
      // Centralizar a imagem
      Left:= (Largura div 2) - (BmpImg.Width  div 2);
      Right:= Left+BmpImg.Width;
      Top:= (Altura div 2) - (BmpImg.Height div 2);
      Bottom:= Top  + BmpImg.Height;
    end else
    begin
      Right:= BmpImg.Width;
      Bottom:= BmpImg.Height;
      if BmpImg.Width > Largura then
      begin
        Bottom:= Round (Bottom*(Largura/Right));
        Right:= Largura;
      end;
      if Bottom > Altura then
      begin
        Right := Round (Right*(Altura/Bottom));
        Bottom:= Altura;
      end;
      Left:= (Largura div 2) - (Right div 2);
      Right:= Left + Right;
      Top:= (Altura  div 2) - (Bottom div 2);
      Bottom:= Top + Bottom;
    end;
  end;
  MyBmpImage.Canvas.Brush.Color:= Fundo;
  MyBmpImage.Canvas.FillRect (Rect (0, 0, MyBmpImage.Width, MyBmpImage.Height));
  SetStretchBltMode (MyBmpImage.Canvas.Handle, STRETCH_DELETESCANS);
  MyBmpImage.Canvas.CopyRect (R, BmpImg.Canvas, Rect (0, 0, BmpImg.Width, BmpImg.Height));
end; // EnquadrarBitmap ()
{----------------------------------------------------------------------------}
function feriados(Year1: string; v: integer): tdatetime;
var n1, n2, n3, n4 ,n5, n6, n7, n8, n9, n10, n11, n12, ano, mes, dia: integer;
  Pascoa: TDateTime;
begin
  ano:= StrtoInt(Year1);
  n1:=ano mod 19;
  n2:= ano div 100;
  n3:= ano mod 100;
  n4:= n2 div 4;
  n5:= n2 mod 4;
  n6:= (n2 + 8) div 25;
  n7:= (n2 - n6 + 1) div 3;
  n8:= (19 * n1 + n2 - n4 - n7 + 15) mod 30;
  n9:= n3 div 4;
  n10:= n3 mod 4;
  n11:= (32 + 2 * n5 + 2 * n9 - n8 - n10) mod 7;
  n12:= (n1 + 11 * n8 + 22 * n11) div 451;
  mes:= (n8 + n11 - 7 * n12 + 114) div 31;
  dia:= (n8 + n11 - 7 * n12 + 114) mod 31;
  { Páscoa = dia+1 do mês. Calculado a partir do dia 1 para não gerar data
    inválida (ex.: Páscoa em 01/04 faria a Sexta-feira Santa cair no dia -1) }
  Pascoa:= EncodeDate(ano,mes,1) + dia;
  case v of
    1: result:= Pascoa - 47; //Carnaval
    2: result:= Pascoa - 2;  //Sexta-feira Santa
    4: result:= Pascoa + 60; //Corpus Christi
  else
    result:= Pascoa;         //Páscoa (v = 3)
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---NomeFeriado-----------------------------}
{ Nome do feriado nacional na data D, ou '' se não for feriado }
function NomeFeriado(D: TDateTime): string;
type TFeriadoFixo = record Dia, Mes, Idx: Word; end; { Idx = índice em HolyDay1 }
const Fixos: array[1..9] of TFeriadoFixo = (
  (Dia: 1;  Mes: 1;  Idx: 1),  (Dia: 21; Mes: 4;  Idx: 5),
  (Dia: 1;  Mes: 5;  Idx: 6),  (Dia: 7;  Mes: 9;  Idx: 8),
  (Dia: 12; Mes: 10; Idx: 9),  (Dia: 2;  Mes: 11; Idx: 10),
  (Dia: 15; Mes: 11; Idx: 11), (Dia: 20; Mes: 11; Idx: 12),
  (Dia: 25; Mes: 12; Idx: 13));
  Moveis: array[1..4] of Word = (2, 3, 4, 7); { Carnaval, Sexta Santa, Páscoa, Corpus Christi }
  Dist: array[1..4] of Integer = (-47, -2, 0, 60); { dias a partir da Páscoa }
var A, M, Dd: Word;
  I, P: Integer;
begin
  Result:= '';
  D:= Trunc(D);
  DecodeDate(D, A, M, Dd);
  for I:= Low(Fixos) to High(Fixos) do
    if (Fixos[I].Dia=Dd) and (Fixos[I].Mes=M) then
      Exit(string(HolyDay1[Fixos[I].Idx]));
  { feriados móveis: Páscoa calculada uma única vez }
  P:= Trunc(Feriados(IntToStr(A), 3));
  for I:= 1 to 4 do
    if P+Dist[I]=D then
      Exit(string(HolyDay1[Moveis[I]]));
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---GetVlrTm-------------------------------}
function GetVlrTm(STmr: string): LongInt;
var SubStr, SHor, SMin, SSeg: string;
begin
  STmr:= Trim(STmr);
  if (STmr= '') or (STmr=':  :') or (STmr=': :') or
     (STmr=':') or (STmr='00:00') or (STmr='00:00:00') or
     (STmr='00:') or (STmr=':00') then Result:=0 else
  begin
    SubStr:=''; SHor:=''; SMin:=''; SSeg:='';
    if (Pos(':', STmr)>0) then
    begin
      SHor:=Trim(Cstr(STmr,1, Pos(':', STmr)-1));
      SubStr:=Trim(Cstr(STmr,Pos(':', STmr)+1,Length(STmr)));
      if (SubStr<>'') then
      begin
        if (Pos(':', SubStr)>0) then
        begin
          SMin:=Trim(Cstr(SubStr,1, Pos(':', SubStr)-1));
          SSeg:=Trim(Cstr(SubStr,Pos(':', SubStr)+1,Length(SubStr)));
        end else
        begin
          SMin:=Trim(Cstr(SubStr,Pos(':', SubStr)+1,Length(SubStr)));
        end;
      end;
    end else SHor:= Trim(STmr);
    SHor:= AdjustStringNumber(0,SHor);
    SMin:= AdjustStringNumber(0,SMin);
    SSeg:= AdjustStringNumber(0,SSeg);
    if SHor='' then SHor:= '0';
    if SMin='' then SMin:= '0';
    if SSeg='' then SSeg:= '0';
    Result:= StrtoInt(SSeg)+StrtoInt(SMin)*60+StrtoInt(SHor)*3600;
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---GetTm----------------------------------}
function GetTm(Opt: byte; var vlr: LongInt): string;
var hor, min, seg: LongInt;
   StNeg: boolean;
begin
  {Hor:= vlr div 3600;
  Min:= (vlr mod 3600) div 60;
  Seg:= (vlr mod 3600) mod 60;}
  if vlr<0 then
  begin
    vlr:= -vlr; StNeg:= True;
  end else StNeg:= False;
  case Opt of
    3: {Hor} Result:= Lz(vlr div 3600,2);
    2: {Min} if vlr mod 3600>0 then Result:= Lz((vlr mod 3600) div 60,2) else
               Result:= '00';
    1: {Seg} if ((vlr mod 3600) mod 60) >0 then Result:= Lz((vlr mod 3600) mod 60,2) else
               Result:= '00';
    0: begin
         Result:= Lz(vlr div 3600,2)+':'+Lz((vlr mod 3600) div 60,2)+':'+Lz((vlr mod 3600) mod 60,2);
         if StNeg= True then Result:= '- '+Result;
       end;
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------function---GetExe----------------------------------}
function GetExe(Ext: string): string;
//
// Retorna o path completo do aplicativo que está associado
// ao arquivo cuja extensão você colocou em Ext
//
// Exemplo:
//
// Showmessage(GetExe('txt'));
// Vai retornar: C:\Windows\Notepad.exe
//
var reg: TRegistry;
  s: string;
  i: integer;
begin
  s := '';
  reg := TRegistry.Create(KEY_READ);
  try
    reg.RootKey := HKEY_CLASSES_ROOT;
    if reg.OpenKeyReadOnly('.' + ext + '\shell\open\command') then
    begin
      s:= reg.ReadString('');
      reg.CloseKey;
    end else
    if reg.OpenKeyReadOnly('.' + ext) then
    begin
      s:= reg.ReadString('');
      reg.CloseKey;
      if (s <> '') and reg.OpenKeyReadOnly(s + '\shell\open\command') then
      begin
        s:= reg.ReadString('');
        reg.CloseKey;
      end;
    end;
  finally
    reg.Free;
  end;
  if ((length(s) > 0) and (s[1] = '"')) then
  Delete(s, 1, 1);
  i:= Pos('.EXE',UpperCase(s));
  if i=0 then
  begin
    Result := '';
  end else
  begin
    Result:= Copy(s, 1, i +3);
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---ReproduzSom----------------------------}
procedure ReproduzSom(Arquivo: string);
begin
  if (FileExists(Arquivo)=True) then
  begin
    PlaySound(PChar(Arquivo), 0, SND_ASYNC or SND_FILENAME);
  end else
  begin
    PlaySound('alarm',hInstance, snd_resource or snd_async);
  end;
end;
{----------------------------------------------------------------------------}
{-------------------------Function---MyExitWindows---------------------------}
function MyExitWindows(Flag: Longword): Boolean;
var
  TokenPriv: TTokenPrivileges;
  H: DWord;
  HToken: THandle;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    begin
      OpenProcessToken(GetCurrentProcess,
          TOKEN_ADJUST_PRIVILEGES,HToken);
      LookUpPrivilegeValue(NIL, 'SeShutdownPrivilege',
          TokenPriv.Privileges[0].Luid);
      TokenPriv.PrivilegeCount := 1;
      TokenPriv.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
      H := 0;
      AdjustTokenPrivileges(HToken, FALSE,
         TokenPriv, 0, PTokenPrivileges(NIL)^, H);
      CloseHandle(HToken);
    end;
  Result := ExitWindowsEx(Flag, 0);
end;
// Example to shutdown Windows: MyExitWindows(EWX_POWEROFF or EWX_FORCE);
// Example to reboot Windows: MyExitWindows(EWX_REBOOT or EWX_FORCE);
// Parameters for MyExitWindows()
{----------------------------------------------------------------------------}
{-------------------------Function---ViewPRGStartWindows---------------------}
{ Iniciar com o Windows: usa um atalho na pasta "Inicializar" do usuário
  (ver UStartup.pas). Não grava no registro e não exige administrador. }
function TMainForm.ViewPRGStartWindows: boolean;
begin
  Result:= StartupEnabled;
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---SavePRGStartWindows--------------------}
procedure TMainForm.SavePRGStartWindows;
begin
  if not EnableStartup then
    MessageDlg('Não foi possível criar o atalho de inicialização em:'+#13+
      StartupFolder, mtWarning, [mbOk], 0);
end;
{----------------------------------------------------------------------------}
{-------------------------Procedure---ErasePRGStartWindows-------------------}
procedure TMainForm.ErasePRGStartWindows;
begin
  if not DisableStartup then
    MessageDlg('Não foi possível remover o atalho de inicialização:'+#13+
      StartupShortcutFile, mtWarning, [mbOk], 0);
end;
{----------------------------------------------------------------------------}
{-------------------------Function---EditTextFile----------------------------}
{ Abre o arquivo no Bloco de Notas }
function TMainForm.EditTextFile(Arquivo: string): boolean;
begin
  Result:= False;
  if Arquivo='' then Exit;
  if not FileExists(Arquivo) then
    ShowMessage('Arquivo "'+Arquivo+'" não encontrado!')
  else
    Result:= AbrirArquivo('notepad.exe', '"'+Arquivo+'"', Handle);
end;
{----------------------------------------------------------------------------}
{-------------------------Function---EditExcelFile---------------------------}
{ Abre o arquivo (ex.: .csv) no programa associado (Excel, LibreOffice...) }
function TMainForm.EditExcelFile(Arquivo: string): boolean;
begin
  Result:= False;
  if Arquivo='' then Exit;
  if not FileExists(Arquivo) then
    ShowMessage('Arquivo "'+Arquivo+'" não encontrado!')
  else
    Result:= AbrirArquivo(Arquivo, '', Handle);
end;
{ FmtValue e FmtPct ficam em UFerramentas }
{-----------------------------------------------------------------------------}
procedure TMainForm.ShowPicture(PictureFileName1: string);
begin
  try
    Image1.Picture.LoadFromFile(PictureFileName1);
  except
    on EInvalidGraphic do
      Image1.Picture.Graphic := nil;
  end;
  Panel4.Caption:= PictureFileName1+Format(' (%d x %d)', [Image1.Picture.Width, Image1.Picture.Height]);
  ConfigForm.SetJPEGOptions(self);
  ConfigForm.EditFileName.Enabled:= (Image1.Picture <> nil);
  ConfigForm.CheckListBox1.Enabled:= (Image1.Picture <> nil);
  Image1.Stretch:= ConfigForm.CheckListBox1.Checked[0];
  Image1.Center:= ConfigForm.CheckListBox1.Checked[1];
  if (PictureFileName1<>'') and (FileExists(PictureFileName1))
  and (ConfigForm.CheckListBox1.Checked[2]=True)
  and ((UpperCase(ExtractFileExt(PictureFileName1))= '.BMP')
  or (UpperCase(ExtractFileExt(PictureFileName1))= '.JPG')
  or (UpperCase(ExtractFileExt(PictureFileName1))= '.JPEG')) then
  begin
    BmpImg.Assign(Image1.Picture.Graphic);
    Image1.Picture.Assign(nil);
    EnquadrarBitmap(Image1.Width, Image1.Height, clBtnFace);
    Image1.Picture.Graphic:= MyBmpImage;
    Image1.Canvas.Brush.Style:= bsClear;
    Image1.Canvas.Brush.Color:= clBtnFace;
  end;
end;

procedure TMainForm.WMNCHitTest(var M: TWMNCHitTest);
begin
  inherited;
  if M.Result = htClient then
  M.Result := htCaption;
end;

procedure TMainForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const sc_DragMove = $f012;
begin
  if CnfData.Frm.StLockForm= True then
  begin
    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);
  end;
end;

procedure TMainForm.SempreVisivel(StOpt: boolean);
begin
  if StOpt= True then
    SetWindowPos (MainForm.Handle, hwnd_TopMost,
      0, 0, 0, 0, swp_NoMove or swp_NoSize)
  else
    SetWindowPos (Mainform.Handle, hwnd_NoTopMost,
      0, 0, 0, 0, swp_NoMove or swp_NoSize);
end;

procedure TMainForm.Posicionar(Opt: byte);
var r: TRect;
begin
  { área de trabalho do monitor principal (desconta a barra de tarefas) }
  r:= Screen.WorkAreaRect;
  if Opt=0 then
    Left := r.Left + ((r.Right - r.Left) - Width) div 2
  else
    Left := r.Right - Width - 20;
  Top := r.Top + ((r.Bottom - r.Top) - Height) div 2;
end;

{----------------------------------------------------------------------------}
{-------------------Function---GetComputerNameFmt----------------------------}
{ Substitui TTcpClient.LocalHostName / LocalDomainName }
function GetComputerNameFmt(Fmt: TComputerNameFormat): string;
var Size: DWORD;
begin
  Size:= 0;
  GetComputerNameEx(Fmt, nil, Size);
  SetLength(Result, Size);
  if (Size > 0) and GetComputerNameEx(Fmt, PChar(Result), Size) then
    SetLength(Result, Size)
  else
    Result:= '';
end;

{----------------------------------------------------------------------------}
{-------------------Informações adicionais do sistema------------------------}
{ TPerfInfo, TProcMemCounters, PsGetPerformanceInfo, PsGetProcessMemoryInfo
  e ShIsUserAnAdmin ficam em UFerramentas.                                  }

{-------------------Arquivo de paginação (SWAP)------------------------------}
{ GlobalMemoryStatusEx não informa o arquivo de paginação: ullTotalPageFile é
  o limite de memória confirmada (RAM + paginação). O tamanho do arquivo vem
  de CommitLimit - PhysicalTotal e o uso do contador oficial do Windows
  "\Paging File(_Total)\% Usage" (pdh.dll).                                 }
type
  { PDH_FMT_COUNTERVALUE (pdh.h): o union começa alinhado em 8 bytes }
  TPdhFmtCounterValue = record
    CStatus: DWORD;
    Valor: Double;
  end;

const PDH_FMT_DOUBLE = $00000200;

function PdhOpenQuery(szDataSource: PChar; dwUserData: NativeUInt;
  var phQuery: THandle): Longint; stdcall; external 'pdh.dll' name 'PdhOpenQueryW';
function PdhAddEnglishCounter(hQuery: THandle; szFullCounterPath: PChar;
  dwUserData: NativeUInt; var phCounter: THandle): Longint; stdcall;
  external 'pdh.dll' name 'PdhAddEnglishCounterW';
function PdhCollectQueryData(hQuery: THandle): Longint; stdcall; external 'pdh.dll';
function PdhGetFormattedCounterValue(hCounter: THandle; dwFormat: DWORD;
  lpdwType: PDWORD; var pValue: TPdhFmtCounterValue): Longint; stdcall; external 'pdh.dll';
function PdhCloseQuery(hQuery: THandle): Longint; stdcall; external 'pdh.dll';

var PdhQuery, PdhPagina: THandle; { abertos na 1ª leitura, fechados no FormDestroy }

{ Tamanho e uso do(s) arquivo(s) de paginação, em bytes. Retorna False se não
  houver arquivo de paginação. Se o contador não estiver disponível, Usado = 0. }
function LePaginacao(var Total, Usado: UInt64): Boolean;
var Perf: TPerfInfo;
  V: TPdhFmtCounterValue;
begin
  Result:= False;
  Total:= 0;
  Usado:= 0;
  FillChar(Perf, SizeOf(Perf), 0);
  Perf.cb:= SizeOf(Perf);
  if not PsGetPerformanceInfo(Perf, SizeOf(Perf)) then Exit;
  if Perf.CommitLimit <= Perf.PhysicalTotal then Exit; { sem arquivo de paginação }
  Total:= UInt64(Perf.CommitLimit - Perf.PhysicalTotal) * Perf.PageSize;
  Result:= True;
  if PdhQuery=0 then
  begin
    if PdhOpenQuery(nil, 0, PdhQuery)<>0 then
    begin
      PdhQuery:= 0;
      Exit;
    end;
    if PdhAddEnglishCounter(PdhQuery, '\Paging File(_Total)\% Usage', 0, PdhPagina)<>0 then
      PdhPagina:= 0;
  end;
  if (PdhPagina<>0) and (PdhCollectQueryData(PdhQuery)=0) and
     (PdhGetFormattedCounterValue(PdhPagina, PDH_FMT_DOUBLE, nil, V)=0) then
    Usado:= Round(Total * V.Valor / 100);
end;

{-------------------Function---RegLerStr-------------------------------------}
{ Lê um valor (texto ou número) do registro somente para leitura }
function RegLerStr(Root: HKEY; const Chave, Nome: string): string;
var Reg: TRegistry;
begin
  Result:= '';
  Reg:= TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);
  try
    try
      Reg.RootKey:= Root;
      if Reg.OpenKeyReadOnly(Chave) then
      begin
        if Reg.ValueExists(Nome) then
          case Reg.GetDataType(Nome) of
            rdString, rdExpandString: Result:= Trim(Reg.ReadString(Nome));
            rdInteger: Result:= IntToStr(Cardinal(Reg.ReadInteger(Nome)));
          end;
        Reg.CloseKey;
      end;
    except
      Result:= '';
    end;
  finally
    Reg.Free;
  end;
end;

{-------------------Function---FmtDuracao------------------------------------}
function FmtDuracao(Seg: Int64): string;
begin
  Result:= Format('%d dia(s) %.2d:%.2d:%.2d',
    [Seg div 86400, (Seg mod 86400) div 3600, (Seg mod 3600) div 60, Seg mod 60]);
end;

{-------------------Function---NomeArquitetura-------------------------------}
function NomeArquitetura: string;
begin
  case TOSVersion.Architecture of
    TOSVersion.TArchitecture.arIntelX86: Result:= 'x86 (32 bits)';
    TOSVersion.TArchitecture.arIntelX64: Result:= 'x64 (64 bits)';
  else
    Result:= 'ARM';
  end;
end;

{-------------------Procedure---ListaMonitores-------------------------------}
procedure ListaMonitores(L: TStrings);
var I: Integer;
  S: string;
begin
  L.Add(Format('Monitores: %d', [Screen.MonitorCount]));
  for I:= 0 to Screen.MonitorCount-1 do
  begin
    S:= Format('#%d: %d x %d - %d dpi (%d%%)', [I+1,
      Screen.Monitors[I].Width, Screen.Monitors[I].Height,
      Screen.Monitors[I].PixelsPerInch,
      Round(Screen.Monitors[I].PixelsPerInch * 100 / 96)]);
    if Screen.Monitors[I].Primary then S:= S + ' - principal';
    L.Add(S);
  end;
end;

{-------------------Procedure---ListaPlacasVideo-----------------------------}
procedure ListaPlacasVideo(L: TStrings);
var DD: TDisplayDevice;
  I: DWORD;
  Nomes: TStringList;
  S: string;
begin
  Nomes:= TStringList.Create;
  try
    Nomes.Sorted:= True;
    Nomes.Duplicates:= dupIgnore;
    I:= 0;
    FillChar(DD, SizeOf(DD), 0);
    DD.cb:= SizeOf(DD);
    while EnumDisplayDevices(nil, I, DD, 0) do
    begin
      S:= DD.DeviceString;
      S:= Trim(S);
      if S <> '' then Nomes.Add(S);
      Inc(I);
      FillChar(DD, SizeOf(DD), 0);
      DD.cb:= SizeOf(DD);
    end;
    for S in Nomes do L.Add('Adaptador: ' + S);
  finally
    Nomes.Free;
  end;
end;

{-------------------Procedure---ListaEnergia---------------------------------}
procedure ListaEnergia(L: TStrings);
var PS: TSystemPowerStatus;
begin
  if not GetSystemPowerStatus(PS) then Exit;
  case PS.ACLineStatus of
    0: L.Add('Alimentação: bateria');
    1: L.Add('Alimentação: tomada (AC)');
  else
    L.Add('Alimentação: desconhecida');
  end;
  if (PS.BatteryFlag and 128) <> 0 then
    L.Add('Bateria: não instalada')
  else if PS.BatteryLifePercent <= 100 then
  begin
    if (PS.BatteryFlag and 8) <> 0 then
      L.Add(Format('Bateria: %d%% (carregando)', [PS.BatteryLifePercent]))
    else
      L.Add(Format('Bateria: %d%%', [PS.BatteryLifePercent]));
    if PS.BatteryLifeTime <> $FFFFFFFF then { tempo desconhecido }
      L.Add('Autonomia estimada: ' + FmtDuracao(PS.BatteryLifeTime));
  end;
end;

{-------------------Function---ResumoDiscoSistema---------------------------}
function ResumoDiscoSistema: string;
var Drive: string;
  Livre, Total: Int64;
begin
  Result:= '';
  Drive:= ExtractFileDrive(GetWinDir);
  if (Drive='') or not EspacoDisco(Drive, Livre, Total) then Exit;
  Result:= Format('%s livre em %s (%s)', [FmtValue(1, Livre), Drive,
    FmtPct(Livre, Total)]);
end;

{-------------------Procedure---ListaSessao---------------------------------}
procedure ListaSessao(L: TStrings);
var Sessao: DWORD;
  S: string;
begin
  Sessao:= 0;
  ProcessIdToSessionId(GetCurrentProcessId, Sessao);
  L.Add(Format('Sessão: %d', [Sessao]));
  if GetSystemMetrics(SM_REMOTESESSION)<>0 then
    L.Add('Tipo de sessão: remota')
  else
    L.Add('Tipo de sessão: local');
  S:= SysUtils.GetEnvironmentVariable('SESSIONNAME');
  if S<>'' then L.Add('Nome da sessão: '+S);
end;

{-------------------Function---IdiomaUsuario--------------------------------}
function IdiomaUsuario: string;
var Buf: array[0..127] of Char;
begin
  Result:= '';
  if GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SLANGUAGE, Buf, Length(Buf))>0 then
    Result:= Buf;
end;

{-------------------Function---FusoHorario-----------------------------------}
function FusoHorario: string;
var TZ: TTimeZoneInformation;
  R: DWORD;
  Bias: Integer;
  Nome, Sinal: string;
begin
  Result:= '';
  R:= GetTimeZoneInformation(TZ);
  if R = $FFFFFFFF then Exit; { TIME_ZONE_ID_INVALID }
  if R = 2 then { TIME_ZONE_ID_DAYLIGHT }
  begin
    Bias:= TZ.Bias + TZ.DaylightBias;
    Nome:= TZ.DaylightName;
  end else
  begin
    Bias:= TZ.Bias + TZ.StandardBias;
    Nome:= TZ.StandardName;
  end;
  Bias:= -Bias; { Bias do Windows = UTC - hora local }
  if Bias < 0 then Sinal:= '-' else Sinal:= '+';
  Result:= Format('%s (UTC%s%.2d:%.2d)', [Trim(Nome), Sinal, Abs(Bias) div 60, Abs(Bias) mod 60]);
end;

{-------------------Rede: domínio, servidor de logon, gateway, DNS-----------}
function NetGetJoinInformation(lpServer: PChar; var lpNameBuffer: PChar;
  var BufferType: DWORD): DWORD; stdcall; external 'netapi32.dll';
function NetApiBufferFree(Buffer: Pointer): DWORD; stdcall; external 'netapi32.dll';

type
  { DOMAIN_CONTROLLER_INFOW (dsgetdc.h) }
  PDomainControllerInfo = ^TDomainControllerInfo;
  TDomainControllerInfo = record
    DomainControllerName, DomainControllerAddress: PChar;
    DomainControllerAddressType: ULONG;
    DomainGuid: TGUID;
    DomainName, DnsForestName: PChar;
    Flags: ULONG;
    DcSiteName, ClientSiteName: PChar;
  end;

function DsGetDcName(ComputerName, DomainName: PChar; DomainGuid: PGUID;
  SiteName: PChar; Flags: ULONG; var Info: PDomainControllerInfo): DWORD; stdcall;
  external 'netapi32.dll' name 'DsGetDcNameW';

{ Mesmas informações de rede do comando "systeminfo" / "ipconfig /all":
  domínio ou grupo de trabalho, servidor de logon (quem validou o login),
  controlador de domínio, gateway, servidor DHCP e servidores DNS. }
procedure ListaRede(L: TStrings);
const NetSetupWorkgroupName = 2;
      NetSetupDomainName    = 3;
      DS_BACKGROUND_ONLY    = $00000100; { só o cache: não trava fora da rede }
      DS_RETURN_DNS_NAME    = $40000000;
var Nome: PChar;
  Tipo: DWORD;
  DC: PDomainControllerInfo;
  S: string;
  Gw, Dhcp, Dns: TStringList;

  function SemBarras(const V: string): string;
  begin
    Result:= V;
    while (Result<>'') and (Result[1]='\') do Delete(Result, 1, 1);
  end;

  procedure Mostra(const Rotulo: string; Lista: TStringList);
  var V: string;
  begin
    for V in Lista do L.Add(Rotulo + V);
  end;

begin
  { Domínio ou grupo de trabalho }
  Tipo:= 0;
  Nome:= nil;
  if NetGetJoinInformation(nil, Nome, Tipo)=0 then
  try
    case Tipo of
      NetSetupDomainName:    L.Add('Domínio: '+string(Nome));
      NetSetupWorkgroupName: L.Add('Grupo de trabalho: '+string(Nome));
    end;
  finally
    NetApiBufferFree(Nome);
  end;
  { Servidor de logon: com conta local é o próprio computador }
  S:= SemBarras(SysUtils.GetEnvironmentVariable('LOGONSERVER'));
  if S<>'' then
    if SameText(S, GetComputer) then
      L.Add('Servidor de logon: \\'+S+' (conta local)')
    else
      L.Add('Servidor de logon: \\'+S);
  { Controlador de domínio (somente em computador no domínio) }
  if Tipo=NetSetupDomainName then
  begin
    DC:= nil;
    if DsGetDcName(nil, nil, nil, nil, DS_BACKGROUND_ONLY or DS_RETURN_DNS_NAME, DC)=0 then
    try
      L.Add('Controlador de domínio: '+SemBarras(DC^.DomainControllerName));
      L.Add('Endereço do controlador: '+SemBarras(DC^.DomainControllerAddress));
      if DC^.ClientSiteName<>nil then L.Add('Site: '+string(DC^.ClientSiteName));
    finally
      NetApiBufferFree(DC);
    end;
  end;
  { Gateway, DHCP e DNS }
  Gw:= TStringList.Create;
  Dhcp:= TStringList.Create;
  Dns:= TStringList.Create;
  try
    ServidoresRede(Gw, Dhcp, Dns); { UFerramentas }
    Mostra('Gateway: ', Gw);
    Mostra('Servidor DHCP: ', Dhcp);
    Mostra('Servidor DNS: ', Dns);
  finally
    Gw.Free;
    Dhcp.Free;
    Dns.Free;
  end;
end;

{ Caminho de rede (\\servidor\pasta) de uma unidade mapeada, ex.: 'Z:' }
function CaminhoRede(const Drive: string): string;
var Buf: array[0..MAX_PATH] of Char;
  Tam: DWORD;
begin
  Result:= '';
  Tam:= Length(Buf);
  if WNetGetConnection(PChar(Drive), Buf, Tam)=NO_ERROR then Result:= Buf;
end;

procedure TMainForm.RefreshInfo;
const line1='_______________________________________';
      KeyWinNT = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
      KeyBIOS  = 'HARDWARE\DESCRIPTION\System\BIOS';
      KeyCPU   = 'HARDWARE\DESCRIPTION\System\CentralProcessor\0';
var StrList, Fixos: TStringList;
  SearchRec: TSearchRec;
  Count: LongInt;
  Ok: boolean;
  S, S2, DiscoSistema, Unid, NomeVol, NSerial, SisArq: string;
  Uptime: Int64;
  PagTotal, PagUsado: UInt64;
  Perf: TPerfInfo;
  PMC: TProcMemCounters;
  Livre, TotDisco, Disponivel: Int64;
  Mascara: DWORD;
  Letra: Char;
  Mhz, TempCpu: Double;

  procedure AddSe(const Rotulo, Valor: string);
  begin
    if Trim(Valor) <> '' then Memo2.Lines.Add(Rotulo + Valor);
  end;

begin
  Screen.Cursor:= crHourGlass;
  StrList:= TStringList.Create;
  Memo2.Lines.BeginUpdate;
  try
  Count:=0;
  StrList.Clear;
  Memo2.Clear;
  Memo2.Lines.Add(' .:: Atualizado em ::.');
  Memo2.Lines.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss', Now));
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: IP Adress ::.');
  { Uma única consulta para todos os IPs (antes GetIP era chamado a cada linha) }
  GetIpList(StrList);
  Ok:= False;
  for Count:=0 to StrList.Count-1 do
    if Trim(StrList.Strings[Count])<>'' then
    begin
      Memo2.Lines.Add(Trim(StrList.Strings[Count]));
      Ok:= True;
    end;
  if Ok=False then Memo2.Lines.Add('(sem rede)');
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: User ::.');
  S:= Trim(GetUsr);
  if ShIsUserAnAdmin then S:= S + ' (administrador)';
  Memo2.Lines.Add(S);
  ListaSessao(Memo2.Lines);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: HostName ::.');
  { Nome obtido do próprio Windows. A antiga consulta de DNS reverso por IP
    (gethostbyaddr) podia travar o Refresh por vários segundos. }
  S:= GetComputerNameFmt(ComputerNameDnsHostname);
  Memo2.Lines.Add(S);
  S2:= GetComputerNameFmt(ComputerNameDnsFullyQualified);
  if (S2<>'') and not SameText(S2, S) then Memo2.Lines.Add(S2);
  if Trim(GetComputerNameFmt(ComputerNameDnsDomain))<>'' then
  begin
  Memo2.Lines.Add(line1);
    Memo2.Lines.Add(' .:: Domain Name ::.');
    Memo2.Lines.Add(GetComputerNameFmt(ComputerNameDnsDomain));
  end;
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Rede / Servidor ::.');
  ListaRede(Memo2.Lines);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Computer Name ::.');
  Memo2.Lines.Add(GetComputer);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: OS Info ::.');
  Version1:='';
  Plattform1:='';
  PlattID1:='';
  OSBuilder1:= '';
  OSService1:= '';
  PlatIDN1:=0;
  GetOSVersionInfo(PlatIDN1, Version1, Plattform1, PlattID1, OSBuilder1, OSService1);
  Memo2.Lines.Add(TOSVersion.Name);
  AddSe('Edição: ', RegLerStr(HKEY_LOCAL_MACHINE, KeyWinNT, 'EditionID'));
  AddSe('Versão: ', RegLerStr(HKEY_LOCAL_MACHINE, KeyWinNT, 'DisplayVersion'));
  S:= RegLerStr(HKEY_LOCAL_MACHINE, KeyWinNT, 'UBR');
  if S<>'' then S:= OSBuilder1+'.'+S else S:= OSBuilder1;
  Memo2.Lines.Add('Compilação (Build): '+S);
  Memo2.Lines.Add(Format('Kernel: %d.%d', [TOSVersion.Major, TOSVersion.Minor]));
  Memo2.Lines.Add('Arquitetura: '+NomeArquitetura);
  if OSService1<>'-' then Memo2.Lines.Add('Service Pack: '+OSService1);
  AddSe('Idioma do usuário: ', IdiomaUsuario);
  S:= RegLerStr(HKEY_LOCAL_MACHINE, KeyWinNT, 'InstallDate');
  if StrToInt64Def(S, 0) > 0 then
    Memo2.Lines.Add('Instalado em: '+DateToStr(EncodeDate(1970,1,1) + StrToInt64(S)/86400));
  AddSe('Proprietário: ', RegLerStr(HKEY_LOCAL_MACHINE, KeyWinNT, 'RegisteredOwner'));
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Tempo Ligado ::.');
  Uptime:= GetTickCount64 div 1000;
  Memo2.Lines.Add('Ligado há: '+FmtDuracao(Uptime));
  Memo2.Lines.Add('Último boot: '+FormatDateTime('dd/mm/yyyy hh:nn', Now - Uptime/86400));
  AddSe('Fuso horário: ', FusoHorario);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Diretório do Windows ::.');
  Memo2.Lines.Add(GetWinDir);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Diretório System ::.');
  Memo2.Lines.Add(GetWinSysDir);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Diretório do Aplicativo ::.');
  Memo2.Lines.Add(GetRunDir);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Diretório Temporário ::.');
  Memo2.Lines.Add(GetTempDir);
  DiscoSistema:= ResumoDiscoSistema;
  if DiscoSistema<>'' then Memo2.Lines.Add('Disco do sistema: '+DiscoSistema);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Computador / BIOS ::.');
  S:= Trim(RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'SystemManufacturer')+' '+
    RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'SystemProductName'));
  AddSe('Modelo: ', S);
  S:= Trim(RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'BaseBoardManufacturer')+' '+
    RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'BaseBoardProduct'));
  AddSe('Placa-mãe: ', S);
  S:= Trim(RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'BIOSVendor')+' '+
    RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'BIOSVersion'));
  S2:= RegLerStr(HKEY_LOCAL_MACHINE, KeyBIOS, 'BIOSReleaseDate');
  if S2<>'' then S:= S+' ('+S2+')';
  AddSe('BIOS: ', S);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: CPU ::.');
  Memo2.Lines.Add(GetCPUName);
  AddSe('Fabricante: ', RegLerStr(HKEY_LOCAL_MACHINE, KeyCPU, 'VendorIdentifier'));
  AddSe('Identificação: ', RegLerStr(HKEY_LOCAL_MACHINE, KeyCPU, 'Identifier'));
  Memo2.Lines.Add(Format('Processadores lógicos: %d', [CPUCount]));
  Mhz:= GetCPUSpeed;
  Memo2.Lines.Add(Format('Velocidade nominal: %.0f MHz', [Mhz]));
  Label8.Caption:= Format('=> %.0f MHz - CPU(s): %d', [Mhz, CPUCount]);
  if TemperaturaCPU(TempCpu, S2) then
    Memo2.Lines.Add(Format('Temperatura: %.0f °C (%s)', [TempCpu, S2]))
  else
    Memo2.Lines.Add('Temperatura: '+S2);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Memória ::.');
  MemInfo.dwLength:= SizeOf(MemInfo);
  GlobalMemoryStatusEx(MemInfo);
  Memo2.Lines.Add(Format('Física(RAM): %s', [FmtValue(1,MemInfo.ullTotalPhys)]));
  Memo2.Lines.Add(Format('RAM em uso: %s (%d%%)', [FmtValue(1,MemInfo.ullTotalPhys-MemInfo.ullAvailPhys), MemInfo.dwMemoryLoad]));
  Memo2.Lines.Add(Format('RAM livre: %s (%s)', [FmtValue(1,MemInfo.ullAvailPhys),
    FmtPct(MemInfo.ullAvailPhys, MemInfo.ullTotalPhys)]));
  if LePaginacao(PagTotal, PagUsado) then
  begin
    Memo2.Lines.Add(Format('Paginação(SWAP): %s', [FmtValue(1,PagTotal)]));
    Memo2.Lines.Add(Format('SWAP em uso: %s (%s)', [FmtValue(1,PagUsado),
      FmtPct(PagUsado, PagTotal)]));
  end
  else
    Memo2.Lines.Add('Paginação(SWAP): sem arquivo de paginação');
  Memo2.Lines.Add(Format('RAM + SWAP (limite): %s', [FmtValue(1,MemInfo.ullTotalPageFile)]));
  { espaço de endereçamento de cada programa (128 TB em 64 bits): não é memória real }
  Memo2.Lines.Add(Format('Endereçamento virtual: %s', [FmtValue(1,MemInfo.ullTotalVirtual)]));
  FillChar(Perf, SizeOf(Perf), 0);
  Perf.cb:= SizeOf(Perf);
  if PsGetPerformanceInfo(Perf, SizeOf(Perf)) then
  begin
    Memo2.Lines.Add(Format('Cache do sistema: %s', [FmtValue(1,UInt64(Perf.SystemCache)*Perf.PageSize)]));
    Memo2.Lines.Add(Format('Memória do kernel: %s', [FmtValue(1,UInt64(Perf.KernelTotal)*Perf.PageSize)]));
    Memo2.Lines.Add(line1);
    Memo2.Lines.Add(' .:: Processos ::.');
    Memo2.Lines.Add(Format('Processos: %d', [Perf.ProcessCount]));
    Memo2.Lines.Add(Format('Threads: %d', [Perf.ThreadCount]));
    Memo2.Lines.Add(Format('Handles: %d', [Perf.HandleCount]));
  end;
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Drives ::.');
  Memo2.Lines.Add(GetDriveNames);
  { uma linha por unidade; os detalhes vêm depois, só dos discos fixos }
  Fixos:= TStringList.Create;
  try
    Mascara:= GetLogicalDrives;
    for Letra:= 'A' to 'Z' do
      if Mascara and (1 shl (Ord(Letra)-Ord('A')))<>0 then
      begin
        Unid:= Letra+':';
        Memo2.Lines.Add(Unid+' '+GetDiskType(Letra));
        S:= CaminhoRede(Unid); { unidade mapeada: mostra o servidor }
        if S<>'' then Memo2.Lines.Add('   '+S);
        if GetDriveType(PChar(Unid+'\'))=DRIVE_FIXED then Fixos.Add(Unid);
      end;
    for Unid in Fixos do
    begin
      Memo2.Lines.Add(line1);
      Memo2.Lines.Add('.:: "'+Unid+'" Disk Info ::.');
      GetVolInfo(Unid[1], NomeVol, NSerial, SisArq);
      Memo2.Lines.Add('Nome do Volume: "'+ NomeVol+'"');
      Memo2.Lines.Add('N° Serial (Vol): ' + NSerial);
      Memo2.Lines.Add('Sistema de Arquivos: ' + SisArq);
      if EspacoDisco(Unid, Livre, TotDisco) then
      begin
        { "disponível" pode ser menor que o livre quando há cota de disco }
        if not GetDiskFreeSpaceEx(PChar(Unid+'\'), Disponivel, TotDisco, nil) then
          Disponivel:= Livre;
        Memo2.Lines.Add(Format('Espaço utilizado: %s (%s)', [FmtValue(1,TotDisco-Livre),
          FmtPct(TotDisco-Livre, TotDisco)]));
        Memo2.Lines.Add(Format('Espaço livre: %s (%s)', [FmtValue(1,Livre), FmtPct(Livre,TotDisco)]));
        if Disponivel<>Livre then
          Memo2.Lines.Add('Espaço disponível: '+FmtValue(1,Disponivel));
        Memo2.Lines.Add('Espaço total do disco: '+FmtValue(1,TotDisco));
      end;
    end;
  finally
    Fixos.Free;
  end;
  Mapeamentos(StrList);
  if StrList.Count>0 then
  begin
    Memo2.Lines.Add(line1);
    Memo2.Lines.Add(' .:: Unidades de Rede Mapeadas ::.');
    for Count:=0 to StrList.Count-1 do
      if Trim(StrList[Count])<>'' then
        Memo2.Lines.Add(Trim(StrList[Count]));
  end;
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Vídeo ::.');
  ListaPlacasVideo(Memo2.Lines);
  Memo2.Lines.Add('Qualidade da Cor: '+InttoStr(BitsPerPixel)+' bits Color');
  Memo2.Lines.Add('Resolução: '+InttoStr(Screen.Width)+' x '+InttoStr(Screen.Height)+' pixels');
  ListaMonitores(Memo2.Lines);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Energia ::.');
  ListaEnergia(Memo2.Lines);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Teclado ::.');
  Memo2.Lines.Add('KeyBoard Language: '+GetKeyBoardLanguage);
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Impressora ::.');
  Memo2.Lines.Add('Impressora Padrão: '+GetDefaultPrinterName);
  StrList.Clear;
  try
    StrList.Assign(Printer.Printers);
    if StrList.Count>0 then
    begin
      Memo2.Lines.Add(line1);
      Memo2.Lines.Add(' .:: Lista de Impressoras ::.');
      for Count:=0 to StrList.Count-1 do
        if Trim(StrList[Count])<>'' then
          Memo2.Lines.Add(Trim(StrList[Count]));
    end;
  except
    Memo2.Lines.Add('??????');
  end;
  Memo2.Lines.Add(line1);
  Memo2.Lines.Add(' .:: Programa '+Prg+' ::.');
  Memo2.Lines.Add('Versão: '+Vrs);
  {$IFDEF WIN64}
  Memo2.Lines.Add('Executável: 64 bits');
  {$ELSE}
  Memo2.Lines.Add('Executável: 32 bits');
  {$ENDIF}
  if FindFirst(ParamStr(0),faAnyFile,SearchRec)=0 then
  begin
    Memo2.Lines.Add('Tamanho: '+FmtValue(1,SearchRec.Size));
    Memo2.Lines.Add('Data: '+DateToStr(SearchRec.TimeStamp));
    Memo2.Lines.Add('Hora: '+TimeToStr(SearchRec.TimeStamp));
    FindClose(SearchRec);
  end;
  FillChar(PMC, SizeOf(PMC), 0);
  PMC.cb:= SizeOf(PMC);
  if PsGetProcessMemoryInfo(GetCurrentProcess, PMC, SizeOf(PMC)) then
    Memo2.Lines.Add('Memória em uso: '+FmtValue(1,PMC.WorkingSetSize));
  if StartupEnabled then
    Memo2.Lines.Add('Iniciar com o Windows: Sim')
  else
    Memo2.Lines.Add('Iniciar com o Windows: Não');
  Memo2.Lines.Add(line1);
  finally
    Memo2.Lines.EndUpdate;
    StrList.Free;
    Screen.Cursor:= crDefault;
  end;
  Memo2.SelStart:= 0;
  Memo2.SelLength:= 0;
end;

{----------------------------------------------------------------------------}
{-------------------Limites-de-alerta-(CPU,-memória-e-discos)----------------}
{ Limites 1 (amarelo) e 2 (vermelho) da configuração, em % de uso. Antes de o
  ConfigForm carregar o .CNF (FormCreate do MainForm) valem 75% e 90%.     }
procedure LimitesUso(out T1, T2: Integer);
begin
  T1:= CnfData.Sys.Threshold1;
  T2:= CnfData.Sys.Threshold2;
  if (T1<=0) or (T2<=0) then
  begin
    T1:= 75;
    T2:= 90;
  end;
end;

{ 0 = normal, 1 = acima do limite 1, 2 = acima do limite 2 }
function NivelUso(Pct: Integer): Integer;
var T1, T2: Integer;
begin
  LimitesUso(T1, T2);
  if Pct < T1 then Result:= 0 else
  if Pct < T2 then Result:= 1 else
    Result:= 2;
end;

{ Cor do medidor para a % de uso (sempre a % usada, mesmo quando o medidor
  mostra a % livre) }
function CorUso(Pct: Integer): TColor;
begin
  if CnfData.Sys.Threshold1<=0 then { configuração ainda não carregada }
    case NivelUso(Pct) of
      0: Result:= $00D3EDC2;
      1: Result:= $00CAFFFF;
    else
      Result:= $00E9D2FF;
    end
  else
    case NivelUso(Pct) of
      0: Result:= CnfData.Sys.NormalColor;
      1: Result:= CnfData.Sys.Threshold1Color;
    else
      Result:= CnfData.Sys.Threshold2Color;
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  {---Animações-(substituem-o-TBmpAnimator)---------------}
  FAnim:= TImageAnimator.Create(Self);
  FAnim.Add(BmpAnimator3);
  {----------------------------------------------------------}
  //Evitando que sua aplicação apareça no TaskBar (fica somente na bandeja).
  { O botão da barra de tarefas pertence à janela oculta do Application
    (MainFormOnTaskbar = False). Ela precisa estar oculta quando o estilo
    muda, senão o Windows não atualiza a barra de tarefas. }
  ShowWindow(Application.Handle, SW_HIDE);
  SetWindowLong(Application.Handle, GWL_EXSTYLE,
    (GetWindowLong(Application.Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW)
      and not WS_EX_APPWINDOW);
  {----------------------------------------------------------}
  // carrega o ícone inicial
  Icon.Handle :=
    LoadIcon (HInstance, 'GREEN');
  {--ícone na área de notificacao (bandeja)-------------------}
  { Lado esquerdo = uso da CPU, lado direito = uso da memória.
    Mensagem enviada pelo Explorer quando a barra de tarefas é (re)criada:
    permite recolocar o ícone se o Explorer reiniciar, ou se o Painel for
    iniciado com o Windows antes da barra de tarefas estar pronta. }
  FTaskbarCreated:= RegisterWindowMessage('TaskbarCreated');
  { Se o Painel for executado como administrador, o Windows (UIPI) bloqueia as
    mensagens vindas do Explorer: sem isto o ícone não volta e não responde a cliques }
  ChangeWindowMessageFilter(FTaskbarCreated, MSGFLT_ADD);
  ChangeWindowMessageFilter(wm_IconMessage, MSGFLT_ADD);
  FTrayWnd:= FindWindow('Shell_TrayWnd', nil);
  FTrayRetry:= 0;
  FTrayAdded:= False;
  FTrayIcon:= 0;
  FTrayIconName:= '';
  FCpuUso:= 0;
  GetCPUUsage(FCpuUso); { primeira leitura: apenas inicializa a referência }
  AtualizaTrayIcon(0, 0);
  // atualiza a saída ASAP
  Timer1Timer (self);
  DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);
  {------------------------------------------------------------}
  Start:= False;
  BmpImg := TBitmap.Create;
  MyBmpImage := TBitmap.Create;
  Application.HintColor := clAqua;
  Application.OnHint := ShowHint;
  FormatSettings.ShortDateFormat:= 'dd/mm/yyyy';
  MonthCalendar1.Date:= Now;
  { Hint com o nome do feriado ao passar o mouse sobre o dia }
  MonthCalendar1.ShowHint:= True;
  TMonthCalendarAcesso(MonthCalendar1).OnMouseMove:= MonthCalendar1MouseMove;
  PageControl1.ActivePage:= TabSheet3; { abre direto no status de CPU/memória }
  ComboBox1.ItemIndex:= 0; { 'Todos' os navegadores }
  CarregaOpcoesLimpeza;
  { Reiniciado como administrador (ReiniciaComoAdmin): abre na aba de limpeza }
  if FindCmdLineSwitch('elevado') then
  begin
    PageControl1.ActivePage:= TabSheet5;
    MostraTemporarios;
  end;
  FCount:= 0;
  LCount:= 0;
  SCount:= 0;
  TCount:= 0;
  StartSlideShow:= True;
  StartCPU:= False;
  GetUsageCPU:= True; { exibe o uso da CPU (SpeedButton2 liga/desliga) }
  StProcess:= False;
  StSch1:= False;
  StOk:= False;
  StEx:= True;
  StBegin:= False;
  StErr:= False;
  StMem1:= True;
  CriaMenusFerramentas;
  IniciaTemperatura; { leitura em segundo plano, a cada 5 s }
  FDiscoOcupado:= True;
  SpeedButton14.Hint:= 'Mostrando espaço ocupado (clique para ver o livre)';
  AtualizaDiscos;
  LabelX4.Caption:= ' Memória em uso';
  SpeedButton10.Hint:= 'Mostrando memória em uso (clique para ver a livre)';
  Posicionar(1);
  SempreVisivel(True);
  Image1.OnProgress := ProgressUpdate;
  OpenPictureDialog1.Filter := GraphicFilter(TGraphic);
  WrnTimeCount:= 0;
  CrnCount:= 0;
  MemInfo.dwLength:= Sizeof(MemInfo);
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---AdicionaTrayIcon-----------------------}
procedure TMainForm.AdicionaTrayIcon;
begin
  FillChar(TrayIconData, SizeOf(TrayIconData), 0);
  TrayIconData.cbSize := Sizeof (TrayIconData);
  TrayIconData.wnd := Handle;
  TrayIconData.uID := 1; // Identificador do ícone
  TrayIconData.uCallBackMessage := wm_IconMessage;
  if FTrayIcon<>0 then
    TrayIconData.hIcon := FTrayIcon
  else
    TrayIconData.hIcon := Application.Icon.Handle;
  StrPLCopy(TrayIconData.szTip, Prg+' '+Vrs, Length(TrayIconData.szTip)-1);
  TrayIconData.uFlags := nif_Message or nif_Icon or nif_Tip;
  FTrayAdded:= Shell_NotifyIcon (NIM_ADD, @TrayIconData);
  { Com o Explorer ocupado o NIM_ADD pode falhar por tempo esgotado mesmo
    tendo incluído o ícone: nesse caso o NIM_MODIFY confirma que ele existe }
  if not FTrayAdded then
    FTrayAdded:= Shell_NotifyIcon (NIM_MODIFY, @TrayIconData);
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---RecriaTrayIcon-------------------------}
procedure TMainForm.RecriaTrayIcon;
begin
  TrayIconData.uFlags:= 0;
  Shell_NotifyIcon(NIM_DELETE, @TrayIconData); { ignora erro: pode já não existir }
  FTrayAdded:= False;
  AdicionaTrayIcon;
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---VerificaTrayIcon-----------------------}
{ Chamada a cada segundo pelo Timer1. Detecta o reinício do Explorer (a barra
  de tarefas passa a ter outra janela) mesmo que a mensagem TaskbarCreated não
  chegue. Logo após o reinício o Explorer ainda não está pronto e pode aceitar
  o ícone sem exibi-lo; por isso ele é recolocado de novo após 3 e 10 segundos. }
procedure TMainForm.VerificaTrayIcon;
var Tray: HWND;
begin
  Tray:= FindWindow('Shell_TrayWnd', nil);
  if Tray=0 then
  begin
    FTrayWnd:= 0;      { barra de tarefas fechada: aguarda ela voltar }
    FTrayAdded:= False;
    Exit;
  end;
  if Tray<>FTrayWnd then
  begin
    FTrayWnd:= Tray;
    FTrayRetry:= 10;
    RecriaTrayIcon;
    Exit;
  end;
  if FTrayRetry>0 then
  begin
    Dec(FTrayRetry);
    if (FTrayRetry=7) or (FTrayRetry=0) then RecriaTrayIcon;
  end;
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---AtualizaTrayIcon-----------------------}
{ Os ícones em RYG.RES chamam-se "<esquerda>-<direita>" com as cores
  GN (verde), YW (amarelo) e RD (vermelho). Aqui: esquerda = CPU e
  direita = memória, conforme Threshold1/Threshold2 da configuração.     }
procedure TMainForm.AtualizaTrayIcon(CpuPct, MemPct: Integer);
var Nome, Tip, Disco, Fonte: string;
  NovoIcone, IconeAnterior: HICON;
  Temp: Double;

  function Nivel(Pct: Integer): string;
  const Siglas: array[0..2] of string = ('GN', 'YW', 'RD');
  begin
    Result:= Siglas[NivelUso(Pct)];
  end;

begin
  Nome:= Nivel(CpuPct) + '-' + Nivel(MemPct);
  if Nome<>FTrayIconName then
  begin
    NovoIcone:= LoadImage(HInstance, PChar(Nome), IMAGE_ICON,
      GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON), LR_DEFAULTCOLOR);
    if NovoIcone<>0 then
    begin
      IconeAnterior:= FTrayIcon;
      FTrayIcon:= NovoIcone;
      FTrayIconName:= Nome;
      TrayIconData.hIcon:= FTrayIcon;
      TrayIconData.uFlags:= nif_Icon;
      if FTrayAdded then Shell_NotifyIcon(NIM_MODIFY, @TrayIconData);
      if IconeAnterior<>0 then DestroyIcon(IconeAnterior);
    end;
  end;
  if not FTrayAdded then AdicionaTrayIcon;
  { Dica (tooltip) do ícone }
  Disco:= ResumoDiscoSistema;
  Tip:= Format('%s %s'#13#10'CPU: %d%%', [Prg, Vrs, CpuPct]);
  if TemperaturaCPU(Temp, Fonte) then Tip:= Tip+Format(' (%.0f °C)', [Temp]);
  Tip:= Tip+Format(#13#10'Memória: %d%%', [MemPct]);
  if Disco<>'' then Tip:= Tip+#13#10'Disco: '+Disco;
  StrPLCopy(TrayIconData.szTip, Tip, Length(TrayIconData.szTip)-1);
  TrayIconData.uFlags:= nif_Tip;
  if FTrayAdded and not Shell_NotifyIcon(NIM_MODIFY, @TrayIconData) then
    FTrayAdded:= False; { será recolocado no próximo ciclo do Timer1 }
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---WndProc--------------------------------}
procedure TMainForm.WndProc(var Message: TMessage);
begin
  if (Message.Msg=WM_HOTKEY) and (Message.WParam=IdAtalho) then
  begin
    AlternaJanela;
    Message.Result:= 0;
    Exit;
  end;
  if Message.Msg=WM_CLIPBOARDUPDATE then
  begin
    ClipboardMudou;
    Message.Result:= 0;
    Exit;
  end;
  if (FTaskbarCreated<>0) and (Message.Msg=FTaskbarCreated) then
  begin
    { O Explorer foi (re)iniciado: o ícone da bandeja precisa ser recriado }
    FTrayWnd:= FindWindow('Shell_TrayWnd', nil);
    FTrayRetry:= 10;
    RecriaTrayIcon;
  end;
  { Minimizar (menu de sistema/Alt+Espaço) esconde na bandeja em vez de
    criar um botão na barra de tarefas }
  if (Message.Msg=WM_SYSCOMMAND) and ((Message.WParam and $FFF0)=SC_MINIMIZE) then
  begin
    MinimizarParaBandeja;
    Message.Result:= 0;
    Exit;
  end;
  inherited WndProc(Message);
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---MinimizarParaBandeja-------------------}
{ Substitui Application.Minimize: com a janela do Application em estilo
  WS_EX_TOOLWINDOW, minimizar deixaria uma pequena barra de título no canto
  da tela. O Painel volta pelo duplo clique ou pelo menu do ícone da bandeja. }
procedure TMainForm.MinimizarParaBandeja;
begin
  { Igual ao FormClose: esconde só a janela (Visible continua True), para
    que o Details1Click não dispare o FormShow de novo }
  ShowWindow(Handle, SW_HIDE);
  ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ShowWindow(FindWindow(nil,'«Painel»'),SW_HIDE);
  {---------------------------------------------------------}
  Start:= True;
  if StErr= False then
  begin
    MainForm.Top:= CnfData.Frm.PosY;
    MainForm.Left:= CnfData.Frm.PosX;
  end;
  {---------------------------------------------------------}
  if (CnfData.Frm.StPlayWav=True) and (FileExists(CnfData.Frm.WAVFile)=True) then
  begin
    PlaySound(PChar(string(CnfData.Frm.WAVFile)), 0, SND_ASYNC or SND_FILENAME);
  end;
  LabelEffect1.Caption := FormatDateTime('hh:nn:ss',Now);
  LabelEffect2.Caption:= DiaSemana(Now)+FormatDateTime(' - dd/mm/yyyy',Now);
  LabelX6.Caption:= FormatDateTime(' dd/mm/yyyy',MonthCalendar1.Date);
  if FileExists(GetRunDir+Prg+'.TXT')=True then Memo1.Lines.LoadFromFile(GetRunDir+Prg+'.TXT');
  EditorChanged:= False;
  StBegin:= True;
  RefreshInfo;
  WrnForm.CheckBox1.Checked:= ConfigForm.CheckBox5.Checked;
  WrnForm.CheckBox2.Checked:= ConfigForm.CheckBox6.Checked;
  WrnForm.SpinEdit1.Value:= ConfigForm.SpinEdit2.Value;
  WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  {---------------------------------------------------------}
  Memo5.Top:= Memo1.Top;
  Memo5.Height:= Memo1.Height;
  {---------------------------------------------------------}
  StringGrid1.Cells[1,0]:= 'Nome';
  StringGrid1.Cells[2,0]:= 'Telefone1';
  StringGrid1.Cells[3,0]:= 'Telefone2';
end;

{----------------------------------------------------------------------------}
{------Relogio-analogico-(substitui-o-componente-TClock)---------------------}
{ Cor do mostrador = Clock1.Color; cor dos ponteiros = Clock1.Font.Color     }
procedure TMainForm.Clock1Paint(Sender: TObject);
var Bmp: TBitmap;
  W, H, CX, CY, R, Lap, Ofs, M: Integer;
  Hr, Mi, Se, MSec: Word;
  Ang, SR: Double;
  P: TPoint;
  Rc: TRect;

  procedure Ponteiro(A, Escala: Double; Espessura: Integer);
  begin
    Bmp.Canvas.Pen.Width:= Espessura;
    Bmp.Canvas.MoveTo(CX, CY);
    Bmp.Canvas.LineTo(CX + Trunc(Escala*R*Sin(A)), CY - Trunc(Escala*R*Cos(A)));
  end;

begin
  W:= Clock1.Width;
  H:= Clock1.Height;
  Bmp:= TBitmap.Create;
  try
    Bmp.SetSize(W, H);
    Bmp.Canvas.Brush.Style:= bsSolid;
    Bmp.Canvas.Brush.Color:= Clock1.Color;
    Bmp.Canvas.FillRect(Rect(0, 0, W, H));
    CX:= W div 2;
    CY:= H div 2;
    if CX <= CY then R:= CX else R:= CY;
    Lap:= R div 8;
    if Lap < 6 then Lap:= 6;
    Dec(R, Lap + 2);
    Ofs:= Lap div 2;
    {marcas das horas}
    M:= 0;
    while M < 60 do
    begin
      Ang:= M*2*Pi/60;
      SR:= R + Ofs;
      P:= Point(CX + Trunc(SR*Sin(Ang)), CY - Trunc(SR*Cos(Ang)));
      if M mod 15 = 0 then
        Rc:= Rect(P.X - Ofs, P.Y - Ofs, P.X + Ofs, P.Y + Ofs)
      else
        Rc:= Rect(P.X - 2, P.Y - 2, P.X + 2, P.Y + 2);
      Frame3D(Bmp.Canvas, Rc, clBtnHighlight, clBtnShadow, 1);
      Inc(M, 5);
    end;
    {ponteiros}
    DecodeTime(Now, Hr, Mi, Se, MSec);
    Bmp.Canvas.Pen.Color:= Clock1.Font.Color;
    Ponteiro(Se*2*Pi/60, 1, 1);
    Ponteiro(Mi*2*Pi/60, 0.95, 3);
    Ponteiro((Hr mod 12)*2*Pi/12 + Mi*2*Pi/720, 0.60, 6);
    Bmp.Canvas.Pen.Width:= 1;
    Clock1.Canvas.Draw(0, 0, Bmp);
  finally
    Bmp.Free;
  end;
end;


{----------------------------------------------------------------------------}
{-------------------------Procedure---AtualizaMemória------------------------}
{ Atualiza os medidores da aba de Status. StMem1 (SpeedButton10) escolhe se
  os medidores mostram a memória em uso (True) ou a memória livre (False).  }
{ SwapGauge = arquivo de paginação; VirtualGauge = memória confirmada
  (RAM + paginação: o máximo que os programas podem alocar).                }
procedure TMainForm.AtualizaMemoria;
var PagTotal, PagUsado: UInt64;

  function Pct(Parte, Total: UInt64): Integer;
  begin
    if Total = 0 then Result:= 0 else Result:= Round(100.0 * Parte / Total);
  end;

  { UsoPct = % em uso; o medidor mostra o uso ou o livre conforme StMem1 }
  procedure Medidor(G: TGauge; UsoPct: Integer);
  begin
    if StMem1 then G.Progress:= UsoPct else G.Progress:= 100-UsoPct;
    G.ForeColor:= CorUso(UsoPct);
  end;

begin
  MemInfo.dwLength:= SizeOf(MemInfo);
  if not GlobalMemoryStatusEx(MemInfo) then Exit;
  LePaginacao(PagTotal, PagUsado);
  with MemInfo do
  begin
    Medidor(UseMemGauge, dwMemoryLoad);
    Medidor(RamGauge, Pct(ullTotalPhys - ullAvailPhys, ullTotalPhys));
    Medidor(SwapGauge, Pct(PagUsado, PagTotal));
    Medidor(VirtualGauge, Pct(ullTotalPageFile - ullAvailPageFile, ullTotalPageFile));
  end;
  {--------------------------------------------------------------------------}
  Label1.Caption:= Format(' %s - (%s / %s)', [FmtValue(1,MemInfo.ullTotalPhys), FmtValue(1,MemInfo.ullTotalPhys - MemInfo.ullAvailPhys), FmtValue(1,MemInfo.ullAvailPhys)]);
  RamGauge.Hint:= Label1.Caption;
  if PagTotal>0 then
    Label2.Caption:= Format(' %s - (%s / %s)', [FmtValue(1,PagTotal), FmtValue(1,PagUsado), FmtValue(1,PagTotal - PagUsado)])
  else
    Label2.Caption:= ' (sem arquivo de paginação)';
  SwapGauge.Hint:= Label2.Caption;
  Label3.Caption:= Format(' %d%%', [MemInfo.dwMemoryLoad]);
  UseMemGauge.Hint:= Label3.Caption;
  Label4.Caption:= Format(' %s - (%s / %s)', [FmtValue(1,MemInfo.ullTotalPageFile), FmtValue(1,MemInfo.ullTotalPageFile - MemInfo.ullAvailPageFile), FmtValue(1,MemInfo.ullAvailPageFile)]);
  VirtualGauge.Hint:= Label4.Caption;
  Label7.Caption:= '=>'+Format(' %s', [FmtValue(1,MemInfo.ullTotalPhys)]);
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---AtualizaDiscos-------------------------}
{ Aba de Status dos Discos: um painel por disco fixo (até 4), na ordem das
  letras. Painéis sem disco ficam ocultos. O Gauge mostra a % ocupada ou
  livre (FDiscoOcupado / SpeedButton14); a cor segue Threshold1/Threshold2
  sobre a % ocupada, como na memória e na CPU.                              }
procedure TMainForm.AtualizaDiscos;
var Paineis: array[0..3] of TPanel;
  Nomes, Valores: array[0..3] of TLabel;
  Gauges: array[0..3] of TGauge;
  Mascara: DWORD;
  Letra: Char;
  Unid: string;
  Livre, Total: Int64;
  I, N, UsoPct: Integer;
  Cor: TColor;
begin
  Paineis[0]:= Panel21; Nomes[0]:= Label14; Valores[0]:= Label15; Gauges[0]:= Gauge4;
  Paineis[1]:= Panel22; Nomes[1]:= Label16; Valores[1]:= Label17; Gauges[1]:= Gauge5;
  Paineis[2]:= Panel23; Nomes[2]:= Label18; Valores[2]:= Label19; Gauges[2]:= Gauge6;
  Paineis[3]:= Panel24; Nomes[3]:= Label20; Valores[3]:= Label21; Gauges[3]:= Gauge7;
  N:= 0;
  Mascara:= GetLogicalDrives;
  for Letra:= 'A' to 'Z' do
  begin
    if N>High(Paineis) then Break;
    if Mascara and (1 shl (Ord(Letra)-Ord('A')))=0 then Continue;
    Unid:= Letra+':';
    if GetDriveType(PChar(Unid+'\'))<>DRIVE_FIXED then Continue;
    if not EspacoDisco(Unid, Livre, Total) then Continue;
    UsoPct:= Round(100.0*(Total-Livre)/Total);
    Cor:= CorUso(UsoPct);
    Nomes[N].Caption:= 'Drive '+Unid;
    Valores[N].Caption:= Format('%s - (%s / %s) ', [FmtValue(1,Total), FmtValue(1,Total-Livre), FmtValue(1,Livre)]);
    Valores[N].Color:= Cor;
    Gauges[N].ForeColor:= Cor;
    if FDiscoOcupado then
      Gauges[N].Progress:= UsoPct
    else
      Gauges[N].Progress:= 100-UsoPct;
    Gauges[N].Hint:= Format('Disco %s - Total: %s '#13'Ocupado: %s (%s) '#13'Livre: %s (%s)',
      [Unid, FmtValue(1,Total), FmtValue(1,Total-Livre), FmtPct(Total-Livre, Total),
       FmtValue(1,Livre), FmtPct(Livre, Total)]);
    if not Paineis[N].Visible then
    begin
      { alTop: posiciona abaixo dos já visíveis para manter a ordem }
      Paineis[N].Top:= TabSheet4.Height+N;
      Paineis[N].Visible:= True;
    end;
    Inc(N);
  end;
  for I:= N to High(Paineis) do Paineis[I].Visible:= False;
end;

procedure TMainForm.SpeedButton14Click(Sender: TObject);
begin
  { Alterna os medidores dos discos entre espaço ocupado e espaço livre }
  FDiscoOcupado:= not FDiscoOcupado;
  if FDiscoOcupado then
    SpeedButton14.Hint:= 'Mostrando espaço ocupado (clique para ver o livre)'
  else
    SpeedButton14.Hint:= 'Mostrando espaço livre (clique para ver o ocupado)';
  AtualizaDiscos;
end;

procedure TMainForm.SpeedButton15Click(Sender: TObject);
begin
  AtualizaDiscos;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var CpuUso, Temp: Double;
  Agora: TDateTime;
  S, Fonte: string;
begin
  {--------------------------------------------------------------------------}
  Agora:= Now;
  Clock1.Invalidate;
  S:= FormatDateTime('hh:nn:ss', Agora);
  if LabelEffect1.Caption<>S then LabelEffect1.Caption:= S;
  {--------------------------------------------------------------------------}
  { Virada do dia. Compara a data (e não só o instante 00:00:00), para não
    perder a troca se o timer pular esse segundo ou o PC estiver suspenso. }
  S:= DiaSemana(Agora)+FormatDateTime(' - dd/mm/yyyy', Agora);
  if Start and (LabelEffect2.Caption<>S) then
  begin
    LabelEffect2.Caption:= S;
    MonthCalendar1.Date:= Agora;
  end;
  if (Start=True) and (ConfigForm.CheckBox2.Checked= True) and (StSch1=False)
  and ((ConfigForm.CheckBox3.Checked= True) or ((ConfigForm.CheckBox3.Checked= False)
  and (CnfData.Sch.SchData=FormatDateTime('dd/mm/yyyy',Now))))
  and (CnfData.Sch.SchHora=FormatDateTime('hh:nn',Now))
  and (StrtoInt(FormatDateTime('s',Now)) in [0..10]) then
  begin
    StSch1:= True;
    if CnfData.Sch.SchAction= 0 then
    begin
      if CnfData.Sch.SchWAVFile<>'' then
        ReproduzSom(CnfData.Sch.SchWAVFile);
      AlarmForm := TAlarmForm.Create(Self);
      try
        AlarmForm.ShowModal;
      finally
        AlarmForm.Free;
      end;
      {ShowMessage(Prg+' - Despertador'
      +#13+'('+FormatDateTime('dd/mm/yyyy',Now)+' - '+FormatDateTime('hh:nn',Now)+')'
      +#13+ConfigForm.Edit18.Text);}
    end else
    if CnfData.Sch.SchAction= 1 then
    begin
      ExecuteList;
    end else
    if CnfData.Sch.SchAction= 2 then
    begin
      MyExitWindows(EWX_POWEROFF or EWX_FORCE);
      { Força todos os programa a desligarem-se e Desliga o Windows}
      {ExitWindowsEx(EWX_FORCE or EWX_SHUTDOWN, 0);}
      {Desligar}
      {ShellExecute(0,nil,'shutdown',PChar('-s -f -t 00'),nil,sw_hide);}
      {winexec('shutdown -s -t 0' , sw_show);}
    end;
  end else
  if  (StSch1=True)
  and (CnfData.Sch.SchData=FormatDateTime('dd/mm/yyyy',Now))
  and (CnfData.Sch.SchHora=FormatDateTime('hh:nn',Now))
  and not (StrtoInt(FormatDateTime('s',Now)) in [0..10]) then
    StSch1:= False;
  if (Start=True) and (StEx=True)
  and (StartSlideShow=True) and (ConfigForm.SpinEdit1.Value<>0)
  and (ConfigForm.CheckBox4.Checked) and (MainForm.PageControl1.ActivePageIndex=0)
  and (ConfigForm.FileListBox1.Items.Count>0)
  and ((StrtoInt(FormatDateTime('ss',Now)))
  mod ConfigForm.SpinEdit1.Value=0) then
  begin
    if ConfigForm.FileListBox1.ItemIndex= ConfigForm.FileListBox1.Items.Count-1 then
      ConfigForm.FileListBox1.ItemIndex:= 0 else
    if ConfigForm.FileListBox1.ItemIndex<ConfigForm.FileListBox1.Items.Count-1 then
      ConfigForm.FileListBox1.ItemIndex:= ConfigForm.FileListBox1.ItemIndex + 1;
    if ConfigForm.FileListBox1.ItemIndex>=0 then
      ShowPicture(ConfigForm.FileListBox1.FileName);
    Application.ProcessMessages;
  end;
  if (EditorChanged) and
    ((StrtoInt(FormatDateTime('ss',Now))) mod 10=0) then
  begin
    Memo1.Lines.SaveToFile(GetRunDir+Prg+'.TXT');
    EditorChanged:= False;
  end;
  {--------------------------------------------------------------------------}
  {--Cronômetro--------------------------------------------------------------}
  if StOk=true then
  begin
    if CnfData.Crn.StType=0 then Inc(CrnCount) else
    begin
      if CrnCount=0 then
      if GetVlrTm(CnfData.Crn.CrnTime)<>0 then
      CrnCount:= GetVlrTm(CnfData.Crn.CrnTime) else
      CrnCount:= 86400;
      Dec(CrnCount);
    end;
    Panel10.Caption:= GetTm(0,CrnCount);
    if CnfData.Crn.StType=0 then
    begin
      if ((GetVlrTm(CnfData.Crn.CrnTime)<>0) and (CrnCount= GetVlrTm(CnfData.Crn.CrnTime))) or
         (CrnCount=86400) then CrnCount:=0;
    end;
  end;
  {----Memória----------------------------------------------------------------}
  AtualizaMemoria;
  {----Discos (somente com a aba visível)-------------------------------------}
  if PageControl1.ActivePage= TabSheet4 then AtualizaDiscos;
  {----CPU-------------------------------------------------------------------}
  { A CPU eh medida sempre (o Icone da bandeja depende dela); o SpeedButton2
    liga/desliga apenas a exibicao na aba de Status. }
  if GetCPUUsage(CpuUso) then FCpuUso:= CpuUso;
  if GetUsageCPU= True then
  begin
    S:= FormatFloat('CPU Usage: 0.00 %',FCpuUso);
    if TemperaturaCPU(Temp, Fonte) then
    begin
      S:= S+Format(' (%.0f °C)', [Temp]);
      Label5.Hint:= 'Temperatura da CPU ('+Fonte+')';
    end;
    Label5.Caption := S;
    Gauge1.Progress:= Round(FCpuUso);
    Gauge2.Progress:= Round(FCpuUso);
    Gauge1.ForeColor:= CorUso(Round(FCpuUso));
    Gauge2.ForeColor:= Gauge1.ForeColor;
  end;
  {--------------------------------------------------------------------------}
  Caption := Format('Painel - Versão %s - '+#13+'CPU: = %d%% - '+#13+'Memory: = %d%%',
    [Vrs,Round(FCpuUso),MemInfo.dwMemoryLoad]);
  {--Icone da bandeja: esquerda = CPU, direita = memória (RAM em uso)--------}
  VerificaTrayIcon;
  AtualizaTrayIcon(Round(FCpuUso), MemInfo.dwMemoryLoad);
  {--Histórico (gráfico) e aviso de uso alto prolongado----------------------}
  RegistraUso(Round(FCpuUso), MemInfo.dwMemoryLoad);
  VerificaUsoAlto(Round(FCpuUso), MemInfo.dwMemoryLoad);
  VerificaTemperatura;
  {--Alerta de disco e limpeza automática (a cada 10 minutos)---------------}
  VerificaTarefas;
  {--------------------------------------------------------------------------}
  {--------------------------------------------------------------------------}
  if (CnfData.Wrn.StWrn=True) and (StBegin=True) then
  begin
    WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
    ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
    if (WrnTimeCount>0) then
    begin
     if StWrnStop= False then Dec(WrnTimeCount);
    end else
    begin
      WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
      if (WrnForm.CheckBox2.Checked= True) and (CnfData.Wrn.WrnWAVFile<>'') then
        ReproduzSom(CnfData.Wrn.WrnWAVFile);
      StWrnStop:= True;
      WrnForm.Show;
    end;
  end;
  {--------------------------------------------------------------------------}
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
  Panel4.Caption:= Application.Hint;
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
  begin
    if (StProcess=False) then
    begin
      if (MessageDlg('Deseja realmente encerrar o programa?',
        mtConfirmation, [mbYes, mbNo], 0)=mrYes) then Close;
    end else
    begin
      if (MessageDlg('Deseja realmente interromper o processo?',
        mtConfirmation, [mbYes, mbNo], 0)=mrYes)
          and (StProcess=True) then StProcess:=False;
    end;
  end;
end;

procedure TMainForm.Timer2Timer(Sender: TObject);
const smsg= ' Programa Painel - Versão '+Vrs+' - Salvador-Ba -';
      wdh= 16;
var smg: string;
begin
  if Trim(ConfigForm.Edit9.Text)='' then smg:=smsg else
  smg:= ConfigForm.Edit9.Text+#32#32#32#32#32#32#32#32#32#32;
  if (TCount=40) then
  begin
    TCount:=0;
    if (PageControl1.ActivePage= TabSheet10) then
    begin
      if (SCount<Length(smg)) and (SCount>=1) then
        Inc(SCount) else SCount:=1;
      if (SCount<=Length(smg)-wdh+1)
        then PaintBox1.Canvas.TextOut(10,2,#32+Cstr(smg,SCount,SCount+wdh-1)+#32)
          else PaintBox1.Canvas.TextOut(10,2,#32+Cstr(smg,SCount,Length(smg))
           +Cstr(smg,1,wdh-(Length(smg)-SCount)-1)+#32);
      ImageList1.Draw(PaintBox1.Canvas,PaintBox1.Width-22,2,Lcount);
      if LCount=0 then LCount:=1 else LCount:=0;
    end;
  end else Inc(TCount);
end;

procedure TMainForm.Close1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.Details1Click(Sender: TObject);
begin
  ShowWindow (Handle, sw_ShowNormal);
  SetForegroundWindow (Handle);
  Show; // habilita a criação dos controles de janela
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
  MessageDlg ('Programa Painel - Versão: '+Vrs+#13+
    '© Copyright: Antonino Costa da Silva - 2005'+#13+
    'Tel.: (71) 98817-7989'+#13+
    '(antoninocs@gmail.com)',
    mtInformation, [mbOk], 0);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  TrayIconData.uFlags := 0;
  Shell_NotifyIcon (NIM_DELETE, @TrayIconData);
  FTrayAdded:= False;
  if FTrayIcon<>0 then DestroyIcon(FTrayIcon);
  FTrayIcon:= 0;
  if PdhQuery<>0 then PdhCloseQuery(PdhQuery);
  PdhQuery:= 0;
  FinalizaTemperatura;
  FreeAndNil(FClipboard);
  if EditorChanged then Memo1.Lines.SaveToFile(GetRunDir+Prg+'.TXT');
  FreeAndNil(BmpImg);
  FreeAndNil(MyBmpImage);
  CnfData.Frm.PosY:= MainForm.Top;
  CnfData.Frm.PosX:= MainForm.Left;
  { Grava o .CNF diretamente: o ConfigForm (criado depois do MainForm) já foi
    destruído neste ponto. O arquivo fica aberto desde ConfigForm.OpenCnfFile. }
  if TFileRec(CnfFile).Mode <> fmClosed then
  try
    Seek(CnfFile, 0);
    Write(CnfFile, CnfData);
    CloseFile(CnfFile);
  except
  end;
end;

procedure TMainForm.WMExitSizeMove(var Msg: TMessage);
begin
  inherited;
  if Start and Assigned(ConfigForm) then
  begin
    CnfData.Frm.PosY:= Top;
    CnfData.Frm.PosX:= Left;
    ConfigForm.SaveCnfFile; { também copia Top/Left para CnfData }
  end;
end;

procedure TMainForm.IconTray (var Msg: TMessage);
var Pt: TPoint;
begin
  if Msg.lParam = wm_rbuttondown then
  begin
    GetCursorPos (Pt);
    SetForegroundWindow (Handle);
    PopupMenu1.Popup (Pt.x, Pt.y);
    PostMessage(Handle, WM_NULL, 0, 0);
  end;
  if Msg.lParam = wm_lbuttondblclk then
    Details1Click (self);
  { clique no balão de notificação }
  if (Msg.lParam = NIN_BALLOONUSERCLICK) and (FUrlAviso<>'') then
  begin
    AbrirArquivo(FUrlAviso);
    FUrlAviso:= '';
  end;
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  MinimizarParaBandeja;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if EditorChanged then Memo1.Lines.SaveToFile(GetRunDir+Prg+'.TXT');
  Action := caNone;
  ShowWindow (Handle, sw_Hide);
end;

procedure TMainForm.Config1Click(Sender: TObject);
begin
  if CnfData.SetPsw=False then ConfigForm.Show else
  begin
    PassWordDlg:= TPassWordDlg.Create(Self);
    PasswordDlg.Caption:='Acesso a Configuração';
    try
      PassWordDlg.ShowModal;
    finally
      PassWordDlg.Free;
    end;
  end;
end;

procedure TMainForm.Memo1Change(Sender: TObject);
begin
  EditorChanged:= True;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  Refresh;
end;

procedure TMainForm.ProgressUpdate(Sender: TObject; Stage: TProgressStage;
  PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string);
begin
  if Stage = psRunning then
    Caption := Format('%d%%',[PercentDone])
  else
    Caption := '';
end;

{ Grava a imagem no formato da extensão escolhida (.jpg/.jpeg ou .bmp); as
  demais extensões ficam no formato original da imagem. }
procedure SalvaImagem(G: TGraphic; const Arquivo: string);
var Ext: string;
  Bmp: TBitmap;
  Jpg: TJPEGImage;
  EhJpg: Boolean;
begin
  Ext:= LowerCase(ExtractFileExt(Arquivo));
  EhJpg:= (Ext='.jpg') or (Ext='.jpeg');
  if (EhJpg and not (G is TJPEGImage)) or ((Ext='.bmp') and not (G is TBitmap)) then
  begin
    Bmp:= TBitmap.Create;
    try
      Bmp.SetSize(G.Width, G.Height);
      Bmp.Canvas.Draw(0, 0, G);
      if EhJpg then
      begin
        Jpg:= TJPEGImage.Create;
        try
          Jpg.Assign(Bmp);
          Jpg.SaveToFile(Arquivo);
        finally
          Jpg.Free;
        end;
      end else
        Bmp.SaveToFile(Arquivo);
    finally
      Bmp.Free;
    end;
  end else
    G.SaveToFile(Arquivo);
end;

procedure TMainForm.SalvarFigura1Click(Sender: TObject);
begin
  if (Image1.Picture.Graphic=nil) or Image1.Picture.Graphic.Empty then Exit;
  SavePictureDialog1.FileName:= Image1.Hint;
  StartSlideShow:= False;
  try
    if not SavePictureDialog1.Execute then Exit;
    if FileExists(SavePictureDialog1.FileName) and
       (MessageDlg('Arquivo já existe. Substituir?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes) then
      Exit;
    SalvaImagem(Image1.Picture.Graphic, SavePictureDialog1.FileName);
  finally
    StartSlideShow:= True;
  end;
end;

procedure TMainForm.SavePictureDialog1Close(Sender: TObject);
begin
  StartSlideShow:= True;
end;

procedure TMainForm.AbrirFigura1Click(Sender: TObject);
begin
  StartSlideShow:= False;
  if OpenPictureDialog1.Execute then
    ShowPicture(OpenPictureDialog1.FileName);
end;

procedure TMainForm.OpenPictureDialog1Close(Sender: TObject);
begin
  StartSlideShow:= True;
end;

procedure TMainForm.Dos1Click(Sender: TObject);
var Path : string;
begin
  Path:= GetRunDir;
  Path := Trim(Path);
  ShellExecute(0,PChar('open'),PChar('cmd.exe'),
    nil,PChar(path),SW_SHOW);
end;

procedure TMainForm.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.LabelEffect1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LabelEffect1.Hint:= FormatDateTime('hh:nn:ss',Now);
end;

procedure TMainForm.LabelEffect2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LabelEffect2.Hint:= DiaSemana(Now)+FormatDateTime(' - dd/mm/yyyy',Now);
end;

procedure TMainForm.FormClosedView;
begin
 {ShowMessage(InttoStr(MainForm.Height)+' - '+InttoStr(Panel1.Height));}
  if StEx= True then
  begin
    SpeedButton8.Glyph.Modified:= True;
    SpeedButton8.Glyph.Empty;
    ImageList3.Draw(SpeedButton8.Glyph.Canvas,0,0,0);
    ImageList3.Draw(SpeedButton8.Glyph.Canvas,0,0,2);
    SpeedButton8.Glyph.Modified:= True;
    Panel4.Visible:= True;
    Panel5.Visible:= True;
    MainForm.AutoSize:= False;
    MainForm.Height:= 326;
    Panel1.Height:= 302;
    MainForm.AutoSize:= True;
    {-------------------------------------------------------}
    Panel4.Align:= alNone;
    Panel4.Align:= alBottom;
    {-------------------------------------------------------}
  end else
  begin
    SpeedButton8.Glyph.Modified:= True;
    SpeedButton8.Glyph.Empty;
    ImageList3.Draw(SpeedButton8.Glyph.Canvas,0,0,0);
    ImageList3.Draw(SpeedButton8.Glyph.Canvas,0,0,1);
    SpeedButton8.Glyph.Modified:= True;
    Panel4.Visible:= False;
    Panel5.Visible:= False;
    MainForm.AutoSize:= False;
    MainForm.Height:= 102;
    Panel1.Height:= 100;
    MainForm.AutoSize:= True;
  end;
  CnfData.Frm.StExView:= StEx;
  ConfigForm.SaveCnfFile;
end;

procedure TMainForm.Executar1Click(Sender: TObject);
var Comando: string;
begin
  if InputQuery('Digite o nome do programa para executar','Abrir:',Comando) and
     (Trim(Comando)<>'') and not ExecutaComando(Comando) then
    MessageDlg('Não foi possível executar "'+Trim(Comando)+'".', mtError, [mbOk], 0);
end;

procedure TMainForm.ImprimirImagem1Click(Sender: TObject);
var AspectRatio: Single;
  OutputWidth, OutputHeight: Single;
begin
  { sem imagem a proporção seria uma divisão por zero }
  if (Image1.Picture.Graphic=nil) or Image1.Picture.Graphic.Empty then Exit;
  if not PrintDialog1.Execute then
  Exit;
  Printer.BeginDoc;
  try
    OutputWidth := Image1.Picture.Width;
    OutputHeight := Image1.Picture.Height;
    AspectRatio := OutputWidth / OutputHeight;
    if (OutputWidth < Printer.PageWidth) and
      (OutputHeight < Printer.PageHeight) then
    begin
      if OutputWidth < OutputHeight then
      begin
        OutputHeight := Printer.PageHeight;
        OutputWidth := OutputHeight * AspectRatio;
      end else
      begin
        OutputWidth := Printer.PageWidth;
        OutputHeight := OutputWidth / AspectRatio;
      end;
    end;
    if OutputWidth > Printer.PageWidth then
    begin
      OutputWidth := Printer.PageWidth;
      OutputHeight := OutputWidth / AspectRatio;
    end;
    if OutputHeight > Printer.PageHeight then
    begin
      OutputHeight := Printer.PageHeight;
      OutputWidth := OutputHeight * AspectRatio;
    end;
    Printer.Canvas.StretchDraw(Rect(0,0,
      Trunc(OutputWidth), Trunc(OutputHeight)),
      Image1.Picture.Graphic);
  finally
    Printer.EndDoc;
  end;
end;

procedure TMainForm.PrinterSetup1Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TMainForm.Notas1Click(Sender: TObject);
begin
  AbrirArquivo('notepad.exe', '', Handle);
end;

procedure TMainForm.Calculadora1Click(Sender: TObject);
begin
  AbrirArquivo('calc.exe', '', Handle);
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
  RefreshInfo;
end;

procedure TMainForm.SpeedButton7Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente encerrar o programa?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Application.Terminate;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  { Liga/desliga apenas a exibição; a medição continua para o ícone da bandeja }
  GetUsageCPU:= not (GetUsageCPU);
  if (GetUsageCPU= False) then
  begin
    Label5.Caption:='';
    Label5.Color:= Panel28.Color;
    Gauge1.Progress:=0;
    Gauge2.Progress:=0;
  end;
end;

procedure TMainForm.ExecuteList;
var Count: LongInt;
begin
  Memo5.Clear;
  count:=0; StProcess:= True;
  while (Count<Memo1.Lines.Count) and (StProcess=True) do
  begin
    if (Trim(Memo1.Lines[count])<>'')
      and ExecAndWait(Trim(Memo1.Lines[count]), '', SW_SHOW) then
      Memo5.Lines.Add('OK')
    else
      Memo5.Lines.Add('NG');
    Inc(count);
    Memo1.Update;
    Application.ProcessMessages;
  end;
  StProcess:= False;
end;

procedure TMainForm.FindDialog1Find(Sender: TObject);
var
  PosAchada, PosInicial: integer;
begin
  {procura pelo texto após a seleção atual}
  PosInicial := Memo1.SelStart + Memo1.SelLength;
  PosAchada := Pos (FindDialog1.FindText,
    Copy (Memo1.Text, PosInicial + 1,
      Length (Memo1.Text) - PosInicial));
  if PosAchada > 0 then
  begin
    {ativa o componente, e seleciona o texto}
    Memo1.SetFocus;
    Memo1.SelStart := PosInicial + PosAchada - 1;
    Memo1.SelLength := Length(FindDialog1.FindText);
  end else
  begin
    MessageDlg ('Texto não encontrado!!!', mtInformation, [mbOK], 0);
  end;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  StOk:= not (StOk);
  if StOk=true then
  begin
   SpeedButton4.Hint:= 'Parar'
  end else
  begin
    SpeedButton4.Hint:= 'Iniciar';
  end;
  BmpAnimator3.Enabled:= StOk;
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  CrnCount:=0;
  Panel10.Caption:= GetTm(0,CrnCount);
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage= TabSheet9 then
    BmpAnimator3.Enabled:= StOk else
      BmpAnimator3.Enabled:= False;
  if PageControl1.ActivePage= TabSheet10 then
    Timer2.Enabled:= True else
      Timer2.Enabled:= False;
  if PageControl1.ActivePage= TabSheet11 then
  begin
    AddrForm.SetGridVars;
    AddrForm.RefreshGridInfo;
    if FileSize(EdsFile)>0 then
      StringGrid1.SetFocus
        else ToolBar3.SetFocus;
  end;
  { Aba de limpeza: mostra quanto há para limpar nas pastas temporárias }
  if (PageControl1.ActivePage= TabSheet5) and not FLimpando then
    MostraTemporarios;
  { Aba de discos: atualiza ao entrar }
  if PageControl1.ActivePage= TabSheet4 then AtualizaDiscos;
  ConfigForm.SaveCnfFile; { grava a aba atual }
end;

procedure TMainForm.Alarm1Click(Sender: TObject);
begin
  if ConfigForm.CheckBox2.Checked then LEDPaint1.Brush.Color:= clRed else LEDPaint1.Brush.Color:= clMaroon;
  ConfigForm.CheckBox2.Checked:= not (ConfigForm.CheckBox2.Checked);
  Alarm1.Checked:= ConfigForm.CheckBox2.Checked;
end;


procedure TMainForm.SpeedButton8Click(Sender: TObject);
begin
  StEx:= not(StEx);
  FormClosedView;
end;

{ Transparência: menus da bandeja (Transparent1) e da janela (Transparent2)
  e a opção 6 do CheckListBox2 da configuração ficam sempre iguais }
procedure TMainForm.DefineTransparente(Valor: Boolean);
begin
  Transparent1.Checked:= Valor;
  Transparent2.Checked:= Valor;
  CnfData.Frm.StAlphaBlend:= Valor;
  ConfigForm.CheckListBox2.Checked[6]:= Valor;
  if ConfigForm.SaveCnfFile then ConfigForm.ApplyCnfData;
end;

{ Movimento da janela: Lock1 (bandeja), Lock2 (janela) e a opção 1 do
  CheckListBox2 da configuração }
procedure TMainForm.DefineTravado(Valor: Boolean);
begin
  Lock1.Checked:= Valor;
  Lock2.Checked:= Valor;
  CnfData.Frm.StLockForm:= Valor;
  ConfigForm.CheckListBox2.Checked[1]:= Valor;
  if ConfigForm.SaveCnfFile then ConfigForm.ApplyCnfData;
end;

procedure TMainForm.Transparent1Click(Sender: TObject);
begin
  DefineTransparente(not Transparent1.Checked);
end;

procedure TMainForm.CheckListBox2Click(Sender: TObject);
begin
  Transparent1.Checked:= ConfigForm.CheckListBox2.Checked[6];
  Transparent2.Checked:= ConfigForm.CheckListBox2.Checked[6];
  CnfData.Frm.StAlphaBlend:= ConfigForm.CheckListBox2.Checked[6];
  ConfigForm.ApplyCnfData;
end;

procedure TMainForm.Transparent2Click(Sender: TObject);
begin
  DefineTransparente(not Transparent2.Checked);
end;

procedure TMainForm.Lock1Click(Sender: TObject);
begin
  DefineTravado(not Lock1.Checked);
end;

procedure TMainForm.Lock2Click(Sender: TObject);
begin
  DefineTravado(not Lock2.Checked);
end;

{ Feriado nacional + datas do Datas.txt + aniversários (UDatas).
  ComClasse: acrescenta a classificação e a localidade,
  ex.: 'Natal (nacional - Brasil)', 'São João (municipal - Salvador)'. }
function DescricaoDia(D: TDateTime; const Separador: string;
  ComAniversarios: Boolean = True; ComClasse: Boolean = False): string;
var Extras: string;
begin
  Result:= NomeFeriado(D);
  if ComClasse and (Result<>'') then Result:= Result+' (nacional - Brasil)';
  Extras:= DatasExtras(D, Separador, ComAniversarios, ComClasse);
  if (Result<>'') and (Extras<>'') then Result:= Result+Separador;
  Result:= Result+Extras;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
var A, M, Dd: Word;
  Dia: Integer;
  S, N: string;
begin
  { Percorre o ano do calendário em ordem cronológica }
  DecodeDate(MonthCalendar1.Date, A, M, Dd);
  S:= Format('Feriados e datas de %d:', [A])+#13;
  for Dia:= Trunc(EncodeDate(A, 1, 1)) to Trunc(EncodeDate(A, 12, 31)) do
  begin
    N:= DescricaoDia(Dia, ' / ', False, True);
    if N<>'' then S:= S+#13+FormatDateTime('dd/mm/yyyy - ddd', Dia)+' - '+N;
  end;
  N:= ProximosAniversarios(Date, 30);
  if N='' then N:= #13'(nenhum)';
  S:= S+#13#13+'Aniversários nos próximos 30 dias:'+#13+N;
  ShowMessage(S);
end;

{ Marca em negrito os feriados de cada mês exibido. A VCL informa mês e ano.
  Não usa BoldDays: com lista vazia (mês sem feriado, ex.: Mar/Jul/Ago de
  2026) o laço da VCL usa contador LongWord, High([]) = -1 vira $FFFFFFFF e
  ele lê memória aleatória, deixando vários dias em negrito sem motivo. }
procedure TMainForm.MonthCalendar1GetMonthBoldInfo(Sender: TObject;
  Month, Year: LongWord; var MonthBoldInfo: LongWord);
var Dia: Integer;
begin
  MonthBoldInfo:= 0;
  if (Month<1) or (Month>12) or (Year<1) or (Year>9999) then Exit;
  for Dia:= 1 to MonthDays[IsLeapYear(Year)][Month] do
    if DescricaoDia(EncodeDate(Year, Month, Dia), ' / ')<>'' then
      MonthBoldInfo:= MonthBoldInfo or (LongWord(1) shl (Dia-1));
end;

procedure TMainForm.MonthCalendar1Click(Sender: TObject);
begin
  LabelX6.Caption:= FormatDateTime('dd/mm/yyyy',MonthCalendar1.Date);
  Panel4.Caption:= DescricaoDia(MonthCalendar1.Date, ' / ');
end;

{----------------------------------------------------------------------------}
{-------------------------Procedure---MonthCalendar1MouseMove----------------}
{ Mostra um hint com o nome do feriado quando o mouse está sobre o dia.
  O evento é ligado em FormCreate (OnMouseMove não é publicado no
  TMonthCalendar, por isso não aparece no Object Inspector). }
procedure TMainForm.MonthCalendar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var HT: TMCHitTestInfo;
  D: TDateTime;
  S: string;
begin
  S:= '';
  FillChar(HT, SizeOf(HT), 0);
  HT.cbSize:= SizeOf(HT);
  HT.pt:= Point(X, Y);
  SendMessage(MonthCalendar1.Handle, MCM_HITTEST, 0, LPARAM(@HT));
  { dia do mês (inclusive os dias cinza do mês anterior/seguinte) }
  if (HT.uHit and not (MCHT_PREV or MCHT_NEXT)) = MCHT_CALENDARDATE then
  try
    D:= EncodeDate(HT.st.wYear, HT.st.wMonth, HT.st.wDay);
    S:= DescricaoDia(D, #13);
    if S<>'' then S:= FormatDateTime('dd/mm/yyyy', D)+' - '+S;
  except
    S:= '';
  end;
  if S<>MonthCalendar1.Hint then
  begin
    MonthCalendar1.Hint:= S;
    Application.CancelHint;
    if S<>'' then Application.ActivateHint(Mouse.CursorPos);
  end;
end;

{ Página anterior/seguinte. O SelectNextPage dispara o PageControl1Change,
  que faz o mesmo que a troca de aba com o mouse (animação, letreiro,
  contatos, limpeza, discos e gravação da configuração). }
procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  PageControl1.SelectNextPage(False);
  PlaySound('click',hInstance,snd_resource or snd_async);
end;

procedure TMainForm.ToolButton8Click(Sender: TObject);
begin
  PageControl1.SelectNextPage(True);
  PlaySound('click',hInstance,snd_resource or snd_async);
end;

procedure TMainForm.ToolButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente encerrar o programa?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Application.Terminate;
end;

procedure TMainForm.ToolButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ToolButton7Click(Sender: TObject);
begin
  MinimizarParaBandeja;
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  ShowMessage(
  'Todos os feriados eclesiásticos são calculados em'+#13+
  'função da Páscoa e esta é calculada em função da '+#13+
  'Lua Cheia.'+#13+#13+
  'A Páscoa ocorre no primeiro domingo após a'+#13+
  'primeria lua cheia que se verificar a partir de 21 de'+#13+
  'março (início da Primavera).  A SEXTA FEIRA DA'+#13+
  'PAIXÃO é a que antecede o DOMINGO DE PÁSCOA.'+#13+
  'A terça-feira de CARNAVAL ocorre 47 dias antes da'+#13+
  'Páscoa e a quinta feira do CORPUS CHRISTI ocorre'+#13+
  '60 dias após a Páscoa. DOMINGO DE RAMOS é o que'+#13+
  'antecede o domingo de Páscoa, a QUARESMA são '+#13+
  '40 dias entre o Carnaval e o domingo de Ramos, a '+#13+
  'quinta-feira da ASCENSÃO ocorre 39 dias após a '+#13+
  'Páscoa e o domingo de PENTECOSTES vem 10 dias'+#13+
  'depois da Ascensão.'+#13);
end;

procedure TMainForm.ToolButton9Click(Sender: TObject);
begin
  if EditorChanged then Memo1.Lines.SaveToFile(GetRunDir+Prg+'.TXT');
  OpenDialog1.Filter:= '(*.*)|*.*|(*.CMD)|*.CMD|(*.TXT)|*.TXT|(*.CSV)|*.CSV';
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    EditorChanged:= False;
  end;
end;

procedure TMainForm.ToolButton10Click(Sender: TObject);
var intPosRestore: integer;
    strTitleRestore: string;
begin
// guardamos as configurações
  strTitleRestore:= OpenDialog1.Title;
  intPosRestore:= Memo1.SelStart;
  //mudamos as configuracoes
  OpenDialog1.Title:= 'Escolha o arquivo cujo conteúdo você quer inserir...';
  {OpenDialog1.FileName:='';}
  OpenDialog1.Filter:= '(*.*)|*.*|(*.CMD)|*.CMD|(*.TXT)|*.TXT|(*.CSV)|*.CSV';
  try
    if (OpenDialog1.Execute) and (Length(OpenDialog1.FileName)>2) then
    begin
      SendMessage(Memo1.Handle, WM_SETREDRAW, 0, 0);
      Memo1.Lines.BeginUpdate;
      Memo1.SelText:= NFiletoStr(OpenDialog1.FileName);
      Memo1.Lines.EndUpdate;
      SendMessage(Memo1.Handle, WM_SETREDRAW, 1, 0);
      InvalidateRect(Memo1.Handle, nil,true);
    end;
  finally
    //restauramos as configuracoes
    OpenDialog1.Title:=strTitleRestore;
    Memo1.SelStart:=intPosRestore;
  end;
end;

procedure TMainForm.ToolButton11Click(Sender: TObject);
begin
{Salvar}
  if EditorChanged then Memo1.Lines.SaveToFile(GetRunDir+Prg+'.TXT');
end;

procedure TMainForm.ToolButton12Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
  if (Memo1.Lines.Count>0) and (MessageDlg('Deseja executar lista de programas?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      ExecuteList;
end;


procedure TMainForm.Image4DblClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.Minimizar1Click(Sender: TObject);
begin
  MinimizarParaBandeja;
end;

procedure TMainForm.ToolButton31Click(Sender: TObject);
begin
  {Inicio}
  AddrForm.NextPrior(0);
end;

procedure TMainForm.ToolButton36Click(Sender: TObject);
begin
  {Fim}
  AddrForm.NextPrior(3);
end;

procedure TMainForm.ToolButton32Click(Sender: TObject);
begin
  {PgUp}
  if (pof>0) then AddrForm.NextPrior(6);
end;

procedure TMainForm.ToolButton35Click(Sender: TObject);
begin
  {PgDown}
  if (pof<FileSize(EdsFile)-1) then AddrForm.NextPrior(7);
end;

procedure TMainForm.ToolButton33Click(Sender: TObject);
begin
  {Registro Anterior}
  if (pof>0) then AddrForm.NextPrior(1);
end;

procedure TMainForm.ToolButton34Click(Sender: TObject);
begin
  {Próximo Registro}
  if (pof<FileSize(EdsFile)-1) then AddrForm.NextPrior(2);
end;

procedure TMainForm.StringGrid1Click(Sender: TObject);
begin
  AddrForm.NextPrior(4);
end;

procedure TMainForm.StringGrid1Enter(Sender: TObject);
begin
  AddrForm.NextPrior(4);
end;

procedure TMainForm.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  VK_UP: begin
        if (StringGrid1.Row=1) and (ipg>0) then
        begin
          Dec(ipg); Dec(pof);
          AddrForm.NextPrior(5);
        end else
        begin
          AddrForm.NextPrior(4);
        end;
      end;
  VK_DOWN: begin
        if (StringGrid1.Row=szg) and (ipg+szg<szf) then
        begin
          Inc(ipg); Inc(pof);
          AddrForm.NextPrior(5);
        end else
        begin
          AddrForm.NextPrior(4);
        end;
      end;
  end;
end;

procedure TMainForm.ToolButton37Click(Sender: TObject);
begin
  {Adiconar}
  AddrForm.AddEds(0,True);
end;

procedure TMainForm.ToolButton38Click(Sender: TObject);
begin
  {Deletar}
  if (FileSize(EdsFile)>0) then AddrForm.DelEds(True);
end;

procedure TMainForm.ToolButton39Click(Sender: TObject);
begin
  {Salvar}
  if AddrForm.SaveEdsFile= False then
    MessageDlg('Arquivo '+Prg+'.EDS erro!!!', mtError, [mbOk], 0);
end;

procedure TMainForm.ToolButton40Click(Sender: TObject);
begin
  {Find}
  case AddrForm.ComboBox2.ItemIndex of
    0: AddrForm.FindEds(0);
    1: AddrForm.FindEds(3);
    2: AddrForm.FindEds(6)
    else AddrForm.FindEds(0);
  end;
end;

procedure TMainForm.ToolButton41Click(Sender: TObject);
begin
  {Go to...}
  AddrForm.GotoEds;
end;

procedure TMainForm.ToolButton42Click(Sender: TObject);
begin
  {Sort - Reorganizar}
  AddrForm.SortEds;
end;

procedure TMainForm.ToolButton43Click(Sender: TObject);
begin
  {Deletar todos os registros}
  AddrForm.DelAllEds;
end;

procedure TMainForm.ToolButton30Click(Sender: TObject);
begin
  AddrForm.Show;
  AddrForm.PageControl1.ActivePageIndex:= 0;
end;

procedure TMainForm.ScrollBar1Change(Sender: TObject);
begin
  AddrForm.IrPara(ScrollBar1.Position);
end;

procedure TMainForm.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
{  if MainForm.StringGrid1.Focused then
  begin}
    AddrForm.Edit1.Text:= MainForm.StringGrid1.Cells[1, MainForm.StringGrid1.Row];
    AddrForm.Edit8.Text:= MainForm.StringGrid1.Cells[2, MainForm.StringGrid1.Row];
{  end;}
end;

procedure TMainForm.ToolButton44Click(Sender: TObject);
begin
  AddrForm.Show;
  AddrForm.PageControl1.ActivePageIndex:= 1;
end;

procedure TMainForm.ToolButton45Click(Sender: TObject);
begin
  AddrForm.Show;
  AddrForm.PageControl1.ActivePageIndex:= 2;
end;

procedure TMainForm.SpeedButton10Click(Sender: TObject);
begin
  { Alterna os medidores entre memória em uso e memória livre.
    Nao afeta o Ícone da bandeja, que sempre usa a % de memória em uso. }
  StMem1:= not (StMem1);
  if StMem1 then
  begin
    LabelX4.Caption:= ' Memória em uso';
    SpeedButton10.Hint:= 'Mostrando memória em uso (clique para ver a livre)';
  end else
  begin
    LabelX4.Caption:= ' Memória livre';
    SpeedButton10.Hint:= 'Mostrando memória livre (clique para ver a em uso)';
  end;
  AtualizaMemoria; { atualiza já, sem esperar o próximo ciclo do Timer1 }
end;

{----------------------------------------------------------------------------}
{-------------------Limpeza-de-arquivos-temporarios--------------------------}
{ As listas de pastas usam o formato "Rótulo|Caminho": o Memo3 mostra o total
  de cada rótulo (ex.: "Chrome - Maria") e a limpeza usa o caminho.          }
const SepRotulo = '|'; { caractere que não pode existir em nomes de pastas }

type
  TNavegador = record
    Nome, Processo, Dados, Url: string;
  end;

const
  { Dados: pasta do navegador dentro de AppData\Local de cada perfil.
    Url: tela de limpeza de dados do próprio navegador.                 }
  Navegadores: array[0..4] of TNavegador = (
    (Nome: 'Chrome';  Processo: 'chrome.exe';  Dados: 'Google\Chrome\User Data';
     Url: 'chrome://settings/clearBrowserData'),
    (Nome: 'Edge';    Processo: 'msedge.exe';  Dados: 'Microsoft\Edge\User Data';
     Url: 'edge://settings/clearBrowserData'),
    (Nome: 'Firefox'; Processo: 'firefox.exe'; Dados: 'Mozilla\Firefox\Profiles';
     Url: 'about:preferences#privacy'),
    (Nome: 'Brave';   Processo: 'brave.exe';   Dados: 'BraveSoftware\Brave-Browser\User Data';
     Url: 'brave://settings/clearBrowserData'),
    (Nome: 'Opera';   Processo: 'opera.exe';   Dados: 'Opera Software\Opera Stable';
     Url: 'opera://settings/clearBrowserData'));
  { Subpastas de cache. Apagá-las não remove senhas, favoritos, histórico,
    cookies nem extensões: o navegador apenas baixa os arquivos de novo.  }
  PastasCache: array[0..12] of string = ('Cache', 'Code Cache', 'GPUCache',
    'DawnCache', 'DawnGraphiteCache', 'DawnWebGPUCache', 'GraphiteDawnCache',
    'GrShaderCache', 'ShaderCache', 'Service Worker\CacheStorage',
    'Service Worker\ScriptCache', 'cache2', 'startupCache');

function NovaListaPastas: TStringList;
begin
  Result:= TStringList.Create;
  Result.CaseSensitive:= False;
  Result.NameValueSeparator:= SepRotulo;
end;

{ Inclui a pasta P na lista. Sem rótulo, o próprio caminho é o rótulo. }
procedure IncluiPasta(L: TStringList; P: string; Rotulo: string = '');
var I: Integer;
begin
  P:= ExcludeTrailingPathDelimiter(Trim(P));
  { proteção: nunca limpar a raiz de um disco nem uma pasta inexistente }
  if (Length(P)<=3) or not DirectoryExists(P) then Exit;
  for I:= 0 to L.Count-1 do
    if SameText(L.ValueFromIndex[I], P) then Exit;
  if Rotulo='' then Rotulo:= P;
  L.Add(Rotulo+SepRotulo+P);
end;

{ Expande variáveis como %SystemDrive% }
function ExpandeVariaveis(const S: string): string;
var Buf: array[0..2*MAX_PATH] of Char;
begin
  if ExpandEnvironmentStrings(PChar(S), Buf, Length(Buf)) > 0 then
    Result:= Buf
  else
    Result:= S;
end;

{ Pastas dos perfis de usuário (ex.: C:\Users\Maria). Executando como
  administrador são todos os perfis do computador; sem esse privilégio,
  somente o perfil de quem executa o Painel (os demais são inacessíveis). }
function PerfisUsuarios: TStringList;
const KeyPerfis = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList';
var Reg: TRegistry;
  SIDs: TStringList;
  I: Integer;

  procedure Inclui(P: string);
  begin
    P:= ExcludeTrailingPathDelimiter(Trim(P));
    if (Length(P)>3) and DirectoryExists(P) and (Result.IndexOf(P)<0) then
      Result.Add(P);
  end;

begin
  Result:= TStringList.Create;
  Result.CaseSensitive:= False;
  Inclui(SysUtils.GetEnvironmentVariable('USERPROFILE'));
  if not ShIsUserAnAdmin then Exit;
  Reg:= TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);
  SIDs:= TStringList.Create;
  try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly(KeyPerfis) then
    begin
      Reg.GetKeyNames(SIDs);
      Reg.CloseKey;
    end;
    { S-1-5-21-...: contas locais e de domínio; S-1-12-1-...: contas do
      Microsoft Entra (Azure AD). Ficam de fora as contas internas do
      sistema (S-1-5-18, 19 e 20), cujas pastas ficam em C:\Windows.  }
    for I:= 0 to SIDs.Count-1 do
      if (Pos('S-1-5-21-', SIDs[I])=1) or (Pos('S-1-12-1-', SIDs[I])=1) then
        Inclui(ExpandeVariaveis(RegLerStr(HKEY_LOCAL_MACHINE,
          KeyPerfis+'\'+SIDs[I], 'ProfileImagePath')));
  finally
    SIDs.Free;
    Reg.Free;
  end;
end;

{ Inclui as pastas de cache de um navegador num perfil de usuário. Os
  navegadores baseados no Chromium têm uma subpasta por perfil do navegador
  (Default, Profile 1...) e o Firefox uma por perfil em Profiles.          }
procedure IncluiCacheNavegador(L: TStringList; const N: TNavegador;
  const Perfil: string);
var Base, Rotulo: string;
  SR: TSearchRec;

  procedure Verifica(const Dir: string);
  var I: Integer;
  begin
    for I:= Low(PastasCache) to High(PastasCache) do
      IncluiPasta(L, Dir+'\'+PastasCache[I], Rotulo);
  end;

begin
  Base:= Perfil+'\AppData\Local\'+N.Dados;
  if not DirectoryExists(Base) then Exit;
  Rotulo:= N.Nome+' - '+ExtractFileName(Perfil);
  Verifica(Base);
  if FindFirst(Base+'\*', faDirectory, SR)=0 then
  try
    repeat
      if ((SR.Attr and faDirectory)<>0) and ((SR.Attr and faSymLink)=0) and
         (SR.Name<>'.') and (SR.Name<>'..') then
        Verifica(Base+'\'+SR.Name);
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
end;

{ Verifica se há um processo com este nome em execução (em qualquer sessão) }
function ProcessoAtivo(const Exe: string): Boolean;
var H: THandle;
  PE: TProcessEntry32;
begin
  Result:= False;
  H:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if H=INVALID_HANDLE_VALUE then Exit;
  try
    PE.dwSize:= SizeOf(PE);
    if Process32First(H, PE) then
      repeat
        if SameText(string(PE.szExeFile), Exe) then Exit(True);
      until not Process32Next(H, PE);
  finally
    CloseHandle(H);
  end;
end;

{ Pastas a limpar conforme as opções. Sem privilégio de administrador os
  perfis se resumem ao do usuário que executa o Painel.
  - temporários: <Windows>\Temp, %TEMP% e AppData\Local\Temp de cada perfil;
  - cache dos navegadores de cada perfil. Navegadores abertos são ignorados
    (retornados em Ignorados): apagar o cache em uso pode corrompê-lo;
  - cache do Windows Update (SoftwareDistribution\Download): só administrador,
    o Windows baixa de novo o que ainda precisar;
  - relatórios de erro do Windows (WER), CrashDumps e Minidump.            }
function PastasLimpeza(const Op: TOpcoesLimpeza; out Ignorados: string): TStringList;
const Erros = 'Relatórios de erro';
var Perfis: TStringList;
  I, N: Integer;
  ProgData: string;
begin
  Ignorados:= '';
  Result:= NovaListaPastas;
  Perfis:= PerfisUsuarios;
  try
    if Op.Temp then
    begin
      if GetWinDir<>'' then IncluiPasta(Result, GetWinDir+'Temp');
      { já no formato longo (sem NOMEUS~1) }
      if Perfis.Count>0 then
        IncluiPasta(Result, GetTempDir, 'Temp - '+ExtractFileName(Perfis[0]))
      else
        IncluiPasta(Result, GetTempDir);
      for I:= 0 to Perfis.Count-1 do
        IncluiPasta(Result, Perfis[I]+'\AppData\Local\Temp',
          'Temp - '+ExtractFileName(Perfis[I]));
    end;
    if Op.Navegadores then
      for N:= Low(Navegadores) to High(Navegadores) do
        if ProcessoAtivo(Navegadores[N].Processo) then
        begin
          if Ignorados<>'' then Ignorados:= Ignorados+', ';
          Ignorados:= Ignorados+Navegadores[N].Nome;
        end else
          for I:= 0 to Perfis.Count-1 do
            IncluiCacheNavegador(Result, Navegadores[N], Perfis[I]);
    if Op.WinUpdate and ShIsUserAnAdmin and (GetWinDir<>'') then
      IncluiPasta(Result, GetWinDir+'SoftwareDistribution\Download', 'Windows Update');
    if Op.Erros then
    begin
      ProgData:= SysUtils.GetEnvironmentVariable('ProgramData');
      if ProgData<>'' then
      begin
        IncluiPasta(Result, ProgData+'\Microsoft\Windows\WER\ReportArchive', Erros);
        IncluiPasta(Result, ProgData+'\Microsoft\Windows\WER\ReportQueue', Erros);
        IncluiPasta(Result, ProgData+'\Microsoft\Windows\WER\Temp', Erros);
      end;
      if ShIsUserAnAdmin and (GetWinDir<>'') then
        IncluiPasta(Result, GetWinDir+'Minidump', Erros);
      for I:= 0 to Perfis.Count-1 do
      begin
        IncluiPasta(Result, Perfis[I]+'\AppData\Local\Microsoft\Windows\WER\ReportArchive', Erros);
        IncluiPasta(Result, Perfis[I]+'\AppData\Local\Microsoft\Windows\WER\ReportQueue', Erros);
        IncluiPasta(Result, Perfis[I]+'\AppData\Local\CrashDumps', Erros);
      end;
    end;
  finally
    Perfis.Free;
  end;
end;

{ Mensagem de confirmação com textos próprios nos dois primeiros botões.
  Retorna mrYes (1º botão), mrNo (2º botão) ou mrCancel.                  }
function Pergunta(const Msg, Botao1, Botao2: string): Integer;
var Dlg: TForm;

  procedure Rotula(const Nome, Texto: string);
  var C: TComponent;
  begin
    C:= Dlg.FindComponent(Nome);
    if C is TButton then TButton(C).Caption:= Texto;
  end;

begin
  Dlg:= CreateMessageDialog(Msg, mtConfirmation, [mbYes, mbNo, mbCancel]);
  try
    Rotula('Yes', Botao1);
    Rotula('No', Botao2);
    Rotula('Cancel', 'Cancelar');
    Result:= Dlg.ShowModal;
  finally
    Dlg.Free;
  end;
end;

{ Soma o tamanho e a quantidade dos arquivos de uma pasta e das subpastas.
  Junções e links simbólicos não são seguidos (poderiam apontar para fora). }
procedure SomaPasta(const Pasta: string; var Bytes: Int64; var Qtd: Integer);
var SR: TSearchRec;
begin
  if FindFirst(Pasta+'\*', faAnyFile, SR)=0 then
  try
    repeat
      if (SR.Name='.') or (SR.Name='..') then Continue;
      if (SR.Attr and faDirectory)<>0 then
      begin
        if (SR.Attr and faSymLink)=0 then
          SomaPasta(Pasta+'\'+SR.Name, Bytes, Qtd);
      end else
      begin
        Inc(Bytes, SR.Size);
        Inc(Qtd);
      end;
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
end;

{ Mostra no Memo3 quanto será limpo, somado por rótulo }
procedure TMainForm.MostraPastas(Pastas: TStringList; const Cabecalho: string;
  Lixeira: Boolean);
var Rotulos: TStringList;
  Bytes: array of Int64;
  Qtds: array of Integer;
  I, R, QtdTotal: Integer;
  Total, LixBytes, LixItens: Int64;
begin
  Screen.Cursor:= crHourGlass;
  Rotulos:= TStringList.Create;
  Memo3.Lines.BeginUpdate;
  try
    SetLength(Bytes, Pastas.Count); { iniciados com zero }
    SetLength(Qtds, Pastas.Count);
    for I:= 0 to Pastas.Count-1 do
    begin
      R:= Rotulos.IndexOf(Pastas.Names[I]);
      if R<0 then R:= Rotulos.Add(Pastas.Names[I]);
      SomaPasta(Pastas.ValueFromIndex[I], Bytes[R], Qtds[R]);
    end;
    Memo3.Clear;
    Memo3.Lines.Add(Cabecalho);
    Total:= 0;
    QtdTotal:= 0;
    for R:= 0 to Rotulos.Count-1 do
    begin
      Inc(Total, Bytes[R]);
      Inc(QtdTotal, Qtds[R]);
      Memo3.Lines.Add(Rotulos[R]);
      Memo3.Lines.Add(Format('   %s em %d arquivo(s)', [FmtValue(1, Bytes[R]), Qtds[R]]));
    end;
    if Lixeira and InfoLixeira(LixBytes, LixItens) then
    begin
      Inc(Total, LixBytes);
      Inc(QtdTotal, Integer(LixItens));
      Memo3.Lines.Add('Lixeira');
      Memo3.Lines.Add(Format('   %s em %d item(ns)', [FmtValue(1, LixBytes), LixItens]));
    end else
      Lixeira:= False;
    if (Rotulos.Count=0) and not Lixeira then
      Memo3.Lines.Add('Nada a limpar com as opções escolhidas.')
    else
      Memo3.Lines.Add(Format('Total a limpar: %s (%d arquivos)', [FmtValue(1, Total), QtdTotal]));
    Gauge3.Progress:= 0;
  finally
    Memo3.Lines.EndUpdate;
    Rotulos.Free;
    Screen.Cursor:= crDefault;
  end;
  Memo3.SelStart:= 0;
end;

{ Cabeçalho do Memo3 conforme o alcance da limpeza }
function CabecalhoLimpeza: string;
begin
  if ShIsUserAnAdmin then
    Result:= 'Limpeza - todos os perfis'
  else
    Result:= 'Limpeza - perfil atual';
end;

{ Mostra no Memo3 o que será limpo com as opções atuais }
procedure TMainForm.MostraTemporarios;
var Pastas: TStringList;
  Ignorados: string;
begin
  Pastas:= PastasLimpeza(FOpcoes, Ignorados);
  try
    MostraPastas(Pastas, CabecalhoLimpeza, FOpcoes.Lixeira);
    if Ignorados<>'' then
      Memo3.Lines.Add('Navegador aberto (ignorado): '+Ignorados);
  finally
    Pastas.Free;
  end;
end;

{ Apaga o conteúdo das pastas da lista (as pastas em si são mantidas) e,
  se pedido, esvazia a Lixeira. Arquivos em uso ou sem permissão (comum em
  C:\Windows\Temp sem executar como administrador) são mantidos. O Gauge3
  avança conforme os bytes. O resultado fica em FUltLiberado/FUltApagados. }
procedure TMainForm.LimpaPastas(Pastas: TStringList; const Cabecalho: string;
  Lixeira: Boolean);
var I, Qtd, Apagados, Mantidos: Integer;
  Total, Feito, Liberado, LixBytes, LixItens: Int64;
  Ultimo: Cardinal;

  procedure Avanca(N: Int64);
  begin
    Inc(Feito, N);
    if (Total>0) and (Feito<=Total) then
      Gauge3.Progress:= Round(100.0*Feito/Total);
    if GetTickCount-Ultimo>=100 then { mantém a janela respondendo }
    begin
      Ultimo:= GetTickCount;
      Application.ProcessMessages;
    end;
  end;

  procedure LimpaPasta(const Pasta: string; Raiz: Boolean);
  var SR: TSearchRec;
    Nome: string;
  begin
    if FindFirst(Pasta+'\*', faAnyFile, SR)=0 then
    try
      repeat
        if (SR.Name='.') or (SR.Name='..') then Continue;
        Nome:= Pasta+'\'+SR.Name;
        if (SR.Attr and faDirectory)<>0 then
        begin
          if (SR.Attr and faSymLink)=0 then LimpaPasta(Nome, False);
        end else
        begin
          if (SR.Attr and faReadOnly)<>0 then
            SetFileAttributes(PChar(Nome), FILE_ATTRIBUTE_NORMAL);
          if SysUtils.DeleteFile(Nome) then
          begin
            Inc(Apagados);
            Inc(Liberado, SR.Size);
          end else
            Inc(Mantidos);
          Avanca(SR.Size+1); { +1: arquivos vazios também contam no progresso }
        end;
      until FindNext(SR)<>0;
    finally
      FindClose(SR);
    end;
    if not Raiz then RemoveDir(Pasta); { só é removida se ficou vazia }
  end;

begin
  if FLimpando then Exit;
  FLimpando:= True;
  SpeedButton11.Enabled:= False;
  SpeedButton13.Enabled:= False;
  ComboBox1.Enabled:= False;
  Screen.Cursor:= crHourGlass;
  try
    { 1ª passagem: total para o Gauge3 (bytes + 1 por arquivo) }
    Total:= 0;
    for I:= 0 to Pastas.Count-1 do
    begin
      Qtd:= 0;
      SomaPasta(Pastas.ValueFromIndex[I], Total, Qtd);
      Inc(Total, Qtd);
    end;
    Feito:= 0;
    Liberado:= 0;
    Apagados:= 0;
    Mantidos:= 0;
    Ultimo:= GetTickCount;
    Gauge3.MaxValue:= 100;
    Gauge3.Progress:= 0;
    Memo3.Lines.Add('Limpando...');
    if Lixeira and InfoLixeira(LixBytes, LixItens) and (LixItens>0) and
       EsvaziaLixeira then
    begin
      Inc(Liberado, LixBytes);
      Inc(Apagados, Integer(LixItens));
    end;
    for I:= 0 to Pastas.Count-1 do
      LimpaPasta(Pastas.ValueFromIndex[I], True);
    { Resultado: resumo da limpeza seguido do que permaneceu nas pastas }
    MostraPastas(Pastas, Cabecalho, Lixeira);
    Gauge3.Progress:= 100;
    I:= 0;
    Memo3.Lines.Insert(I, Format('Limpeza concluída: %s liberados (%d arquivos)',
      [FmtValue(1, Liberado), Apagados]));
    Inc(I);
    if Mantidos>0 then
    begin
      Memo3.Lines.Insert(I, Format('Mantidos %d arquivo(s) em uso ou sem permissão', [Mantidos]));
      Inc(I);
    end;
    Memo3.Lines.Insert(I, '--- Permanece nas pastas ---');
    Memo3.Lines[Memo3.Lines.Count-1]:= StringReplace(Memo3.Lines[Memo3.Lines.Count-1],
      'Total a limpar', 'Total restante', []);
    Memo3.SelStart:= 0;
    FUltLiberado:= Liberado;
    FUltApagados:= Apagados;
  finally
    Screen.Cursor:= crDefault;
    SpeedButton11.Enabled:= True;
    SpeedButton13.Enabled:= True;
    ComboBox1.Enabled:= True;
    FLimpando:= False;
  end;
end;

{ Limpeza com as opções escolhidas (manual ou automática) }
procedure TMainForm.LimpaTemporarios;
var Pastas: TStringList;
  Ignorados: string;
begin
  Pastas:= PastasLimpeza(FOpcoes, Ignorados);
  try
    LimpaPastas(Pastas, CabecalhoLimpeza, FOpcoes.Lixeira);
    if Ignorados<>'' then
      Memo3.Lines.Add('Navegador aberto (ignorado): '+Ignorados);
  finally
    Pastas.Free;
  end;
  FOpcoes.Ultima:= Now;
  SalvaOpcoesLimpeza;
end;

{-------------------Opções-da-limpeza-(Painel.ini)---------------------------}
procedure TMainForm.CarregaOpcoesLimpeza;
var Ini: TIniFile;
begin
  FillChar(FOpcoes, SizeOf(FOpcoes), 0);
  FOpcoes.Temp:= True;
  try
    Ini:= TIniFile.Create(GetRunDir+Prg+'.ini');
    try
      FOpcoes.Temp:= Ini.ReadBool('Limpeza', 'Temporarios', True);
      FOpcoes.Navegadores:= Ini.ReadBool('Limpeza', 'Navegadores', False);
      FOpcoes.Lixeira:= Ini.ReadBool('Limpeza', 'Lixeira', False);
      FOpcoes.WinUpdate:= Ini.ReadBool('Limpeza', 'WindowsUpdate', False);
      FOpcoes.Erros:= Ini.ReadBool('Limpeza', 'RelatoriosErro', False);
      FOpcoes.Auto:= Ini.ReadInteger('Limpeza', 'Automatica', 0);
      { data como número com ponto decimal fixo: independe das configurações regionais }
      FOpcoes.Ultima:= StrToFloatDef(Ini.ReadString('Limpeza', 'Ultima', '0'), 0,
        TFormatSettings.Invariant);
    finally
      Ini.Free;
    end;
  except
  end;
  if (FOpcoes.Auto<0) or (FOpcoes.Auto>3) then FOpcoes.Auto:= 0;
end;

procedure TMainForm.SalvaOpcoesLimpeza;
var Ini: TIniFile;
begin
  try
    Ini:= TIniFile.Create(GetRunDir+Prg+'.ini');
    try
      Ini.WriteBool('Limpeza', 'Temporarios', FOpcoes.Temp);
      Ini.WriteBool('Limpeza', 'Navegadores', FOpcoes.Navegadores);
      Ini.WriteBool('Limpeza', 'Lixeira', FOpcoes.Lixeira);
      Ini.WriteBool('Limpeza', 'WindowsUpdate', FOpcoes.WinUpdate);
      Ini.WriteBool('Limpeza', 'RelatoriosErro', FOpcoes.Erros);
      Ini.WriteInteger('Limpeza', 'Automatica', FOpcoes.Auto);
      Ini.WriteString('Limpeza', 'Ultima',
        FloatToStr(FOpcoes.Ultima, TFormatSettings.Invariant));
    finally
      Ini.Free;
    end;
  except
    { pasta do Painel sem permissão de gravação: as opções valem só nesta sessão }
  end;
end;

{ Janela de opções da limpeza. Retorna mrOk (Limpar), mrYes (Salvar),
  mrRetry (reiniciar como administrador) ou mrCancel. Exceto em mrCancel,
  as opções marcadas são gravadas. }
function TMainForm.DialogoLimpeza: Integer;
var F: TForm;
  CTemp, CNav, CLix, CWU, CErr: TCheckBox;
  CB: TComboBox;
  L: TLabel;
  Y: Integer;
  Admin: Boolean;

  function Px(V: Integer): Integer; { dimensões ajustadas ao DPI da tela }
  begin
    Result:= MulDiv(V, Screen.PixelsPerInch, 96);
  end;

  function Rotulo(const Texto: string): TLabel;
  begin
    Result:= TLabel.Create(F);
    Result.Parent:= F;
    Result.SetBounds(Px(16), Y, F.ClientWidth-Px(32), Px(16));
    Result.Caption:= Texto;
    Inc(Y, Px(22));
  end;

  function Caixa(const Texto: string; Marcada: Boolean): TCheckBox;
  begin
    Result:= TCheckBox.Create(F);
    Result.Parent:= F;
    Result.SetBounds(Px(16), Y, F.ClientWidth-Px(32), Px(20));
    Result.Caption:= Texto;
    Result.Checked:= Marcada;
    Inc(Y, Px(24));
  end;

  procedure Botao(const Texto: string; X: Integer; MR: Integer);
  var B: TButton;
  begin
    B:= TButton.Create(F);
    B.Parent:= F;
    B.SetBounds(X, Y, Px(84), Px(25));
    B.Caption:= Texto;
    B.ModalResult:= MR;
    B.Default:= MR=mrOk;
    B.Cancel:= MR=mrCancel;
    if MR=mrRetry then
    begin
      B.Hint:= 'Reiniciar o Painel como administrador para limpar todos os perfis';
      B.ShowHint:= True;
    end;
  end;

begin
  Admin:= ShIsUserAnAdmin;
  F:= TForm.CreateNew(nil);
  try
    F.Caption:= 'Limpeza do sistema';
    F.BorderStyle:= bsDialog;
    F.Position:= poScreenCenter;
    F.ClientWidth:= Px(420);
    Y:= Px(12);
    if Admin then
      L:= Rotulo('Executando como administrador: todos os perfis do computador.')
    else
      L:= Rotulo('Sem privilégio de administrador: somente o seu perfil.');
    L.Font.Style:= [fsBold];
    CTemp:= Caixa('Arquivos temporários (Windows e usuários)', FOpcoes.Temp);
    CNav:= Caixa('Cache dos navegadores (os abertos são ignorados)', FOpcoes.Navegadores);
    CLix:= Caixa('Esvaziar a Lixeira', FOpcoes.Lixeira);
    if Admin then
      CWU:= Caixa('Cache do Windows Update', FOpcoes.WinUpdate)
    else
    begin
      CWU:= Caixa('Cache do Windows Update (requer administrador)', FOpcoes.WinUpdate);
      CWU.Enabled:= False;
    end;
    CErr:= Caixa('Relatórios de erro e despejos de memória', FOpcoes.Erros);
    Inc(Y, Px(6));
    L:= Rotulo('Limpeza automática:');
    L.Width:= Px(120);
    CB:= TComboBox.Create(F);
    CB.Parent:= F;
    CB.Style:= csDropDownList;
    CB.SetBounds(Px(140), L.Top-Px(3), Px(180), Px(21));
    CB.Items.Add('Desativada');
    CB.Items.Add('Ao iniciar o Painel');
    CB.Items.Add('Diária');
    CB.Items.Add('Semanal');
    CB.ItemIndex:= FOpcoes.Auto;
    Inc(Y, Px(6));
    if FOpcoes.Ultima>0 then
      Rotulo('Última limpeza: '+FormatDateTime('dd/mm/yyyy hh:nn', FOpcoes.Ultima))
    else
      Rotulo('Última limpeza: nenhuma');
    Inc(Y, Px(8));
    if not Admin then Botao('&Admin...', Px(16), mrRetry);
    Botao('&Limpar', F.ClientWidth-Px(276), mrOk);
    Botao('&Salvar', F.ClientWidth-Px(184), mrYes);
    Botao('Cancelar', F.ClientWidth-Px(92), mrCancel);
    F.ClientHeight:= Y+Px(25)+Px(12);

    Result:= F.ShowModal;
    if Result<>mrCancel then
    begin
      FOpcoes.Temp:= CTemp.Checked;
      FOpcoes.Navegadores:= CNav.Checked;
      FOpcoes.Lixeira:= CLix.Checked;
      FOpcoes.WinUpdate:= CWU.Checked;
      FOpcoes.Erros:= CErr.Checked;
      FOpcoes.Auto:= CB.ItemIndex;
      if FOpcoes.Auto<0 then FOpcoes.Auto:= 0;
      SalvaOpcoesLimpeza;
    end;
  finally
    F.Free;
  end;
end;

procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
  if FLimpando then Exit;
  MostraTemporarios; { valores atualizados antes de escolher }
  case DialogoLimpeza of
    mrOk:    LimpaTemporarios;
    mrYes:   MostraTemporarios; { opções alteradas }
    mrRetry: ReiniciaComoAdmin;
  end;
end;

{-------------------Tarefas-periódicas---------------------------------------}
{ Chamada a cada segundo pelo Timer1. Executa 1 minuto após o Painel iniciar
  e depois a cada 10 minutos: alerta de pouco espaço em disco e limpeza
  automática. }
procedure TMainForm.VerificaTarefas;
var Pendente: Boolean;
begin
  Inc(FTarefasSeg);
  if (FTarefasSeg=10) and (FAtalhoErro<>'') then
    MostraAviso('Atalho de teclado', FAtalhoErro+
      ' Altere [Atalho] MostrarOcultar no Painel.ini.', True);
  { feriados, datas pessoais e aniversários do dia: ao iniciar e na virada do dia }
  if (FTarefasSeg>=30) and (FDiaAvisado<>Date) then AvisaDatasDoDia;
  if (FTarefasSeg<60) or ((FTarefasSeg-60) mod 600<>0) then Exit;
  VerificaEspacoDisco;
  VerificaAtualizacao(False);
  case FOpcoes.Auto of
    1: Pendente:= not FAutoFeita;
    2: Pendente:= Now-FOpcoes.Ultima>=1;
    3: Pendente:= Now-FOpcoes.Ultima>=7;
  else
    Pendente:= False;
  end;
  { não começa com outra janela aberta (configuração, mensagens etc.) }
  if Pendente and not FLimpando and (Application.ModalLevel=0) then
    LimpezaAutomatica;
end;

procedure TMainForm.LimpezaAutomatica;
begin
  FAutoFeita:= True;
  FUltLiberado:= 0;
  FUltApagados:= 0;
  LimpaTemporarios;
  if FUltApagados>0 then
    MostraAviso('Limpeza automática', Format('%s liberados (%d arquivos).',
      [FmtValue(1, FUltLiberado), FUltApagados]), False);
end;

{ Avisa (balão da bandeja) quando um disco fixo fica com menos de 10% livre.
  Cada unidade é avisada uma vez, e de novo só se a situação se repetir
  depois de liberado espaço. }
procedure TMainForm.VerificaEspacoDisco;
const Limite = 10; { % livre }
var D: Char;
  Unid: string;
  Livre, Total: Int64;
  Pct: Double;
begin
  for D:= 'A' to 'Z' do
  begin
    Unid:= D+':';
    if GetDriveType(PChar(Unid+'\'))<>DRIVE_FIXED then Continue;
    if not EspacoDisco(Unid, Livre, Total) then Continue;
    Pct:= 100.0*Livre/Total;
    if Pct<Limite then
    begin
      if Pos(D, FDiscoAlertado)=0 then
      begin
        FDiscoAlertado:= FDiscoAlertado+D;
        MostraAviso('Pouco espaço em disco', Format('Unidade %s com %.0f%% livre (%s de %s).',
          [Unid, Pct, FmtValue(1, Livre), FmtValue(1, Total)]), True);
      end;
    end else
    if Pct>=Limite+2 then
      FDiscoAlertado:= StringReplace(FDiscoAlertado, D, '', []);
  end;
end;

{ Balão de notificação no ícone da bandeja }
procedure TMainForm.MostraAviso(const Titulo, Texto: string; Alerta: Boolean);
begin
  FUrlAviso:= ''; { só o aviso de nova versão abre um endereço ao ser clicado }
  if not FTrayAdded then Exit;
  TrayIconData.uFlags:= NIF_INFO;
  StrPLCopy(TrayIconData.szInfoTitle, Titulo, Length(TrayIconData.szInfoTitle)-1);
  StrPLCopy(TrayIconData.szInfo, Texto, Length(TrayIconData.szInfo)-1);
  if Alerta then
    TrayIconData.dwInfoFlags:= NIIF_WARNING
  else
    TrayIconData.dwInfoFlags:= NIIF_INFO;
  Shell_NotifyIcon(NIM_MODIFY, @TrayIconData);
  TrayIconData.uFlags:= 0;
end;

{ Limpa o cache do navegador escolhido no ComboBox1 ('Todos' = todos os
  navegadores conhecidos), em todos os perfis se executado como administrador. }
procedure TMainForm.LimpaNavegador(const Navegador: string);
var Pastas, Perfis: TStringList;
  I, J: Integer;
  Todos: Boolean;
  Abertos, Cab, Msg: string;
begin
  if FLimpando then Exit;
  Todos:= SameText(Navegador, 'Todos');
  Pastas:= NovaListaPastas;
  Perfis:= PerfisUsuarios;
  try
    Abertos:= '';
    for I:= Low(Navegadores) to High(Navegadores) do
      if Todos or SameText(Navegador, Navegadores[I].Nome) then
      begin
        for J:= 0 to Perfis.Count-1 do
          IncluiCacheNavegador(Pastas, Navegadores[I], Perfis[J]);
        if ProcessoAtivo(Navegadores[I].Processo) then
          Abertos:= Abertos+', '+Navegadores[I].Nome;
      end;
    Delete(Abertos, 1, 2);
    if Todos then Cab:= 'Cache dos navegadores' else Cab:= 'Cache do '+Navegador;
    if ShIsUserAnAdmin then Cab:= Cab+' - todos os perfis';
    MostraPastas(Pastas, Cab, False);

    Msg:= 'Limpar o cache (arquivos temporários de internet) ';
    if Todos then Msg:= Msg+'dos navegadores?' else Msg:= Msg+'do '+Navegador+'?';
    Msg:= Msg+#13'Senhas, favoritos, histórico e cookies são mantidos.';
    if Abertos<>'' then
      Msg:= Msg+#13#13'Em execução: '+Abertos+'. Feche antes de limpar: '+
        'arquivos em uso não podem ser apagados.';
    if not ShIsUserAnAdmin then
      Msg:= Msg+#13#13'Somente o seu perfil (execute o Painel como administrador '+
        'para incluir todos os perfis).';

    if Todos then
    begin
      if Pastas.Count=0 then
        MessageDlg('Nenhum cache de navegador encontrado.', mtInformation, [mbOk], 0)
      else if MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        LimpaPastas(Pastas, Cab, False);
    end else
    begin
      { "Abrir": tela do próprio navegador para apagar histórico, cookies etc. }
      Msg:= Msg+#13#13'Abrir: tela de limpeza do próprio navegador (histórico, '+
        'cookies e dados de sites).';
      if Pastas.Count=0 then
        Msg:= 'Nenhum cache do '+Navegador+' encontrado neste computador.'#13#13+
          'Abrir a tela de limpeza do próprio navegador?';
      case Pergunta(Msg, '&Limpar', '&Abrir') of
        mrYes: if Pastas.Count>0 then LimpaPastas(Pastas, Cab, False)
               else AbrirLimpezaNavegador(Navegador);
        mrNo:  AbrirLimpezaNavegador(Navegador);
      end;
    end;
  finally
    Perfis.Free;
    Pastas.Free;
  end;
end;

{ Reinicia o Painel com privilégio de administrador (o Windows pede a
  confirmação do UAC). O parâmetro /elevado faz a nova instância aguardar o
  fim desta (Painel.dpr) e abrir na aba de limpeza (FormCreate).           }
procedure TMainForm.ReiniciaComoAdmin;
begin
  if ShellExecute(Handle, 'runas', PChar(ParamStr(0)), '/elevado',
      PChar(ExtractFilePath(ParamStr(0))), SW_SHOWNORMAL) > 32 then
    Application.Terminate
  else
    MessageDlg('O Painel não foi reiniciado como administrador.',
      mtInformation, [mbOk], 0);
end;

procedure TMainForm.SpeedButton12Click(Sender: TObject);
const line1='_______________________________________';
var F: TForm;
  M: TMemo;
  P: TPanel;
  B: TButton;
  i: Integer;

  function Px(V: Integer): Integer; { dimensões ajustadas ao DPI da tela }
  begin
    Result:= MulDiv(V, Screen.PixelsPerInch, 96);
  end;

begin
  { Mesmo conteúdo do Memo2, atualizado, numa janela com Memo para que o
    texto possa ser selecionado e copiado (Ctrl+A, Ctrl+C ou botão Copiar).
    As linhas separadoras viram linhas em branco. }
  RefreshInfo;
  F:= TForm.CreateNew(nil);
  try
    F.Caption:= 'Informações do Sistema';
    F.Position:= poScreenCenter;
    F.BorderIcons:= [biSystemMenu, biMaximize];
    F.ClientWidth:= Px(540);
    F.ClientHeight:= Px(520);
    F.Constraints.MinWidth:= Px(300);
    F.Constraints.MinHeight:= Px(250);

    P:= TPanel.Create(F);
    P.Parent:= F;
    P.Align:= alBottom;
    P.Height:= Px(40);
    P.BevelOuter:= bvNone;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(Px(8), Px(8), Px(100), Px(25));
    B.Caption:= '&Inicialização...';
    B.Hint:= 'Programas que iniciam com o Windows';
    B.ShowHint:= True;
    B.OnClick:= InfoInicializacaoClick;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(Px(116), Px(8), Px(90), Px(25));
    B.Caption:= '&Testar rede';
    B.Hint:= 'Ping no gateway, DNS, servidor de logon e internet';
    B.ShowHint:= True;
    B.OnClick:= InfoRedeClick;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(P.ClientWidth-Px(264), Px(8), Px(80), Px(25));
    B.Anchors:= [akTop, akRight];
    B.Caption:= '&Salvar...';
    B.OnClick:= InfoSalvarClick;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(P.ClientWidth-Px(176), Px(8), Px(80), Px(25));
    B.Anchors:= [akTop, akRight];
    B.Caption:= '&Copiar';
    B.OnClick:= InfoCopiarClick;

    B:= TButton.Create(F);
    B.Parent:= P;
    B.SetBounds(P.ClientWidth-Px(88), Px(8), Px(80), Px(25));
    B.Anchors:= [akTop, akRight];
    B.Caption:= '&Fechar';
    B.Cancel:= True;  { Esc fecha }
    B.ModalResult:= mrOk;

    M:= TMemo.Create(F);
    M.Name:= 'MemoInfo';
    M.Parent:= F;
    M.Align:= alClient;
    M.ReadOnly:= True;
    M.WordWrap:= False;
    M.ScrollBars:= ssBoth;
    M.Font.Name:= 'Consolas';
    M.Font.Size:= 9;
    M.Lines.BeginUpdate;
    try
      for i:= 0 to Memo2.Lines.Count-1 do
        if Memo2.Lines[i]=line1 then
          M.Lines.Add('')
        else
          M.Lines.Add(Memo2.Lines[i]);
    finally
      M.Lines.EndUpdate;
    end;
    F.ActiveControl:= M;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TMainForm.SpeedButton13Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex<0 then ComboBox1.ItemIndex:= 0;
  LimpaNavegador(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

{ Botão Copiar da janela de Informações do Sistema: copia o trecho
  selecionado ou, sem seleção, todo o texto }
procedure TMainForm.InfoCopiarClick(Sender: TObject);
var M: TMemo;
begin
  M:= TMemo(TComponent(Sender).Owner.FindComponent('MemoInfo'));
  if M=nil then Exit;
  if M.SelLength=0 then M.SelectAll;
  M.CopyToClipboard;
  M.SetFocus;
end;

{ Botão Salvar: grava o relatório em .txt (para enviar ao suporte técnico) }
procedure TMainForm.InfoSalvarClick(Sender: TObject);
var M: TMemo;
  D: TSaveDialog;
begin
  M:= TMemo(TComponent(Sender).Owner.FindComponent('MemoInfo'));
  if M=nil then Exit;
  D:= TSaveDialog.Create(nil);
  try
    D.Title:= 'Salvar informações do sistema';
    D.Filter:= 'Texto (*.txt)|*.txt';
    D.DefaultExt:= 'txt';
    D.FileName:= 'Info-'+GetComputer+'-'+FormatDateTime('yyyymmdd-hhnn', Now)+'.txt';
    D.Options:= D.Options+[ofOverwritePrompt];
    if D.Execute then M.Lines.SaveToFile(D.FileName, TEncoding.UTF8);
  finally
    D.Free;
  end;
end;

{ Botão Testar rede: acrescenta o resultado dos pings ao relatório. A janela
  fica desabilitada durante o teste para não ser fechada no meio dele. }
procedure TMainForm.InfoRedeClick(Sender: TObject);
var M: TMemo;
  F: TForm;
begin
  F:= TForm(TComponent(Sender).Owner);
  M:= TMemo(F.FindComponent('MemoInfo'));
  if M=nil then Exit;
  F.Enabled:= False;
  Screen.Cursor:= crHourGlass;
  try
    M.Lines.Add('');
    M.Lines.Add(' .:: Teste de Rede ('+FormatDateTime('hh:nn:ss', Now)+') ::.');
    TestaRede(M.Lines);
  finally
    Screen.Cursor:= crDefault;
    F.Enabled:= True;
  end;
  M.SelStart:= Length(M.Text);
  M.Perform(EM_SCROLLCARET, 0, 0);
  M.SetFocus;
end;

procedure TMainForm.InfoInicializacaoClick(Sender: TObject);
begin
  ProgramasInicializacao;
end;

{ Abre a tela de limpeza de dados do próprio navegador (histórico, cookies,
  dados de sites). Endereços como chrome:// não são protocolos registrados
  no Windows (por isso o ShellExecute direto com a URL falhava): são passados
  como parâmetro ao executável, que o ShellExecute localiza pelo registro
  (App Paths), sem precisar saber a pasta de instalação.                   }
procedure TMainForm.AbrirLimpezaNavegador(const Navegador: string);
var I: Integer;
begin
  for I:= Low(Navegadores) to High(Navegadores) do
    if SameText(Navegador, Navegadores[I].Nome) then
    begin
      if ShellExecute(Handle, 'open', PChar(Navegadores[I].Processo),
          PChar(Navegadores[I].Url), nil, SW_SHOWNORMAL) <= 32 then
        MessageDlg('Não foi possível abrir o '+Navegador+
          '. Verifique se ele está instalado.', mtWarning, [mbOk], 0);
      Exit;
    end;
end;

{----------------------------------------------------------------------------}
{-------------------Ferramentas-nos-menus------------------------------------}
{ Itens criados por código (não estão no .dfm) no menu da bandeja
  (PopupMenu1, antes de "Fechar") e no menu da janela (PopupMenu2, depois
  de "Executar...").                                                       }
procedure TMainForm.CriaMenusFerramentas;

  procedure Insere(Alvo: TMenu; Indice: Integer);

    function Item(const Texto: string; Evento: TNotifyEvent): TMenuItem;
    begin
      Result:= TMenuItem.Create(Self);
      Result.Caption:= Texto;
      Result.OnClick:= Evento;
      Alvo.Items.Insert(Indice, Result);
      Inc(Indice);
    end;

  begin
    if Indice<0 then Indice:= Alvo.Items.Count; { item de referência não encontrado }
    Item('-', nil);
    Item('&Processos...', ProcessosClick);
    Item('&Histórico de CPU e memória...', HistoricoClick);
    Item('&Bloquear o computador', BloquearClick);
    Item('&Desligar o monitor', DesligarMonitorClick);
    { no menu da janela o PowerShell fica junto do Prompt MS-DOS }
    if Alvo=PopupMenu1 then Item('Power&Shell', PowerShellClick);
    Item('-', nil);
    FMenuClip[Ord(Alvo=PopupMenu2)]:= Item('Área de &transferência', nil);
    Item('-', nil);
    Item('Verificar &atualização...', AtualizacaoClick);
  end;

var M: TMenuItem;
  I: Integer;
begin
  Insere(PopupMenu1, PopupMenu1.Items.IndexOf(Close1));
  Insere(PopupMenu2, PopupMenu2.Items.IndexOf(Executar1)+1);
  M:= TMenuItem.Create(Self);
  M.Caption:= 'Power&Shell';
  M.OnClick:= PowerShellClick;
  I:= PopupMenu2.Items.IndexOf(Dos1);
  if I<0 then PopupMenu2.Items.Add(M) else PopupMenu2.Items.Insert(I+1, M);
  AtualizaMenuClipboard;
end;

procedure TMainForm.ProcessosClick(Sender: TObject);
begin
  GerenciadorProcessos;
end;

procedure TMainForm.HistoricoClick(Sender: TObject);
var T1, T2: Integer;
begin
  LimitesUso(T1, T2);
  MostraHistorico(T1, T2);
end;

procedure TMainForm.BloquearClick(Sender: TObject);
begin
  if (MessageDlg('Confirma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    BloquearComputador;
end;

procedure TMainForm.DesligarMonitorClick(Sender: TObject);
begin
  if (MessageDlg('Confirma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    DesligarMonitor;
end;

{----------------------------------------------------------------------------}
{-------------------Aviso-de-uso-alto-prolongado-----------------------------}
{ Chamada a cada segundo pelo Timer1. Avisa (balão da bandeja) quando a CPU
  ou a memória ficam acima do limite 2 da configuração por 1 minuto
  seguido. O aviso se repete só depois de o uso voltar abaixo do limite 1. }
procedure TMainForm.VerificaUsoAlto(CpuPct, MemPct: Integer);
const Tempo = 60; { segundos }
var T1, T2: Integer;
  Nome: string;
  Bytes: Int64;
begin
  LimitesUso(T1, T2);
  { CPU }
  if CpuPct>=T2 then Inc(FCpuAltaSeg) else FCpuAltaSeg:= 0;
  if CpuPct<T1 then FCpuAvisada:= False;
  if (FCpuAltaSeg>=Tempo) and not FCpuAvisada then
  begin
    FCpuAvisada:= True;
    MostraAviso('Uso alto da CPU', Format('CPU acima de %d%% há mais de 1 minuto.'+
      ' Veja "Processos..." no menu do ícone.', [T2]), True);
  end;
  { Memória }
  if MemPct>=T2 then Inc(FMemAltaSeg) else FMemAltaSeg:= 0;
  if MemPct<T1 then FMemAvisada:= False;
  if (FMemAltaSeg>=Tempo) and not FMemAvisada then
  begin
    FMemAvisada:= True;
    if ProcessoMaiorMemoria(Nome, Bytes) then
      Nome:= Format(' Maior consumo: %s (%s).', [Nome, FmtValue(1, Bytes)])
    else
      Nome:= '';
    MostraAviso('Memória quase esgotada', Format('Memória em uso: %d%%.%s',
      [MemPct, Nome]), True);
  end;
end;


{----------------------------------------------------------------------------}
{-------------------Aviso-de-temperatura-alta--------------------------------}
{ Chamada a cada segundo pelo Timer1. Avisa (balão da bandeja) quando a CPU
  fica a 90 °C ou mais por 1 minuto seguido; repete só depois de esfriar
  abaixo de 80 °C. }
procedure TMainForm.VerificaTemperatura;
const TempAlta = 90; TempNormal = 80; Tempo = 60;
var Temp: Double;
  Fonte: string;
begin
  if not TemperaturaCPU(Temp, Fonte) then
  begin
    FTempAltaSeg:= 0;
    Exit;
  end;
  if Temp>=TempAlta then Inc(FTempAltaSeg) else FTempAltaSeg:= 0;
  if Temp<TempNormal then FTempAvisada:= False;
  if (FTempAltaSeg>=Tempo) and not FTempAvisada then
  begin
    FTempAvisada:= True;
    MostraAviso('Temperatura alta da CPU', Format('CPU a %.0f °C há mais de 1 minuto.'+
      ' Verifique a ventilação e os processos em execução.', [Temp]), True);
  end;
end;

{----------------------------------------------------------------------------}
{-------------------Verificação-de-nova-versão-------------------------------}
{ Manual (menu): mostra o resultado em uma mensagem.
  Automática (VerificaTarefas): uma vez por dia, só se [Atualizacao]
  Automatica=1 no Painel.ini (padrão); cada versão nova é avisada uma única
  vez por um balão na bandeja, que abre a página de download ao ser clicado. }
procedure TMainForm.VerificaAtualizacao(Manual: Boolean);
var Ini: TIniFile;
  Ultima: TDateTime;
  Avisada: string;
begin
  if FConsultandoVersao then
  begin
    if Manual then
      MessageDlg('A verificação já está em andamento.', mtInformation, [mbOk], 0);
    Exit;
  end;
  Avisada:= '';
  if not Manual then
  try
    Ini:= TIniFile.Create(GetRunDir+Prg+'.ini');
    try
      if not Ini.ReadBool('Atualizacao', 'Automatica', True) then Exit;
      Ultima:= StrToFloatDef(Ini.ReadString('Atualizacao', 'Ultima', '0'), 0,
        TFormatSettings.Invariant);
      if Now-Ultima<1 then Exit;
      Avisada:= Ini.ReadString('Atualizacao', 'Avisada', '');
    finally
      Ini.Free;
    end;
  except
    Exit;
  end;
  FConsultandoVersao:= True;
  if Manual then Screen.Cursor:= crAppStart;
  ConsultaUltimaVersao(
    procedure(const Versao, Url, Erro: string)
    var Ini: TIniFile;
      Nova: Boolean;
    begin
      FConsultandoVersao:= False;
      if Manual then Screen.Cursor:= crDefault;
      if Erro<>'' then
      begin
        { automática: sem internet, tenta de novo daqui a 10 minutos }
        if Manual then MessageDlg(Erro, mtWarning, [mbOk], 0);
        Exit;
      end;
      Nova:= VersaoMaisNova(Versao, Vrs);
      if not Manual then
      try
        Ini:= TIniFile.Create(GetRunDir+Prg+'.ini');
        try
          Ini.WriteString('Atualizacao', 'Ultima',
            FloatToStr(Now, TFormatSettings.Invariant));
          if Nova then Ini.WriteString('Atualizacao', 'Avisada', Versao);
        finally
          Ini.Free;
        end;
      except
        { pasta do Painel sem permissão de gravação }
      end;
      if Manual then
      begin
        if not Nova then
          MessageDlg(Format('Você já está usando a versão mais recente (%s).', [Vrs]),
            mtInformation, [mbOk], 0)
        else
        if MessageDlg(Format('Nova versão disponível: %s'#13'Versão em uso: %s'#13#13+
          'Abrir a página de download?', [Versao, Vrs]),
          mtInformation, [mbYes, mbNo], 0) = mrYes then
          AbrirArquivo(Url);
      end else
      if Nova and not SameText(Versao, Avisada) then
      begin
        MostraAviso('Nova versão do Painel', Format('Versão %s disponível (em uso: %s).'+
          ' Clique aqui para abrir a página de download.', [Versao, Vrs]), False);
        FUrlAviso:= Url;
      end;
    end);
end;

procedure TMainForm.AtualizacaoClick(Sender: TObject);
begin
  VerificaAtualizacao(True);
end;


{----------------------------------------------------------------------------}
{-------------------Janela:-atalho-global-e-área-de-transferência------------}
{ O atalho e o aviso de mudança na área de transferência pertencem à janela:
  são refeitos sempre que a VCL recria o Handle. }
procedure TMainForm.CreateWnd;
begin
  inherited;
  RegistraAtalho;
  AddClipboardFormatListener(Handle);
end;

procedure TMainForm.DestroyWnd;
begin
  if FAtalhoAtivo then UnregisterHotKey(Handle, IdAtalho);
  FAtalhoAtivo:= False;
  RemoveClipboardFormatListener(Handle);
  inherited;
end;

{ Atalho de [Atalho] MostrarOcultar no Painel.ini (padrão Win+Alt+P;
  vazio = desativado) }
procedure TMainForm.RegistraAtalho;
var Ini: TIniFile;
  Modificadores, Tecla: Cardinal;
begin
  FAtalhoAtivo:= False;
  FAtalhoErro:= '';
  FAtalhoTexto:= AtalhoPadrao;
  try
    Ini:= TIniFile.Create(GetRunDir+Prg+'.ini');
    try
      FAtalhoTexto:= Trim(Ini.ReadString('Atalho', 'MostrarOcultar', AtalhoPadrao));
    finally
      Ini.Free;
    end;
  except
  end;
  if FAtalhoTexto='' then Exit;
  if not TextoParaAtalho(FAtalhoTexto, Modificadores, Tecla) then
  begin
    FAtalhoErro:= 'Atalho inválido: "'+FAtalhoTexto+'".';
    Exit;
  end;
  FAtalhoAtivo:= RegisterHotKey(Handle, IdAtalho, Modificadores or MOD_NOREPEAT, Tecla);
  if not FAtalhoAtivo then
    FAtalhoErro:= 'O atalho '+FAtalhoTexto+' já está em uso por outro programa.';
end;

{ Atalho global: esconde o Painel se ele estiver em primeiro plano; senão
  mostra e traz para a frente }
procedure TMainForm.AlternaJanela;
begin
  if IsWindowVisible(Handle) and (GetForegroundWindow=Handle) then
    MinimizarParaBandeja
  else
    Details1Click(Self);
end;

{ Texto de uma linha para o menu: sem quebras, no máximo 60 caracteres,
  '&' dobrado (senão vira tecla de atalho do menu) }
function ResumoClip(const Texto: string): string;
var I: Integer;
begin
  Result:= Texto;
  for I:= 1 to Length(Result) do
    if CharInSet(Result[I], [#9, #10, #13]) then Result[I]:= ' ';
  Result:= Trim(Result);
  while Pos('  ', Result)>0 do Result:= StringReplace(Result, '  ', ' ', [rfReplaceAll]);
  if Length(Result)>60 then Result:= Copy(Result, 1, 57)+'...';
  Result:= StringReplace(Result, '&', '&&', [rfReplaceAll]);
end;

{ WM_CLIPBOARDUPDATE: guarda o texto copiado (só na memória; o histórico
  some ao fechar o Painel) }
procedure TMainForm.ClipboardMudou;
var S: string;
  I: Integer;
begin
  if not LeTextoClipboard(Handle, S) then Exit;
  if Length(S)>MaxTextoClip then Exit;
  if FClipboard=nil then
  begin
    FClipboard:= TStringList.Create;
    FClipboard.CaseSensitive:= True;
  end;
  I:= FClipboard.IndexOf(S);
  if I=0 then Exit;
  if I>0 then FClipboard.Delete(I); { copiado de novo: volta para o topo }
  FClipboard.Insert(0, S);
  while FClipboard.Count>MaxClipboard do FClipboard.Delete(FClipboard.Count-1);
  AtualizaMenuClipboard;
end;

procedure TMainForm.AtualizaMenuClipboard;
var Pai, M: TMenuItem;
  I: Integer;
begin
  for Pai in FMenuClip do
  begin
    if Pai=nil then Continue;
    Pai.Clear;
    if (FClipboard=nil) or (FClipboard.Count=0) then
    begin
      M:= TMenuItem.Create(Self);
      M.Caption:= '(nada copiado ainda)';
      M.Enabled:= False;
      Pai.Add(M);
      Continue;
    end;
    for I:= 0 to FClipboard.Count-1 do
    begin
      M:= TMenuItem.Create(Self);
      M.AutoHotkeys:= maManual; { não acrescenta '&' ao texto }
      M.Caption:= ResumoClip(FClipboard[I]);
      M.Tag:= I;
      M.OnClick:= ClipItemClick;
      Pai.Add(M);
    end;
    M:= TMenuItem.Create(Self);
    M.Caption:= '-';
    Pai.Add(M);
    M:= TMenuItem.Create(Self);
    M.Caption:= '&Limpar histórico';
    M.OnClick:= ClipLimparClick;
    Pai.Add(M);
  end;
end;

{ Copia de novo o texto escolhido (ele volta para o topo do histórico) }
procedure TMainForm.ClipItemClick(Sender: TObject);
var I: Integer;
begin
  I:= TMenuItem(Sender).Tag;
  if (FClipboard<>nil) and (I>=0) and (I<FClipboard.Count) then
    Clipboard.AsText:= FClipboard[I];
end;

procedure TMainForm.ClipLimparClick(Sender: TObject);
begin
  if FClipboard<>nil then FClipboard.Clear;
  AtualizaMenuClipboard;
end;

{----------------------------------------------------------------------------}
{-------------------Datas-do-calendário--------------------------------------}
{ Balão com os feriados, datas pessoais e aniversários de hoje }
procedure TMainForm.AvisaDatasDoDia;
var S: string;
begin
  FDiaAvisado:= Date;
  S:= DescricaoDia(Date, #13#10);
  if S<>'' then
    MostraAviso('Hoje - '+FormatDateTime('dd/mm/yyyy', Date), S, False);
end;

{ Abre o Windows PowerShell na pasta do usuário }
procedure TMainForm.PowerShellClick(Sender: TObject);
begin
  if ShellExecute(Handle, 'open', 'powershell.exe', nil,
      PChar(GetEnvironmentVariable('USERPROFILE')), SW_SHOWNORMAL) <= 32 then
    MessageDlg('Não foi possível abrir o PowerShell.', mtWarning, [mbOk], 0);
end;

end.
