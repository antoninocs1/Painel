object ConfigForm: TConfigForm
  Left = 167
  Top = 90
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Painel - Configura'#231#227'o'
  ClientHeight = 490
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000001080000000000000000000000
    0000007F800000000000000000000000000008F7800000000000000000000000
    00007F7783000008880000000000000000007F88830000087008880000000000
    0008778888888888F7877788000000000008F78800000087FF7F777800000800
    0008F80000000000877F7770000008800008F800000000000087F78000000888
    000780000000000000007F8200000878000000000000000000008F80000008F7
    860000000000000000000780000008F78800000000000000000008880000007F
    78000000000000000000000000000007F8000000000000000000006000000007
    F800000000000000000000880000000778000000000000000000007000000007
    860000000000000000000077800000778800000000000000000008F7880008F7
    8800000000000000000007F7880008F77780000000000000000007F7700008FF
    F788000000000000000087F7F80000000F78800000000000000087FFFF800000
    0880880000000000000308888800000000000880000000000088000000000000
    000000080000000088870000000000000000007888880008FF77800000000000
    000000777800080008FF8000000000000000000880800000008F800000000000
    000000073000000000087000000000000000000700000000000000000000FFF3
    FFFFFFC3FFFFFF87FFFFFF03F7FFFF00C1F7FF000007FE000007FE0000079E00
    00079E00000F8400000F8000000F8000000F8000000FC000001FC000001FC000
    000FC0000007C0000007C0000003800000038000000180000001F0000001F800
    0003FF80007FFFC0007FFFC0007FFFC0107FFFE1FC7FFFC3FE7FFFEFFFFF}
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    Left = 39
    Top = 41
    Width = 315
    Height = 449
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 4
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 6
      Top = 6
      Width = 303
      Height = 437
      HorzScrollBar.Margin = 6
      VertScrollBar.Margin = 6
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 303
        Height = 437
        ActivePage = TabSheet1
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = MainForm.ImageList1
        ParentFont = False
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          ImageIndex = 25
          object LabelX2: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = ' Configura'#231#227'o Geral'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = -4
            ExplicitTop = -4
          end
          object GroupBox1: TGroupBox
            Left = 4
            Top = 24
            Width = 282
            Height = 347
            Caption = 'Dados de Configura'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object Label1: TLabel
              Left = 10
              Top = 16
              Width = 20
              Height = 11
              Caption = 'Data'
              FocusControl = Edit1
            end
            object Label2: TLabel
              Left = 10
              Top = 38
              Width = 20
              Height = 11
              Caption = 'Hora'
              FocusControl = Edit2
            end
            object CalendarBtn1: TSpeedButton
              Left = 104
              Top = 12
              Width = 24
              Height = 24
              Hint = 'Browse calendar'
              Glyph.Data = {
                4E010000424D4E01000000000000760000002800000012000000120000000100
                040000000000D800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333330000003333333333333333330000003338888888888888330000003304
                0404404040483300000033FFFFFFFFFFFF483300000033FFFFFFFFFFFF483300
                000033FF000F0007FF483300000033FFF0FF7F70FF483300000033FFF0FFFFF0
                FF483300000033FFF0FF0007FF483300000033FF00FF0FFFFF483300000033FF
                F0FF0000FF483300000033FFFFFFFFFFFF483300000033FFFFFFFFFFFF483300
                000033F7777777777F4833000000330000000000003333000000333333333333
                333333000000333333333333333333000000}
              Layout = blGlyphRight
              ParentShowHint = False
              ShowHint = True
              OnClick = CalendarBtn1Click
            end
            object Label3: TLabel
              Left = 10
              Top = 59
              Width = 87
              Height = 11
              Caption = 'Contador de Acessos'
              FocusControl = Edit3
            end
            object Label4: TLabel
              Left = 10
              Top = 112
              Width = 136
              Height = 11
              Caption = 'Senha de Acesso a Configura'#231#227'o'
              FocusControl = Edit4
            end
            object SpeedButton1: TSpeedButton
              Left = 130
              Top = 12
              Width = 24
              Height = 24
              Hint = 'Now'
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000E0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FCCCFFFFFFFF
                FF00CCCCCFFFFFFFFF00CCCCCCFFFFFFFF00CCCCCCCFFFFFFF00CCCCCCCCFFFF
                FF00CCCCFCCCCFFFFF00CCCCFFCCCCFFFF00CCCFFFFCCCCFFF00FCCFFFFFCCCC
                FF00FFFFFFFFFCCCCF00FFFFFFFFFFCCCC00FFFFFFFFFFFCCC00FFFFFFFFFFFF
                CC00}
              Layout = blGlyphRight
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label5: TLabel
              Left = 10
              Top = 146
              Width = 88
              Height = 11
              Caption = 'Diret'#243'rio do Windows'
              FocusControl = Edit5
            end
            object Label6: TLabel
              Left = 10
              Top = 180
              Width = 92
              Height = 11
              Caption = 'Diret'#243'rio do Aplicativo'
              FocusControl = Edit6
            end
            object Label7: TLabel
              Left = 10
              Top = 214
              Width = 155
              Height = 11
              Caption = 'Arquivo(s) de Dados de Configura'#231#227'o'
              FocusControl = Edit7
            end
            object Label8: TLabel
              Left = 12
              Top = 248
              Width = 61
              Height = 11
              Caption = 'Arquivo Ajuda'
              FocusControl = Edit8
            end
            object SpeedButton2: TSpeedButton
              Left = 174
              Top = 260
              Width = 22
              Height = 21
              Hint = 'select and confirm help file name'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555555555555555555555555555555555555555555555555550000000000
                5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
                000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
                5555557000075555555555555555555555555555555555555555}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object Edit1: TMaskEdit
              Left = 34
              Top = 14
              Width = 67
              Height = 19
              Color = clSilver
              EditMask = '!99/99/0000;1;_'
              MaxLength = 10
              TabOrder = 0
              Text = '  /  /    '
            end
            object Edit2: TMaskEdit
              Left = 34
              Top = 36
              Width = 35
              Height = 19
              Color = clSilver
              EditMask = '!90:00;1;_'
              MaxLength = 5
              TabOrder = 1
              Text = '  :  '
            end
            object Edit3: TEdit
              Left = 10
              Top = 70
              Width = 146
              Height = 19
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 2
            end
            object Edit4: TEdit
              Left = 10
              Top = 124
              Width = 146
              Height = 19
              PasswordChar = '#'
              TabOrder = 3
            end
            object Edit5: TEdit
              Left = 10
              Top = 158
              Width = 146
              Height = 19
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 4
            end
            object Edit6: TEdit
              Left = 10
              Top = 192
              Width = 146
              Height = 19
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 5
            end
            object Edit7: TEdit
              Left = 10
              Top = 226
              Width = 146
              Height = 19
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 6
            end
            object CheckBox1: TCheckBox
              Left = 10
              Top = 92
              Width = 206
              Height = 17
              Caption = 'Ativar Senha para Acesso a Configura'#231#227'o'
              TabOrder = 7
              OnClick = CheckBox1Click
            end
            object Edit8: TEdit
              Left = 10
              Top = 262
              Width = 160
              Height = 19
              TabOrder = 8
            end
          end
        end
        object TabSheet2: TTabSheet
          ImageIndex = 26
          object LabelX1: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = ' Prefer'#234'ncias'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object GroupBox5: TGroupBox
            Left = 4
            Top = 26
            Width = 282
            Height = 377
            Caption = 'Dados de Configura'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object Label10: TLabel
              Left = 6
              Top = 44
              Width = 79
              Height = 11
              Caption = 'Mensagem Circular'
            end
            object Label13: TLabel
              Left = 6
              Top = 66
              Width = 76
              Height = 11
              Caption = 'Arq. WAV (Inicial)'
              FocusControl = Edit10
            end
            object Label16: TLabel
              Left = 6
              Top = 20
              Width = 29
              Height = 11
              Caption = 'Idioma'
              FocusControl = ComboBox1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 2
              Top = 309
              Width = 278
              Height = 11
              Align = alBottom
              Caption = '   Definindo a Transpar'#234'ncia'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 116
            end
            object SpeedButton5: TSpeedButton
              Left = 224
              Top = 62
              Width = 22
              Height = 21
              Hint = 'Selecionar arquivo'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555555555555555555555555555555555555555555555555550000000000
                5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
                000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
                5555557000075555555555555555555555555555555555555555}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton5Click
            end
            object SpeedButton10: TSpeedButton
              Left = 248
              Top = 62
              Width = 22
              Height = 21
              Hint = 'Tocar som'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333000333393333333000803393333333070787333339333077088803
                3393333077088803393330077700880393330708880808733333070777080873
                9999080888080873333330088800880393333330880788033933333088077803
                3393333308777733333933333080703393333333330003333933}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton10Click
            end
            object SpeedButton15: TSpeedButton
              Left = 224
              Top = 218
              Width = 23
              Height = 22
              Hint = 'Definir Cor'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDD00000DDDDDDDDDD00000000DDDDDDD0BFBFB0000DDDDDD0808BFBF
                00DDDDDDD0E0808BF00DDDD00808090FB00DDD000BFB808BF00DD0BFBFBFB808
                B00DD0F808FBF020F00DD0B0A0808808B0DDD0F8080C0BFB0DDDDD0FBF808FB0
                DDDDDDD0FBFBF00DDDDDDDDD00000DDDDDDDDDDDDDDDDDDDDDDD}
              OnClick = SpeedButton15Click
            end
            object Shape1: TShape
              Left = 250
              Top = 220
              Width = 18
              Height = 18
            end
            object Label24: TLabel
              Left = 8
              Top = 208
              Width = 54
              Height = 11
              Caption = 'Definir Cores'
              FocusControl = ComboBox3
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 8
              Top = 242
              Width = 58
              Height = 11
              Caption = 'Definir Fontes'
              FocusControl = ComboBox4
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton16: TSpeedButton
              Left = 224
              Top = 252
              Width = 23
              Height = 22
              Hint = 'Definir Fonte'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000FF00FFFF00FF000000
                00FFFF00FFFF00000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF000000FF00FFFF00FF00000000FFFF00FFFF00FFFF00000000FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FF000000
                00FFFF00FFFF00FFFF00000000FFFF00FFFF00000000000000000000FFFF00FF
                FF00FFFF000000FF00FFFF00FF00000000FFFF00FFFF00000000000000000000
                FFFF00FFFF00000000FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FF000000
                00FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF00000000FFFF00000000FF
                FF00FFFF000000FF00FFFF00FF00000000FFFF00000000FFFF00000000000000
                FFFF00FFFF00000000000000000000FFFF00FFFF000000FF00FFFF00FF000000
                00FFFF00000000FFFF00FFFF00000000000000FFFF00000000FFFF00000000FF
                FF00FFFF000000FF00FFFF00FF00000000FFFF00000000000000FFFF00FFFF00
                FFFF00FFFF00000000FFFF00FFFF00000000FFFF000000FF00FFFF00FF000000
                00FFFF00000000FFFF00FFFF00FFFF00FFFF0000000000000000000000000000
                0000FFFF000000FF00FFFF00FF00000000FFFF00000000000000FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FF000000
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF000000FF00FFFF00FF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000FF00FFFF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              OnClick = SpeedButton16Click
            end
            object Edit9: TEdit
              Left = 88
              Top = 40
              Width = 132
              Height = 19
              TabOrder = 0
            end
            object Edit10: TEdit
              Left = 88
              Top = 62
              Width = 132
              Height = 19
              TabOrder = 1
            end
            object ComboBox1: TComboBox
              Left = 88
              Top = 15
              Width = 132
              Height = 22
              Style = csOwnerDrawFixed
              Color = clSilver
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Items.Strings = (
                'Portugu'#234's'
                'Ingl'#234's')
            end
            object CheckListBox2: TCheckListBox
              Left = 6
              Top = 92
              Width = 265
              Height = 113
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 17
              Items.Strings = (
                'Formul'#225'rio sempre vis'#237'vel'
                'Ativar movimento da Janela'
                'Barra de Ferramenta'
                'Barra de Status'
                'Exibir Formul'#225'rio ao Iniciar Programa'
                'Tocar WAV ao Iniciar'
                'Formul'#225'rio Transparente'
                'Iniciar com o Windows')
              ParentFont = False
              TabOrder = 3
              OnClick = CheckListBox2Click
            end
            object TrackBar1: TTrackBar
              Left = 2
              Top = 320
              Width = 278
              Height = 55
              Align = alBottom
              Max = 25
              Position = 25
              TabOrder = 4
              OnChange = TrackBar1Change
            end
            object ComboBox3: TComboBox
              Left = 6
              Top = 220
              Width = 217
              Height = 19
              TabOrder = 5
              OnChange = ComboBox3Change
              Items.Strings = (
                'Cor da Borda do Painel Principal'
                'Cor do Painel de Hor'#225'rio'
                'Cor da Fonte do Campo de Hor'#225'rio'
                'Cor da Sombra da Fonte do Campo de Hor'#225'rio'
                'Cor do Painel de Data'
                'Cor da Fonte do Campo de Data'
                'Cor da Sombra da Fonte da do Campo Data'
                'Cor das P'#225'ginas de Op'#231#245'es'
                'Cor do Rel'#243'gio'
                'Cor dos Ponteiros do Rel'#243'gio'
                'Cor do Calend'#225'rio')
            end
            object ComboBox4: TComboBox
              Left = 6
              Top = 254
              Width = 217
              Height = 19
              TabOrder = 6
              OnChange = ComboBox3Change
              Items.Strings = (
                'Fonte do Campo de Hor'#225'rio'
                'Fonte do Campo de Data')
            end
          end
        end
        object TabSheet3: TTabSheet
          ImageIndex = 27
          object LabelX3: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = ' Imagem && Slide Show'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Panel5: TPanel
            Left = 2
            Top = 30
            Width = 284
            Height = 367
            BevelInner = bvLowered
            TabOrder = 0
            object Panel3: TPanel
              Left = 2
              Top = 145
              Width = 280
              Height = 220
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Splitter1: TSplitter
                Left = 143
                Top = 2
                Height = 216
              end
              object Panel16: TPanel
                Left = 2
                Top = 2
                Width = 141
                Height = 216
                Align = alLeft
                BevelInner = bvLowered
                TabOrder = 0
                object Panel18: TPanel
                  Left = 2
                  Top = 2
                  Width = 137
                  Height = 28
                  Align = alTop
                  TabOrder = 0
                  object SpeedButton9: TSpeedButton
                    Left = 0
                    Top = 12
                    Width = 23
                    Height = 15
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                      00000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
                      FF00BDBDBD0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                      0000FFFFFF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
                      BD0000FFFF00BDBDBD0000FFFF0000000000FF00FF00FF00FF00FF00FF000000
                      000000FFFF00FFFFFF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
                      FF00BDBDBD0000FFFF00BDBDBD0000FFFF0000000000FF00FF00FF00FF000000
                      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
                      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
                      FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
                      FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
                      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF007B7B7B00000000000000000000000000000000007B7B7B00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                    ParentFont = False
                    OnClick = SpeedButton9Click
                  end
                  object LDir: TLabel
                    Left = 1
                    Top = 1
                    Width = 135
                    Height = 11
                    Align = alTop
                    Caption = 'C:\...\Studio\37.0\bin64'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ExplicitWidth = 97
                  end
                  object SpeedButton8: TSpeedButton
                    Left = 24
                    Top = 12
                    Width = 23
                    Height = 15
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      BE000000424DBE00000000000000760000002800000009000000090000000100
                      0400000000004800000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF84448FF000
                      0000F4444444F00000008C44444480000000CCCC444440000000CCCCCC444000
                      0000CCECCCC4400000008CEECCC480000000FCCCCCC4F0000000FF8CCC8FF000
                      0000}
                    ParentFont = False
                    OnClick = SpeedButton8Click
                  end
                  object SpeedButton13: TSpeedButton
                    Left = 48
                    Top = 12
                    Width = 23
                    Height = 15
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Glyph.Data = {
                      BE000000424DBE00000000000000760000002800000009000000090000000100
                      0400000000004800000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF81118FF000
                      0000F1111111F000000089111111800000009999111110000000999999111000
                      000099B999911000000089BB999180000000F9999991F0000000FF89998FF000
                      0000}
                    ParentFont = False
                    OnClick = SpeedButton13Click
                  end
                end
                object Panel20: TPanel
                  Left = 2
                  Top = 194
                  Width = 137
                  Height = 20
                  Align = alBottom
                  TabOrder = 1
                  object DriveComboBox1: TDriveComboBox
                    Left = 2
                    Top = 1
                    Width = 133
                    Height = 17
                    DirList = DirectoryListBox1
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object DirectoryListBox1: TDirectoryListBox
                  Left = 2
                  Top = 30
                  Width = 137
                  Height = 164
                  Align = alClient
                  DirLabel = LDir
                  FileList = FileListBox1
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnChange = DirectoryListBox1Change
                end
              end
              object Panel15: TPanel
                Left = 146
                Top = 2
                Width = 132
                Height = 216
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 1
                object Panel17: TPanel
                  Left = 2
                  Top = 2
                  Width = 128
                  Height = 23
                  Align = alTop
                  TabOrder = 0
                  object EditFileName: TEdit
                    Left = 1
                    Top = 2
                    Width = 124
                    Height = 19
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    Text = '*.bmp;*.jpg;*.jpeg;*.ico;*.emf;*.wmf'
                  end
                end
                object Panel19: TPanel
                  Left = 2
                  Top = 155
                  Width = 128
                  Height = 59
                  Align = alBottom
                  TabOrder = 1
                  object FilterComboBox1: TFilterComboBox
                    Left = 1
                    Top = 1
                    Width = 126
                    Height = 19
                    FileList = FileListBox1
                    Filter = 
                      'Arquivos Diversos|*.bmp;*.jpg;*.jpeg;*.ico;*.emf;*.wmf|Todos Arq' +
                      'uivos (All files (*.*))|*.*|Arquivos BitMap|*.bmp|Arquivos Jpeg|' +
                      '*.jpg;*.jpeg|Arquivos '#205'cones|*.ico|Enhanced Metafiles|*.emf|Meta' +
                      'files|*.wmf'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    OnChange = FilterComboBox1Change
                  end
                  object CheckListBox1: TCheckListBox
                    Left = 1
                    Top = 21
                    Width = 126
                    Height = 37
                    Align = alBottom
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ItemHeight = 17
                    Items.Strings = (
                      'Stretch'
                      'Center'
                      'Adjust')
                    ParentFont = False
                    TabOrder = 1
                  end
                end
                object FileListBox1: TFileListBox
                  Left = 2
                  Top = 25
                  Width = 128
                  Height = 130
                  Align = alClient
                  FileEdit = EditFileName
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 11
                  Mask = '*.bmp;*.jpg;*.jpeg;*.ico;*.emf;*.wmf'
                  ParentFont = False
                  TabOrder = 2
                  OnClick = FileListBox1Click
                end
              end
            end
            object Panel6: TPanel
              Left = 2
              Top = 2
              Width = 280
              Height = 143
              Align = alTop
              TabOrder = 1
              object GroupBox2: TGroupBox
                Left = 4
                Top = 6
                Width = 161
                Height = 131
                Caption = 'Jpeg Options'
                TabOrder = 0
                object Scale: TComboBox
                  Left = 6
                  Top = 17
                  Width = 36
                  Height = 19
                  Hint = 'Scale'
                  Style = csDropDownList
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  Items.Strings = (
                    '1:1'
                    '1:2'
                    '1:4'
                    '1:8')
                end
                object PixelFormat: TComboBox
                  Left = 6
                  Top = 37
                  Width = 49
                  Height = 19
                  Hint = 'Pixel Format'
                  Style = csDropDownList
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Items.Strings = (
                    '24 bit'
                    '8 bit')
                end
                object ColorSpace: TComboBox
                  Left = 6
                  Top = 57
                  Width = 62
                  Height = 19
                  Hint = 'Color space'
                  Style = csDropDownList
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  Items.Strings = (
                    'RGB'
                    'Grayscale')
                end
                object Performance: TComboBox
                  Left = 6
                  Top = 77
                  Width = 75
                  Height = 19
                  Hint = 'Performance'
                  Style = csDropDownList
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  Items.Strings = (
                    'Quality'
                    'Speed')
                end
                object ProgressiveDisplay: TCheckBox
                  Left = 6
                  Top = 97
                  Width = 120
                  Height = 14
                  Caption = 'Progressive JPEG'
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object IncrementalDisplay: TCheckBox
                  Left = 6
                  Top = 111
                  Width = 120
                  Height = 14
                  Caption = 'Incremental Display'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
              end
              object GroupBox4: TGroupBox
                Left = 168
                Top = 70
                Width = 105
                Height = 67
                Caption = 'Slide'
                TabOrder = 1
                object Label12: TLabel
                  Left = 4
                  Top = 14
                  Width = 34
                  Height = 11
                  Caption = 'Dura'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object SpeedButton4: TSpeedButton
                  Left = 8
                  Top = 32
                  Width = 87
                  Height = 27
                  Caption = 'Slide Show'
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000EBBD9CEBBD9C
                    EBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD9CEBBD
                    9CEBBD9CEBBD9CEBBD9CEEC2A2A0685080483080482080482090584080402080
                    4020803820803810803810803010703010703010703010EEC2A2F0C7A9A07050
                    F0E0D0D0B8A0C09880C09080B08870A080709070609068608060506050405038
                    30503830703010F0C7A9F2CCB0A07860F0F0F0F0D8D0E0C0B0D0A890D0A090C0
                    9880B08870A08070806050504030705850605040703010F2CCB0F5D1B6A07860
                    FFF8FFFFF0F0F0E0D0E0B8A0D0A890D0A090C0A090A080705040309080709078
                    70000000803010F5D1B6F7D6BDB08070A08070F0F0F0FFF0F0F0E0D0E0B0A0E0
                    B8B0D0A890705850C0A8A0B0A090000000B09080803810F7D6BDF9DBC4B08870
                    F0E0E0A08070F0E8E0F0E8E0F0D0D0D0B8B0706850D0C0B0D0C0B0000000F0B8
                    A0B09880803810F9DBC4FCE1CAC09080FFFFFFF0E0E0A08070F0E8E0E0D0D080
                    7060D0B0A0705850605040E0B0A0FFC0A0C09890803820FCE1CAFCE1CBC09880
                    FFFFFFFFFFFFF0E0E0A08070A08070F0D8D0FFE0D0FFD8C0FFD0C0FFC8B0FFC8
                    B0C0A090804020FCE1CBFCE2CCC0A090FFFFFFFFFFFFFFFFFFFFF8F0FFF0F0FF
                    F0E0D0C8D02050D02050C0D0B0B0FFC8B0D0A890804020FCE2CCFCE3CEC0A890
                    FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFF0F03060C070C0FF4090D02050C0FFD0
                    C0D0B0A0804020FCE3CEFCE4D0D0A890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    F8F03060D0C0E8FF70C0FF2050D0FFD8C0E0B0A0804820FCE4D0FCE5D1D0A890
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D8F03060D03060D0D0C8D0FFE0
                    D0E0B8A0804820FCE5D1FDE6D3D0A890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFF8F0FFF0F0FFF0E0FFE8E0FFE0D0804830FDE6D3FDE7D5D0A890
                    D0A890D0A890D0A890C0A890C0A090C09880C09080B08870B08070A07860A078
                    60A07050A06850FDE7D5FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FD
                    E8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7FDE8D7}
                  OnClick = SpeedButton4Click
                end
                object SpinEdit1: TSpinEdit
                  Left = 44
                  Top = 10
                  Width = 51
                  Height = 19
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 0
                  Value = 0
                end
              end
              object CheckBox4: TCheckBox
                Left = 170
                Top = 52
                Width = 103
                Height = 17
                Caption = 'Habilitar Slide Show'
                TabOrder = 2
                OnClick = CheckBox4Click
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          ImageIndex = 33
          object LabelX4: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = ' Alarme && Agendamento'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object GroupBox3: TGroupBox
            Left = 4
            Top = 24
            Width = 282
            Height = 167
            Caption = 'Op'#231#245'es - Agendamento e Alarme Espec'#237'fico'
            TabOrder = 0
            object Label9: TLabel
              Left = 8
              Top = 54
              Width = 20
              Height = 11
              Caption = 'Data'
              FocusControl = MaskEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton3: TSpeedButton
              Left = 164
              Top = 48
              Width = 22
              Height = 24
              Hint = 'Browse calendar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                4E010000424D4E01000000000000760000002800000012000000120000000100
                040000000000D800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333330000003333333333333333330000003338888888888888330000003304
                0404404040483300000033FFFFFFFFFFFF483300000033FFFFFFFFFFFF483300
                000033FF000F0007FF483300000033FFF0FF7F70FF483300000033FFF0FFFFF0
                FF483300000033FFF0FF0007FF483300000033FF00FF0FFFFF483300000033FF
                F0FF0000FF483300000033FFFFFFFFFFFF483300000033FFFFFFFFFFFF483300
                000033F7777777777F4833000000330000000000003333000000333333333333
                333333000000333333333333333333000000}
              Layout = blGlyphRight
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton3Click
            end
            object SpeedButton17: TSpeedButton
              Left = 189
              Top = 48
              Width = 22
              Height = 24
              Hint = 'Now'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000E0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FCCCFFFFFFFF
                FF00CCCCCFFFFFFFFF00CCCCCCFFFFFFFF00CCCCCCCFFFFFFF00CCCCCCCCFFFF
                FF00CCCCFCCCCFFFFF00CCCCFFCCCCFFFF00CCCFFFFCCCCFFF00FCCFFFFFCCCC
                FF00FFFFFFFFFCCCCF00FFFFFFFFFFCCCC00FFFFFFFFFFFCCC00FFFFFFFFFFFF
                CC00}
              Layout = blGlyphRight
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton17Click
            end
            object Label11: TLabel
              Left = 8
              Top = 76
              Width = 20
              Height = 11
              Caption = 'Hora'
              FocusControl = MaskEdit2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 8
              Top = 100
              Width = 21
              Height = 11
              Caption = 'A'#231#227'o'
              FocusControl = ComboBox2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 144
              Width = 82
              Height = 11
              Caption = 'Arq. WAV (Alarme)'
              FocusControl = Edit17
            end
            object SpeedButton7: TSpeedButton
              Left = 224
              Top = 140
              Width = 22
              Height = 21
              Hint = 'Selecionar Arquivo'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555555555555555555555555555555555555555555555555550000000000
                5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
                000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
                5555557000075555555555555555555555555555555555555555}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton7Click
            end
            object Label21: TLabel
              Left = 8
              Top = 122
              Width = 84
              Height = 11
              Caption = 'Mensagem (Alarme)'
              FocusControl = Edit18
            end
            object SpeedButton11: TSpeedButton
              Left = 248
              Top = 140
              Width = 22
              Height = 21
              Hint = 'Tocar som'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333000333393333333000803393333333070787333339333077088803
                3393333077088803393330077700880393330708880808733333070777080873
                9999080888080873333330088800880393333330880788033933333088077803
                3393333308777733333933333080703393333333330003333933}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton11Click
            end
            object CheckBox2: TCheckBox
              Left = 6
              Top = 16
              Width = 141
              Height = 17
              Caption = 'Ativar Alarme/Agendamento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = CheckBox2Click
            end
            object CheckBox3: TCheckBox
              Left = 6
              Top = 32
              Width = 75
              Height = 17
              Caption = 'Todo Dia'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = CheckBox3Click
            end
            object MaskEdit1: TMaskEdit
              Left = 94
              Top = 50
              Width = 65
              Height = 19
              EditMask = '!99/99/0000;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 2
              Text = '  /  /    '
            end
            object MaskEdit2: TMaskEdit
              Left = 94
              Top = 72
              Width = 35
              Height = 19
              EditMask = '!90:00;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              TabOrder = 3
              Text = '  :  '
            end
            object ComboBox2: TComboBox
              Left = 94
              Top = 94
              Width = 127
              Height = 22
              Style = csOwnerDrawFixed
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Items.Strings = (
                'Ativar Despertador'
                'Executar Lista'
                'Desligar Windows')
            end
            object Edit17: TEdit
              Left = 94
              Top = 140
              Width = 127
              Height = 19
              TabOrder = 5
            end
            object Edit18: TEdit
              Left = 94
              Top = 118
              Width = 127
              Height = 19
              TabOrder = 6
            end
          end
          object GroupBox6: TGroupBox
            Left = 4
            Top = 194
            Width = 282
            Height = 209
            Caption = 'Alame/Aviso Peri'#243'dico'
            TabOrder = 1
            object SpeedButton6: TSpeedButton
              Left = 222
              Top = 94
              Width = 22
              Height = 21
              Hint = 'Selecionar arquivo'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555555555555555555555555555555555555555555555555550000000000
                5555500B8B8B8B8B055550F0B8B8B8B8B05550BF0B8B8B8B8B0550FBF0000000
                000550BFBFBFBFB0555550FBFBFBFBF0555550BFBFBF00055555550BFBF05555
                5555557000075555555555555555555555555555555555555555}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton6Click
            end
            object Label19: TLabel
              Left = 6
              Top = 100
              Width = 76
              Height = 11
              Caption = 'Arq. WAV (Aviso)'
              FocusControl = Edit13
            end
            object Label18: TLabel
              Left = 6
              Top = 62
              Width = 79
              Height = 11
              Caption = 'Sub-t'#237'tulo do Aviso'
              FocusControl = Edit12
            end
            object Label17: TLabel
              Left = 6
              Top = 40
              Width = 63
              Height = 11
              Caption = 'T'#237'tulo do Aviso'
              FocusControl = Edit11
            end
            object Label22: TLabel
              Left = 6
              Top = 124
              Width = 38
              Height = 11
              Caption = 'Intervalo'
              FocusControl = SpinEdit2
            end
            object Label23: TLabel
              Left = 6
              Top = 144
              Width = 62
              Height = 11
              Caption = #218'ltima vez OK'
              FocusControl = Edit14
            end
            object SpeedButton14: TSpeedButton
              Left = 230
              Top = 164
              Width = 34
              Height = 33
              Hint = 'Alarme Per'#237'odico'
              Glyph.Data = {
                EE070000424DEE070000000000003600000028000000190000001A0000000100
                180000000000B807000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFDFFF9FCF8E6F5EDD6E0D9C5C5C4BAB9BDB8BFC2C0D1CDCCE6D7D4F0DE
                DDF6E8ECFFFDFEFCFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFF0FDFBBEC3A474724279713C7A753E7075426A74
                49747C5E82846E837A66746A527C755AACAB91DFDFD1FBFFF8F3FFF6EEFFF4FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFF3FBFFBDC5BB666A2FA5A4
                4EA59D43A9A7489AA6428D9E479AA76FB7BD94BBB892A6A174A0A1617B7E4671
                6F57D0CFCBCBD1D0D0DCD6E2F3E5E3F2E4F1F7F6F6F5FEFFFBFFFFFFFF00FFFF
                FFF6F9FFBEBFAF5D5F05D4D452E4DD58EBEA5CDAEC53C9E15BD9E995F9FFC9FA
                F9C6DCDD99BDC55A878D2E504B2ABBB3B4A9A6AFAAAFB0B0BEACAEBDA8CED3D1
                DBD9DFFBF5FFFFFFFF00FFFFFFF2EFFFC9C4AB787A00B0B006ABA300B2B100A4
                B80096B107A7B851C1C988B7B8809599478E9D0C9CA723736A3FD9C9D0A99DAF
                A7A6AFA5B19DA5B499ABAFA9BAB8BEECE6F1FFFFFF00FFFFFFFFF8FFD7CDABA9
                A810F4F424FFF72BF7F420D6EA07C1DC1AD2E273F8FDBFFBFCCAE9EF96D1E535
                C9D732635520C6AEB6AA97B0BAB3C2A8B19CA2B192A0A59CABAAAEE3DEE7FFFF
                FF00FFFFFFF8EEFECBBE90ABA900FCFB11FDF00CFBF60DE9FD0AE7FF35FDFF9D
                FFFFDBFFFFDDEDF39CDCF130D5E329685718DCC0C6B7A1BAADA1B3979E89B1BD
                9FA8ADA4ADACB0E3DEE7FFFFFF00F6FFFFFFFBFFA79A62D3D017FEFC04FFF704
                FFFC09E6F500ECFF3EFFFFAAFFFFE6FFFFF0F5F7ABE1F22FE2EE2A6A570EFFEE
                EDF9DFF7E2D4E6BEC5B0BFCBAFC8CCC6DDDCE0F7F2FBFFFFFF00F7FFFFFFFFFC
                A0934FE0DE1CFFFE00FFF900FFFC08E8F309F0FD4DFFFFB9FFFFF1FFFFF8F9F7
                B6DFEF2CE1EB2374620FFFEEE3FFF6FFFFF6FFF0F3E3F4FEE7F6FAF5FDFEFFFF
                FDFFFFFFFF00FBFFFFF9FFD3838B19F0FA2BEFF700FAFD00F2F113E2DF47FBFA
                A0FFFFE7FFFCF7FFFFF5FFFFCFFDFB71E1DE40B8B2419C964DFFFFE6FCFDF3FF
                FFFFFFFFFFF8FDFFFAFDFFFFFFFFFFFFFF00FBFFFFE7F0BD8B971FE6F325F2FD
                01FAFF01F1F218E2DF54FFFCAEFFFFE9FDFFF1FFFFEDFFFFD1FFFF84E2DC4DC4
                C14E82822EFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FBE0E8A996A01EE2EF1DF8FF07FBFF04F1F41CE5E258FFFFB5FFFFEAFDFFF3FD
                FFF0FFFFD4FFFF88E2DD4CCBCA5078791DFFFFDAFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFEFE0DA8DB6B426F1F61EFCFF05FAFF00EEF014F8
                F362FFFFB5FFFFE7FFFFFCF6FFFCFFFFDBFFFF84E4E541E0DE5A6C6607FFFFD9
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFF290854BC8C356DC
                E33ACCD70FB3BE00AFB60DBEB94CC7BC82B8AE9DAEA9AAADB4B1B5C09ACFD76C
                BDC042CDCC6A7B7631FFF7D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFF7675E339C9845AAB029B4C11FB0BD1BBFC53EDFDB88F6EDC2EDE3D9
                E0DBDDD7DBD6D5DCBBD7DE89A8AC479A9A4E605C27CFC8ADFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFB72694EB8B479B5BB56C1CC50DCE76D
                E8EE89FFFFC5FFFFEBFFFFFBFFFDFFFFFFFBFFFFE9FFFFCDCDD088ABAC747E7D
                57A9A593FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FBF3F4938B7E
                F9F7D4ECF1ACE7F29CC2CC79BEC680C8C4A1C8C0B3BDB5B6C1BABDC9C7BFC7C9
                B3D5D7ADE5E7B9FFFFE3EBEAD59C9A90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00D1CCD5BEBBC4E4E5E9FDFFFCFAFFF8FDFFFBFDFFFCFDFEFFFFFC
                FFFFFCFFFFFEFFFFFFF9FFFFF9F9F7F7F5F6FAF6F7FBFDFEFF414448FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4A0A6D7D4DDFDFCFFE3E6EA868B
                8C75787C75787C77767F79767F7B777D7D787A7D7A757B7A76959498BCBEC6F7
                F9FFEEF1F63A3B3FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008382
                86A4A2A85958617D7F87CED0D8FBFDFFFBFDFFFDFCFFFFFDFFFFFEFFFFFFFFFF
                FFFCFFFFFED6D6DCADAEB865676F97989C606263D5D7D7FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF006767676F6E70FFFEFFECECF2FDFDFFF7F7FDF7F7FDF9
                F8FCF9F8FAF9F9F9F9F9F9F9F9F9F7F9FAFDFDFFF7F6FFFDFEFFB3B3B33E3F3D
                E9EAE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003D403EF1F2F0E7E7E7FF
                FEFFEEEAEFFFFDFFFFFEFFFFFFFFFFFFFEFDFFFEFDFFFEFBFFFFFDFEFFF8F8FE
                FFFEFFF7F7F7FFFFFE696864CDCCC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF009CA09A91938DFFFFFBFFFFFEFFFEFFFFFBFCFFFCFBFEFEF8FCFEF8FAFEF8
                F8FDFBF7FCFFF8FBFFF7F6FAFFFFFFFFFFFED9D9D378766EECE9E4FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00F5F9F3ABADA76A6A64A4A09FDFDBDAFFFEFD
                FFFFFBFFFFFAFEFFFAFCFFFAFAFFFDF9FEFFFAFDFFEBEAECC2C0BF7C7B778585
                7FFBFBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                F4F5F3C9C7C79B99997E7C7C82807F8687858B8C8A8B8C8A8486867E80817A7C
                7D959595BBBBBBEAEBE9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton14Click
            end
            object SpeedButton12: TSpeedButton
              Left = 246
              Top = 94
              Width = 22
              Height = 21
              Hint = 'Tocar som'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333000333393333333000803393333333070787333339333077088803
                3393333077088803393330077700880393330708880808733333070777080873
                9999080888080873333330088800880393333330880788033933333088077803
                3393333308777733333933333080703393333333330003333933}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton12Click
            end
            object SpeedButton18: TSpeedButton
              Left = 222
              Top = 116
              Width = 22
              Height = 21
              Hint = 'Reiniciar'
              Glyph.Data = {
                BE000000424DBE00000000000000760000002800000009000000090000000100
                0400000000004800000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF84448FF000
                0000F4444444F00000008C44444480000000CCCC444440000000CCCCCC444000
                0000CCECCCC4400000008CEECCC480000000FCCCCCC4F0000000FF8CCC8FF000
                0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton18Click
            end
            object SpeedButton19: TSpeedButton
              Left = 246
              Top = 116
              Width = 22
              Height = 21
              Hint = 'Zerar Contadores'
              Glyph.Data = {
                BE000000424DBE00000000000000760000002800000009000000090000000100
                0400000000004800000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF81118FF000
                0000F1111111F000000089111111800000009999111110000000999999111000
                000099B999911000000089BB999180000000F9999991F0000000FF89998FF000
                0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton19Click
            end
            object Edit11: TEdit
              Left = 88
              Top = 36
              Width = 132
              Height = 19
              TabOrder = 0
            end
            object Edit12: TEdit
              Left = 88
              Top = 58
              Width = 132
              Height = 19
              TabOrder = 1
            end
            object Edit13: TEdit
              Left = 88
              Top = 96
              Width = 132
              Height = 19
              TabOrder = 2
            end
            object Edit14: TEdit
              Left = 88
              Top = 140
              Width = 132
              Height = 19
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clSilver
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object SpinEdit2: TSpinEdit
              Left = 88
              Top = 118
              Width = 45
              Height = 19
              EditorEnabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxValue = 3600
              MinValue = 1
              ParentFont = False
              TabOrder = 4
              Value = 20
              OnChange = SpinEdit2Change
            end
            object CheckBox5: TCheckBox
              Left = 6
              Top = 16
              Width = 137
              Height = 17
              Caption = 'Ativar Aviso Peri'#243'dico'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = CheckBox5Click
            end
            object CheckBox6: TCheckBox
              Left = 6
              Top = 78
              Width = 159
              Height = 17
              Caption = 'Tocar Alarme de Aviso Peri'#243'dico'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = CheckBox6Click
            end
            object GroupBox7: TGroupBox
              Left = 88
              Top = 160
              Width = 133
              Height = 39
              Caption = 'Contadores'
              TabOrder = 7
              object Image1: TImage
                Left = 8
                Top = 14
                Width = 15
                Height = 15
                AutoSize = True
                Picture.Data = {
                  07544269746D617026050000424D260500000000000036040000280000000F00
                  00000F0000000100080000000000F0000000C40E0000C40E0000000100000000
                  000000000000000080000080000000808000800000008000800080800000C0C0
                  C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                  E00000400000004020000040400000406000004080000040A0000040C0000040
                  E00000600000006020000060400000606000006080000060A0000060C0000060
                  E00000800000008020000080400000806000008080000080A0000080C0000080
                  E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                  E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                  E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                  E00040000000400020004000400040006000400080004000A0004000C0004000
                  E00040200000402020004020400040206000402080004020A0004020C0004020
                  E00040400000404020004040400040406000404080004040A0004040C0004040
                  E00040600000406020004060400040606000406080004060A0004060C0004060
                  E00040800000408020004080400040806000408080004080A0004080C0004080
                  E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                  E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                  E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                  E00080000000800020008000400080006000800080008000A0008000C0008000
                  E00080200000802020008020400080206000802080008020A0008020C0008020
                  E00080400000804020008040400080406000804080008040A0008040C0008040
                  E00080600000806020008060400080606000806080008060A0008060C0008060
                  E00080800000808020008080400080806000808080008080A0008080C0008080
                  E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                  E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                  E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                  E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                  E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                  E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                  E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                  E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                  E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                  E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                  A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                  FF00070707070700000000000707070707000707070000E2E2E1D99900000707
                  0700070700EAE2E2000000D99999000707000700EBEAEA00FFFFFF00D9999900
                  07000700EBEB00FFFFFFFFFF00D9990007000009F4EB00000000000000E1D999
                  000000090900EBEBEAEAE2E2E200E1D9000000090909F4EBEBEAEAE2E2E2E2E1
                  0000000909090000EBEBEA0000E2E2E20000000909090000F4EBEB0000E2E2E2
                  000007000909090909F4EBEBEAEAE20007000700090909090909F4EBEBEAEA00
                  0700070700090909090909F4EBEB000707000707070000090909090900000707
                  070007070707070000000000070707070700}
              end
              object Image2: TImage
                Left = 68
                Top = 14
                Width = 15
                Height = 15
                AutoSize = True
                Picture.Data = {
                  07544269746D617026050000424D260500000000000036040000280000000F00
                  00000F0000000100080000000000F0000000C40E0000C40E0000000100000000
                  000000000000000080000080000000808000800000008000800080800000C0C0
                  C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                  E00000400000004020000040400000406000004080000040A0000040C0000040
                  E00000600000006020000060400000606000006080000060A0000060C0000060
                  E00000800000008020000080400000806000008080000080A0000080C0000080
                  E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                  E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                  E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                  E00040000000400020004000400040006000400080004000A0004000C0004000
                  E00040200000402020004020400040206000402080004020A0004020C0004020
                  E00040400000404020004040400040406000404080004040A0004040C0004040
                  E00040600000406020004060400040606000406080004060A0004060C0004060
                  E00040800000408020004080400040806000408080004080A0004080C0004080
                  E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                  E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                  E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                  E00080000000800020008000400080006000800080008000A0008000C0008000
                  E00080200000802020008020400080206000802080008020A0008020C0008020
                  E00080400000804020008040400080406000804080008040A0008040C0008040
                  E00080600000806020008060400080606000806080008060A0008060C0008060
                  E00080800000808020008080400080806000808080008080A0008080C0008080
                  E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                  E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                  E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                  E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                  E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                  E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                  E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                  E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                  E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                  E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                  A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                  FF00070707070700000000000707070707000707070000E2E2E1D99900000707
                  0700070700EAE2EAE2EAE2E2E299000707000700EBEAEAEAEAEAEAE2E2E29900
                  07000700EBEB00EAEAEAEAE200E2E2000700000909F4EB0000000000E2E2E299
                  000000090909EBEBEAEAE2E2E2E2E2D9000000090909F4EBEBEAEAE2E2E2E2E1
                  0000000909090000EBEBEA0000E2E2E20000000909090000F4EBEB0000E2E2E2
                  000007000900090909F4EBEBEA00E20007000700090900090909F4EB00EAEA00
                  070007070009090009090900EBEB000707000707070000090909090900000707
                  070007070707070000000000070707070700}
              end
              object Edit15: TEdit
                Left = 26
                Top = 12
                Width = 36
                Height = 19
                Color = clBtnFace
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Edit16: TEdit
                Left = 86
                Top = 12
                Width = 36
                Height = 19
                Color = clBtnFace
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object WrnPanel: TPanel
              Left = 144
              Top = 118
              Width = 75
              Height = 19
              Caption = '00:00:00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
            end
          end
        end
        object TabSheet5: TTabSheet
          ImageIndex = 32
          object LabelX5: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = 'Cron'#244'metro'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 26
            Width = 221
            Height = 67
            Caption = 'Op'#231#245'es'
            TabOrder = 0
            object Label28: TLabel
              Left = 6
              Top = 20
              Width = 18
              Height = 11
              Caption = 'Tipo'
              FocusControl = ComboBox5
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 6
              Top = 42
              Width = 29
              Height = 11
              Caption = 'Tempo'
            end
            object ComboBox5: TComboBox
              Left = 42
              Top = 16
              Width = 112
              Height = 22
              Style = csOwnerDrawFixed
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = ComboBox5Change
              Items.Strings = (
                'Crescente'
                'Decrescente')
            end
            object MaskEdit3: TMaskEdit
              Left = 42
              Top = 40
              Width = 111
              Height = 19
              EditMask = '!90:00:00;1;_'
              MaxLength = 8
              TabOrder = 1
              Text = '  :  :  '
            end
          end
        end
        object TabSheet6: TTabSheet
          ImageIndex = 13
          object Label26: TLabel
            Left = 0
            Top = 0
            Width = 295
            Height = 22
            Align = alTop
            AutoSize = False
            Caption = 'Status de Mem'#243'ria e CPU'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = -4
            ExplicitTop = 7
          end
          object GroupBox9: TGroupBox
            Left = 3
            Top = 28
            Width = 221
            Height = 109
            Caption = 'Op'#231#245'es de Mem'#243'ria e CPU'
            TabOrder = 0
            object Label27: TLabel
              Left = 6
              Top = 20
              Width = 68
              Height = 11
              Caption = 'Situa'#231#227'o Normal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 6
              Top = 45
              Width = 70
              Height = 11
              Caption = 'Limiar de Alerta1'
            end
            object SpeedButton20: TSpeedButton
              Left = 141
              Top = 14
              Width = 23
              Height = 22
              Hint = 'Definir Cor'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDD00000DDDDDDDDDD00000000DDDDDDD0BFBFB0000DDDDDD0808BFBF
                00DDDDDDD0E0808BF00DDDD00808090FB00DDD000BFB808BF00DD0BFBFBFB808
                B00DD0F808FBF020F00DD0B0A0808808B0DDD0F8080C0BFB0DDDDD0FBF808FB0
                DDDDDDD0FBFBF00DDDDDDDDD00000DDDDDDDDDDDDDDDDDDDDDDD}
              OnClick = SpeedButton20Click
            end
            object Shape2: TShape
              Left = 170
              Top = 16
              Width = 18
              Height = 18
            end
            object Label31: TLabel
              Left = 6
              Top = 70
              Width = 70
              Height = 11
              Caption = 'Limiar de Alerta2'
            end
            object SpeedButton21: TSpeedButton
              Left = 141
              Top = 39
              Width = 23
              Height = 22
              Hint = 'Definir Cor'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDD00000DDDDDDDDDD00000000DDDDDDD0BFBFB0000DDDDDD0808BFBF
                00DDDDDDD0E0808BF00DDDD00808090FB00DDD000BFB808BF00DD0BFBFBFB808
                B00DD0F808FBF020F00DD0B0A0808808B0DDD0F8080C0BFB0DDDDD0FBF808FB0
                DDDDDDD0FBFBF00DDDDDDDDD00000DDDDDDDDDDDDDDDDDDDDDDD}
              OnClick = SpeedButton21Click
            end
            object SpeedButton22: TSpeedButton
              Left = 141
              Top = 64
              Width = 23
              Height = 22
              Hint = 'Definir Cor'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDD00000DDDDDDDDDD00000000DDDDDDD0BFBFB0000DDDDDD0808BFBF
                00DDDDDDD0E0808BF00DDDD00808090FB00DDD000BFB808BF00DD0BFBFBFB808
                B00DD0F808FBF020F00DD0B0A0808808B0DDD0F8080C0BFB0DDDDD0FBF808FB0
                DDDDDDD0FBFBF00DDDDDDDDD00000DDDDDDDDDDDDDDDDDDDDDDD}
              OnClick = SpeedButton22Click
            end
            object Shape3: TShape
              Left = 170
              Top = 40
              Width = 18
              Height = 18
            end
            object Shape4: TShape
              Left = 170
              Top = 64
              Width = 18
              Height = 18
            end
            object SpeedButton23: TSpeedButton
              Left = 194
              Top = 40
              Width = 23
              Height = 22
              Hint = 'Definir Cor'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDD00000DDDDDDDDDD00000000DDDDDDD0BFBFB0000DDDDDD0808BFBF
                00DDDDDDD0E0808BF00DDDD00808090FB00DDD000BFB808BF00DD0BFBFBFB808
                B00DD0F808FBF020F00DD0B0A0808808B0DDD0F8080C0BFB0DDDDD0FBF808FB0
                DDDDDDD0FBFBF00DDDDDDDDD00000DDDDDDDDDDDDDDDDDDDDDDD}
              OnClick = SpeedButton23Click
            end
            object SpinEdit3: TSpinEdit
              Left = 84
              Top = 42
              Width = 51
              Height = 19
              MaxValue = 100
              MinValue = 0
              TabOrder = 0
              Value = 75
            end
            object SpinEdit4: TSpinEdit
              Left = 84
              Top = 67
              Width = 51
              Height = 19
              MaxValue = 100
              MinValue = 0
              TabOrder = 1
              Value = 90
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 232
        Top = 60
        Width = 53
        Height = 46
        BevelInner = bvLowered
        BorderWidth = 4
        Caption = 'Panel4'
        Color = clGray
        TabOrder = 1
        TabStop = True
        object Image3: TImage
          Left = 6
          Top = 6
          Width = 41
          Height = 34
          Align = alClient
          Center = True
          Picture.Data = {
            07544269746D617042080000424D420800000000000042000000280000002000
            0000200000000100100003000000000800000000000000000000000000000000
            0000007C0000E00300001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF7FFF7FFF7FFF7F000010001000100010001000100010001000
            1000100010001000100010001000100010001000100010001000100010001000
            10001000100000000000FF7FFF7F000010021002100210021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            100210021002000010000000FF7F000010021002100210021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            1002100210020000104210000000000010021002100210021002100210021002
            1002100210021002100210021002100210021002100210021000100010001000
            1000100210020000100010420000000010021002100210021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            1002100210020000104210000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000100010420000FF7F0000FF03FF03FF03FF03FF03FF03FF03
            FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03FF03
            FF03FF03FF03FF03000010000000FF7FFF7F0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF03FF0300000000FF7FFF7FFF7F000010021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            1002100200000000FF03FF030000FF7FFF7FFF7F000010021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            100210020000100000000000FF7FFF7FFF7FFF7F000010021002100210021002
            1002100210021002100210021002100210021002100210021002100210021002
            100210020000104210000000FF7FFF7FFF7FFF7F000010021002000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            100210020000100010420000FF7FFF7FFF7FFF7F0000100210020000FF03FF03
            00001863000010000042E07FE07FE07F007C007C004000001042104210420000
            100210020000104200000000FF7FFF7FFF7FFF7F0000100210020000FF03FF03
            FF03000010000042E07FE07FE07F007C007C007C007C00400000186310420000
            100210020000000010420000FF7FFF7FFF7FFF7F00001002100200000000FF03
            000010000042E07FE07FE07F00000040007C007C007C007C0040000000000000
            1002100200001042FF0310420000FF7FFF7FFF7F000010021002000018630000
            10000042E07FE07FE07F0000186300000040007C007C007C007C007C00400000
            000000001042FF03FF03FF030000FF7FFF7FFF7F000010021002000000001000
            0042E07FE07FE07FFF0310420000186300000040007C00400040007C007C0040
            00001042FF03FF03FF03FF030000FF7F0000FF7F000010021002000010000042
            E07FE07FE07FFF03FF03FF031042000018630000007C004000000000007C007C
            0000FF03FF03FF03FF030000FF7FFF7F0000FF7F00001002000010000042E07F
            E07FE07FFF03FF03FF03FF03FF03104200000000007C0040000000000000007C
            0000FF03FF03FF0300000000FF7FFF7F0000FF7F0000100200000042E07FE07F
            E07F00000000FF03FF031042FF03FF0310420000007C007C0040000000000000
            0000FF03FF03000010000000FF7F0000186300000000100200000000E07FE07F
            0000186318630000FF03FF03FF03FF03FF0300000040007C007C00400000FF03
            FF03FF030000100010420000FF7F0000FF7F1863000000000000100200000000
            18631863186318630000FF03FF031042FF03FF0300000000000000000000FF03
            FF0300000000104210000000FF7F0000FF7FFF7FFF7F18631863000010421863
            186318631863186318630000FF03FF03FF03FF03FF031042FF03FF03FF03FF03
            000010020000100010420000FF7F0000FF7FFF7FFF7FFF7F1863000010421863
            1863186318631863186318630000FF03FF031042FF03FF03FF03FF03FF030000
            100210020000104210000000FF7FFF7F0000FF7FFF7FFF7FFF7F186300000000
            10421042104210421042104210420000FF03FF03FF03FF03FF03FF0300000000
            100210020000100010420000FF7FFF7FFF7F0000FF7FFF7FFF7FFF7F1863FF7F
            000000000000000000000000000000000000FF03FF03FF03FF03FF0300000000
            100210020000104210000000FF7FFF7FFF7FFF7F0000000000000000FF7F0000
            0000100210021002100210021002100210020000FF03FF03FF03000010021002
            10021002000010000000FF7FFF7FFF7FFF7FFF7F000010021002100200000000
            10021002100210021002100210021002100210020000FF030000100210021002
            1002100200000000FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF7FFF7FFF7FFF7F}
          Stretch = True
        end
      end
      object BitBtnProxima: TBitBtn
        Left = 164
        Top = 26
        Width = 60
        Height = 19
        Hint = 'p'#225'gina anterior'
        Caption = 'A&nterior'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          D6000000424DD6000000000000007600000028000000100000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333003333333333330090333333333300999033
          3333330099999000000000999999999999903300999990000000333300999033
          3333333333009033333333333333003333333333333333333333}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtnAnteriorClick
      end
      object BitBtnAnterior: TBitBtn
        Left = 228
        Top = 26
        Width = 60
        Height = 19
        Hint = 'pr'#243'xima p'#225'gina'
        Caption = '&Pr'#243'xima'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          D6000000424DD6000000000000007600000028000000100000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333300333333333333330900333333333333099900
          3333000000099999003309999999999999000000000999990033333333099900
          3333333333090033333333333300333333333333333333333333}
        Layout = blGlyphRight
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtnProximaClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 41
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 86
      Top = 8
      Width = 73
      Height = 25
      Hint = 'Exit and close this form'
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        06010000424D0601000000000000760000002800000010000000120000000100
        0400000000009000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038888888877F
        7F83444400888FFF44443334D5007FFF433333345D50FFFF43333334D5D0FFFF
        433333345D50FEFE43333334D5D0FFFF433333345D50FEFE43333334D5D0EFEF
        433333345D50FEFE43333334D5D0EFEF43333334444444444333333333333333
        33333333300000033333333330AAAA0333333333300000033333333333333333
        33333333333333333333}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 10
      Top = 8
      Width = 73
      Height = 25
      Hint = 'Save data configuration'
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333330080880033333333008888003333333300000000000000000000
        00000FFFFFFF0FFFFFF00FFFFFFF0FFFFFF00F00F0080CCC9CC00FFFFFFFF039
        99330F0000F0F09999930FFFFFFFF99999990F00F000003999330FFFF0FF0339
        99330F08F0F0337999330FFFF003999993330000003333333333}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 41
    Width = 39
    Height = 449
    Align = alLeft
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 3
      Top = 3
      Width = 30
      Height = 443
      Align = alLeft
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 30
      Images = MainForm.ImageList1
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Hint = 'Configura'#231#227'o Geral'
        Grouped = True
        ImageIndex = 25
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 0
        Top = 30
        Hint = 'Prefer'#234'ncias'
        Grouped = True
        ImageIndex = 26
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        Style = tbsCheck
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        Left = 0
        Top = 60
        Hint = 'Imagem'
        Grouped = True
        ImageIndex = 27
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        Style = tbsCheck
        OnClick = ToolButton3Click
      end
      object ToolButton4: TToolButton
        Left = 0
        Top = 90
        Hint = 'Alarme &  Agendamento'
        Grouped = True
        ImageIndex = 33
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        Style = tbsCheck
        OnClick = ToolButton4Click
      end
      object ToolButton5: TToolButton
        Left = 0
        Top = 120
        Caption = 'ToolButton5'
        Grouped = True
        ImageIndex = 32
        Wrap = True
        Style = tbsCheck
        OnClick = ToolButton5Click
      end
      object ToolButton6: TToolButton
        Left = 0
        Top = 150
        Caption = 'ToolButton6'
        Grouped = True
        ImageIndex = 13
        Wrap = True
        Style = tbsCheck
        OnClick = ToolButton6Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '(*.exe)|*.EXE'
    Left = 192
    Top = 7
  end
  object ColorDialog1: TColorDialog
    Left = 220
    Top = 7
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 249
    Top = 7
  end
end
