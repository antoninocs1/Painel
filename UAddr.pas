unit UAddr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, Menus, ImgList, ComCtrls, ToolWin, StdCtrls,
  Mask, Buttons, jpeg, UAnim;

type
  TAddrForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    LabelX1: TLabel;
    LabelX2: TLabel;
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
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    SpeedButton3: TSpeedButton;
    Image6: TImage;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    MaskEdit1: TMaskEdit;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    GroupBox2: TGroupBox;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Image7: TImage;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label16: TLabel;
    Edit20: TEdit;
    Edit21: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Label17: TLabel;
    Image8: TImage;
    BitBtn2: TBitBtn;
    Image9: TImage;
    Image10: TImage;
    BmpAnimator1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InitialiEdsData(Ctl: byte; ClrVar: boolean);
    procedure MatchEdsData(Ctl, Row: LongInt);
    procedure SetGridVars;
    procedure RefreshGridInfo;
    procedure CreateEdsFile;
    function OpenEdsFile: boolean;
    function NextPrior(Nxt: byte): boolean;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    function SaveEdsFile: Boolean;
    procedure AddEds(Opt: Byte; Ask: Boolean);
    procedure DelEds(Ask: Boolean);
    procedure FindEds(Opt: Byte);
    procedure SortEds;
    procedure DelAllEds;
    procedure IrPara(newpof: LongInt);
    procedure GotoEds;
    procedure ToolButton39Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure ToolButton38Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton36Click(Sender: TObject);
    procedure ToolButton40Click(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton41Click(Sender: TObject);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton43Click(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditEnter(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure ToolButton45Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BmpAnimator1Click(Sender: TObject);
  private
    { Private declarations }
    FAnim: TImageAnimator; {substitui o componente TBmpAnimator}
  public
    { Public declarations }
  end;

type Eds = record
             SeqNbr: LongInt;
             Nome,Grupo, Endereco: string[80];
             Bairro, Cidade, Estado, Pais, Email: string[60];
             Tel1, Tel2, Fax, Cel, CEP: string[22];
             Nasc: string[10];
             Obs: string[150];
           end;
var
  AddrForm: TAddrForm;
  EdsData: Eds;
  EdsFile: file of Eds;
  ipg, pof, szf, szg: LongInt;
  Txt1: Text;
  StEdtPrc: Boolean;

type
  { Data de nascimento de um contato (ver LeAniversarios) }
  TAniversario = record
    Dia, Mes, Ano: Word; { Ano = 0 se não informado }
    Nome: string;
  end;

function ArquivoContatos: string;
function LeAniversarios(out Lista: TArray<TAniversario>): Boolean;

implementation

uses UWarn, UMain, USelDate;

{$R *.dfm}

procedure TAddrForm.FormCreate(Sender: TObject);
begin
  {---Animação-(substitui-o-TBmpAnimator)---------------}
  { False: a animação é ligada/desligada por FAnim.Running, e a imagem
    continua habilitada para receber o clique. }
  FAnim:= TImageAnimator.Create(Self);
  FAnim.Add(BmpAnimator1, False);
  StEdtPrc:=False;
  pof:=-1; {Position of File}
  ipg:=0; {Initial Position of Grid}
  szf:=0; {Data File Size}
  szg:=6; {Grid Size}
  if OpenEdsFile= True then
  begin
    szf:= FileSize(EdsFile);
    AddrForm.SetGridVars;
    AddrForm.RefreshGridInfo;
  end;
end;

procedure TAddrForm.FormShow(Sender: TObject);
begin
  ComboBox2.ItemIndex:=0;
  Edit20.Text:= 'Painel.csv';
end;

procedure TAddrForm.InitialiEdsData(Ctl: byte; ClrVar: boolean);
begin
  if ctl=0 then
  begin
    if ClrVar= True then FillChar(EdsData,SizeOf(EdsData),#0);
    EdsData.Nome:='';
    EdsData.Tel1:='';
  end;
end;

procedure TAddrForm.MatchEdsData(Ctl, Row: LongInt);
begin
  try
    case ctl of
    0: begin
         {---------------------------------------------------}
         AddrForm.Edit1.Text:= EdsData.Nome;
         AddrForm.ComboBox1.Text:= EdsData.Grupo;
         AddrForm.Edit2.Text:= EdsData.Endereco;
         AddrForm.Edit3.Text:= EdsData.Bairro;
         AddrForm.Edit4.Text:= EdsData.Cidade;
         AddrForm.Edit5.Text:= EdsData.Estado;
         AddrForm.Edit6.Text:= EdsData.Pais;
         AddrForm.Edit7.Text:= EdsData.CEP;
         AddrForm.Edit8.Text:= EdsData.Tel1;
         AddrForm.Edit9.Text:= EdsData.Cel;
         AddrForm.Edit10.Text:= EdsData.Tel2;
         AddrForm.Edit11.Text:= EdsData.FAX;
         AddrForm.Edit12.Text:= EdsData.Email;
         AddrForm.MaskEdit1.Text:= EdsData.Nasc;
         AddrForm.Edit13.Text:= EdsData.Obs;
         {---------------------------------------------------}
       end;
    1: begin
         MainForm.StringGrid1.Cells[0, Row]:= InttoStr(EdsData.SeqNbr);
         MainForm.StringGrid1.Cells[1, Row]:= EdsData.Nome;
         MainForm.StringGrid1.Cells[2, Row]:= EdsData.Tel1;
       end;
  2,3: begin
         {---------------------------------------------------}
         if Ctl=3 then InitialiEdsData(0, True);
         EdsData.Nome:= AddrForm.Edit1.Text;
         EdsData.Grupo:= AddrForm.ComboBox1.Text;
         EdsData.Endereco:= AddrForm.Edit2.Text;
         EdsData.Bairro:= AddrForm.Edit3.Text;
         EdsData.Cidade:= AddrForm.Edit4.Text;
         EdsData.Estado:= AddrForm.Edit5.Text;
         EdsData.Pais:= AddrForm.Edit6.Text;
         EdsData.CEP:= AddrForm.Edit7.Text;
         EdsData.Tel1:= AddrForm.Edit8.Text;
         EdsData.Cel:= AddrForm.Edit9.Text;
         EdsData.Tel2:= AddrForm.Edit10.Text;
         EdsData.FAX:= AddrForm.Edit11.Text;
         EdsData.Email:= AddrForm.Edit12.Text;
         EdsData.Nasc:= AddrForm.MaskEdit1.Text;
         EdsData.Obs:= AddrForm.Edit13.Text;
         {---------------------------------------------------}
         EdsData.SeqNbr:= StrtoInt(MainForm.StringGrid1.Cells[0, Row]);
         EdsData.Nome:= MainForm.StringGrid1.Cells[1, Row];
         EdsData.Tel1:= MainForm.StringGrid1.Cells[2, Row];
         {---------------------------------------------------}
       end;
    end;
  except
    MessageDlg('Erro de Parâmetro!!!', mtError, [mbOk], 0);
  end;
end;

procedure TAddrForm.SetGridVars;
begin
  if szf+1<2 then MainForm.StringGrid1.RowCount:= 2 else
  if szf+1<=szg then MainForm.StringGrid1.RowCount:= szf+1 else
    MainForm.StringGrid1.RowCount:= szg+1;
  if FileSize(EdsFile)>0 then
    MainForm.ScrollBar1.Max:= FileSize(EdsFile)-1;
  if FileSize(EdsFile)=0 then
    MainForm.ScrollBar1.Max:= 0;
end;

procedure TAddrForm.RefreshGridInfo;
var Count: Integer;
begin
  if FileSize(EdsFile)>0 then
  begin
    if MainForm.StringGrid1.Enabled= False then
      MainForm.StringGrid1.Enabled:= True;
    if (ipg>=0) and (ipg<=szf-1) then
    for Count:= ipg to ipg+szg-1 do
    begin
      if (count-ipg+1<MainForm.StringGrid1.RowCount) then
      begin
        if (count>=0) and (count<=FileSize(EdsFile)-1) then
        begin
          Seek(EdsFile,count); Read(EdsFile,EdsData);
        end;
        MatchEdsData(1,count-ipg+1);
      end;
    end;
  end else
  begin
    MainForm.StringGrid1.Cells[0, 1]:= '';
    MainForm.StringGrid1.Cells[1, 1]:= '';
    MainForm.StringGrid1.Cells[2, 1]:= '';
    if MainForm.StringGrid1.Enabled= True then
      MainForm.StringGrid1.Enabled:= False;
  end;
  LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
  MainForm.LabelX10.Caption:= LabelX2.Caption;
end;

procedure TAddrForm.CreateEdsFile;
begin
  try
    {$I-}
      ReWrite(EdsFile);
    {$I+}
    InitialiEdsData(0,True); pof:=-1;
    Seek(EdsFile,0); Write(EdsFile,EdsData);
    szf:= FileSize(EdsFile);
    LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
    MainForm.LabelX10.Caption:= LabelX2.Caption;
    MessageDlg('Arquivo '+Prg+'.DAT criado!!!', mtInformation,[mbOk], 0);
  except
    MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
  end;
end;

function TAddrForm.OpenEdsFile: boolean;
begin
  Result:= False;
  AssignFile(EdsFile,Prg+'.DAT');
  if FileExists(Prg+'.DAT')=False then
  begin
    if MessageDlg('Arquivo '+Prg+'.DAT não encontrado. Deseja criar um novo arquivo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CreateEdsFile;
      Result:= True;
    end else
    begin
      InitialiEdsData(0,True);
    end;
  end else
  begin
    try
      {$I-}
        Reset(EdsFile);
      {$I+}
      if IOResult<>0 then
      begin
        MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
        Result:= False;
      end else
      begin
        Result:= True;
        {$I-}
          szf:= FileSize(EdsFile);
          if szf>0 then
          begin
            pof:=0;
            Seek(EdsFile,pof); Read(EdsFile,EdsData);
          end;
        {$I+}
        if IOResult=0 then
        begin
          LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
          MainForm.LabelX10.Caption:= LabelX2.Caption;
          MatchEdsData(0,0);
        end else
        begin
          MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
        end;
      end;
    except
      MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
    end;
  end;
end;

function TAddrForm.NextPrior(Nxt: byte): boolean;
var pof1, ipg1: LongInt;
begin
  try
    if (FileSize(EdsFile)>0) then
    begin
      InitialiEdsData(0,True);
      pof1:= pof;
      ipg1:= ipg;
      szf:= FileSize(EdsFile);
      case Nxt of
        0: if (pof>0) then {Begin}
           begin
             pof:=0;
             ipg:=0;
           end;
        1: if (pof>0) then {Prior}
           begin
             Dec(pof);
             if (MainForm.StringGrid1.Row=1) and (ipg>0) then
               Dec(ipg);
           end;
        2: if (pof<FileSize(EdsFile)-1) then {Next}
           begin
             Inc(pof);
             if (MainForm.StringGrid1.Row=szg) and (ipg+szg<szf) then
               Inc(ipg);
           end;
        3: if (pof<FileSize(EdsFile)-1) then {End}
           begin
             pof:= FileSize(EdsFile)-1;
             if szf<=szg then
               ipg:= 1 else ipg:= pof-szg+1;
           end;
      4,5: if MainForm.StringGrid1.Row-1<>pof then
           begin
             {ShowMessage(InttoStr(MainForm.StringGrid1.Row-1));}
             pof:= ipg+MainForm.StringGrid1.Row-1;
           end;
        6: if (pof>0) then {-szg}
           begin
             if (ipg-szg>=0) then
             begin
               Dec(pof,szg);
               Dec(ipg,szg);
             end else
             begin
               pof:=0;
               ipg:=0;
             end;
           end;
        7: if (pof<FileSize(EdsFile)-1) then {+szg}
           begin
             if ((ipg+(2*szg)-1)<FileSize(EdsFile)-1) then
             begin
               Inc(pof,szg);
               Inc(ipg,szg);
             end else
             begin
               pof:= FileSize(EdsFile)-1;
               if szf<=szg then
                 ipg:= 1 else ipg:= pof-szg+1;
             end;
           end;
      end;
      if (Nxt in [5,8]) or (ipg1<>ipg) then RefreshGridInfo;
      if ((Nxt=8) or (pof1<>pof)) and (pof>=0) and (pof<FileSize(EdsFile)) then
      begin
        MainForm.StringGrid1.Row:= pof-ipg+1;
        Seek(EdsFile,pof); Read(EdsFile,EdsData);
        LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
        MainForm.LabelX10.Caption:= LabelX2.Caption;
        {===================================================}
        MatchEdsData(1,pof-ipg+1);
        MatchEdsData(0,pof-ipg+1);
        {===================================================}
        MainForm.ScrollBar1.Position:= pof;
      end;
      Result:= True;
    end else Result:= False;
  except
    MessageDlg('Arquivo '+Prg+'.EDS erro!!!', mtError, [mbOk], 0);
    Result:= False;
  end;
end;

function TAddrForm.SaveEdsFile: boolean;
begin
  try
    if pof>=0 then
    begin
      MatchEdsData(3,pof-ipg+1);
      Seek(EdsFile,pof); Write(EdsFile,EdsData);
    end;
    MatchEdsData(0,pof-ipg+1);
    Result:= True;
  except
    Result:= False;
  end;
end;

procedure TAddrForm.AddEds(Opt: Byte; Ask: Boolean);
begin
{Add New}
  if (Ask=False) or ((Ask=True) and (MessageDlg(' Adicona novo registro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
  begin
    try
      {$I-}
         pof:= FileSize(EdsFile);
      {$I+}
      if (IOResult=0) or (pof>=0) then
      begin
        if Opt=0 then InitialiEdsData(0,True);
        EdsData.SeqNbr:= FileSize(EdsFile);
        Seek(EdsFile,pof); Write(EdsFile,EdsData);
        MatchEdsData(1,pof-ipg+1);
        szf:= FileSize(EdsFile);
        if szf+1>szg then ipg:=szf-szg;
        {---------------------------------------------------}
        SetGridVars;
        RefreshGridInfo;
        MainForm.StringGrid1.Row:= MainForm.StringGrid1.RowCount-1;
        {---------------------------------------------------}
        LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
        MainForm.LabelX10.Caption:= LabelX2.Caption;
        MainForm.ScrollBar1.Position:= pof;
      end else
      begin
        MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
      end;
    except
      MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TAddrForm.DelEds(Ask: boolean);
var indx: LongInt;
begin
{Delete}
  if (Ask=False) or ((Ask=True) and (FileSize(EdsFile)=0)) then
    MessageDlg('Arquivo '+Prg+'.DAT não possui não tem nenhum registro!!!',
      mtError, [mbOk], 0) else
  begin
    if MessageDlg(' Confirma deletar registro número "'
    +InttoStr(pof)+'"'+Chr(13)+'do Arquivo '+Prg+'.DAT!!!',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        indx:= pof; szf:= FileSize(EdsFile);
        while (indx<szf-1) do
        begin
          Inc(indx);
          Seek(EdsFile,indx); Read(EdsFile,EdsData);
          Dec(indx); Dec(EdsData.SeqNbr);
          Seek(EdsFile,indx); Write(EdsFile,EdsData);
          Inc(indx); MatchEdsData(1,indx-ipg+1);
        end;
        Seek(EdsFile,szf-1); Truncate(EdsFile);
        if pof>=FileSize(EdsFile) then pof:= FileSize(EdsFile)-1;
        {CloseFile(EdsFile); Reset(EdsFile);}
        if FileSize(EdsFile)=0 then
        begin
          InitialiEdsData(0,True);
          MatchEdsData(1,pof+2);
          MatchEdsData(0,0);
        end else
        begin
          szf:= FileSize(EdsFile);
          if (szf+1>szg) and (ipg>0) then Dec(ipg);
          Seek(EdsFile,pof); Read(EdsFile,EdsData);
          MatchEdsData(1,pof-ipg+1);
        end;
        szf:= FileSize(EdsFile);
        MainForm.ScrollBar1.Position:= pof;
        {---------------------------------------------------}
        SetGridVars;
        RefreshGridInfo;
        {---------------------------------------------------}
        LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
        MainForm.LabelX10.Caption:= LabelX2.Caption;
        MessageDlg(' Registro foi deletado!!!',
          mtInformation, [mbOk], 0);
      except
        MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TAddrForm.FindEds(Opt: Byte);
var count, indx: LongInt;
    EdsData1: Eds;
    StringLine: string;
    oks: boolean;
begin
{Find}
  if (FileSize(EdsFile)>0) then
  begin
    if InputQuery('Busca','Digite o texto para localizar:',StringLine) then
    begin
      if StringLine='' then ShowMessage('Parâmetro Inválido!!!') else
      if (FileSize(EdsFile)>0) and (StringLine<>'') then
      begin
        indx:= pof; count:=0; oks:= False;
       repeat
          FillChar(EdsData1,SizeOf(EdsData1),#0);
          Seek(EdsFile,count); Read(EdsFile,EdsData1);
          case Opt of
            0: if Pos(UpperCase(StringLine), UpperCase(EdsData1.Nome))>0 then
                 oks:= True else Inc(count);
            1: if Pos(UpperCase(StringLine), UpperCase(EdsData1.Nome))=1 then
                 oks:= True else Inc(count);
            2: if Trim(UpperCase(EdsData1.Nome))= Trim(UpperCase(StringLine)) then
                 oks:= True else Inc(count);
            3: if Pos(UpperCase(StringLine), UpperCase(EdsData1.Grupo))>0 then
                 oks:= True else Inc(count);
            4: if Pos(UpperCase(StringLine), UpperCase(EdsData1.Grupo))=1 then
                 oks:= True else Inc(count);
            5: if Trim(UpperCase(EdsData1.Grupo))= Trim(UpperCase(StringLine)) then
                 oks:= True else Inc(count);
            6: if (Pos(AdjustStringNumber(0,UpperCase(Trim(StringLine))), AdjustStringNumber(0,UpperCase(Trim(EdsData1.Tel1))))>0)
               or (Pos(AdjustStringNumber(0,UpperCase(Trim(StringLine))), AdjustStringNumber(0,UpperCase(Trim(EdsData1.Tel2))))>0)
               or (Pos(AdjustStringNumber(0,UpperCase(Trim(StringLine))), AdjustStringNumber(0,UpperCase(Trim(EdsData1.Fax))))>0)
               or (Pos(AdjustStringNumber(0,UpperCase(Trim(StringLine))), AdjustStringNumber(0,UpperCase(Trim(EdsData1.Cel))))>0) then
                 oks:= True else Inc(count);
            7: if (Pos(UpperCase(StringLine), UpperCase(EdsData1.Tel1))=1)
               or (Pos(UpperCase(StringLine), UpperCase(EdsData1.Tel2))=1)
               or (Pos(UpperCase(StringLine), UpperCase(EdsData1.Fax))=1)
               or (Pos(UpperCase(StringLine), UpperCase(EdsData1.Cel))=1) then
                 oks:= True else Inc(count);
            8: if (Trim(UpperCase(EdsData1.Tel1))= Trim(UpperCase(StringLine)))
               or (Trim(UpperCase(EdsData1.Tel2))= Trim(UpperCase(StringLine)))
               or (Trim(UpperCase(EdsData1.Fax))= Trim(UpperCase(StringLine)))
               or (Trim(UpperCase(EdsData1.Cel))= Trim(UpperCase(StringLine))) then
                 oks:= True else Inc(count);
          end;
          Application.ProcessMessages;
        until (oks=True) or (Eof(EdsFile));
        if oks= True then
        begin
          pof:= count;
          FillChar(EdsData,SizeOf(EdsData),#0);
          if (pof in [0..szg-1]) then
            ipg:= 0 else
          if (pof>=szg) then
          begin
            ipg:= pof-MainForm.StringGrid1.Row+1;
            while ipg+szg-1>=szf do Dec(ipg);
          end;
        end else
        begin
          pof:= indx;
          ShowMessage('Registro não foi encontrado!!!');
        end;
        RefreshGridInfo;
        MainForm.StringGrid1.Row:= pof-ipg+1;
        MainForm.ScrollBar1.Position:= pof;
      end;
    end;
  end;
end;

procedure TAddrForm.SortEds;
var indx, count: LongInt;
    EdsData1, EdsData2: Eds;
    oks: boolean;
begin
{Sort}
  if MessageDlg('Deseja reorganizar arquivo de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      if FileSize(EdsFile)=0 then
        ShowMessage('Nenhum registro arquivado!!!') else
      if FileSize(EdsFile)=1 then
        ShowMessage('Arquivo com apenas 1(um) registro arquivado!!!') else
      begin
        indx:= pof;
        repeat
          oks:=true;
          for count:=0 to FileSize(EdsFile)-2 do
          begin
            FillChar(EdsData,SizeOf(EdsData),#0);
            FillChar(EdsData1,SizeOf(EdsData1),#0);
            FillChar(EdsData2,SizeOf(EdsData2),#0);
            Seek(EdsFile,count); Read(EdsFile,EdsData);
            Seek(EdsFile,count+1); Read(EdsFile,EdsData1);
            if UpperCase(EdsData1.Nome)<UpperCase(EdsData.Nome) then
            begin
              EdsData2:=EdsData1; EdsData1:=EdsData;
              Inc(EdsData1.SeqNbr);
              Seek(EdsFile,count+1); Write(EdsFile,EdsData1);
              EdsData:=EdsData2;
              Dec(EdsData.SeqNbr);
              Seek(EdsFile,count); Write(EdsFile,EdsData);
              oks:=false;
            end;
          end;
          Application.ProcessMessages;
        until (oks=True);
        FillChar(EdsData,SizeOf(EdsData),#0);
        pof:= indx;
        ipg:= pof-MainForm.StringGrid1.Row+1;
        RefreshGridInfo;
        MainForm.ScrollBar1.Position:= pof;
      end;
    except
      MessageDlg('Arquivo '+Prg+'.DAT erro!!!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TAddrForm.DelAllEds;
begin
  if MessageDlg('Deseja apagar todos registros?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Seek(EdsFile,0); Truncate(EdsFile);
    ipg:=0;
    pof:=-1;
    szf:= FileSize(EdsFile);
    SetGridVars;
    RefreshGridInfo;
    LabelX2.Caption:= InttoStr(pof)+'/'+InttoStr(szf-1);
    MainForm.LabelX10.Caption:= LabelX2.Caption;
    if FileSize(EdsFile)>0 then
      MainForm.StringGrid1.SetFocus
        else MainForm.ToolBar3.SetFocus;
    InitialiEdsData(0, True);
    MatchEdsData(0,0);
  end;
end;

procedure TAddrForm.IrPara(newpof: LongInt);
var StringLine: string;
begin
  if (FileSize(EdsFile)>0) then
  begin
    pof:= newpof;
    if pof>=0 then
    begin
      if pof>ipg+szg-1 then
      begin
        if ((pof-MainForm.StringGrid1.Row+1+szg)>szf) then
          ipg:= pof-szg+1 else ipg:= pof-MainForm.StringGrid1.Row+1;
      end else
      begin
        if (pof<szg) then ipg:=0 else ipg:= pof-MainForm.StringGrid1.Row+1;
      end;
      NextPrior(8);
    end;
  end;
end;

procedure TAddrForm.GotoEds;
var StringLine: string;
begin
  if (FileSize(EdsFile)>0) then
  begin
    if InputQuery('Go to...','Digite o número do registro:',StringLine) then
    begin
      if StringLine='' then ShowMessage('Parâmetro Inválido!!!') else
      if (FileSize(EdsFile)>0) and (StringLine<>'')
      and (StrtoInt(StringLine)>=0) and (StrtoInt(StringLine)<=FileSize(EdsFile)-1) then
      begin
        IrPara(StrtoInt(StringLine));
      end;
    end;
  end;
end;

procedure TAddrForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
  begin
    if (StEdtPrc=False) then Close else
    begin
      if (MessageDlg('Deseja realmente interromper o processo?',
        mtConfirmation, [mbYes, mbNo], 0)=mrYes)
          and (StEdtPrc=True) then StEdtPrc:=False;
    end;
  end;
end;

procedure TAddrForm.ToolButton39Click(Sender: TObject);
begin
  if AddrForm.SaveEdsFile= False then
    MessageDlg('Arquivo '+Prg+'.EDS erro!!!', mtError, [mbOk], 0);
end;

procedure TAddrForm.ToolButton33Click(Sender: TObject);
begin
  if (pof>0) then NextPrior(1);
end;

procedure TAddrForm.ToolButton34Click(Sender: TObject);
begin
  if (pof<FileSize(EdsFile)-1) then NextPrior(2);
end;

procedure TAddrForm.ToolButton37Click(Sender: TObject);
begin
  AddEds(0,True);
end;

procedure TAddrForm.ToolButton38Click(Sender: TObject);
begin
  if (FileSize(EdsFile)>0) then DelEds(True);
end;

procedure TAddrForm.ToolButton31Click(Sender: TObject);
begin
  NextPrior(0);
end;

procedure TAddrForm.ToolButton36Click(Sender: TObject);
begin
  NextPrior(3);
end;

procedure TAddrForm.ToolButton40Click(Sender: TObject);
begin
  {Find}
  case ComboBox2.ItemIndex of
    0: FindEds(0);
    1: FindEds(3);
    2: FindEds(6)
    else FindEds(0);
  end;
end;

procedure TAddrForm.ToolButton32Click(Sender: TObject);
begin
  if (pof>0) then NextPrior(6);
end;

procedure TAddrForm.ToolButton35Click(Sender: TObject);
begin
  if (pof<FileSize(EdsFile)-1) then NextPrior(7);
end;

procedure TAddrForm.ToolButton41Click(Sender: TObject);
begin
  GotoEds;
end;

procedure TAddrForm.ToolButton42Click(Sender: TObject);
begin
  {Sort}
  SortEds;
end;

procedure TAddrForm.ToolButton43Click(Sender: TObject);
begin
  DelAllEds;
end;

procedure TAddrForm.ToolButton30Click(Sender: TObject);
begin
  MainForm.PageControl1.ActivePageIndex:= 9;
  AddrForm.PageControl1.ActivePageIndex:= 0;
end;

procedure TAddrForm.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TAddrForm.SpeedButton3Click(Sender: TObject);
begin
  if (MaskEdit1.Text<>'') and (MaskEdit1.Text<>'  /  /    ') then
  BrDateForm.Date := StrToDate(MaskEdit1.Text) else { start with current date }
    BrDateForm.Date:= Now;
  if BrDateForm.ShowModal= mrOk then
  MaskEdit1.Text:= FormatDateTime('dd/mm/yyyy',BrDateForm.Date);
  {DateToStr(BrDateForm.Date);}
end;

procedure TAddrForm.EditEnter(Sender: TObject);
begin
  if (Sender is TEdit) then
  begin
    (Sender as TEdit).Color := $00D3FEFC;
  end else
  if (Sender is TMaskEdit) then
  begin
    (Sender as TMaskEdit).Color := $00D3FEFC;
  end else
  if (Sender is TComboBox) then
  begin
    (Sender as TComboBox).Color := $00D3FEFC;
  end;
end;

procedure TAddrForm.EditExit(Sender: TObject);
begin
  if (Sender is TEdit) then
  begin
    (Sender as TEdit).Color := clWindow;
  end else
  if (Sender is TMaskEdit) then
  begin
    (Sender as TMaskEdit).Color := clWindow;
  end else
  if (Sender is TComboBox) then
  begin
    (Sender as TComboBox).Color := clWindow;
  end;
end;

procedure TAddrForm.Edit1Change(Sender: TObject);
begin
  if AddrForm.Edit1.Focused then
  begin
    MainForm.StringGrid1.Cells[1, MainForm.StringGrid1.Row]:= AddrForm.Edit1.Text;
  end;
end;

procedure TAddrForm.Edit8Change(Sender: TObject);
begin
  if AddrForm.Edit8.Focused then
  begin
    MainForm.StringGrid1.Cells[2, MainForm.StringGrid1.Row]:= AddrForm.Edit8.Text;
  end;
end;

procedure TAddrForm.ComboBox2Change(Sender: TObject);
begin
  if ComboBox2.ItemIndex=0 then
  begin
  end;
end;

procedure TAddrForm.ToolButton44Click(Sender: TObject);
begin
  AddrForm.PageControl1.ActivePageIndex:= 1;
end;

procedure TAddrForm.ToolButton45Click(Sender: TObject);
begin
  AddrForm.PageControl1.ActivePageIndex:= 2;
end;

procedure TAddrForm.SpeedButton1Click(Sender: TObject);
begin
  if Edit20.Text='' then OpenDialog1.InitialDir:= GetRunDir else
  begin
    if DirectoryExists(ExtractFilePath(Edit20.Text))= True then
      OpenDialog1.InitialDir:= ExtractFilePath(Edit20.Text) else
        OpenDialog1.InitialDir:= GetRunDir;
  end;
  OpenDialog1.Filter:= '(*.CSV)|*.CSV|(*.TXT)|*.TXT|(*.LOG)|*.LOG|(*.*)|*.*';
  if OpenDialog1.Execute= True then
  begin
    if (OpenDialog1.FileName<>'')
      and (FileExists(OpenDialog1.FileName)=True) then
    begin
      Edit20.Text:= OpenDialog1.FileName;
    end else MessageDlg('Arquivo '+OpenDialog1.FileName+' não encontrado!!!',
      mtError, [mbOk], 0)
  end;
end;

procedure TAddrForm.SpeedButton2Click(Sender: TObject);
begin
  if ExtractFilePath(Edit20.Text)= '' then
    MainForm.EditTextFile(GetRunDir+Edit20.Text) else
    MainForm.EditTextFile(Edit20.Text);
end;

procedure TAddrForm.SpeedButton4Click(Sender: TObject);
begin
  if ExtractFilePath(Edit20.Text)= '' then
    MainForm.EditExcelFile(GetRunDir+Edit20.Text) else
    MainForm.EditExcelFile(Edit20.Text);
end;


procedure TAddrForm.BitBtn1Click(Sender: TObject);
var Chrs: char;
    Count: LongInt;
    Ok: boolean;
begin
  { Importar Dados da Planilha Excel }
  if Edit20.Text='' then ShowMessage('Arquivo Inválido!!!') else
  begin
    if FileExists(Edit20.Text)=False then ShowMessage('Arquivo não Encontrado!!!') else
    begin
      AssignFile(Txt1,Edit20.Text);
      {$I-}
        Reset(Txt1);
      {$I+}
      if IOResult<>0 then
      begin
        ShowMessage(' Erro no arquivo '+Edit20.Text+'!!!');
      end else
      begin
        if FileSize(Txt1)>0 then
        begin
          Count:=0; Ok:=false; StEdtPrc:= True;
          while not((Eof(Txt1)) or (StEdtPrc=False)) do
          begin
            Edit21.Text:='';
            Application.ProcessMessages;
            Repeat
              Application.ProcessMessages;
              Read(Txt1,Chrs);
              if not(Chrs in [#8,';',#10,#13]) then
                Edit21.Text:= Edit21.Text+Chrs;
            Until (Eoln(Txt1)) or (Chrs in [#8,';',#10,#13]);
            {if Count>0 then
            ShowMessage(InttoStr(Count)+' - '+ListBox1.Items.Strings[Count]+'= '+Edit2.Text);}
            Edit21.Text:= Trim(Edit21.Text);
            if (Trim(Edit21.Text)<>'') and (Trim(Edit21.Text)<>'SEQNBR') then
            begin
              case Count of
                0: begin
                    Ok:= false;
                    FillChar(EdsData,SizeOf(EdsData),#0);
                    EdsData.SeqNbr:= StrtoInt(AdjustStringNumber(0,Trim(Edit21.Text)));
                   end;
                1: EdsData.Nome:= Trim(Edit21.Text);
                2: EdsData.Grupo:= Trim(Edit21.Text);
                3: EdsData.Endereco:= Trim(Edit21.Text);
                4: EdsData.Bairro:= Trim(Edit21.Text);
                5: EdsData.Cidade:= Trim(Edit21.Text);
                6: EdsData.Estado:= Trim(Edit21.Text);
                7: EdsData.Pais:= Trim(Edit21.Text);
                8: EdsData.CEP:= Trim(Edit21.Text);
                9: EdsData.Tel1:= Trim(Edit21.Text);
               10: EdsData.Cel:= Trim(Edit21.Text);
               11: EdsData.Tel2:= Trim(Edit21.Text);
               12: EdsData.Fax:= Trim(Edit21.Text);
               13: EdsData.Email:= Trim(Edit21.Text);
               14: EdsData.Nasc:= Trim(Edit21.Text);
               15: EdsData.Obs:= Trim(Edit21.Text);
              end;
            end else
            if (Trim(Edit21.Text)='SEQNBR') then
            begin
              ReadLn(Txt1,Chrs);
            end;
            if (Eoln(Txt1)) or (Chrs in [#10,#13]) then
            begin
              Count:=0;
              if ok=false then
              begin
                ok:=True;
                AddEds(1,False);
              end;
            end else
            if (Chrs in [#8,';']) then
              Inc(Count);
          end;
        end;
        {$I-}
          CloseFile(Txt1);
        {$I+}
        StEdtPrc:=False;
        ShowMessage('Fim do Processo!!!!');
        Close;
      end;
    end;
  end;
end;

procedure TAddrForm.BitBtn2Click(Sender: TObject);
var count, indx: LongInt;
  EdsData1: Eds;
begin
  if Trim(Edit20.Text) <> '' then
  AssignFile(Txt1,Trim(Edit20.Text));
  if (FileExists(Trim(Edit20.Text))=True) then
  begin
    if MessageDlg('Arquivo('+Trim(Edit20.Text)+') já existe? Pressione:'+#13+
    'Yes --> Para Reescrever neste arquivo'+#13+
    'No --> Para Adicionar'
    ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     {$I-}
       Rewrite(Txt1);
     {$I+}
    end else
    begin
     {$I-}
       Append(Txt1);
     {$I+}
    end;
  end else
  begin
   {$I-}
     Rewrite(Txt1);
   {$I+}
  end;
  if IoResult<>0 then
    ShowMessage('Erro no arquivo de dados!!!') else
  begin
    WriteLn(Txt1,'SEQNBR;NOME;GRUPO/EMPRESA;ENDERECO;BAIRRO;CIDADE;ESTADO;PAIS;CEP;TEL1;CEL;TEL2;FAX;NASC;EMAIL;OBS;');
    try
      StEdtPrc:= True;
      count:=0; pof:= indx;
      Seek(EdsFile,count);
      while not(Eof(EdsFile) or (StEdtPrc=False)) do
      begin
        FillChar(EdsData1,SizeOf(EdsData1),#0);
        Seek(EdsFile,count); Read(EdsFile,EdsData1);
        Write(Txt1,InttoStr(EdsData1.SeqNbr)+';');
        Write(Txt1,EdsData1.Nome+';');
        Write(Txt1,EdsData1.Grupo+';');
        Write(Txt1,EdsData1.Endereco+';');
        Write(Txt1,EdsData1.Bairro+';');
        Write(Txt1,EdsData1.Cidade+';');
        Write(Txt1,EdsData1.Estado+';');
        Write(Txt1,EdsData1.Pais+';');
        Write(Txt1,EdsData1.CEP+';');
        Write(Txt1,EdsData1.TEL1+';');
        Write(Txt1,EdsData1.Cel+';');
        Write(Txt1,EdsData1.TEL2+';');
        Write(Txt1,EdsData1.FAX+';');
        Write(Txt1,EdsData1.Nasc+';');
        Write(Txt1,EdsData1.Email+';');
        WriteLn(Txt1,EdsData1.Obs+';');
        Inc(Count);
      end;
      {$I-}
        CloseFile(Txt1);
      {$I+}
      ShowMessage('Fim do Processo!!!!');
    except
      ShowMessage('Erro no Processo!!!!');
    end;
  end;
end;

procedure TAddrForm.BmpAnimator1Click(Sender: TObject);
begin
  FAnim.Running[BmpAnimator1]:= not FAnim.Running[BmpAnimator1];
end;

{----------------------------------------------------------------------------}
{-------------------Aniversários (usados pelo calendário)--------------------}
{ Arquivo dos contatos: na pasta do Painel ou, se não existir lá, na pasta
  atual (a mesma usada por OpenEdsFile). }
function ArquivoContatos: string;
begin
  Result:= GetRunDir+Prg+'.DAT';
  if not FileExists(Result) then Result:= ExpandFileName(Prg+'.DAT');
end;

{ Lê as datas de nascimento (campo Nasc, 'dd/mm/aaaa') de todos os contatos.
  Abre o arquivo à parte, só para leitura, sem mexer no EdsFile que o
  cadastro mantém aberto. }
function LeAniversarios(out Lista: TArray<TAniversario>): Boolean;
var F: file of Eds;
  R: Eds;
  ModoAnterior: Byte;
  S: string;
  D, M, A, N: Integer;
begin
  Result:= False;
  Lista:= nil;
  if not FileExists(ArquivoContatos) then Exit;
  ModoAnterior:= FileMode;
  FileMode:= fmOpenRead or fmShareDenyNone;
  try
    try
      AssignFile(F, ArquivoContatos);
      Reset(F);
      try
        N:= 0;
        while not Eof(F) do
        begin
          Read(F, R);
          S:= string(R.Nasc);
          D:= StrToIntDef(Trim(Copy(S, 1, 2)), 0);
          M:= StrToIntDef(Trim(Copy(S, 4, 2)), 0);
          A:= StrToIntDef(Trim(Copy(S, 7, 4)), 0);
          if (Trim(string(R.Nome))='') or (M<1) or (M>12) or (D<1) or
             (D>MonthDays[True][M]) then Continue;
          if (A<1900) or (A>2100) then A:= 0;
          SetLength(Lista, N+1);
          Lista[N].Dia:= D;
          Lista[N].Mes:= M;
          Lista[N].Ano:= A;
          Lista[N].Nome:= Trim(string(R.Nome));
          Inc(N);
        end;
      finally
        CloseFile(F);
      end;
      Result:= True;
    except
      Lista:= nil; { arquivo em uso ou corrompido: tenta de novo depois }
    end;
  finally
    FileMode:= ModoAnterior;
  end;
end;

end.
