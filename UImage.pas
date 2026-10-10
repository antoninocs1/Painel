unit UImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, ComCtrls, ToolWin, FileCtrl;

type
  TImgForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    tlbrButtons: TToolBar;
    ToolBtnSplit3: TToolButton;
    ToolBtnFirst: TToolButton;
    ToolBtnPrior: TToolButton;
    ToolBtnNext: TToolButton;
    ToolBtnEnd: TToolButton;
    ToolBtnSplit5: TToolButton;
    ToolBtnExit: TToolButton;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ToolBtnExitClick(Sender: TObject);
    procedure ToolBtnFirstClick(Sender: TObject);
    procedure ToolBtnPriorClick(Sender: TObject);
    procedure ToolBtnNextClick(Sender: TObject);
    procedure ToolBtnEndClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgForm: TImgForm;

implementation

uses UConfig, UMain;

{$R *.dfm}

procedure TImgForm.FormCreate(Sender: TObject);
begin
  {}
end;

procedure TImgForm.FormShow(Sender: TObject);
begin
  {}
end;

procedure TImgForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then Close;
end;

procedure TImgForm.ToolBtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TImgForm.ToolBtnFirstClick(Sender: TObject);
begin
  ConfigForm.FileListBox1.ItemIndex:= 0;
  if ConfigForm.FileListBox1.ItemIndex>=0 then MainForm.ShowPicture(ConfigForm.FileListBox1.FileName);
end;

procedure TImgForm.ToolBtnPriorClick(Sender: TObject);
begin
  if ConfigForm.FileListBox1.ItemIndex>0 then
    ConfigForm.FileListBox1.ItemIndex:= ConfigForm.FileListBox1.ItemIndex-1;
  if ConfigForm.FileListBox1.ItemIndex>=0 then MainForm.ShowPicture(ConfigForm.FileListBox1.FileName);
end;

procedure TImgForm.ToolBtnNextClick(Sender: TObject);
begin
  if ConfigForm.FileListBox1.ItemIndex<ConfigForm.FileListBox1.Items.Count-1 then
    ConfigForm.FileListBox1.ItemIndex:= ConfigForm.FileListBox1.ItemIndex+1;
  if ConfigForm.FileListBox1.ItemIndex>=0 then MainForm.ShowPicture(ConfigForm.FileListBox1.FileName);
end;

procedure TImgForm.ToolBtnEndClick(Sender: TObject);
begin
  ConfigForm.FileListBox1.ItemIndex:= ConfigForm.FileListBox1.Count-1;
  if ConfigForm.FileListBox1.ItemIndex>=0 then MainForm.ShowPicture(ConfigForm.FileListBox1.FileName);
end;

procedure TImgForm.ToolButton1Click(Sender: TObject);
var Caminho: string;
begin
  Caminho:= ConfigForm.DirectoryListBox1.Directory;
  if SelectDirectory(Caminho, [], 0) and (Caminho<>'') then
  begin
    if (DirectoryExists(Caminho)=True) then
      ConfigForm.DirectoryListBox1.Directory:= Caminho else
        ShowMessage('Caminho não existe!!!');
  end;
end;

end.
