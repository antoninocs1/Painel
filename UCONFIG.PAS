unit UConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  Mask, FileCtrl, CheckLst, Spin, ToolWin, Jpeg;

type
  TConfigForm = class(TForm)
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CalendarBtn1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    Edit1: TMaskEdit;
    Edit2: TMaskEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    Edit8: TEdit;
    GroupBox5: TGroupBox;
    Panel4: TPanel;
    Image3: TImage;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel16: TPanel;
    Panel18: TPanel;
    SpeedButton9: TSpeedButton;
    LDir: TLabel;
    Panel20: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Panel15: TPanel;
    Panel17: TPanel;
    EditFileName: TEdit;
    Panel19: TPanel;
    FilterComboBox1: TFilterComboBox;
    CheckListBox1: TCheckListBox;
    FileListBox1: TFileListBox;
    Panel6: TPanel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    CheckListBox2: TCheckListBox;
    Label15: TLabel;
    LbTransparencia: TLabel;
    TrackBar1: TTrackBar;
    GroupBox2: TGroupBox;
    Scale: TComboBox;
    PixelFormat: TComboBox;
    ColorSpace: TComboBox;
    Performance: TComboBox;
    ProgressiveDisplay: TCheckBox;
    IncrementalDisplay: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    MaskEdit1: TMaskEdit;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Label11: TLabel;
    MaskEdit2: TMaskEdit;
    Label14: TLabel;
    ComboBox2: TComboBox;
    Panel9: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    BitBtnProxima: TBitBtn;
    BitBtnAnterior: TBitBtn;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    SpinEdit1: TSpinEdit;
    LabelX2: TLabel;
    LabelX1: TLabel;
    LabelX3: TLabel;
    LabelX4: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox4: TCheckBox;
    Label20: TLabel;
    Edit17: TEdit;
    SpeedButton7: TSpeedButton;
    Label21: TLabel;
    Edit18: TEdit;
    GroupBox6: TGroupBox;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton6: TSpeedButton;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox7: TGroupBox;
    Image1: TImage;
    Edit15: TEdit;
    Image2: TImage;
    Edit16: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton14: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton13: TSpeedButton;
    ComboBox3: TComboBox;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Label24: TLabel;
    Label25: TLabel;
    ComboBox4: TComboBox;
    SpeedButton16: TSpeedButton;
    WrnPanel: TPanel;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    TabSheet5: TTabSheet;
    LabelX5: TLabel;
    GroupBox8: TGroupBox;
    ToolButton5: TToolButton;
    Label28: TLabel;
    ComboBox5: TComboBox;
    Label29: TLabel;
    MaskEdit3: TMaskEdit;
    TabSheet6: TTabSheet;
    Label26: TLabel;
    GroupBox9: TGroupBox;
    Label27: TLabel;
    Label30: TLabel;
    SpeedButton20: TSpeedButton;
    Shape2: TShape;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Label31: TLabel;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Shape3: TShape;
    Shape4: TShape;
    SpeedButton23: TSpeedButton;
    ToolButton6: TToolButton;
    procedure InitialiConfigData(Ctl: byte; ClrVar: boolean);
    procedure MatchConfigData(Ctl: byte);
    procedure CreateCnfFile;
    function OpenCnfFile: boolean;
    function SaveCnfFile: boolean;
    procedure ApplyCnfData;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CalendarBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtnProximaClick(Sender: TObject);
    procedure BitBtnAnteriorClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FilterComboBox1Change(Sender: TObject);
    procedure CheckListBox2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetJPEGOptions(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    function SetNewColor1(Opt: byte; ComponentColor1: TColor;
      const Alvo: string = ''; Amostra: TShape = nil): TColor;
    procedure ColorDialog1Show(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
  private
    { Private declarations }
    FCorAlvo: string;  { controle cuja cor está sendo escolhida (título do diálogo) }
    procedure MostraTransparencia;
  public
    { Public declarations }
  end;

Const Prg= 'Painel';
type Cnf = Record
             StartWithWindows, SetPsw: Boolean;
             Senha: string[10];
             MyDir, ArquivoAjuda: string[100];
             Data: string[10];
             Hora: string[5];
             Idioma: Integer;
             UserCount: Int64;
             Frm: Record
                    HintColor, TimeFontColor,
                    DateFontColor, ClockColor, ArrowClockColor: TColor;
                    StAlwaysVisible, StLockForm,
                    StToolsBar, StStatusBar,
                    StBeginShowForm, StPlayWav,
                    StAlphaBlend, StExView: boolean;
                    Mensagem: string[100];
                    WAVFile, TimeFontName, DateFontName: string[50];
                    TimeFontSize, DateFontSize,
                    AlphaBlendValue1, IdxPage: integer;
                    PosX, PosY: Int64;
                  end;
             Img: Record
                    PictureDir: string[100];
                    StImgCenter, StImgStretch,
                    StSlideShow, StImgAdjtoRect: boolean;
                    PictureDuration, FilterFileType: Integer;
                  end;
             Jpg: Record
                    Scale, PixelFormat, ColorSpace, Performance: Integer;
                    ProgressiveDisplay, IncrementalDisplay: boolean;
                  end;
             Sch: Record
                    StSch, StAllDay: boolean;
                    SchData: string[10];
                    SchHora: string[5];
                    SchAction: Integer;
                    SchMsg: string[60];
                    SchWAVFile: string[50];
                  end;
             Wrn: Record
                    StWrn: boolean;
                    WrnWAVFile: string[50];
                    WrnLastTime: string[40];
                    WrnTitle, WrnSubTitle: string[50];
                    StWrnAlarm: boolean;
                    WrnTimeValue, WrnOK, WrnCancel: LongInt;
                  end;
             Crn: Record
                    StType: Integer;
                    CrnTime: string[8];
                  end;
             Sys: Record
                    Threshold1, Threshold2: LongInt;
                    NormalColor, Threshold1Color, Threshold2Color: TColor;
                  end;
           end;
const
  { cores padrão dos medidores: normal, acima do Limiar1 e acima do Limiar2 }
  CorPadraoNivel: array[0..2] of TColor = ($0EA113, $00A3E8, $3834D1);
var
  ConfigForm: TConfigForm;
  CnfData: Cnf;
  CnfFile: File of Cnf;

implementation

uses USelDate, UMain, UWarn;

{$R *.DFM}

procedure TConfigForm.InitialiConfigData(Ctl: byte; ClrVar: boolean);
begin
  if ctl=0 then
  begin
    if ClrVar= True then FillChar(CnfData,SizeOf(CnfData),#0);
    CnfData.UserCount:= 0;
    CnfData.Senha:= '0000';
    CnfData.SetPsw:= False;
    CnfData.StartWithWindows:= True;
    CnfData.Data:= FormatDateTime('dd/mm/yyyy',Now);
    CnfData.Hora:= FormatDateTime('hh:nn:ss',Now);
    CnfData.MyDir:= GetRunDir;
    CnfData.Idioma:= 0;
    CnfData.Img.PictureDir:= GetRunDir;
    CnfData.Img.StSlideShow:= True;
    CnfData.Img.StImgCenter:= True;
    CnfData.Img.StImgStretch:= False;
    CnfData.Img.StImgAdjtoRect:= True;
    CnfData.Img.PictureDuration:= 10;
    CnfData.Img.FilterFileType:= 0;
    CnfData.Frm.HintColor:= clAqua;
    CnfData.Frm.TimeFontColor:= MainForm.LbHora.Font.Color;
    CnfData.Frm.DateFontColor:= MainForm.LbData.Font.Color;
    CnfData.Frm.ClockColor:= clWhite;
    CnfData.Frm.ArrowClockColor:= $001B1B1B;
    { fontes atuais do formulário principal }
    CnfData.Frm.TimeFontName:= ShortString(MainForm.LbHora.Font.Name);
    CnfData.Frm.DateFontName:= ShortString(MainForm.LbData.Font.Name);
    CnfData.Frm.TimeFontSize:= MainForm.LbHora.Font.Size;
    CnfData.Frm.DateFontSize:= MainForm.LbData.Font.Size;
    CnfData.Frm.StAlwaysVisible:= True;
    CnfData.Frm.StLockForm:= False;
    CnfData.Frm.StToolsBar:= True;
    CnfData.Frm.StStatusBar:= True;
    CnfData.Frm.StBeginShowForm:= False;
    CnfData.Frm.StPlayWav:= True;
    CnfData.Frm.StAlphaBlend:= True;
    CnfData.Frm.StExView:= True;
    CnfData.Frm.AlphaBlendValue1:= 25;
    CnfData.Frm.WAVFile:= GetRunDir+Prg+'.WAV';
    CnfData.Frm.Mensagem:= ' Programa '+Prg+' - Versão '+Vrs+' - Salvador-Ba -';
    CnfData.Frm.PosY:= MainForm.Top;
    CnfData.Frm.PosX:= MainForm.Left;
    CnfData.Frm.IdxPage:= 0;
    CnfData.Sch.StSch:= False;
    CnfData.Sch.StAllDay:= False;
    CnfData.Sch.SchData:= FormatDateTime('dd/mm/yyyy',Now);
    CnfData.Sch.SchHora:= FormatDateTime('hh:nn:ss',Now);
    CnfData.Sch.SchAction:= 0;
    CnfData.Sch.SchMsg:= 'Alarme!!!';
    CnfData.Sch.SchWAVFile:= '';
    CnfData.Jpg.Scale:= 0;
    CnfData.Jpg.PixelFormat:= 0;
    CnfData.Jpg.ColorSpace:= 0;
    CnfData.Jpg.Performance:= 0;
    CnfData.Jpg.ProgressiveDisplay:= False;
    CnfData.Jpg.IncrementalDisplay:= False;
    CnfData.Wrn.StWrn:= False;
    CnfData.Wrn.WrnTitle:= 'ÁGUA É SAÚDE.';
    CnfData.Wrn.WrnSubTitle:= 'Hora de beber água!!!!';
    CnfData.Wrn.WrnWAVFile:= '';
    CnfData.Wrn.WrnLastTime:= '';
    CnfData.Wrn.StWrnAlarm:= False;
    CnfData.Wrn.WrnTimeValue:= 20;
    CnfData.Wrn.WrnOK:= 0;
    CnfData.Wrn.WrnCancel:= 0;
    CnfData.Crn.StType:= 0;
    CnfData.Crn.CrnTime:= '00:60:00';
    CnfData.Sys.Threshold1:= 75;
    CnfData.Sys.Threshold2:= 90;
    CnfData.Sys.NormalColor:= CorPadraoNivel[0];
    CnfData.Sys.Threshold1Color:= CorPadraoNivel[1];
    CnfData.Sys.Threshold2Color:= CorPadraoNivel[2];

  end;
end;

procedure TConfigForm.MatchConfigData(Ctl: byte);
begin
  try
    case ctl of
    1: begin
         Edit1.Text:= CnfData.Data;
         Edit2.Text:= CnfData.Hora;
         Edit3.Text:= InttoStr(CnfData.UserCount);
         Edit4.Text:= CnfData.Senha;
         Edit8.Text:= CnfData.ArquivoAjuda;
         if CnfData.Img.PictureDir[Length(CnfData.Img.PictureDir)]<>'\' then CnfData.Img.PictureDir:= CnfData.Img.PictureDir+'\';
         if DirectoryExists(CnfData.Img.PictureDir)=True then
           DirectoryListBox1.Directory:= CnfData.Img.PictureDir else
           DirectoryListBox1.Directory:= GetRunDir;
         CheckBox1.Checked:= CnfData.SetPsw;
         CheckBox4.Checked:= CnfData.Img.StSlideShow;
         Application.HintColor:= CnfData.Frm.HintColor;
         MainForm.Clock1.Color:= CnfData.Frm.ClockColor;
         MainForm.Clock1.Font.Color:= CnfData.Frm.ArrowClockColor;
         MainForm.DefineFonteRelogio(string(CnfData.Frm.TimeFontName));
         MainForm.DefineFonteData(string(CnfData.Frm.DateFontName));
         MainForm.LbHora.Font.Color:= CnfData.Frm.TimeFontColor;
         MainForm.LbData.Font.Color:= CnfData.Frm.DateFontColor;
         Edit9.Text:= CnfData.Frm.Mensagem;
         Edit10.Text:= CnfData.Frm.WAVFile;
         MainForm.PageControl1.ActivePageIndex:= CnfData.Frm.IdxPage;
         Edit11.Text:= CnfData.Wrn.WrnTitle;
         Edit12.Text:= CnfData.Wrn.WrnSubTitle;
         Edit13.Text:= CnfData.Wrn.WrnWAVFile;
         Edit14.Text:= CnfData.Wrn.WrnLastTime;
         Edit15.Text:= InttoStr(CnfData.Wrn.WrnOK);
         Edit16.Text:= InttoStr(CnfData.Wrn.WrnCancel);
         Edit17.Text:= CnfData.Sch.SchWAVFile;
         Edit18.Text:= CnfData.Sch.SchMsg;
         MaskEdit1.Text:= CnfData.Sch.SchData;
         MaskEdit2.Text:= CnfData.Sch.SchHora;
         ComboBox1.ItemIndex:= CnfData.Idioma;
         ComboBox2.ItemIndex:= CnfData.Sch.SchAction;
         CheckBox2.Checked:= CnfData.Sch.StSch;
         CheckBox3.Checked:= CnfData.Sch.StAllDay;
         CheckListBox2.Checked[0]:= CnfData.Frm.StAlwaysVisible;
         CheckListBox2.Checked[1]:= CnfData.Frm.StLockForm;
         MainForm.Lock1.Checked:= CheckListBox2.Checked[1];
         MainForm.Lock2.Checked:= CheckListBox2.Checked[1];
         CheckListBox2.Checked[2]:= CnfData.Frm.StToolsBar;
         CheckListBox2.Checked[3]:= CnfData.Frm.StStatusBar;
         CheckListBox2.Checked[4]:= CnfData.Frm.StBeginShowForm;
         CheckListBox2.Checked[5]:= CnfData.Frm.StPlayWav;
         CheckListBox2.Checked[6]:= CnfData.Frm.StAlphaBlend;
         MainForm.Transparent1.Checked:= CnfData.Frm.StAlphaBlend;
         MainForm.Transparent2.Checked:= CnfData.Frm.StAlphaBlend;
         CheckListBox2.Checked[7]:= CnfData.StartWithWindows;
         CheckBox5.Checked:= CnfData.Wrn.StWrn;
         CheckBox6.Checked:= CnfData.Wrn.StWrnAlarm;
         StEx:= CnfData.Frm.StExView;
         MainForm.Top:= CnfData.Frm.PosY;
         MainForm.Left:= CnfData.Frm.PosX;
         CheckListBox1.Checked[0]:= CnfData.Img.StImgStretch;
         CheckListBox1.Checked[1]:= CnfData.Img.StImgCenter;
         CheckListBox1.Checked[2]:= CnfData.Img.StImgAdjtoRect;
         FilterComboBox1.ItemIndex:= CnfData.Img.FilterFileType;
         TrackBar1.Position:= CnfData.Frm.AlphaBlendValue1;
         MostraTransparencia;
         if CnfData.Img.PictureDuration >0 then
         SpinEdit1.Value:= CnfData.Img.PictureDuration
           else SpinEdit1.Value:= 2;
         Scale.ItemIndex:= CnfData.Jpg.Scale;
         PixelFormat.ItemIndex:= CnfData.Jpg.PixelFormat;
         ColorSpace.ItemIndex:= CnfData.Jpg.ColorSpace;
         Performance.ItemIndex:= CnfData.Jpg.Performance;
         ProgressiveDisplay.Checked:= CnfData.Jpg.ProgressiveDisplay;
         IncrementalDisplay.Checked:= CnfData.Jpg.IncrementalDisplay;
         SpinEdit2.Value:= CnfData.Wrn.WrnTimeValue;
         ComboBox5.ItemIndex:= CnfData.Crn.StType;
         MaskEdit3.Text:= CnfData.Crn.CrnTime;
         SpinEdit3.Value:= CnfData.Sys.Threshold1;
         SpinEdit4.Value:= CnfData.Sys.Threshold2;
         Shape2.Brush.Color:= CnfData.Sys.NormalColor;
         Shape3.Brush.Color:= CnfData.Sys.Threshold1Color;
         Shape4.Brush.Color:= CnfData.Sys.Threshold2Color;
       end;
    2: begin
         InitialiConfigData(0,True);
         CnfData.Data:= Edit1.Text;
         CnfData.Hora:= Edit2.Text;
         CnfData.UserCount:= StrtoInt(Edit3.Text);
         CnfData.Senha:= Edit4.Text;
         CnfData.ArquivoAjuda:= Edit8.Text;
         CnfData.Img.PictureDir:= DirectoryListBox1.Directory;
         if CnfData.Img.PictureDir[Length(CnfData.Img.PictureDir)]<>'\' then CnfData.Img.PictureDir:= CnfData.Img.PictureDir+'\';
         CnfData.SetPsw:= CheckBox1.Checked;
         CnfData.Img.StSlideShow:= CheckBox4.Checked;
         CnfData.Frm.Mensagem:= Edit9.Text;
         CnfData.Frm.WAVFile:= Edit10.Text;
         CnfData.Sch.SchData:= MaskEdit1.Text;
         CnfData.Sch.SchHora:= MaskEdit2.Text;
         CnfData.Idioma:= ComboBox1.ItemIndex;
         CnfData.Sch.SchAction:= ComboBox2.ItemIndex;
         CnfData.Sch.StSch:= CheckBox2.Checked;
         CnfData.Sch.StAllDay:= CheckBox3.Checked;
         CnfData.Sch.SchWAVFile:= Edit17.Text;
         CnfData.Sch.SchMsg:= Edit18.Text;
         CnfData.Frm.HintColor:= Application.HintColor;
         CnfData.Frm.ClockColor:= MainForm.Clock1.Color;
         CnfData.Frm.ArrowClockColor:= MainForm.Clock1.Font.Color;
         CnfData.Frm.TimeFontName:= ShortString(MainForm.LbHora.Font.Name);
         CnfData.Frm.DateFontName:= ShortString(MainForm.LbData.Font.Name);
         CnfData.Frm.TimeFontColor:= MainForm.LbHora.Font.Color;
         CnfData.Frm.DateFontColor:= MainForm.LbData.Font.Color;
         CnfData.Frm.StAlwaysVisible:= CheckListBox2.Checked[0];
         CnfData.Frm.StLockForm:= CheckListBox2.Checked[1];
         CnfData.Frm.StToolsBar:= CheckListBox2.Checked[2];
         CnfData.Frm.StStatusBar:= CheckListBox2.Checked[3];
         CnfData.Frm.StBeginShowForm:= CheckListBox2.Checked[4];
         CnfData.Frm.StPlayWav:= CheckListBox2.Checked[5];
         CnfData.Frm.StAlphaBlend:= CheckListBox2.Checked[6];
         CnfData.Frm.StAlphaBlend:= MainForm.Transparent1.Checked;
         CnfData.Frm.StAlphaBlend:= MainForm.Transparent2.Checked;
         CnfData.Frm.IdxPage:= MainForm.PageControl1.ActivePageIndex;
         CnfData.StartWithWindows:= CheckListBox2.Checked[7];
         CnfData.Frm.StExView:= StEx;
         CnfData.Frm.PosY:= MainForm.Top;
         CnfData.Frm.PosX:= MainForm.Left;
         CnfData.Img.StImgStretch:= CheckListBox1.Checked[0];
         CnfData.Img.StImgCenter:= CheckListBox1.Checked[1];
         CnfData.Img.StImgAdjtoRect:= CheckListBox1.Checked[2];
         CnfData.Img.FilterFileType:= FilterComboBox1.ItemIndex;
         CnfData.Frm.AlphaBlendValue1:= TrackBar1.Position;
         if SpinEdit1.Value<>0 then
           CnfData.Img.PictureDuration:= SpinEdit1.Value
             else CnfData.Img.PictureDuration:= 2;
         CnfData.Jpg.Scale:= Scale.ItemIndex;
         CnfData.Jpg.PixelFormat:= PixelFormat.ItemIndex;
         CnfData.Jpg.ColorSpace:= ColorSpace.ItemIndex;
         CnfData.Jpg.Performance:= Performance.ItemIndex;
         CnfData.Jpg.ProgressiveDisplay:= ProgressiveDisplay.Checked;
         CnfData.Jpg.IncrementalDisplay:= IncrementalDisplay.Checked;
         CnfData.Wrn.WrnTitle:= Edit11.Text;
         CnfData.Wrn.WrnSubTitle:= Edit12.Text;
         CnfData.Wrn.WrnWAVFile:= Edit13.Text;
         CnfData.Wrn.WrnLastTime:= Edit14.Text;
         CnfData.Wrn.WrnOK:= StrtoInt(Edit15.Text);
         CnfData.Wrn.WrnCancel:= StrtoInt(Edit16.Text);
         CnfData.Wrn.StWrn:= CheckBox5.Checked;
         CnfData.Wrn.StWrnAlarm:= CheckBox6.Checked;
         CnfData.Wrn.WrnTimeValue:= SpinEdit2.Value;
         CnfData.Crn.StType:= ComboBox5.ItemIndex;
         CnfData.Sys.Threshold1:= SpinEdit3.Value;
         CnfData.Sys.Threshold2:= SpinEdit4.Value;
         CnfData.Sys.NormalColor:= Shape2.Brush.Color;
         CnfData.Sys.Threshold1Color:= Shape3.Brush.Color;
         CnfData.Sys.Threshold2Color:= Shape4.Brush.Color;
       end;
    end;
  except
    // MessageDlg('Erro de Parâmetro!!!', mtError, [mbOk], 0);
  end;
end;

procedure TConfigForm.CreateCnfFile;
begin
  try
    {$I-}
      ReWrite(CnfFile);
    {$I+}
    FillChar(CnfData,SizeOf(CnfData),#0);
    InitialiConfigData(0,True);
    Seek(CnfFile,0); Write(CnfFile,CnfData);
    MessageDlg('Arquivo '+Prg+'.CNF criado!!!', mtInformation,[mbOk], 0);
  except
    StErr:= True;
    // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
  end;
end;

function TConfigForm.OpenCnfFile: boolean;
begin
  Result:= False;
  AssignFile(CnfFile,GetRunDir+Prg+'.CNF');
  if FileExists(GetRunDir+Prg+'.CNF')=False then
  begin
    if MessageDlg('Arquivo '+Prg+'.CNF não encontrado. Deseja criar um novo arquivo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CreateCnfFile;
      Result:= True;
    end else
    begin
      InitialiConfigData(0,True);
      Application.Terminate;
    end;
  end else
  begin
    try
      {$I-}
        Reset(CnfFile);
      {$I+}
      if IOResult<>0 then
      begin
        // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
        StErr:= True;
        Result:= False;
      end else
      begin
        Result:= True;
        {$I-}
          Seek(CnfFile,0); Read(CnfFile,CnfData);
        {$I+}
        if IOResult=0 then
        begin
          CnfData.UserCount:= CnfData.UserCount + 1;
          { .CNF antigo: troca as cores pastel do padrão anterior pelas atuais }
          if (CnfData.Sys.NormalColor=$00D3EDC2) and (CnfData.Sys.Threshold1Color=$00CAFFFF)
            and (CnfData.Sys.Threshold2Color=$00E9D2FF) then
          begin
            CnfData.Sys.NormalColor:= CorPadraoNivel[0];
            CnfData.Sys.Threshold1Color:= CorPadraoNivel[1];
            CnfData.Sys.Threshold2Color:= CorPadraoNivel[2];
          end;
          Seek(CnfFile,0); Write(CnfFile,CnfData);
        end else
        begin
          StErr:= True;
          // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
        end;
      end;
    except
      StErr:= True;
      // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
    end;
  end;
end;

function TConfigForm.SaveCnfFile: boolean;
begin
  try
    MatchConfigData(2);
    Seek(CnfFile,0); Write(CnfFile,CnfData);
    Result:= True;
  except
    Result:= False;
  end;
end;

procedure TConfigForm.ApplyCnfData;
begin
  Screen.cursor:=crAppStart;
  if (CnfData.Img.PictureDir<>'') and (DirectoryExists(CnfData.Img.PictureDir))
    then FileListBox1.Directory:= CnfData.Img.PictureDir else
      FileListBox1.Directory:= GetRunDir;
  {--------------------------------------------------------}
  MainForm.SempreVisivel(CnfData.Frm.StAlwaysVisible);
  MainForm.Panel7.Visible:= CnfData.Frm.StStatusBar;
  MainForm.Image1.Center:= CnfData.Img.StImgCenter;
  MainForm.Image1.Stretch:= CnfData.Img.StImgStretch;
  {--------------------------------------------------------}
  MainForm.Lock1.Checked:= CheckListBox2.Checked[1];
  MainForm.Lock2.Checked:= CheckListBox2.Checked[1];
  {--------------------------------------------------------}
  MainForm.Transparent1.Checked:= CheckListBox2.Checked[6];
  MainForm.Transparent2.Checked:= CheckListBox2.Checked[6];
  CnfData.Frm.StAlphaBlend:= CheckListBox2.Checked[6];
  MainForm.AlphaBlend:= CnfData.Frm.StAlphaBlend;
  {--------------------------------------------------------}
  StEx:= CnfData.Frm.StExView;
  MainForm.Top:= CnfData.Frm.PosY;
  MainForm.Left:= CnfData.Frm.PosX;
  MainForm.FormClosedView;
  if CheckBox1.Checked= True then
  begin
    Edit4.Color:= ClWindow;
    Edit4.Enabled:= True;
    Label4.Enabled:= True;
  end else
  begin
    Edit4.Color:= ClSilver;
    Edit4.Enabled:= False;
    Label4.Enabled:= False;
  end;
  if (CnfData.Frm.StBeginShowForm=True) and not(MainForm.Showing) then
  begin
    ShowWindow(MainForm.Handle, sw_ShowNormal);
    SetForegroundWindow(MainForm.Handle);
    MainForm.Show; // habilita a criação dos controles de janela
  end;
  if (CnfData.Frm.StBeginShowForm=False) and not(MainForm.Showing) then
  begin
    ShowWindow(MainForm.Handle, sw_Hide);
    {ShowWindow(MainForm.Handle, sw_ShowNormal);}
    SetForegroundWindow(MainForm.Handle);
    MainForm.Show; // habilita a criação dos controles de janela
    MainForm.Close;
  end;
  {--------------------------------------------------------------------------}
  Screen.Cursor:= crDefault;
  {--------------------------------------------------------------------------}
  CheckBox4.OnClick(CheckBox4);
  {--------------------------------------------------------------------------}
  if (CheckListBox2.Checked[7]= True) then
  begin
    if MainForm.ViewPRGStartWindows= False then MainForm.SavePRGStartWindows;
  end else
  begin
    if MainForm.ViewPRGStartWindows= True then MainForm.ErasePRGStartWindows;
  end;
end;

procedure TConfigForm.FormCreate(Sender: TObject);
begin
{^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^}
  PageControl1.ActivePage:= Tabsheet1;
  ToolButton1.Down:= True;
  FormatSettings.DecimalSeparator:='.';
  FormatSettings.ShortDateFormat:= 'dd/mm/yy';
  Edit5.Text:= GetWinDir;
  Edit6.Text:= GetRunDir;
  Edit7.Text:= Prg+'.CNF';
  {----------------------------------------------------------}
  ConfigForm.FilterComboBox1.ItemIndex:= 0;
  {----------------------------------------------------------}
  ConfigForm.Scale.ItemIndex:= 0;
  ConfigForm.PixelFormat.ItemIndex:= 0;
  ConfigForm.Colorspace.ItemIndex:= 0;
  ConfigForm.Performance.ItemIndex:= 0;
  ConfigForm.FileListbox1.Mask:= GraphicFileMask(TGraphic);
  {----------------------------------------------------------}
  {--Config--------------------------------------------------}
  if OpenCnfFile= True then
  begin
    MatchConfigData(1);
    ApplyCnfData;
  end;
  if (CnfData.Frm.PosY+20 > Screen.Height) then
  begin
    MainForm.Top:= (Screen.Height - MainForm.Height) div 2;
    CnfData.Frm.PosY:= MainForm.Top;
  end;
  if (CnfData.Frm.PosX+20 > Screen.Width) then
  begin
    MainForm.Left:= (Screen.Width - MainForm.Width - 20);
    CnfData.Frm.PosX:= MainForm.Left;
  end;
  ComboBox3.ItemIndex:=0;
  Combobox4.ItemIndex:=0;
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
end;

procedure TConfigForm.FormShow(Sender: TObject);
begin
{-}
end;

procedure TConfigForm.FormDestroy(Sender: TObject);
begin
{-}
end;

procedure TConfigForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TConfigForm.BitBtn2Click(Sender: TObject);
begin
  if SaveCnfFile= True then
    // MessageDlg('Dados de Configuração foram salvos no arquivo '+PRG+'.CNF', mtError, [mbOk], 0);
  else
    // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
end;

procedure TConfigForm.CalendarBtn1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  BrDateForm.Date := StrToDate(Edit1.Text); { start with current date }
  if BrDateForm.ShowModal = mrOk then
  Edit1.Text:= FormatDateTime('dd/mm/yyyy',BrDateForm.Date);
  {DateToStr(BrDateForm.Date);}
end;

procedure TConfigForm.SpeedButton1Click(Sender: TObject);
begin
  Edit1.Text:= FormatDateTime('dd/mm/yyyy',Now); {DateToStr(date);}
  Edit2.Text:= FormatDateTime('hh:nn',Now);
end;

procedure TConfigForm.BitBtnProximaClick(Sender: TObject);
begin
  PageControl1.ActivePage:=
    PageControl1.FindNextPage(PageControl1.ActivePage, True, False);
  if PageControl1.ActivePageIndex= 0 then
  begin
    ToolButton1.Down:= True;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 1 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= True;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 2 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= True;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 3 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= True;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 4 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= True;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 5 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= True;
  end;
end;

procedure TConfigForm.BitBtnAnteriorClick(Sender: TObject);
begin
  {seleciona página anterior}
  PageControl1.SelectNextPage (False);
end;

procedure TConfigForm.BitBtn3Click(Sender: TObject);
begin
{Aplicar}
  MatchConfigData(2);
end;

procedure TConfigForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then Close;
end;

procedure TConfigForm.SpeedButton20Click(Sender: TObject);
begin
  Shape2.Brush.Color:= SetNewColor1(1,Shape2.Brush.Color,'Situação Normal',Shape2);
end;

procedure TConfigForm.SpeedButton21Click(Sender: TObject);
begin
  Shape3.Brush.Color:= SetNewColor1(1,Shape3.Brush.Color,'Limiar de Alerta1',Shape3);
end;

procedure TConfigForm.SpeedButton22Click(Sender: TObject);
begin
  Shape4.Brush.Color:= SetNewColor1(1,Shape4.Brush.Color,'Limiar de Alerta2',Shape4);
end;

procedure TConfigForm.SpeedButton23Click(Sender: TObject);
begin
  if MessageDlg('Deseja setar as cores padrão do Status de CPU e Memória?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Shape2.Brush.Color:= CorPadraoNivel[0];
    Shape3.Brush.Color:= CorPadraoNivel[1];
    Shape4.Brush.Color:= CorPadraoNivel[2];
    CnfData.Sys.NormalColor:= CorPadraoNivel[0];
    CnfData.Sys.Threshold1Color:= CorPadraoNivel[1];
    CnfData.Sys.Threshold2Color:= CorPadraoNivel[2];
    Seek(CnfFile,0);
    Write(CnfFile,CnfData);
  end;
end;

procedure TConfigForm.SpeedButton2Click(Sender: TObject);
begin
  if Edit8.Text='' then OpenDialog1.InitialDir:= GetRunDir else
  begin
    if DirectoryExists(ExtractFilePath(Edit8.Text))= True then
      OpenDialog1.InitialDir:= ExtractFilePath(Edit8.Text) else
        OpenDialog1.InitialDir:= GetRunDir;
  end;
  OpenDialog1.Filter:= '(*.HLP)|*.HLP|(*.TXT)|*.TXT|(*.RTF)|*.RTF|(*.*)|*.*';
  if OpenDialog1.Execute= True then
  begin
    if (OpenDialog1.FileName<>'')
      and (FileExists(OpenDialog1.FileName)=True) then
    begin
      CnfData.ArquivoAjuda  := OpenDialog1.FileName;
      Edit8.Text:= CnfData.ArquivoAjuda;
      Seek(CnfFile,0);
      Write(CnfFile,CnfData);
    end else MessageDlg('Arquivo '+OpenDialog1.FileName+' não encontrado!!!',
      mtError, [mbOk], 0)
  end;
end;

procedure TConfigForm.ToolButton1Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet1;
end;

procedure TConfigForm.ToolButton2Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet2;
end;

procedure TConfigForm.ToolButton3Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet3;
end;

procedure TConfigForm.ToolButton4Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet4;
end;

procedure TConfigForm.ToolButton5Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet5;
end;

procedure TConfigForm.ToolButton6Click(Sender: TObject);
begin
  PageControl1.ActivePage:= TabSheet6;
end;

procedure TConfigForm.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex= 0 then
  begin
    ToolButton1.Down:= True;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 1 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= True;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 2 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= True;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 3 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= True;
    ToolButton5.Down:= False;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 4 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= True;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 4 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= True;
    ToolButton6.Down:= False;
  end else
  if PageControl1.ActivePageIndex= 5 then
  begin
    ToolButton1.Down:= False;
    ToolButton2.Down:= False;
    ToolButton3.Down:= False;
    ToolButton4.Down:= False;
    ToolButton5.Down:= False;
    ToolButton6.Down:= True;
  end;
end;

procedure TConfigForm.SpeedButton9Click(Sender: TObject);
var Caminho: string;
begin
  Caminho:= DirectoryListBox1.Directory;
  if InputQuery('Painel','Digite o caminho:',Caminho) then
  begin
    if Caminho='' then ShowMessage('Parâmetro Inválido!!!') else
    if (Caminho<>'') and (DirectoryExists(Caminho)=True) then
    begin
      DirectoryListBox1.Directory:= Caminho;
    end else ShowMessage('Caminho não existe!!!');
  end;
end;

procedure TConfigForm.FilterComboBox1Change(Sender: TObject);
begin
  FilterComboBox1.Hint:= FilterComboBox1.Text;
end;

procedure TConfigForm.CheckListBox2Click(Sender: TObject);
begin
  MatchConfigData(2);
  ApplyCnfData;
  WrnForm.CheckBox1.Checked:= CheckBox5.Checked;
end;

procedure TConfigForm.CheckBox2Click(Sender: TObject);
begin
  MainForm.Alarm1.Checked:= CheckBox2.Checked;
  MainForm.AtualizaAvisos; { etiqueta do alarme sob a data }
  Seek(CnfFile,0);
  Write(CnfFile,CnfData);
end;

procedure TConfigForm.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked= True then
  begin
    MaskEdit1.Enabled:= False;
    MaskEdit1.Color:= clSilver;
    CalendarBtn1.Enabled:= False;
  end else
  begin
    MaskEdit1.Enabled:= True;
    MaskEdit1.Color:= clWindow;
    CalendarBtn1.Enabled:= True;
  end;
end;

procedure TConfigForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CnfData.Frm.PosY:= MainForm.Top;
  CnfData.Frm.PosX:= MainForm.Left;
  if SaveCnfFile= True then
  begin
    // MessageDlg('Dados de Configuração foram salvos no arquivo '+PRG+'.CNF', mtError, [mbOk], 0);
  end else
    // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
end;

procedure TConfigForm.SetJPEGOptions(Sender: TObject);
var Temp: Boolean;
begin
  Temp := MainForm.Image1.Picture.Graphic is TJPEGImage;
  if Temp then
    with TJPEGImage(MainForm.Image1.Picture.Graphic) do
    begin
      PixelFormat := TJPEGPixelFormat(Self.PixelFormat.ItemIndex);
      Scale := TJPEGScale(Self.Scale.ItemIndex);
      Grayscale := Boolean(Colorspace.ItemIndex);
      Performance := TJPEGPerformance(Self.Performance.ItemIndex);
      ProgressiveDisplay := Self.ProgressiveDisplay.Checked;
    end;
  Scale.Enabled := Temp;
  PixelFormat.Enabled := Temp;
  Colorspace.Enabled := Temp;
  Performance.Enabled := Temp;
  ProgressiveDisplay.Enabled := Temp
    and TJPEGImage(MainForm.Image1.Picture.Graphic).ProgressiveEncoding;
  MainForm.Image1.IncrementalDisplay := IncrementalDisplay.Checked;
end;

procedure TConfigForm.SpeedButton17Click(Sender: TObject);
begin
  MaskEdit1.Text:= FormatDateTime('dd/mm/yyyy',Now); {DateToStr(date);}
  MaskEdit2.Text:= FormatDateTime('hh:nn',Now);
end;

procedure TConfigForm.TrackBar1Change(Sender: TObject);
begin
  if TrackBar1.Position = 25 then
    MainForm.AlphaBlendValue:= 255
  else
    MainForm.AlphaBlendValue:= Trunc(TrackBar1.Position * 10);
  MostraTransparencia;
end;

{ Percentual da posição do TrackBar1, centralizado embaixo dele }
procedure TConfigForm.MostraTransparencia;
begin
  if TrackBar1.Max>0 then
    LbTransparencia.Caption:= Format('%d%%', [Round(TrackBar1.Position*100/TrackBar1.Max)]);
end;

procedure TConfigForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked= True then
  begin
    Edit4.Color:= ClWindow;
    Edit4.Enabled:= True;
    Label4.Enabled:= True;
  end else
  begin
    Edit4.Color:= ClSilver;
    Edit4.Enabled:= False;
    Label4.Enabled:= False;
  end;
end;

procedure TConfigForm.FileListBox1Click(Sender: TObject);
begin
  MainForm.ShowPicture(ConfigForm.FileListBox1.FileName);
end;

procedure TConfigForm.SpeedButton3Click(Sender: TObject);
begin
  if MaskEdit1.Text <> '' then
  BrDateForm.Date := StrToDate(MaskEdit1.Text); { start with current date }
  if BrDateForm.ShowModal = mrOk then
  MaskEdit1.Text:= FormatDateTime('dd/mm/yyyy',BrDateForm.Date);
  {DateToStr(BrDateForm.Date);}
end;

procedure TConfigForm.DirectoryListBox1Change(Sender: TObject);
begin
  CnfData.Img.PictureDir:= DirectoryListBox1.Directory;
end;

procedure TConfigForm.SpeedButton4Click(Sender: TObject);
begin
  MainForm.PageControl1.ActivePageIndex:= 0;
  StEx:= True;
  MainForm.FormClosedView;
end;

procedure TConfigForm.SpeedButton5Click(Sender: TObject);
begin
  if Edit10.Text='' then OpenDialog1.InitialDir:= GetRunDir else
  begin
    if DirectoryExists(ExtractFilePath(Edit10.Text))= True then
      OpenDialog1.InitialDir:= ExtractFilePath(Edit10.Text) else
        OpenDialog1.InitialDir:= GetRunDir;
  end;
  OpenDialog1.Filter:= '(*.WAV)|*.WAV|(*.*)|*.*';
  if OpenDialog1.Execute= True then
  begin
    if (OpenDialog1.FileName<>'')
      and (FileExists(OpenDialog1.FileName)=True) then
    begin
      CnfData.Frm.WAVFile:= OpenDialog1.FileName;
      Edit10.Text:= CnfData.Frm.WAVFile;
      Seek(CnfFile,0);
      Write(CnfFile,CnfData);
    end else MessageDlg('Arquivo '+OpenDialog1.FileName+' não encontrado!!!',
      mtError, [mbOk], 0)
  end;
end;

procedure TConfigForm.SpeedButton6Click(Sender: TObject);
begin
  if Edit13.Text='' then OpenDialog1.InitialDir:= GetRunDir else
  begin
    if DirectoryExists(ExtractFilePath(Edit13.Text))= True then
      OpenDialog1.InitialDir:= ExtractFilePath(Edit13.Text) else
        OpenDialog1.InitialDir:= GetRunDir;
  end;
  OpenDialog1.Filter:= '(*.WAV)|*.WAV|(*.*)|*.*';
  if OpenDialog1.Execute= True then
  begin
    if (OpenDialog1.FileName<>'')
      and (FileExists(OpenDialog1.FileName)=True) then
    begin
      CnfData.Wrn.WrnWAVFile:= OpenDialog1.FileName;
      Edit13.Text:= CnfData.Wrn.WrnWAVFile;
      Seek(CnfFile,0);
      Write(CnfFile,CnfData);
    end else MessageDlg('Arquivo '+OpenDialog1.FileName+' não encontrado!!!',
      mtError, [mbOk], 0)
  end;
end;

procedure TConfigForm.CheckBox4Click(Sender: TObject);
begin
  DirectoryListBox1.Enabled:= CheckBox4.Checked;
  FileListBox1.Enabled:= CheckBox4.Checked;
  DriveComboBox1.Enabled:= CheckBox4.Checked;
  FilterComboBox1.Enabled:= CheckBox4.Checked;
  CheckListBox1.Enabled:= CheckBox4.Checked;
  SpeedButton9.Enabled:= CheckBox4.Checked;
  SpeedButton4.Enabled:= CheckBox4.Checked;
  LDir.Enabled:= CheckBox4.Checked;
  EditFileName.Enabled:= CheckBox4.Checked;
  Label12.Enabled:= CheckBox4.Checked;
  SpinEdit1.Enabled:= CheckBox4.Checked;
  CheckListBox1.Enabled:= CheckBox4.Checked;
  CheckListBox1.ItemEnabled[0]:= CheckBox4.Checked;
  CheckListBox1.ItemEnabled[1]:= CheckBox4.Checked;
  CheckListBox1.ItemEnabled[2]:= CheckBox4.Checked;
end;

procedure TConfigForm.SpeedButton7Click(Sender: TObject);
begin
  if Edit17.Text='' then OpenDialog1.InitialDir:= GetRunDir else
  begin
    if DirectoryExists(ExtractFilePath(Edit17.Text))= True then
      OpenDialog1.InitialDir:= ExtractFilePath(Edit17.Text) else
        OpenDialog1.InitialDir:= GetRunDir;
  end;
  OpenDialog1.Filter:= '(*.WAV)|*.WAV|(*.*)|*.*';
  if OpenDialog1.Execute= True then
  begin
    if (OpenDialog1.FileName<>'')
      and (FileExists(OpenDialog1.FileName)=True) then
    begin
      CnfData.Sch.SchWAVFile:= OpenDialog1.FileName;
      Edit17.Text:= CnfData.Sch.SchWAVFile;
      Seek(CnfFile,0);
      Write(CnfFile,CnfData);
    end else MessageDlg('Arquivo '+OpenDialog1.FileName+' não encontrado!!!',
      mtError, [mbOk], 0)
  end;
end;

procedure TConfigForm.SpeedButton14Click(Sender: TObject);
begin
  WrnForm.Show;
end;

procedure TConfigForm.SpeedButton10Click(Sender: TObject);
begin
  if Edit10.Text<>'' then ReproduzSom(Edit10.Text);
end;

procedure TConfigForm.SpeedButton11Click(Sender: TObject);
begin
  if Edit17.Text<>'' then ReproduzSom(Edit17.Text);
end;

procedure TConfigForm.SpeedButton12Click(Sender: TObject);
begin
  if Edit13.Text<>'' then ReproduzSom(Edit13.Text);
end;

procedure TConfigForm.SpeedButton8Click(Sender: TObject);
var Caminho: string;
begin
  Caminho:= DirectoryListBox1.Directory;
  if SelectDirectory('Select folder', '', Caminho) and (Caminho<>'') then
  begin
    if (DirectoryExists(Caminho)=True) then
      DirectoryListBox1.Directory:= Caminho else
        ShowMessage('Caminho não existe!!!');
  end;
end;

procedure TConfigForm.SpeedButton13Click(Sender: TObject);
var Caminho: string;
begin
  Caminho:= DirectoryListBox1.Directory;
  if SelectDirectory(Caminho, [], 0) and (Caminho<>'') then
  begin
    if (DirectoryExists(Caminho)=True) then
      DirectoryListBox1.Directory:= Caminho else
        ShowMessage('Caminho não existe!!!');
  end;
end;

{ Mostra a cor do controle na amostra (Shape1, se Amostra = nil) e, com
  Opt = 1, abre o ColorDialog1 já apontando essa cor: paleta completa com a
  cor atual marcada (e na 1ª cor personalizada) e o controle no título }
function TConfigForm.SetNewColor1(Opt: byte; ComponentColor1: TColor;
  const Alvo: string = ''; Amostra: TShape = nil): TColor;
var Atual: TColor;
begin
  if Amostra=nil then Amostra:= Shape1;
  Amostra.Brush.Color:= ComponentColor1;
  Result:= ComponentColor1;
  if Opt<>1 then Exit;
  Atual:= ColorToRGB(ComponentColor1);
  FCorAlvo:= Alvo;
  if FCorAlvo='' then FCorAlvo:= 'Cor';
  FCorAlvo:= Format('%s - atual: RGB(%d, %d, %d)', [FCorAlvo, GetRValue(Atual),
    GetGValue(Atual), GetBValue(Atual)]);
  ColorDialog1.Options:= ColorDialog1.Options+[cdFullOpen, cdAnyColor];
  ColorDialog1.CustomColors.Values['ColorA']:= IntToHex(Atual and $FFFFFF, 6);
  ColorDialog1.Color:= Atual;
  ColorDialog1.OnShow:= ColorDialog1Show;
  if ColorDialog1.Execute then
  begin
    Result:= ColorDialog1.Color;
    Amostra.Brush.Color:= Result;
  end;
end;

procedure TConfigForm.ColorDialog1Show(Sender: TObject);
begin
  SetWindowText(ColorDialog1.Handle, PChar(FCorAlvo));
end;

procedure TConfigForm.SpeedButton15Click(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
    0: MainForm.LbHora.Font.Color:= SetNewColor1(1,MainForm.LbHora.Font.Color,ComboBox3.Text);
    1: MainForm.LbData.Font.Color:= SetNewColor1(1,MainForm.LbData.Font.Color,ComboBox3.Text);
    2: MainForm.Clock1.Color:= SetNewColor1(1,MainForm.Clock1.Color,ComboBox3.Text);
    3: MainForm.Clock1.Font.Color:= SetNewColor1(1,MainForm.Clock1.Font.Color,ComboBox3.Text);
  end;
end;

procedure TConfigForm.ComboBox3Change(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
    0: MainForm.LbHora.Font.Color:= SetNewColor1(0,MainForm.LbHora.Font.Color);
    1: MainForm.LbData.Font.Color:= SetNewColor1(0,MainForm.LbData.Font.Color);
    2: MainForm.Clock1.Color:= SetNewColor1(0,MainForm.Clock1.Color);
    3: MainForm.Clock1.Font.Color:= SetNewColor1(0,MainForm.Clock1.Font.Color);
  end;
end;

{ Fontes do relógio digital e da data: só o tipo (o tamanho, o estilo e a
  cor são os do visual novo) }
procedure TConfigForm.SpeedButton16Click(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    0: begin
         FontDialog1.Font:= MainForm.LbHora.Font;
         if FontDialog1.Execute then
         begin
           MainForm.DefineFonteRelogio(FontDialog1.Font.Name);
           CnfData.Frm.TimeFontName:= ShortString(MainForm.LbHora.Font.Name);
           SaveCnfFile;
         end;
       end;
    1: begin
         FontDialog1.Font:= MainForm.LbData.Font;
         if FontDialog1.Execute then
         begin
           MainForm.DefineFonteData(FontDialog1.Font.Name);
           CnfData.Frm.DateFontName:= ShortString(MainForm.LbData.Font.Name);
           SaveCnfFile;
         end;
       end;
  end;
end;

procedure TConfigForm.CheckBox5Click(Sender: TObject);
begin
  WrnForm.CheckBox1.Checked:= ConfigForm.CheckBox5.Checked;
end;

procedure TConfigForm.CheckBox6Click(Sender: TObject);
begin
  WrnForm.CheckBox2.Checked:= ConfigForm.CheckBox6.Checked;
end;

procedure TConfigForm.SpeedButton18Click(Sender: TObject);
begin
  WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
end;

procedure TConfigForm.SpeedButton19Click(Sender: TObject);
begin
  if MessageDlg('Confirma zerar contadores?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    CnfData.Wrn.WrnOK:= 0;
    WrnForm.Label6.Caption:= InttoStr(CnfData.Wrn.WrnOK);
    ConfigForm.Edit15.Text:= InttoStr(CnfData.Wrn.WrnOK);
    CnfData.Wrn.WrnCancel:= 0;
    WrnForm.Label8.Caption:= InttoStr(CnfData.Wrn.WrnCancel);
    ConfigForm.Edit16.Text:= InttoStr(CnfData.Wrn.WrnCancel);
  end;
end;

procedure TConfigForm.SpinEdit2Change(Sender: TObject);
begin
  WrnTimeCount:= ConfigForm.SpinEdit2.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  WrnForm.SpinEdit1.Value:= ConfigForm.SpinEdit2.Value;
end;

procedure TConfigForm.ComboBox5Change(Sender: TObject);
begin
  CnfData.Crn.StType:= ComboBox5.ItemIndex;
end;

end.
