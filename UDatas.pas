unit UDatas;

{----------------------------------------------------------------------------}
{ Datas do calendário além dos feriados nacionais (NomeFeriado, em UMain):
  - arquivo Datas.txt, na pasta do Painel: feriados estaduais e municipais
    (criado já com os da Bahia e de Salvador) e datas pessoais;
  - aniversários dos contatos (data de nascimento gravada em Painel.DAT).
  Os dois arquivos são relidos automaticamente quando mudam.               }
{----------------------------------------------------------------------------}

interface

uses
  SysUtils, Classes;

type
  { Tipo da data, na ordem de prioridade da cor no calendário }
  TTipoData = (tdNacional, tdEstadual, tdMunicipal, tdAniversario, tdPessoal);
  TDataDia = record
    Tipo: TTipoData;
    Texto: string;
    Classe: string; { ex.: 'municipal - Salvador' }
  end;

{ Datas do Datas.txt e aniversários no dia D, com o tipo de cada uma (os
  feriados nacionais calculados ficam em UMain.NomeFeriado) }
function DatasDoDia(D: TDateTime): TArray<TDataDia>;
function DatasExtras(D: TDateTime; const Separador: string = ' / ';
  ComAniversarios: Boolean = True; ComClasse: Boolean = False): string;
function ProximosAniversarios(Desde: TDateTime; Dias: Integer): string;
function ArquivoDatas: string;
procedure CriaArquivoDatas;

implementation

uses
  Windows, DateUtils, UMain, UAddr;

type
  TDataPessoal = record
    Dia, Mes, Ano: Word; { Ano = 0: repete todo ano }
    Texto: string;
    Classe: string; { do grupo do Datas.txt, ex.: 'municipal - Salvador' }
  end;

var
  Datas: TArray<TDataPessoal>;
  Aniversarios: TArray<TAniversario>;
  IdadeDatas: TDateTime = -1;     { FileAge na última leitura de Datas.txt }
  IdadeContatos: TDateTime = -1;  { FileAge na última leitura de Painel.DAT }
  LeituraContatos: UInt64 = 0;    { GetTickCount64 da última leitura }
  Verificacao: UInt64 = 0;        { GetTickCount64 da última verificação }

function ArquivoDatas: string;
begin
  Result:= GetRunDir+'Datas.txt';
end;

{ Cria o Datas.txt com as instruções e os feriados regionais da Bahia e de
  Salvador. Não faz nada se o arquivo já existir. }
procedure CriaArquivoDatas;
var L: TStringList;
begin
  if FileExists(ArquivoDatas) then Exit;
  L:= TStringList.Create;
  try
    L.Add('# Datas do calendário do Painel, uma por linha:');
    L.Add('#   dd/mm=Descrição         repete todo ano');
    L.Add('#   dd/mm/aaaa=Descrição    só nesse dia');
    L.Add('# A classificação e a localidade mostradas na lista de feriados vêm');
    L.Add('# do grupo em que a data está, no formato [Tipo - Localidade]:');
    L.Add('# [Estaduais - Bahia], [Municipais - Salvador], [Pessoais]...');
    L.Add('# Linhas iniciadas com # são ignoradas. Os feriados nacionais e os');
    L.Add('# aniversários dos contatos já aparecem sem precisar estar aqui.');
    L.Add('');
    L.Add('[Estaduais - Bahia]');
    L.Add('02/07=Independência da Bahia');
    L.Add('');
    L.Add('[Municipais - Salvador]');
    L.Add('24/06=São João');
    L.Add('08/12=N. Sra. da Conceição da Praia');
    L.Add('');
    L.Add('[Pessoais]');
    L.Add('# 15/03=Exemplo de data pessoal');
    try
      L.SaveToFile(ArquivoDatas, TEncoding.UTF8);
    except
      { pasta do Painel sem permissão de gravação }
    end;
  finally
    L.Free;
  end;
end;

