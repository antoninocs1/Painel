unit UAlarm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TAlarmForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    LabelEffect2: TLabel;
    LabelEffect1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlarmForm: TAlarmForm;

implementation

uses UConfig;

{$R *.dfm}

procedure TAlarmForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TAlarmForm.FormShow(Sender: TObject);
begin
  {-----Centralizando-Formulário---------------------------------------------}
  AlarmForm.Left := (Screen.Width-AlarmForm.Width) div 2;
  AlarmForm.Top := (Screen.Height-AlarmForm.Height) div 2;
  {-----Sempre-Visível-------------------------------------------------------}
  SetWindowPos (AlarmForm.Handle, hwnd_TopMost,
    AlarmForm.Left, AlarmForm.Top, AlarmForm.Width, AlarmForm.Height, swp_NoMove or swp_NoSize);
  {--------------------------------------------------------------------------}
  LabelEffect2.Caption:= '('+FormatDateTime('dd/mm/yyyy',Now)+' - '+FormatDateTime('hh:nn',Now)+')';
  Label1.Caption:= ConfigForm.Edit18.Text;
end;

procedure TAlarmForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then Close;
end;

end.
