{----------------------------------------------------------------------------}
{ UAnim - Animação de bitmaps em um TImage.                                  }
{ Substitui o componente de terceiros TBmpAnimator usando apenas a VCL.      }
{                                                                            }
{ O TImage guarda no Picture uma tira horizontal com todos os quadros, e a   }
{ propriedade Tag informa o número de quadros.                               }
{ - Add(Imagem)        : anima enquanto Imagem.Enabled = True;               }
{ - Add(Imagem, False) : anima conforme Running[Imagem] (a imagem continua   }
{                        habilitada e recebe cliques).                       }
{----------------------------------------------------------------------------}
unit UAnim;

interface

uses
  Classes, Graphics, ExtCtrls;

type
  TImageAnimator = class(TComponent)
  private
    type
      TAnimItem = record
        Img: TImage;
        Strip: TBitmap;
        Pos: Integer;
        UseEnabled, Run: Boolean;
      end;
    var
      FTimer: TTimer;
      FItems: array of TAnimItem;
    function IndexOf(AImage: TImage): Integer;
    function GetRunning(AImage: TImage): Boolean;
    procedure SetRunning(AImage: TImage; Value: Boolean);
    procedure ShowFrame(Idx, Frame: Integer);
    procedure Tick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Add(AImage: TImage; AUseEnabled: Boolean = True);
    property Running[AImage: TImage]: Boolean read GetRunning write SetRunning;
  end;

implementation

constructor TImageAnimator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTimer:= TTimer.Create(Self);
  FTimer.Interval:= 100;
  FTimer.OnTimer:= Tick;
end;

destructor TImageAnimator.Destroy;
var i: Integer;
begin
  FTimer.Enabled:= False;
  for i:= 0 to High(FItems) do FItems[i].Strip.Free;
  inherited Destroy;
end;

procedure TImageAnimator.Add(AImage: TImage; AUseEnabled: Boolean);
var i: Integer;
begin
  i:= Length(FItems);
  SetLength(FItems, i + 1);
  FItems[i].Img:= AImage;
  FItems[i].Strip:= TBitmap.Create;
  FItems[i].Strip.Assign(AImage.Picture.Bitmap);
  FItems[i].Pos:= 0;
  FItems[i].UseEnabled:= AUseEnabled;
  FItems[i].Run:= False;
  AImage.Transparent:= True;
  ShowFrame(i, 0);
  FTimer.Enabled:= True;
end;

function TImageAnimator.IndexOf(AImage: TImage): Integer;
var i: Integer;
begin
  Result:= -1;
  for i:= 0 to High(FItems) do
    if FItems[i].Img = AImage then
    begin
      Result:= i;
      Exit;
    end;
end;

function TImageAnimator.GetRunning(AImage: TImage): Boolean;
var i: Integer;
begin
  i:= IndexOf(AImage);
  Result:= (i >= 0) and FItems[i].Run;
end;

procedure TImageAnimator.SetRunning(AImage: TImage; Value: Boolean);
var i: Integer;
begin
  i:= IndexOf(AImage);
  if i >= 0 then FItems[i].Run:= Value;
end;

procedure TImageAnimator.ShowFrame(Idx, Frame: Integer);
var Frm: TBitmap;
  N, W, H: Integer;
begin
  if FItems[Idx].Strip.Empty then Exit;
  N:= FItems[Idx].Img.Tag;
  if N < 1 then N:= 1;
  W:= FItems[Idx].Strip.Width div N;
  H:= FItems[Idx].Strip.Height;
  Frm:= TBitmap.Create;
  try
    Frm.SetSize(W, H);
    Frm.Canvas.CopyRect(Rect(0, 0, W, H), FItems[Idx].Strip.Canvas,
      Rect(Frame*W, 0, Frame*W + W, H));
    FItems[Idx].Img.Picture.Assign(Frm);
  finally
    Frm.Free;
  end;
end;

procedure TImageAnimator.Tick(Sender: TObject);
var i: Integer;
  Ativo: Boolean;
begin
  for i:= 0 to High(FItems) do
  begin
    if FItems[i].UseEnabled then
      Ativo:= FItems[i].Img.Enabled
    else
      Ativo:= FItems[i].Run;
    if Ativo and FItems[i].Img.Visible then
    begin
      Inc(FItems[i].Pos);
      if FItems[i].Pos >= FItems[i].Img.Tag then FItems[i].Pos:= 0;
      ShowFrame(i, FItems[i].Pos);
    end else
    if FItems[i].Pos <> 0 then
    begin
      FItems[i].Pos:= 0;
      ShowFrame(i, 0);
    end;
  end;
end;

end.
