unit UAgua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Spin, LblEffct, Buttons;

type
  TAguaForm = class(TForm)
    Panel1: TPanel;
    LabelEffect1: TLabelEffect;
    LabelEffect2: TLabelEffect;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    LabelSeg: TLabel;
    LabelHor: TLabel;
    Label6: TLabel;
    LabelMin: TLabel;
    Label7: TLabel;
    procedure GetTm(vlr: LongInt);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AguaForm: TAguaForm;

implementation

uses UMain;

{$R *.dfm}

procedure TAguaForm.GetTm(vlr: LongInt);
begin
  LabelHor.Caption:= Lz(vlr div 3600,2);
  if vlr mod 3600>0 then
    LabelMin.Caption:= Lz((vlr mod 3600) div 60,2) else
      LabelMin.Caption:= '00';
  if ((vlr mod 3600) mod 60) >0 then
    LabelSeg.Caption:= Lz((vlr mod 3600) mod 60,2) else
      LabelSeg.Caption:= '00';
end;

procedure TAguaForm.FormCreate(Sender: TObject);
begin
  SchTimeCount:= SpinEdit1.Value;
  GetTm(SpinEdit1.Value);
end;

procedure TAguaForm.FormShow(Sender: TObject);
begin
{}
end;

procedure TAguaForm.SpinEdit1Change(Sender: TObject);
begin
  GetTm(SpinEdit1.Value);
  SchTimeCount:= SpinEdit1.Value;
end;

end.
