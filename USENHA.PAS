unit USenha;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Dialogs, ExtCtrls;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses UConfig;

{$R *.DFM}

procedure TPasswordDlg.BitBtn1Click(Sender: TObject);
begin
  if (PasswordDlg.Caption='Acesso a Configuração')
  and (Edit1.Text=CnfData.Senha) then
  begin
    PasswordDlg.Close;
    Edit1.Text:='';
    ConfigForm.ShowModal;
  end else
  begin
    MessageDlg('Senha Invalida!!!',mtInformation,[mbOk],0);
    Edit1.Text:='';
  end;
end;

procedure TPasswordDlg.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TPasswordDlg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then Close;
end;

end.

