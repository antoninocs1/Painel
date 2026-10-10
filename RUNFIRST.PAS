unit RunFirst;

interface

implementation

initialization
  { IsLibrary := True;
    Truque do Delphi 7 para nao criar a janela do TApplication. No Delphi 13
    isso tambem impede o OleInitialize, e os dialogos de abrir/salvar do
    Windows deixam de funcionar. O botao da barra de tarefas ja e ocultado
    em TMainForm.FormCreate. }
end.
 