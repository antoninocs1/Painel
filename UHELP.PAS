unit UHelp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  THelpForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    RichEdit1: TRichEdit;
    BitBtn2: TBitBtn;
    FindDialog1: TFindDialog;
    Image1: TImage;
    procedure FindDialog1Find(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HelpForm: THelpForm;

implementation

{$R *.DFM}

procedure THelpForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;
end;

procedure THelpForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure THelpForm.FindDialog1Find(Sender: TObject);
var
  PosAchada, PosInicial: integer;
begin
  {procura pelo texto após a seleção atual}
  PosInicial := RichEdit1.SelStart + RichEdit1.SelLength;
  PosAchada := Pos (FindDialog1.FindText,
    Copy (RichEdit1.Text, PosInicial + 1,
      Length (RichEdit1.Text) - PosInicial));
  if PosAchada > 0 then
  begin
    {ativa o componente, e seleciona o texto}
    RichEdit1.SetFocus;
    RichEdit1.SelStart := PosInicial + PosAchada - 1;
    RichEdit1.SelLength := Length(FindDialog1.FindText);
  end else
  begin
    MessageDlg ('Texto não encontrado!!!', mtInformation, [mbOK], 0);
  end;
end;

procedure THelpForm.BitBtn2Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

end.
