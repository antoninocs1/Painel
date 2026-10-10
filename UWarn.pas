unit UWarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Spin, Buttons;

type
  TWrnForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    WrnPanel: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    BitBtn3: TBitBtn;
    LabelEffect1: TLabel;
    LabelEffect2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WrnForm: TWrnForm;
  StWrnStop: boolean;

implementation

uses UMain, UConfig;

{$R *.dfm}

procedure TWrnForm.FormCreate(Sender: TObject);
begin
  WrnTimeCount:= SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  StWrnStop:= False;
end;

procedure TWrnForm.FormShow(Sender: TObject);
begin
  {-----Centralizando-Formulário---------------------------------------------}
  WrnForm.Left := (Screen.Width-WrnForm.Width) div 2;
  WrnForm.Top := (Screen.Height-WrnForm.Height) div 2;
  {-----Sempre-Visível-------------------------------------------------------}
  SetWindowPos (WrnForm.Handle, hwnd_TopMost,
    WrnForm.Left, WrnForm.Top, WrnForm.Width, WrnForm.Height, swp_NoMove or swp_NoSize);
  {--------------------------------------------------------------------------}
  if UpperCase(Cstr(ConfigForm.Edit11.Text,1,4))= 'ÁGUA' then
    Image1.Visible:= True else Image1.Visible:= False;
  LabelEffect1.Caption:= ConfigForm.Edit11.Text;
  LabelEffect2.Caption:= ConfigForm.Edit12.Text;
  WrnForm.Label1.Caption:= ConfigForm.Edit14.Text;
  WrnForm.CheckBox1.Checked:= ConfigForm.CheckBox5.Checked;
  WrnForm.CheckBox2.Checked:= ConfigForm.CheckBox6.Checked;
  WrnForm.SpinEdit1.Value:= ConfigForm.SpinEdit2.Value;
  Label6.Caption:= ConfigForm.Edit15.Text;
  Label8.Caption:= ConfigForm.Edit16.Text;
  if CheckBox1.Checked= True then
    SpinEdit1.Color:= clWindow else
    SpinEdit1.Color:= clSilver;
  CheckBox1.OnClick(CheckBox1);
end;

procedure TWrnForm.SpinEdit1Change(Sender: TObject);
begin
  WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.SpinEdit2.Value:= WrnForm.SpinEdit1.Value;
end;

procedure TWrnForm.BitBtn1Click(Sender: TObject);
begin
  {----------------------------------------------------------------------------}
  if Checkbox1.Checked= True then
  begin
    StWrnStop:= False;
    WrnForm.Label1.Caption:= 'Última vez foi '+FormatDateTime('dd/mm/yyyy - hh:nn:ss',now);
    ConfigForm.Edit14.Text:= WrnForm.Label1.Caption;
    CnfData.Wrn.WrnLastTime:= WrnForm.Label1.Caption;
    Inc(CnfData.Wrn.WrnOK);
    Label6.Caption:= InttoStr(CnfData.Wrn.WrnOK);
    ConfigForm.Edit15.Text:= InttoStr(CnfData.Wrn.WrnOK);
    {--------------------------------------------------------------------------}
  end;
  WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  Close;
end;

procedure TWrnForm.BitBtn2Click(Sender: TObject);
begin
  Close;
  if Checkbox1.Checked= True then
  begin
    StWrnStop:= False;
    Inc(CnfData.Wrn.WrnCancel);
    Label8.Caption:= InttoStr(CnfData.Wrn.WrnCancel);
    ConfigForm.Edit16.Text:= InttoStr(CnfData.Wrn.WrnCancel);
  end;
end;

procedure TWrnForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked= True then
    SpinEdit1.Color:= clWindow else
      SpinEdit1.Color:= clSilver;
  SpinEdit1.Enabled:= CheckBox1.Checked;
  Label2.Enabled:= CheckBox1.Checked;
  WrnForm.WrnPanel.Enabled:= CheckBox1.Checked;
  CheckBox2.Enabled:= CheckBox1.Checked;
  SpeedButton1.Enabled:= CheckBox1.Checked;
  SpeedButton2.Enabled:= CheckBox1.Checked;
  BitBtn1.Enabled:= CheckBox1.Checked;
  BitBtn1.Visible:= CheckBox1.Checked;
  BitBtn2.Enabled:= CheckBox1.Checked;
  BitBtn2.Visible:= CheckBox1.Checked;
  BitBtn3.Enabled:= not(CheckBox1.Checked);
  BitBtn3.Visible:= not(CheckBox1.Checked);
  {----------------------------------------------------------------------------}
  ConfigForm.CheckBox5.Checked:= CheckBox1.Checked;
  CnfData.Wrn.StWrn:= CheckBox1.Checked;
  {----------------------------------------------------------------------------}
end;

procedure TWrnForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {----------------------------------------------------------------------------}
  ConfigForm.CheckBox5.Checked:= CheckBox1.Checked;
  CnfData.Wrn.StWrn:= CheckBox1.Checked;
  {----------------------------------------------------------------------------}
  ConfigForm.CheckBox6.Checked:= CheckBox2.Checked;
  CnfData.Wrn.StWrnAlarm:= CheckBox2.Checked;
  {----------------------------------------------------------------------------}
  ConfigForm.SpinEdit2.Value:= SpinEdit1.Value;
  CnfData.Wrn.WrnTimeValue:= SpinEdit1.Value;
  {----------------------------------------------------------------------------}
  ConfigForm.Edit14.Text:= WrnForm.Label1.Caption;
  CnfData.Wrn.WrnLastTime:= WrnForm.Label1.Caption;
  {----------------------------------------------------------------------------}
  if ConfigForm.SaveCnfFile= True then
  begin
    ConfigForm.ApplyCnfData;
    // MessageDlg('Dados de Configuração foram salvos no arquivo '+PRG+'.CNF', mtError, [mbOk], 0);
  end else
    // MessageDlg('Arquivo '+Prg+'.CNF erro!!!', mtError, [mbOk], 0);
end;

procedure TWrnForm.SpeedButton1Click(Sender: TObject);
begin
  WrnTimeCount:= WrnForm.SpinEdit1.Value*60;
  WrnForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
  ConfigForm.WrnPanel.Caption:= GetTm(0,WrnTimeCount);
end;

procedure TWrnForm.SpeedButton2Click(Sender: TObject);
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

procedure TWrnForm.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TWrnForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then Close;
end;

end.