{ Classificação a partir do nome do grupo, [Tipo - Localidade]:
  [Municipais - Salvador] -> 'municipal - Salvador'; [Pessoais] -> 'pessoal' }
function NomeClasse(const Grupo: string): string;
var P: Integer;
  Tipo, Local: string;
begin
  P:= Pos('-', Grupo);
  if P>0 then
  begin
    Tipo:= AnsiLowerCase(Trim(Copy(Grupo, 1, P-1)));
    Local:= Trim(Copy(Grupo, P+1, MaxInt));
  end else
  begin
    Tipo:= AnsiLowerCase(Trim(Grupo));
    Local:= '';
  end;
  if Tipo.StartsWith('naciona') then Result:= 'nacional'
  else if Tipo.StartsWith('estadua') then Result:= 'estadual'
  else if Tipo.StartsWith('municipa') then Result:= 'municipal'
  else if Tipo.StartsWith('pessoa') then Result:= 'pessoal'
  else Result:= Tipo;
  if Local<>'' then Result:= Result+' - '+Local;
end;

procedure LeDatas;
var L: TStringList;
  I, P, N: Integer;
  Linha, Data, Classe: string;
  Partes: TArray<string>;
  X: TDataPessoal;
begin
  Datas:= nil;
  if not FileExists(ArquivoDatas) then Exit;
  L:= TStringList.Create;
  try
    try
      L.LoadFromFile(ArquivoDatas); { UTF-8 com BOM ou ANSI (Bloco de Notas) }
    except
      Exit;
    end;
    N:= 0;
    Classe:= '';
    for I:= 0 to L.Count-1 do
    begin
      Linha:= Trim(L[I]);
      if (Linha='') or (Linha[1]='#') then Continue;
      if (Linha[1]='[') and (Linha[Length(Linha)]=']') then
      begin
        Classe:= NomeClasse(Copy(Linha, 2, Length(Linha)-2));
        Continue;
      end;
      P:= Pos('=', Linha);
      if P<2 then Continue;
      Data:= Trim(Copy(Linha, 1, P-1));
      X.Texto:= Trim(Copy(Linha, P+1, MaxInt));
      X.Classe:= Classe;
      Partes:= Data.Split(['/']);
      if (Length(Partes)<2) or (Length(Partes)>3) or (X.Texto='') then Continue;
      X.Dia:= StrToIntDef(Trim(Partes[0]), 0);
      X.Mes:= StrToIntDef(Trim(Partes[1]), 0);
      X.Ano:= 0;
      if Length(Partes)=3 then X.Ano:= StrToIntDef(Trim(Partes[2]), 0);
      if (X.Mes<1) or (X.Mes>12) or (X.Dia<1) or (X.Dia>MonthDays[True][X.Mes]) then
        Continue;
      SetLength(Datas, N+1);
      Datas[N]:= X;
      Inc(N);
    end;
  finally
    L.Free;
  end;
end;

{ Relê os arquivos que mudaram. Verifica no máximo a cada 2 s, porque o
  calendário consulta dezenas de dias seguidos ao mudar de mês. Os contatos
  também são relidos a cada minuto: o cadastro mantém o Painel.DAT aberto e
  a data de alteração pode demorar a ser atualizada. }
procedure Recarrega;
var Idade: TDateTime;
begin
  if (Verificacao<>0) and (GetTickCount64-Verificacao<2000) then Exit;
  Verificacao:= GetTickCount64;
  if not FileExists(ArquivoDatas) then CriaArquivoDatas;
  if not FileAge(ArquivoDatas, Idade) then Idade:= 0;
  if Idade<>IdadeDatas then
  begin
    IdadeDatas:= Idade;
    LeDatas;
  end;
  if not FileAge(ArquivoContatos, Idade) then Idade:= 0;
  if (Idade<>IdadeContatos) or (GetTickCount64-LeituraContatos>=60000) then
  begin
    IdadeContatos:= Idade;
    LeituraContatos:= GetTickCount64;
    if not LeAniversarios(Aniversarios) then Aniversarios:= nil;
  end;
