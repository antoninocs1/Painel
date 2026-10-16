# Painel

Programa **Painel** para Windows, escrito em Delphi.

- Monitor da ocupação de memória e CPU
- Informações do sistema
- Limpeza de arquivos temporários (Windows, navegadores, lixeira, etc.)
- Calendário, relógio, alarmes e lembretes
- Agenda de endereços e telefones
- Processos em execução (memória, caminho, finalizar processo)
- Gráfico do uso de CPU e memória dos últimos 5 minutos
- Temperatura e saúde SMART dos discos (melhoria planejada; depende do
  suporte do dispositivo e do driver do Windows)
- Aviso na bandeja quando CPU ou memória ficam altas por mais de 1 minuto
- Bloquear o computador e desligar o monitor pelo menu do ícone
- Temperatura da CPU (zona térmica ACPI do Windows, ou LibreHardwareMonitor /
  OpenHardwareMonitor se estiverem em execução), com aviso acima de 90 °C
- Verificação de nova versão no GitHub (menu do ícone e automática, 1 vez por dia)
- Calendário com feriados nacionais, estaduais (Bahia) e municipais (Salvador),
  datas pessoais (arquivo `Datas.txt` na pasta do Painel) e aniversários dos
  contatos, com aviso na bandeja no dia
- Abrir o PowerShell pelo menu
- Atalho global Win+Alt+P para mostrar/ocultar o Painel (configurável em
  `[Atalho] MostrarOcultar` no `Painel.ini`)
- Histórico dos últimos 20 textos copiados (menu "Área de transferência"),
  só na memória; ignora o que gerenciadores de senha marcam como privado

## Download

Baixe o executável na página de [Releases](https://github.com/antoninocs1/Painel/releases/latest).
O programa não precisa de instalação: basta executar `PAINEL.exe` (Windows 64 bits).

## Compilação

Abra `PAINEL.dproj` no RAD Studio / Delphi e compile para a plataforma Win64.

## Autor

Antonino — Salvador-BA
