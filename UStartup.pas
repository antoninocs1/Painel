unit UStartup;

{----------------------------------------------------------------------------}
{ Inicialização automática do Painel junto com o Windows, SEM usar o registro:
  cria/remove um atalho (.lnk) na pasta "Inicializar" do usuário
  (%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup).

  A versão anterior gravava em HKEY_LOCAL_MACHINE\...\Run, o que exige
  privilégios de administrador e causava o erro "Erro ao gravar registro!!!".
  A pasta Inicializar pertence ao usuário e não precisa de privilégios.      }
{----------------------------------------------------------------------------}

interface

function StartupFolder: string;
function StartupShortcutFile: string;
function StartupEnabled: Boolean;
function EnableStartup: Boolean;
function DisableStartup: Boolean;
procedure RemoveLegacyRunEntries;

implementation

uses
  Winapi.Windows, Winapi.ShlObj, Winapi.ActiveX, System.SysUtils,
  System.Win.ComObj, System.Win.Registry;

const
  LinkName = 'Painel.lnk';
  RunKey   = 'Software\Microsoft\Windows\CurrentVersion\Run';
  RunValue = 'IniciarProgramaPainel'; { valor usado pelas versões anteriores }

{-------------------------Function---StartupFolder---------------------------}
function StartupFolder: string;
var Buf: array[0..MAX_PATH] of Char;
begin
  Result:= '';
  if Succeeded(SHGetFolderPath(0, CSIDL_STARTUP, 0, 0, Buf)) then
    Result:= IncludeTrailingPathDelimiter(Buf);
end;

{-------------------------Function---StartupShortcutFile---------------------}
function StartupShortcutFile: string;
begin
  Result:= StartupFolder;
  if Result <> '' then Result:= Result + LinkName;
end;

{-------------------------Function---ShortcutTarget--------------------------}
{ Caminho do executável para o qual o atalho aponta ('' se não puder ler) }
function ShortcutTarget(const Lnk: string): string;
var Obj: IUnknown;
  Buf: array[0..MAX_PATH] of Char;
  FD: TWin32FindData;
  NeedUninit: Boolean;
begin
  Result:= '';
  NeedUninit:= Succeeded(CoInitialize(nil));
  try
    try
      Obj:= CreateComObject(CLSID_ShellLink);
      if Succeeded((Obj as IPersistFile).Load(PWideChar(Lnk), STGM_READ)) and
         Succeeded((Obj as IShellLink).GetPath(Buf, MAX_PATH, FD, 0)) then
        Result:= Buf;
    except
      Result:= '';
    end;
    Obj:= nil;
  finally
    if NeedUninit then CoUninitialize;
  end;
end;

{-------------------------Function---StartupEnabled--------------------------}
{ True se existe o atalho na pasta Inicializar apontando para este .exe }
function StartupEnabled: Boolean;
var Lnk: string;
begin
  Lnk:= StartupShortcutFile;
  Result:= (Lnk <> '') and FileExists(Lnk) and
    SameText(ShortcutTarget(Lnk), ParamStr(0));
end;

{-------------------------Function---EnableStartup---------------------------}
{ Cria (ou recria, caso o programa tenha mudado de pasta) o atalho }
function EnableStartup: Boolean;
var Obj: IUnknown;
  SL: IShellLink;
  Exe, Lnk: string;
  NeedUninit: Boolean;
begin
  Result:= False;
  Lnk:= StartupShortcutFile;
  if Lnk = '' then Exit;
  Exe:= ParamStr(0);
  NeedUninit:= Succeeded(CoInitialize(nil));
  try
    try
      Obj:= CreateComObject(CLSID_ShellLink);
      SL:= Obj as IShellLink;
      SL.SetPath(PChar(Exe));
      SL.SetWorkingDirectory(PChar(ExtractFilePath(Exe)));
      SL.SetDescription('Painel - Relógio, calendário e monitor do sistema');
      SL.SetIconLocation(PChar(Exe), 0);
      SL.SetShowCmd(SW_SHOWNORMAL);
      Result:= Succeeded((Obj as IPersistFile).Save(PWideChar(Lnk), True));
    except
      Result:= False;
    end;
    SL:= nil;
    Obj:= nil;
  finally
    if NeedUninit then CoUninitialize;
  end;
  { Evita que o programa seja iniciado duas vezes (atalho + registro antigo) }
  if Result then RemoveLegacyRunEntries;
end;

{-------------------------Function---DisableStartup--------------------------}
function DisableStartup: Boolean;
var Lnk: string;
begin
  Lnk:= StartupShortcutFile;
  Result:= (Lnk = '') or not FileExists(Lnk) or DeleteFile(Lnk);
  RemoveLegacyRunEntries;
end;

{-------------------------Procedure---RemoveLegacyRunEntries-----------------}
{ Remove, se existir, o valor gravado no registro pelas versões anteriores.
  Em HKEY_LOCAL_MACHINE só funciona como administrador; sem privilégios a
  falha é ignorada silenciosamente (o valor nunca chegou a ser gravado). }
procedure RemoveLegacyRunEntries;

  procedure Remove(Root: HKEY);
  var Reg: TRegistry;
  begin
    Reg:= TRegistry.Create(KEY_QUERY_VALUE or KEY_SET_VALUE);
    try
      try
        Reg.RootKey:= Root;
        if Reg.OpenKey(RunKey, False) then
        begin
          if Reg.ValueExists(RunValue) then Reg.DeleteValue(RunValue);
          Reg.CloseKey;
        end;
      except
        { sem permissão: ignora }
      end;
    finally
      Reg.Free;
    end;
  end;

begin
  Remove(HKEY_CURRENT_USER);
  Remove(HKEY_LOCAL_MACHINE);
end;

end.