end;

{ Aniversário no dia? Quem nasceu em 29/02 é lembrado em 28/02 nos anos
  que não são bissextos. }
function FazAniversario(const N: TAniversario; A, M, D: Word): Boolean;
begin
  Result:= ((N.Dia=D) and (N.Mes=M)) or
    ((N.Dia=29) and (N.Mes=2) and (M=2) and (D=28) and not IsLeapYear(A));
end;

function TextoAniversario(const N: TAniversario; Ano: Word): string;
begin
  if (N.Ano>0) and (N.Ano<Ano) then
    Result:= Format('Aniversário de %s (%d anos)', [N.Nome, Ano-N.Ano])
  else
    Result:= 'Aniversário de '+N.Nome;
end;

{ Datas do Datas.txt e aniversários no dia D, separados por Separador;
  '' se não houver nenhuma. ComClasse: 'São João (municipal)'. }
function DatasExtras(D: TDateTime; const Separador: string = ' / ';
  ComAniversarios: Boolean = True; ComClasse: Boolean = False): string;
var A, M, Dd: Word;
  X: TDataPessoal;
  N: TAniversario;
  S: string;

  procedure Junta(const Texto: string);
  begin
    if S<>'' then S:= S+Separador;
    S:= S+Texto;
  end;

begin
  S:= '';
  Recarrega;
  DecodeDate(D, A, M, Dd);
  for X in Datas do
    if (X.Dia=Dd) and (X.Mes=M) and ((X.Ano=0) or (X.Ano=A)) then
      if ComClasse and (X.Classe<>'') then
        Junta(X.Texto+' ('+X.Classe+')')
      else
        Junta(X.Texto);
  if ComAniversarios then
    for N in Aniversarios do
      if FazAniversario(N, A, M, Dd) then Junta(TextoAniversario(N, A));
  Result:= S;
end;

function DatasDoDia(D: TDateTime): TArray<TDataDia>;
var A, M, Dd: Word;
  X: TDataPessoal;
  N: TAniversario;
  Item: TDataDia;
begin
  Result:= nil;
  Recarrega;
  DecodeDate(D, A, M, Dd);
  for X in Datas do
    if (X.Dia=Dd) and (X.Mes=M) and ((X.Ano=0) or (X.Ano=A)) then
    begin
      Item.Texto:= X.Texto;
      Item.Classe:= X.Classe;
      if X.Classe.StartsWith('nacional') then Item.Tipo:= tdNacional
      else if X.Classe.StartsWith('estadual') then Item.Tipo:= tdEstadual
      else if X.Classe.StartsWith('municipal') then Item.Tipo:= tdMunicipal
      else Item.Tipo:= tdPessoal;
      Result:= Result+[Item];
    end;
  for N in Aniversarios do
    if FazAniversario(N, A, M, Dd) then
    begin
      Item.Tipo:= tdAniversario;
      Item.Texto:= TextoAniversario(N, A);
      Item.Classe:= '';
      Result:= Result+[Item];
    end;
end;

{ Lista dos aniversários de Desde até Desde+Dias-1, um por linha }
function ProximosAniversarios(Desde: TDateTime; Dias: Integer): string;
var I: Integer;
  Dia: TDateTime;
  A, M, Dd: Word;
  N: TAniversario;
begin
  Result:= '';
  Recarrega;
  Desde:= Trunc(Desde);
  for I:= 0 to Dias-1 do
  begin
    Dia:= Desde+I;
    DecodeDate(Dia, A, M, Dd);
    for N in Aniversarios do
      if FazAniversario(N, A, M, Dd) then
        Result:= Result+#13+FormatDateTime('dd/mm - ddd', Dia)+' - '+
          TextoAniversario(N, A);
  end;
end;

end.
