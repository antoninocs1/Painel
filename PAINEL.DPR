program Painel;

uses
  Forms,
  Windows,
  SysUtils,
  RunFirst in 'RunFirst.pas',
  UAnim in 'UAnim.pas',
  UStartup in 'UStartup.pas',
  UFerramentas in 'UFerramentas.pas',
  UDatas in 'UDatas.pas',
  UMain in 'UMain.pas' {MainForm},
  UWarn in 'UWarn.pas' {WrnForm},
  USelDate in 'USELDATE.PAS' {BrDateForm},
  USenha in 'USENHA.PAS' {PasswordDlg},
  UConfig in 'UCONFIG.PAS' {ConfigForm},
  UAlarm in 'UAlarm.pas' {AlarmForm},
  UAddr in 'UAddr.pas' {AddrForm};

{$R *.RES}

var Hwnd: THandle;
  I: Integer;

begin
  { Reiniciado como administrador (TMainForm.ReiniciaComoAdmin): aguarda
    até 10 s o fim da instância anterior, que ainda grava a configuração }
  if FindCmdLineSwitch('elevado') then
    for I:= 1 to 100 do
    begin
      if FindWindow('TApplication', '«Painel»')=0 then Break;
      Sleep(100);
    end;
  Hwnd := FindWindow ('TApplication', '«Painel»');
  if Hwnd=0 then
  begin
    {Application.ShowMainForm := False;
    IsLibrary := False;}
    Application.MainFormOnTaskbar := False; { o botão da barra de tarefas fica na janela oculta do Application (ver UMain.FormCreate) }
    Application.Title := '«Painel»';
    Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TWrnForm, WrnForm);
  Application.CreateForm(TBrDateForm, BrDateForm);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TConfigForm, ConfigForm);
  Application.CreateForm(TAddrForm, AddrForm);
  Application.Run;
  end else SetForegroundWindow (Hwnd);
end.


