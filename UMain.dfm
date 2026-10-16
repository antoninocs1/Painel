object MainForm: TMainForm
  Left = 777
  Top = 247
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #171'Painel'#187
  ClientHeight = 340
  ClientWidth = 247
  Color = 16249836
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  PopupMenu = PopupMenu2
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnMouseDown = FormMouseDown
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 247
    Height = 340
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 16249836
    TabOrder = 0
    OnMouseDown = FormMouseDown
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 241
      Height = 60
      Align = alTop
      BorderStyle = bsSingle
      Color = 14150903
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabelEffect1: TLabel
        Left = 1
        Top = 1
        Width = 235
        Height = 54
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = 4866104
        Font.Height = -32
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        PopupMenu = PopupMenu2
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 0
        ExplicitWidth = 231
      end
      object SpeedButton6: TSpeedButton
        Left = 198
        Top = 6
        Width = 12
        Height = 9
        Hint = 'Fechar'
        Flat = True
        Glyph.Data = {
          92000000424D9200000000000000760000002800000007000000070000000100
          0400000000001C00000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888808888
          88808800088088000880880008808888888088888880}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 211
        Top = 6
        Width = 12
        Height = 9
        Hint = 'Finaliza Aplica'#231#227'o'
        Flat = True
        Glyph.Data = {
          92000000424D9200000000000000760000002800000007000000070000000100
          0400000000001C00000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888808008
          00808000008088000880800000808008008088888880}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object LEDPaint1: TShape
        Left = 215
        Top = 44
        Width = 8
        Height = 8
        Brush.Color = clMaroon
        Pen.Color = clGray
        Shape = stCircle
      end
    end
    object Panel3: TPanel
      Left = 3
      Top = 63
      Width = 241
      Height = 30
      Align = alTop
      BorderStyle = bsSingle
      Color = 14150903
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LabelEffect2: TLabel
        Left = 1
        Top = 1
        Width = 235
        Height = 24
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Color = clBeige
        Font.Charset = ANSI_CHARSET
        Font.Color = 4866104
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        PopupMenu = PopupMenu2
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 13
        ExplicitWidth = 171
      end
    end
    object Panel12: TPanel
      Left = 3
      Top = 93
      Width = 241
      Height = 7
      Align = alTop
      TabOrder = 2
      object SpeedButton8: TSpeedButton
        Left = 104
        Top = -2
        Width = 23
        Height = 9
        Flat = True
        Glyph.Data = {
          8E000000424D8E00000000000000760000002800000010000000030000000100
          0400000000001800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888800000000
          888888888800008888888888888008888888}
        OnClick = SpeedButton8Click
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 100
      Width = 241
      Height = 224
      Align = alClient
      AutoSize = True
      BevelInner = bvLowered
      Color = 13287844
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Panel8: TPanel
        Left = 2
        Top = 2
        Width = 237
        Height = 27
        Align = alTop
        TabOrder = 0
        object PageScroller1: TPageScroller
          Left = 1
          Top = 1
          Width = 235
          Height = 25
          Align = alClient
          AutoScroll = True
          ButtonSize = 20
          Control = ToolBar1
          TabOrder = 0
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 235
            Height = 25
            Align = alClient
            AutoSize = True
            ButtonWidth = 29
            Images = ImageList1
            TabOrder = 0
            TabStop = True
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = 'P'#225'gina Anterior'
              ImageIndex = 20
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton1Click
            end
            object ToolButton2: TToolButton
              Left = 29
              Top = 0
              Hint = 'Encerrar Programa'
              ImageIndex = 3
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton2Click
            end
            object ToolButton3: TToolButton
              Left = 58
              Top = 0
              Hint = 'Bloco de Notas'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              OnClick = Notas1Click
            end
            object ToolButton4: TToolButton
              Left = 87
              Top = 0
              Hint = 'Calculadora'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
              OnClick = Calculadora1Click
            end
            object ToolButton5: TToolButton
              Left = 116
              Top = 0
              Hint = 'Executar'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
              OnClick = Executar1Click
            end
            object ToolButton6: TToolButton
              Left = 145
              Top = 0
              Hint = 'Esconder'
              ImageIndex = 7
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton6Click
            end
            object ToolButton7: TToolButton
              Left = 174
              Top = 0
              Hint = 'Minimizar'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton7Click
            end
            object ToolButton8: TToolButton
              Left = 203
              Top = 0
              Hint = 'P'#225'gina Posterior'
              ImageIndex = 21
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton8Click
            end
          end
        end
      end
      object PageControl1: TPageControl
        Left = 2
        Top = 29
        Width = 237
        Height = 193
        ActivePage = TabSheet3
        Align = alClient
        TabHeight = 4
        TabOrder = 1
        TabWidth = 19
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 229
            Height = 179
            Align = alClient
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0A544A504547496D616765C40F0000FFD8FFE000104A46494600010200006400
              640000FFFE001241646F626520496D6167655265616479FFEC00114475636B79
              000100040000001E0000FFEE002141646F62650064C000000001030010030203
              06000004B90000096400000FC2FFDB008400100B0B0B0C0B100C0C10170F0D0F
              171B141010141B1F17171717171F1E171A1A1A1A171E1E23252725231E2F2F33
              332F2F40404040404040404040404040404001110F0F11131115121215141114
              11141A141616141A261A1A1C1A1A2630231E1E1E1E23302B2E2727272E2B3535
              3030353540403F404040404040404040404040FFC2001108008B00B903012200
              021101031101FFC400B000000105010100000000000000000000000501020304
              0600070100030101000000000000000000000000000102030410000202030002
              0202030003010100000001020304001105211210133106201415412223321611
              0001030203050604040309000000000001001102210331411210512213042061
              71A1324381C142A391D18223523305B1E16292A2C26314241200010402010403
              00000000000000000000100111212031613051A112418122FFDA000C03010002
              110311000000A6446D9DB335098B193C2B74412DD76CB150ED2E60DACCB64B58
              065C115D1D75A03C3896473545A60B3458774635E1644AAD3E39EB32B2D7211B
              47B0C715934D52DF67A61E2D6457194BBA50E1A1A032BA04A4CDD0237EAC7212
              843B484CF4B4A747B62263EB4747EDCF2CB1AE7B903748EC25EEE57C8BC1DDDC
              01F3BAA1153058A4E0D3CFCB2E3F35901AA56398D3BD173DE8A880718E6BCEEC
              86B9AE57F499CBB37ABECE58966D05124361B1584CAD541DCEBA5CFEA66A3C39
              8F3A9B7A31412C41B00D01CEE6777287953BA0DB8EDDA1EE195968BD6B6F5F8D
              9E6B670882B0E6CC68338C834793CF370D3548A7F71107FA98D90929D9DB3419
              E8E44FCBEBD95D796A490B9B9D16045B5A2C9B31AAF3C239EBE8C1E428ABC9A8
              10A5433A68808FA4E6F6C970933CCCC13240DC38C616CD206B0BF4E7735C88D3
              DCB04F2E8F31A7B5CE699856159D50FE2CE97976E967579594ADF5462D529B0B
              296EA12D6000AD2CD7156DE50F39F3EEB74B6C2E23165D8B35245ADB86BB5AAC
              C91CF363E350BD0C66A686D8AA83B1A6CA1C566EFB5F9DA3F9550AEBB1B8F3DA
              B61FBF35495D202DE86EC6F4A2B0D18D9967ACAAACF6854623A2CAB542D2A9AB
              B8C4188ADA73249E94E5E0447223FFDA000801020001050039EC460607E1B7A5
              D8F863E402493E01CDE1C6F233DFC7B03801DE78380019B38188CD8D6F1B7FC1
              48D6FF0080CD9D15C2379EA708233FE42838C344E0C3F3BC23358C3784118BBD
              BE018700CD1F82379FF1EC33D8648CDA0DAC07379AF8D939ACD7C12760020A0C
              318CF538CA40DC98BBD02335E47919A1800F8F18466B1B5AF8DE0C39E707C1CF
              3AC6D7F0FFDA00080103000105003F8001030E11835BC41E19B415708CD7919F
              8246F3C8273F235875846F00D0206BCEC8C5F3FC3F04F90A06B43E7D57692E12
              0E7B67B03877AF383CE2F8C3FC0027039C0D9F83B0493E546893F05B3DC66C69
              4E8950488DB3EB7C45F1A1F1ACF60495070AE68FCAA8F5F76182538253824070
              30DE936460DEB787C603E461FC7C01BC0FA20F901B00CF538700C4D63678D803
              640DB6B13DB63E7FFFDA00080101000105004F19465B331FF164972D51B35626
              D17280E1DA812022B56134B4F986059D2DFD3307FBD207659A168F3F5FB37255
              1F0C743BF389AC2AE9DA4F2AFEECA448DE83347285DFEACD4EF57B2AF1A48B7B
              80AC668A485BC6491EB237643CDEF15C7E946C92BAB5896CC51AC967EC938ED1
              7F570F8CECF43FAB5D5CCCF742C52396CD99322719A6C8DC9CD6F2BCF2569A85
              D8EE4397B9F0DC8EF549AA4AA4B2EBD5B9D14724F0C51A276AB40F57DBC81FF6
              A17DAA85FDA1013FB24054A275F3AF1C5CA925B6C58D8564322B9A8A02E86463
              FEEB55BD193382D2A4E3F19D3E5A5C5E7F222856DF1A9D9597836AB94EC5CAB9
              6EFCD7449524410AFF00DABF31A6CB9CC9099391D04559EF7392E5A92E589300
              CE272A4E9DDB3FAFAC09FE6A6490F98ED3EA3E65A9D39744D68FE75E7E3BA215
              881D1ACF1C98F46AB3C15D522489572D58AD52BF7BBF275ECAF82C72342C7F4C
              E39A74ACD44B09FF00E7E1CAF21C9A320F13A91BA820FF003EA72D2F22F12755
              9AA5885AA093EE848292CB1C317ECDFB149D6B03F04A81F93FA45369BB1F2B3A
              ED260E1226F6E4DC7910107E598284B0AF96AD344B0743ED59FAF0C1225DA932
              9A7148B594C63F72FD83FB738662493A3B3952A4F65FF51E7252E5FCA31DC520
              02A5B519F78565EC5B511FEC11FAC1DFA9249EE24015505B533A58E6DB892C09
              4B719525312FAA7EE3D96A10C8FE5759BD628D9FD17952C96C003F815D10CC32
              39F591DB38960EF42411C6AB25168CC0CA1962458F1FD48E8D50B6294DFD2B5D
              3ECD6E673AFDE9EE58FC95034079E271E7EADCAB0C756BFF000390CC4BFAE2B6
              8ABAFA45640C591643174AD536A9FB22BE2598A513C8A89D3E82CAD24CA89D6E
              C4FD198F91A2300DE7338D7BA4DC7E456E34367A090647FB23074EFA334332CA
              99EB96626478E60C00DE0F600160639594BD866314B9CEE558489633243D1E2C
              A90DEB76251B39BDE02738FC9B3D5B5C2E054E442F1AB0BBC45959B8162230F3
              A01153B6915BF75C424E3F9135760637900167EA57BD1FB37414E1BFE7FD2981
              E6FECB6E09A8F796546BB5D17B2F04BD0FAC00B5C11EA41FD2629A988DCB2E6B
              1B4074FA8D13BBCE25FF0056E62B6B1BCE1FC0037C4E60B35EE7EB3CE997A5C5
              3526FF0031D964A9663223972959E8D5CB73F52CA6CA90C4607DE448B2C8B79F
              9C23EFD9CADD2B369A5B324115AEF4930D4A92D015668BFA3530480E07C1E717
              C3F06CC0F4E491157A5557A4F6EB4F4DF65B2074022788B4A02954A5234DC8FD
              6CC678F449A1CCE603FE7D45038F69872F9735596540E9428C50B5EA3158822A
              F760B3FD8BF8F1951136D8E80D86C86796127A971928F564AADD4BAB6F06C166
              20C67058646FFA4CBEAD1B2C9A20AB05771251ECC71C15FAE277595582A6988D
              89E682B4DFE8D6C922DA14F46470CABF95D12C9E02EB19378C3D5CC2186BD488
              FDCAB3406B4705986DC260923948CD973C6E4C93186B471298949034327A50CE
              DFE757C79F6ACA58A782B912ECAC60ACA5573FE246DC83FF0092A18468C0CD0B
              15AF24B032FD73C73C5F5B5698249C6B704B003FC7783E9D0FA747E8F61F4E43
              F4ED7EAF59BEADFF00E3EAFF0047B8FA7D13E9F6AFF4FB59FABEB3F4EE0FA773
              7D39FF008EF89F5FF622D6BC678CF19E33C67FFFDA0008010202063F002D6B08
              3D784DE3D894B292121C8E8C91359D2C75E0B56F5F272B2918F3853497B2D27A
              B595B65FFFDA0008010302063F00259D6F453C969233F2EE9A496FB4848662CA
              A3BA4924B17F1932C1ED165945B146ECDE74964B0CF9C924B3A6D8FD6109DC85
              99372C9A4B728787248F3842F243946D6DCDAECD94E8D1787FFFDA0008010101
              063F007CD0B712FE29E72113DC8F1EA8044E7B288828409A140DA99F02888481
              9366A5CC0D27AAC13BFE6118DC795B8E04ED2B971AB165E0EA5DD8AD5F48541C
              233D9442521AA39A06D4813BB346320E0E48DDE978658981C3E08C2E44C64322
              98A7084A25A43042DF55F098F9A26D8337C080A53BB1624E05707920F83A8E86
              EF6DA48F51A05CD9172EA6215D2C3F51C972FEAC6E1DCB442901895CBB61DB13
              96CAEC8DD81F49A842E40D731B8EC3198697D32CC2309D5B090CD336C889B33E
              68088006E529480138D41CD11B74CAD9F174F9EE4F33C393216E12D5211D4066
              E7044C456AC4EF38942C98E8B62B331ACA67BCAD2382D8C86257A74C4E0F9AC1
              08E6B5023C3618C6B038ED7074DC1814F762F34C61A6594A342B5593CC88F815
              CABB025B7D0AD24B4772D42A9A41093305A6DDB266330B54ACC9BBAAB98C631C
              00951CA9DFBB3D77258F72A6C8F4F6E422C0CE44E2D1DC9E45FBD62B5431085B
              21BBD6B8005F7965C61A671EC3ED7936ACB7A78AD370289003BE21080140B053
              EA7A998B766D87948FCB7945A3A3A7838B507CBF88F7944E5B186254BAAEA2CE
              8EA6F9E132F50B5460D9394632CF72F5C96992D7143A7BAD198C0EF54EDE3A67
              1C0A209059308CBF051333200141B052BD764216AD8D539CA8000B45A263D15A
              3FB56CD351FE390DE7C91DE532A28DED2256EC42529131D40121A3E07B2C5094
              311832E5DD3C71DFD872B84270171862B4CC537A0D205D3801F7AD04BB608FF4
              FE9A7FF96C1FDC20D2E5C1F28E48B352B55DFB397D3DB95D98899984039D31A9
              2CA338DD8DE3D4B5C968034C48A69D5896CDFB38A69871BD09DA9315F4C9BB97
              EF458F72E5978BE04E0A95073554636CD4E68CE13C3101D13324908089690C42
              010E93A69B753D444EA20D616F07EE32CB6138BED3FD4B568B7D3BC0020BCCC8
              7D24102898061B87668AB4299F687C1D4749C8220E68C510A4E38655084D9E04
              D51EB6E71134B36DD8CE6701F9AB9D4F513D77AE9D5397E5DDD88F4F6DE30F72
              F33C6DC77C95AE9ADFA2CC4423FA433F6A56A7EA89A1EE4FB1D33A67439571E3
              FC26A108DFB7A77CA3542509020A333805A62F446E5C2D08D4C8E4A32996B568
              68B30CA31DFE2539C560BBD69E92DEB0081396A88D237C812ECA76AC4A529DD2
              0DC9CCE2460C05112641F7220C1E3BC2034900E68481C76328DE8784931A4862
              3B0EFB6DDE95E004E227A221CD6A039210E121E9A6543F3572FD910B8623572C
              B82D9B50A22E9222FC30C003E1D88F4DD301A883294E5E98C467228184757573
              808DFBA492E71223B83A6216A8167C50302271CC605714789AAA5D312C1E8B15
              54C84EDFAB35C71FC1095EB138C6584B25C302DFE254B6DBCBAA5A7F8AE0888F
              9A1FF62E48DB601C13C2D85372899B4E12C2E43F25AAECE3081C0C8803CD5F3D
              2D6C999D3411A784596289D6011500E6AA15FEA27A81BA05B1619896E2D65FC9
              02431DDB6A8D9B353990B9CE753BBAF59EC837E22768D44641D1FD98C64CC0C6
              8A5072064E9E3706ADC5178B8198AAA44D726479224612C60453C7B8A7BE6E4E
              D8A806A229F119A7C3B9361DE5421295252029939AAB3D2C08BBA6DC79776511
              AA51DEE134A31979231B5698E7293E91E2CB5DD8BB0E2D35FC11B5D35B2E69A8
              AD779C3972E800212398A15FCA8FE03B01F7A846243C45422645823CACB02B45
              C1E056298B3A65AA058AD3D6D88CE2719478263F5453D9177577DC7F92E1D7FE
              6FEE5A276F8B29BF17FAA8835D2223D3ABFB14656A3AE12CC16211BD72E16661
              69F3EF441CC291D2353A944C43B50AFD91278CB25E84E98A71B38244782D12BA
              4C77145C6B894E026D8EAA68A85570D94C500645BBCA8C6E0AC4649A36E5A77E
              C3219EC3AE865558F96D6ED327DA37272C68B87D196CA6284EEB886E42318800
              27DA2538B90BD29804E9B6D53227B0CC9C85425B309C87DE8E9C10D5828C6120
              E311DBF6BE3CD5ECFDD5ECFDE5ED7DD5EDFDD5EDFDC5ED7DD5EDFDD5ECFDE5ED
              7DD5ED7C39A87F27E3CD5EC7C3988FF27EEAFA3F4F357B5F1E6AF67EEA8E9C7F
              E3D7FEE43E6EB2F35979ACBCD65E6B2F35FFD9}
            PopupMenu = PopupMenu2
            ShowHint = True
            OnMouseDown = FormMouseDown
            ExplicitWidth = 189
            ExplicitHeight = 154
          end
        end
        object TabSheet2: TTabSheet
          ImageIndex = 1
          object MonthCalendar1: TMonthCalendar
            Left = 0
            Top = 17
            Width = 229
            Height = 162
            Align = alClient
            AutoSize = True
            CalColors.MonthBackColor = 16707800
            Date = 37140.00000000000000000
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = MonthCalendar1Click
            OnGetMonthBoldInfo = MonthCalendar1GetMonthBoldInfo
          end
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 17
            Align = alTop
            TabOrder = 1
            object LabelX6: TLabel
              Left = 139
              Top = 1
              Width = 89
              Height = 15
              Align = alRight
              Alignment = taCenter
              AutoSize = False
              Color = 15329990
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              ExplicitLeft = 99
            end
            object LabelX3: TLabel
              Left = 1
              Top = 1
              Width = 138
              Height = 15
              Align = alClient
              AutoSize = False
              Caption = ' Calend'#225'rio:'
              Color = clSkyBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitWidth = 98
            end
            object SpeedButton1: TSpeedButton
              Left = 62
              Top = 3
              Width = 15
              Height = 11
              Hint = 'Feriados'
              Flat = True
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
              OnClick = SpeedButton1Click
            end
            object SpeedButton9: TSpeedButton
              Left = 78
              Top = 3
              Width = 15
              Height = 11
              Hint = 'Feriados (curiosidades)'
              Flat = True
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
              OnClick = SpeedButton9Click
            end
          end
        end
        object TabSheet3: TTabSheet
          ImageIndex = 3
          object Gauge1: TGauge
            Left = 0
            Top = 149
            Width = 229
            Height = 13
            Hint = 'Ocupa'#231#227'o da CPU'
            Align = alTop
            BackColor = clWindow
            ForeColor = clNavy
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            Progress = 0
            ShowHint = True
            ExplicitTop = 156
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 26
              Height = 26
              Align = alLeft
              AutoSize = True
              Center = True
              Picture.Data = {
                07544269746D6170D6010000424DD60100000000000076000000280000001A00
                0000160000000100040000000000600100000000000000000000100000000000
                0000000000000000800000800000008080008000000080008000808000008080
                8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF008888888888808888888888888800000088888888880C0888888888888800
                000088888888000C0880888888888800000088888880EC0C0807088888888800
                00008888880EEC0C00070880888888000000888888CEEC080C07080708888800
                0000888880CE8CC0CC070007088088000000888008C8EECCCC080C0708070800
                0000880CC8CEEEEECCC0CC0700070800000080ECC8CEEEEEEECCCC080C070800
                0000CEECC88CEEEEEEEECCC0CC0700000000CEE8CCCEEEEEEEEEEECCCC080000
                0000CE8EEEEEEEEEEEEEEEEECCC0C00000000CCEEEEEEEEEEEEEEEEEEECCC000
                0000880CCEEEEEEEEEEEEEEEEEEEC000000088880CCEEEEEEEEEEEEEEEEE0800
                00008888880CCEEEEEEEEEEEEEE088000000888888880CCEEEEEEEEEEE088800
                000088888888880CCEEEEEEEE088880000008888888888880CCEEEEE08888800
                0000888888888888880CCEE088888800000088888888888888880C0888888800
                0000}
              ExplicitLeft = 3
              ExplicitTop = 1
              ExplicitHeight = 22
            end
            object LabelX4: TLabel
              Left = 29
              Top = 3
              Width = 117
              Height = 14
              AutoSize = False
              Caption = ' Status de Mem'#243'ria'
              Color = clSkyBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object SpeedButton10: TSpeedButton
              Left = 127
              Top = 4
              Width = 17
              Height = 11
              Hint = 'Alocada/Dispon'#237'vel'
              Flat = True
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
              OnClick = SpeedButton10Click
            end
            object Label7: TLabel
              Left = 150
              Top = 0
              Width = 79
              Height = 26
              Align = alRight
              AutoSize = False
              Color = 15397609
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitTop = 6
            end
          end
          object Panel25: TPanel
            Left = 0
            Top = 121
            Width = 229
            Height = 28
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 1
            object Image3: TImage
              Left = 0
              Top = 0
              Width = 28
              Height = 28
              Align = alLeft
              AutoSize = True
              Picture.Data = {
                07544269746D617036020000424D360200000000000076000000280000001C00
                00001C0000000100040000000000C00100000000000000000000100000000000
                0000000000000000800000800000008080008000000080008000808000008080
                8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00000000000000000000000000000000000BB7BB7BB7BB7BB7BB7BB7BB7BB0
                00000FB7FB7FB7FB7FB7FB7FB7FB7FB000000777777777777777777777777770
                00000BB7BB7BB7BB7BB7BB7BB7BB7BB000000FB7FB7FB7FB7FB7FB7FB7FB7FB0
                0000077777777770000007777777777000000BB7BB7777088888807777BB7BB0
                00000FB7FB7700888888880077FB7FB000000777777708888888888077777770
                00000BB7BB70A0888888880907BB7BB000000FB7FB0AAA088888809990FB7FB0
                00000777770AAA08877880999077777000000BB7BB0AA0887007880990BB7BB0
                00000FB7FB0AA0880007880990FB7FB000000777770AAA000078809990777770
                00000BB7BB0AAA000888809990BB7BB000000FB7FB70A7000880099907FB7FB0
                000007777777007AA00AA0907777777000000BB7BB7700AAAAAAAA0077BB7BB0
                00000FB7FB77770AAAAAA07777FB7FB000000777777777700000077777777770
                00000BB7BB7BB7BB7BB7BB7BB7BB7BB000000FB7FB7FB7FB7FB7FB7FB7FB7FB0
                0000077777777777777777777777777000000077BB7BB7BB7BB7BB7BB7BB7BB0
                00000007FB7FB7FB7FB7FB7FB7FB7FB000000000000000000000000000000000
                0000}
              ExplicitLeft = -1
              ExplicitTop = 3
            end
            object Gauge2: TGauge
              Left = 198
              Top = 0
              Width = 31
              Height = 28
              Hint = 'CPU'
              Align = alRight
              BorderStyle = bsNone
              ForeColor = clNavy
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              Kind = gkPie
              ParentFont = False
              Progress = 0
              ShowText = False
              ExplicitLeft = 192
              ExplicitTop = 3
            end
            object Panel29: TPanel
              Left = 28
              Top = 0
              Width = 164
              Height = 28
              Align = alLeft
              BevelOuter = bvNone
              Color = 15397609
              TabOrder = 0
              object Label5: TLabel
                Left = 0
                Top = 15
                Width = 164
                Height = 13
                Align = alBottom
                Color = 15397609
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                ExplicitWidth = 2
              end
              object Panel36: TPanel
                Left = 0
                Top = 0
                Width = 164
                Height = 13
                Align = alTop
                BevelOuter = bvNone
                Color = 15397609
                TabOrder = 0
                object LabelX7: TLabel
                  Left = 0
                  Top = 0
                  Width = 65
                  Height = 13
                  Align = alLeft
                  AutoSize = False
                  Caption = ' CPU'
                  Color = clSkyBlue
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Layout = tlCenter
                  ExplicitTop = -5
                  ExplicitHeight = 17
                end
                object SpeedButton2: TSpeedButton
                  Left = 43
                  Top = 0
                  Width = 17
                  Height = 11
                  Hint = 'Ativar/Desativar CPU Status'
                  Flat = True
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
                  OnClick = SpeedButton2Click
                end
                object Label8: TLabel
                  Left = 71
                  Top = 0
                  Width = 93
                  Height = 13
                  Align = alRight
                  AutoSize = False
                  Color = 14150903
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  ExplicitTop = -1
                end
              end
            end
          end
          object Panel30: TPanel
            Left = 0
            Top = 74
            Width = 229
            Height = 23
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 2
            object SwapGauge: TGauge
              Left = 0
              Top = 11
              Width = 229
              Height = 12
              Hint = 'Arquivo de pagina'#231#227'o (SWAP) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
              ExplicitTop = 17
            end
            object Panel31: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 11
              Align = alTop
              BevelOuter = bvNone
              Color = 16383480
              ParentBackground = False
              TabOrder = 0
              object Label12: TLabel
                Left = 0
                Top = 0
                Width = 77
                Height = 11
                Align = alLeft
                Caption = 'Pagina'#231#227'o (SWAP) =>'
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label2: TLabel
                Left = 79
                Top = 0
                Width = 150
                Height = 11
                Hint = 'Arquivo de pagina'#231#227'o (SWAP): Total - (Em uso / Livre)'
                Align = alRight
                AutoSize = False
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = False
                ExplicitLeft = 105
              end
            end
          end
          object Panel32: TPanel
            Left = 0
            Top = 26
            Width = 229
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 3
            object UseMemGauge: TGauge
              Left = 0
              Top = 13
              Width = 229
              Height = 11
              Hint = 'Mem'#243'ria em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
              ExplicitLeft = 1
              ExplicitTop = 29
            end
            object Panel33: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 11
              Align = alTop
              BevelOuter = bvNone
              Color = 16383480
              ParentBackground = False
              TabOrder = 0
              object Label10: TLabel
                Left = 0
                Top = 0
                Width = 75
                Height = 11
                Align = alLeft
                Caption = 'Mem'#243'ria em Uso => '
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label3: TLabel
                Left = 79
                Top = 0
                Width = 150
                Height = 11
                Hint = 'Mem'#243'ria em Uso'
                Align = alRight
                AutoSize = False
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = False
                ExplicitLeft = 81
              end
            end
          end
          object Panel34: TPanel
            Left = 0
            Top = 50
            Width = 229
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 4
            object RamGauge: TGauge
              Left = 0
              Top = 13
              Width = 229
              Height = 11
              Hint = 'Mem'#243'ria f'#237'sica (RAM) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
              ExplicitLeft = -1
              ExplicitTop = 36
              ExplicitWidth = 81
            end
            object Panel35: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 11
              Align = alTop
              BevelOuter = bvNone
              Color = 16383480
              ParentBackground = False
              TabOrder = 0
              object Label11: TLabel
                Left = 0
                Top = 0
                Width = 56
                Height = 11
                Align = alLeft
                Caption = 'F'#237'sica (RAM) =>'
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label1: TLabel
                Left = 79
                Top = 0
                Width = 150
                Height = 11
                Hint = 'Mem'#243'ria f'#237'sica (RAM): Total - (Em uso / Livre)'
                Align = alRight
                AutoSize = False
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = False
                ExplicitLeft = 82
                ExplicitTop = -4
              end
            end
          end
          object Panel28: TPanel
            Left = 0
            Top = 97
            Width = 229
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 5
            object VirtualGauge: TGauge
              Left = 0
              Top = 13
              Width = 229
              Height = 11
              Hint = 'Mem'#243'ria confirmada (RAM + SWAP) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
              ExplicitTop = 11
            end
            object Panel27: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 11
              Align = alTop
              BevelOuter = bvNone
              Color = 16383480
              ParentBackground = False
              TabOrder = 0
              object Label13: TLabel
                Left = 0
                Top = 0
                Width = 58
                Height = 11
                Align = alLeft
                Caption = 'RAM + SWAP =>'
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label4: TLabel
                Left = 79
                Top = 0
                Width = 150
                Height = 11
                Hint = 'Mem'#243'ria confirmada (RAM + SWAP): Total - (Em uso / Livre)'
                Align = alRight
                AutoSize = False
                Color = 16383480
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Calibri'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Transparent = False
                ExplicitLeft = 81
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          ImageIndex = 10
          object Panel21: TPanel
            Left = 0
            Top = 15
            Width = 229
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            Color = 16383480
            ParentBackground = False
            TabOrder = 0
            object Label15: TLabel
              Left = 169
              Top = 0
              Width = 60
              Height = 14
              Align = alRight
              Caption = 'xxxxxxxxxxxxxxx'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
            object Gauge4: TGauge
              Left = 0
              Top = 14
              Width = 229
              Height = 13
              Hint = 'Mem'#243'ria f'#237'sica (RAM) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
              ExplicitTop = 20
            end
            object Label14: TLabel
              Left = 0
              Top = 0
              Width = 28
              Height = 14
              Align = alLeft
              Caption = 'Drive C:'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
          end
          object Panel22: TPanel
            Left = 0
            Top = 42
            Width = 229
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            Color = 16383480
            ParentBackground = False
            TabOrder = 1
            object Label17: TLabel
              Left = 169
              Top = 0
              Width = 60
              Height = 14
              Align = alRight
              Caption = 'xxxxxxxxxxxxxxx'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
            object Gauge5: TGauge
              Left = 0
              Top = 14
              Width = 229
              Height = 13
              Hint = 'Mem'#243'ria f'#237'sica (RAM) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
            end
            object Label16: TLabel
              Left = 0
              Top = 0
              Width = 29
              Height = 14
              Align = alLeft
              Caption = 'Drive D:'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
          end
          object Panel23: TPanel
            Left = 0
            Top = 69
            Width = 229
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            Color = 16383480
            ParentBackground = False
            TabOrder = 2
            object Label19: TLabel
              Left = 169
              Top = 0
              Width = 60
              Height = 14
              Align = alRight
              Caption = 'xxxxxxxxxxxxxxx'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
            object Gauge6: TGauge
              Left = 0
              Top = 14
              Width = 229
              Height = 13
              Hint = 'Mem'#243'ria f'#237'sica (RAM) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
            end
            object Label18: TLabel
              Left = 0
              Top = 0
              Width = 27
              Height = 14
              Align = alLeft
              Caption = 'Drive E:'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
          end
          object Panel24: TPanel
            Left = 0
            Top = 96
            Width = 229
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            Color = 16383480
            ParentBackground = False
            TabOrder = 3
            object Label21: TLabel
              Left = 169
              Top = 0
              Width = 60
              Height = 14
              Align = alRight
              Caption = 'xxxxxxxxxxxxxxx'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
            object Gauge7: TGauge
              Left = 0
              Top = 14
              Width = 229
              Height = 13
              Hint = 'Mem'#243'ria f'#237'sica (RAM) em uso ou livre (%)'
              Align = alBottom
              BackColor = clWindow
              ForeColor = 14150903
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              Progress = 0
              ShowHint = True
            end
            object Label20: TLabel
              Left = 0
              Top = 0
              Width = 27
              Height = 14
              Align = alLeft
              Caption = 'Drive F:'
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitHeight = 11
            end
          end
          object Panel26: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 4
            object Label9: TLabel
              Left = 34
              Top = 0
              Width = 195
              Height = 15
              Align = alRight
              AutoSize = False
              Caption = 'Status dos Discos:'
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
            object Image7: TImage
              Left = 0
              Top = 0
              Width = 32
              Height = 15
              Align = alLeft
              AutoSize = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                000E08060000004EDC1EB2000000017352474200AECE1CE90000000467414D41
                0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
                7C4944415478DAED95C10DC02008457132190D36C3C96C6DD550DB341E845EFA
                0E841893FFC44403DCC9E043E845878B887972C920A2235F0BB885174681BC63
                1ECECCBD7F144829B99CFE55C0E21A10715E20C6B85CA04DF69FC09400C6D316
                9840AAF92AE604D4A64F042C191FA15E8A405D3447875F1A70FE841A1B9F817D
                0F232EBBA00000000049454E44AE426082}
              ExplicitHeight = 14
            end
            object SpeedButton14: TSpeedButton
              Left = 126
              Top = 1
              Width = 17
              Height = 11
              Hint = 'Ocupado / Livre'
              Flat = True
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
              OnClick = SpeedButton14Click
            end
            object SpeedButton15: TSpeedButton
              Left = 144
              Top = -3
              Width = 15
              Height = 18
              Hint = 'Atualizar'
              Flat = True
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
              OnClick = SpeedButton15Click
            end
          end
        end
        object TabSheet6: TTabSheet
          ImageIndex = 6
          object LabelX5: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 14
            Align = alTop
            AutoSize = False
            Caption = 'Informa'#231#245'es do Sistema:'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 189
          end
          object SpeedButton3: TSpeedButton
            Left = 129
            Top = 2
            Width = 17
            Height = 11
            Hint = 'Refresh'
            Flat = True
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
            OnClick = SpeedButton3Click
          end
          object SpeedButton12: TSpeedButton
            Left = 146
            Top = 2
            Width = 15
            Height = 11
            Hint = 'Informa'#231#245'es do Sistema'
            Flat = True
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
            OnClick = SpeedButton12Click
          end
          object Memo2: TMemo
            Left = 0
            Top = 14
            Width = 229
            Height = 165
            Align = alClient
            Color = 16383480
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Consolas'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            WordWrap = False
          end
        end
        object TabSheet5: TTabSheet
          ImageIndex = 9
          object LabelX11: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 14
            Align = alTop
            AutoSize = False
            Caption = 'Limpeza de Arquivos Tempor'#225'rios:'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitTop = 8
            ExplicitWidth = 225
          end
          object SpeedButton11: TSpeedButton
            Left = 177
            Top = 2
            Width = 17
            Height = 11
            Hint = 'Limpar arquivos tempor'#225'rios'
            Flat = True
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
            OnClick = SpeedButton11Click
          end
          object Gauge3: TGauge
            Left = 0
            Top = 145
            Width = 229
            Height = 34
            Hint = 'Progresso da limpeza'
            Align = alClient
            BackColor = clWindow
            ForeColor = clNavy
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            Progress = 0
            ShowHint = True
            ExplicitLeft = 2
            ExplicitTop = 54
            ExplicitWidth = 225
            ExplicitHeight = 163
          end
          object SpeedButton13: TSpeedButton
            Left = 195
            Top = 2
            Width = 15
            Height = 11
            Hint = 'Limpar cache do navegador selecionado'
            Flat = True
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
            OnClick = SpeedButton13Click
          end
          object Panel9: TPanel
            Left = 0
            Top = 14
            Width = 229
            Height = 131
            Align = alTop
            BevelOuter = bvNone
            Color = 15397609
            TabOrder = 0
            object Memo3: TMemo
              Left = 0
              Top = 23
              Width = 229
              Height = 108
              Align = alClient
              Color = 16383480
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Consolas'
              Font.Style = []
              Lines.Strings = (
                '')
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
              WordWrap = False
            end
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 23
              Align = alTop
              BevelOuter = bvNone
              Color = 15397609
              TabOrder = 1
              object Image8: TImage
                Left = 0
                Top = 0
                Width = 16
                Height = 23
                Align = alLeft
                AutoSize = True
                Picture.Data = {
                  07544269746D6170F6000000424DF60000000000000076000000280000001000
                  0000100000000100040000000000800000000000000000000000100000000000
                  0000000000000000800000800000008080008000000080008000808000008080
                  8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                  FF00FFFFFFF00FFFFFFFFFFFFF0BB0FFFFFFFFFFFF0B3B0FFFFFFFFFF0B3BBB0
                  FFFFFFFFF03BB3BB0FFFFFFFF0BB3BB3B0FFFFFF00B3BB3BBB0FFFFF400BB3BB
                  3BB0FFFF4800BBB3BBB0FFF44F600B3BB00FFF44F88600000FFFF44E860000FF
                  FFFFF4E8640FFFFFFFFFF48640FFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFF
                  FFFF}
                ExplicitLeft = 5
                ExplicitTop = 6
                ExplicitHeight = 127
              end
              object ComboBox1: TComboBox
                Left = 138
                Top = 0
                Width = 91
                Height = 20
                Align = alRight
                Style = csOwnerDrawFixed
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 14
                ParentFont = False
                TabOrder = 0
                Items.Strings = (
                  'Todos'
                  'Chrome'
                  'Edge'
                  'Firefox'
                  'Brave'
                  'Opera')
              end
            end
          end
        end
        object TabSheet7: TTabSheet
          ImageIndex = 7
          object Panel15: TPanel
            Left = 0
            Top = 20
            Width = 197
            Height = 159
            Align = alClient
            BevelOuter = bvLowered
            BorderWidth = 1
            TabOrder = 0
            object Image5: TImage
              Left = 2
              Top = 2
              Width = 193
              Height = 155
              Align = alClient
              AutoSize = True
              Picture.Data = {
                07544269746D6170FE190000424DFE1900000000000076000000280000009600
                000056000000010004000000000088190000C40E0000C40E0000100000000000
                0000000000000000800000800000008080008000000080008000808000008080
                8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFF00000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FF0000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000F000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
                F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF0F0F0000FFFFFFF000FFFFF000FFFFF000FFFFF000F
                FFFF000FFFFF000FFFFF000FFFFF000FFFFF000FFFFF000FFFFF000FFFFF000F
                FFFF000FFFFF000FFFFF000FFFFF000FFFFF000FFFFFF0F0F0000FFFFFF00700
                FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700
                FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700FFF00700
                FFFFF0F0F0000FFFFFF07770FFF07770FFF07770FFF07770FFF07770FFF07770
                FFF07770FFF07770FFF07770FFF07770FFF07770FFF07770FFF07770FFF07770
                FFF07770FFF07770FFF07770FFFFF0F0F0000FFFFFF08800FFF08800FFF08800
                FFF08800FFF08800FFF08800FFF08800FFF08800FFF08800FFF08800FFF08800
                FFF08800FFF08800FFF08800FFF08800FFF08800FFF08800FFFFF0F00F000FFF
                FFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800F
                FFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800FFFF8800F
                FFF8800FFFFFF0F0FF000FFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFF
                FFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFF
                FFF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFFFF00FFF0008888888888888888888
                8888888888888888888888888888888888888888888888888888888888888888
                88888888888888888888888888888888888888888888888888888888888880FF
                FF00000000880000008800000088000000880000008800000088000000880000
                0088000000880000008800000088000000880000008800000088000000880000
                008800000088000000000FFFFF00000000880000008800000088000000880000
                0088000000880000008800000088000000880000008800000088000000880000
                008800000088000000880000008800000088000000000FFFFF00FFFFFF88FFF8
                FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8
                FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8FF88FFF8
                FFFFFFFFFF00FFFFFFF88888FFF88888FFF88888FFF88888FFF88888FFF88888
                FFF88888FFF88888FFF88888FFF88888FFF88888FFF88888FFF88888FFF88888
                FFF88888FFF88888FFF88888FFFFFFFFFF00FFFFFFF8888FFFF8888FFFF8888F
                FFF8888FFFF8888FFFF8888FFFF8888FFFF8888FFFF8888FFFF8888FFFF8888F
                FFF8888FFFF8888FFFF8888FFFF8888FFFF8888FFFF8888FFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00}
              Stretch = True
              ExplicitWidth = 153
              ExplicitHeight = 130
            end
            object Memo1: TMemo
              Left = 7
              Top = 24
              Width = 169
              Height = 97
              BevelInner = bvLowered
              TabOrder = 0
              OnChange = Memo1Change
            end
          end
          object Panel16: TPanel
            Left = 197
            Top = 20
            Width = 32
            Height = 159
            Align = alRight
            BevelOuter = bvLowered
            TabOrder = 1
            object Image6: TImage
              Tag = 6
              Left = 5
              Top = 0
              Width = 24
              Height = 24
              Enabled = False
              Picture.Data = {
                07544269746D617036090000424D360900000000000036000000280000001800
                000018000000010020000000000000090000C30E0000C30E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FFC0C0C0FF008080FF008080FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF008080FF008080FFC0C0C0FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFF808080FF000000FF808080FFFFFFFFFF808080FF000000FF808080FFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
                FFFF000000FFC0C0C0FFFFFFFFFF00FFFFFFFFFFFFFFC0C0C0FF000000FFFFFF
                FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
                80FF000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF8080
                80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0000
                00FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF0000
                00FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0
                C0FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFC0C0
                C0FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFF000000FF00FF
                FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFFFFFF00FF
                FFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0
                C0FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFFC0C0C0FF000000FF00FFFFFFC0C0
                C0FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF00FFFFFFFFFFFFFF0000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
                80FF000000FFC0C0C0FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0FF000000FF8080
                80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF}
            end
            object Memo5: TMemo
              Left = 1
              Top = 24
              Width = 30
              Height = 92
              Align = alCustom
              Color = clSilver
              ReadOnly = True
              TabOrder = 0
              WordWrap = False
            end
          end
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 20
            Align = alTop
            TabOrder = 2
            object LabelX1: TLabel
              Left = 1
              Top = 1
              Width = 66
              Height = 18
              Align = alLeft
              AutoSize = False
              Caption = ' Anota'#231#245'es:'
              Color = clSkyBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object PageScroller2: TPageScroller
              Left = 67
              Top = 1
              Width = 161
              Height = 18
              Align = alClient
              AutoScroll = True
              Control = ToolBar2
              TabOrder = 0
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 161
                Height = 18
                Align = alClient
                AutoSize = True
                ButtonHeight = 18
                ButtonWidth = 19
                Color = clBtnFace
                Images = ImageList2
                ParentColor = False
                TabOrder = 0
                object ToolButton9: TToolButton
                  Left = 0
                  Top = 0
                  Hint = 'Abrir'
                  ImageIndex = 0
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton9Click
                end
                object ToolButton10: TToolButton
                  Left = 19
                  Top = 0
                  Hint = 'Inserir Arquivo no Bloco de Anota'#231#245'es'
                  ImageIndex = 1
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton10Click
                end
                object ToolButton11: TToolButton
                  Left = 38
                  Top = 0
                  Hint = 'Salvar'
                  ImageIndex = 2
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton11Click
                end
                object ToolButton12: TToolButton
                  Left = 57
                  Top = 0
                  Hint = 'Procurar'
                  ImageIndex = 3
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton12Click
                end
                object ToolButton13: TToolButton
                  Left = 76
                  Top = 0
                  Hint = 'Executar Lista'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton13Click
                end
              end
            end
          end
        end
        object TabSheet8: TTabSheet
          ImageIndex = 8
          object Clock1: TPaintBox
            Left = 0
            Top = 0
            Width = 229
            Height = 179
            Align = alClient
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            OnPaint = Clock1Paint
            ExplicitWidth = 189
            ExplicitHeight = 154
          end
        end
        object TabSheet9: TTabSheet
          ImageIndex = 9
          object LabelX2: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 14
            Align = alTop
            AutoSize = False
            Caption = ' Cron'#244'metro:'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 189
          end
          object BmpAnimator3: TImage
            Tag = 6
            Left = 84
            Top = 62
            Width = 56
            Height = 63
            Enabled = False
            Picture.Data = {
              07544269746D6170E6560000424DE65600000000000036040000280000005001
              00003F0000000100080000000000B05200000000000000000000000100000001
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
              FF00070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707F707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707075B5B5BF7070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              F79CF70707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707070707070707070707F75B9C0707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707070707070707075B000000520707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707075B0A0A52F7070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707070707A54900005B0707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707075B52
              9C07070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707F74A0A641300A40707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707F79C00
              0A12005B07070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707F7F7F7070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707070707070707070707070707070707070707F7495B640A5207070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707079C0A0A0A52F707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707F79CAD0707070707070707070707070707070707070707
              0707070707070707070707070707070707070707075B0012776E0A49F7070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707A452000A121B0A0AF707070707F79C5BF7070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707A4490A52F7070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707075B52776E0A5B0707070707070707070707070707070707070707
              07070707070707070707070707070707070707070707070707070707F7496576
              6E0A495BF7070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707070707070707070707F74A0052F7070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707075B000A1B5C6E650A52F707070707A552494AA4070707070707070707
              0707070707070707070707070707070707070707070707070707A5520A135C6D
              656513000A9C0707F749000052F7070707070707070707070707070707070707
              070707070707070707070707070707070707070707A40A135B005B0707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707070707070707F70A65765C005B07070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707F75B52A407070707AD496E656E64130A0A5BF7070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707520A5B0AA407070707070707070707070707070707070707
              070707070707070707070707070707070707075B0A1B6D6E6D5C6E1200495BF7
              07F7490000000AF7070707070707070707070707070707070707070707070707
              070707070707070707F749126577777F77766E1B0A0A5BA59C000A12009CF707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707A400656E0A0AA407070707070707F764A4F7070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707075B0012130A000AA407070707070707070707070707070707070707
              07070707070707070707070707070707070707F75200000AA40707079C001B65
              6E77776E5B0052F7070707070707070707070707070707070707070707070707
              070707070707070707070707A45BA40707070707070707F74964770A52F70707
              0707070707070707070707070707070707070707070707070707070707070707
              07075B0A64777F7F7F77776E1B0A00495249005B650A00A50707070707070707
              070707070707070707070707070707070707070707070707F7520A767F7F7F7F
              7F7F7F6E1C0A0000000A13130A0052F707070707070707070707070707070707
              0707070707070707070707070707070707070707F7520A1B655B0A0052A4F7F7
              0707A50A0A0A52F7070707070707070707070707070707070707070707070707
              0707070707070707070707A45B9CF707070707075B001B6E766E64120AA50707
              0707070707070707070707070707070707070707070707070707070707070707
              0707A452000A1200005252520A126D777F7F7F7F7F6E0A5BF707070707070707
              0707070707070707070707070707070707070707070707070707F75B0A0A005B
              F707070707F7520A005B6E120049AD0707070707070707070707070707070707
              0707070707070707070707070707070707F7525C7F7F7F7F7F7F77776E651300
              00000A13130A0052F70707070707070707070707070707070707070707070707
              0707070707070707A40A657F7F7F7F7F7F7F7F6E6565120A121C656E651B0052
              F707070707070707070707070707070707070707070707070707070707070707
              070707F7521B6E7677776E5B000049525B5B490A6E6E1249A407070707070707
              0707070707070707070707070707070707070707070707070707A50A00005B07
              0707F75B0000777F7F7F776E1349A50707070707070707070707070707070707
              0707070707070707070707070707070707A40A0A135C651B120A0A0A1B6E7F7F
              7F7F7F7F7F7F5C0AA40707070707070707070707070707070707070707070707
              070707070707070707F7520A646E5B0A495B5B5B5B4900135C6D6E6E650A52F7
              0707070707070707070707070707070707070707070707070707070707070707
              075B127F7F7F7F7F7F7F777777776E5C656E6E77776D130A5B07070707070707
              0707070707070707070707070707070707070707070707070A5B7F7F7F7F7F7F
              7F7F7F7776777777777F7F7F7F7764005B070707070707070707070707070707
              070707070707070707070707070707070707075213777F7F7F7F7F77651C0A0A
              1212126D777F775C0AA407070707070707070707070707070707070707070707
              07070707070707070707520A5C0A0A9CA45B520A0A0A7F7F7F7F7F7F771249F7
              0707070707070707070707070707070707070707070707070707070707070707
              A40A136E777F7F77776E6E6E6E777F7F7F7F7F7F7F7F771352F7070707070707
              070707070707070707070707070707070707070707070707A5490A6E7F7F7765
              0A0A0A0A0A1365777F7F7F7F776E125B07070707070707070707070707070707
              07070707070707070707070707070707F7496D7F7F7F7F7F7F7F7F77777F7F7F
              7F7F7F7F7F7F76130AF707070707070707070707070707070707070707070707
              07070707070707A40A6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7713
              00A5070707070707070707070707070707070707070707070707070707070707
              07079C0A6E7F7F7F7F7F7F7F7F776D6E6E7677777F7F7F77640A9C0707070707
              07070707070707070707070707070707070707070707070707A50A0A65130A00
              000A0A5B65137F7F7F7F7F7F7F6D0A5207070707070707070707070707070707
              070707070707070707070707070707F70A5B777F7F7F7F7F7F7F776E6F777F7F
              7F7F7F7F7F7F7F6E0AA407070707070707070707070707070707070707070707
              07070707070707F7490A6E7F7F7F7F776E6E6E6E6D6E777F7F7F7F7F7F7F6D0A
              AD07070707070707070707070707070707070707070707070707070707070707
              9C12777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A52070707070707
              07070707070707070707070707070707070707070707F7521B7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A520707070707070707070707070707
              0707070707070707070707070707070707F752657F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F775B009C0707070707070707070707070707070707070707
              0707070707070707F7520A6577766E6D65656565651C7F7F7F7F7F7F7F7F5C0A
              A40707070707070707070707070707070707070707070707070707070707075B
              5B777F7F7F7F7F7F7F7F7F7F777F7F7F7F7F7F7F7F7F7F771252070707070707
              07070707070707070707070707070707070707070707F7520A6E776E7F7F7F7F
              7F7F7F7F7F777F7F7F7F7F7F7F7F7F5C5B070707070707070707070707070707
              07070707070707070707070707070707005B7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F5B0AA5070707070707070707070707070707070707070707
              070707070707A4006D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              1B0AF70707070707070707070707070707070707070707070707070707070707
              075B12777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E5B12000A07070707
              0707070707070707070707070707070707070707070707075B0A6E7F7F7F7F7F
              7F7F77766D6E777F7F7F7F7F7F7F770A52F70707070707070707070707070707
              0707070707070707070707070707F70A767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F650AA4070707070707070707070707070707070707070707
              070707070707F749136E5C777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E
              0AAD0707070707070707070707070707070707070707070707070707070707A4
              0A6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F650AA40707070707
              070707070707070707070707070707070707070707075B007F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6D0AA407070707070707070707070707
              07070707070707070707070707070707F7525C7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F77650A00520707070707070707070707070707070707070707
              07070707070707A40A647F7F7F7F7F7F7F7F7F7F777F7F7F7F7F7F7F7F7F7F5B
              00A507070707070707070707070707070707070707070707070707070707A549
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F770A5B0707070707
              07070707070707070707070707070707070707070707075B000A657F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5C5B0707070707070707070707070707
              0707070707070707070707070707F7525C7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F770A5B070707070707070707070707070707070707070707
              07070707070752137F7F7F64125C767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              6E0A52F707070707070707070707070707070707070707070707070707070707
              A40A767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776500A407070707
              07070707070707070707070707070707070707070707075212777F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A520707070707070707070707070707
              07070707070707070707070707075B5C7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F1252F70707070707070707070707070707070707070707
              07070707070707070013767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              6E52F7070707070707070707070707070707070707070707070707070707A449
              777F7F775C6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F1352F707070707
              070707070707070707070707070707070707070707F700657F7F765C1C1C1B77
              7F7F7F7F7F7F7F7F7F7F6E6E7F7F7F7F761352F7070707070707070707070707
              070707070707070707070707070707075B12777F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F65009C0707070707070707070707070707070707070707
              070707070707F749647F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77
              1249F70707070707070707070707070707070707070707070707070707075264
              7F7F7F7F7F766E7F7F7F7F7F7F7F7F7F7F77645C6E7F7F7F7F640AF707070707
              0707070707070707070707070707070707070707070707A40013657F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F126407070707070707070707070707
              0707070707070707070707070707520A7F7F77655C135C767F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F5B52F70707070707070707070707070707070707070707
              0707070707A40A6E7F6E5C77776E5C767F7F7F7F7F7F7F7F77130A0A647F7F7F
              7F5C52F707070707070707070707070707070707070707070707070707070707
              495C7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E125B07070707
              07070707070707070707070707070707070707070707F70A777F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6500A407070707070707070707070707
              070707070707070707070707070752647F7F7F7F7F1B0A1B6E7F7F7F7F7F7F7F
              7F6413656564777F7F6E009C0707070707070707070707070707070707070707
              0707070707070752136E777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F6452F707070707070707070707070707070707070707070707070707F7495C
              7F7F656577776E767F7F7F7F7F7F7F7F7F6D64646E7F7F7F7F1349F707070707
              0707070707070707070707070707070707070707075B12777765777F7F7F6577
              7F7F7F7F7F7F7F7F761B65655C777F7F7F5B52F7070707070707070707070707
              070707070707070707070707070707070A6E7F7F7F7F6E6E777F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F5B0A0707070707070707070707070707070707070707
              070707070707F7497F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77777F7F7F
              6E0AA40707070707070707070707070707070707070707070707070707F75265
              7F7F7F7F6D5C6E6E657F7F7F7F7F7F7F7F6D657777655C7F7F760AA407070707
              07070707070707070707070707070707070707070707F7496D7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0AA4070707070707070707070707
              07070707070707070707070707A50A6D7F6D64777F7F76767F7F7F7F7F7F7F7F
              77135C6D5C767F7F7F1349F70707070707070707070707070707070707070707
              0707070707521377646E7F7F7F7F657F7F7F7F7F7F7F7F7F775C77776E657F7F
              7F1B52F7070707070707070707070707070707070707070707070707070707F7
              0A767F7F7F6E1C1B136E7F7F7F7F7F7F7F7F7F6E6D6D777F7F7F6500A5070707
              07070707070707070707070707070707070707070707A4007F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F765C12136E7F7F771252F7070707070707070707070707
              07070707070707070707070707F752657F7F7F775C6E777764777F7F7F7F7F7F
              7F776E7F7F7F6D6E7F770AA40707070707070707070707070707070707070707
              070707070707A40A7F7F7F7F771B5C6D777F7F7F7F7F7F7F7F7F77776E7F7F7F
              7F77125B070707070707070707070707070707070707070707070707075B0A6E
              7765777F7F7F6D777F7F7F7F7F7F7F7F776477776D5C7F7F7F5B52F707070707
              070707070707070707070707070707070707070707495B6E657F7F7F7F7F657F
              7F7F7F7F7F7F7F7F77657F7F7F65777F7F5B52F7070707070707070707070707
              0707070707070707070707070707075B52777F7F775C6E7765647F7F7F7F7F7F
              7F7F6D135C655C7F7F7F6E0A5B07070707070707070707070707070707070707
              0707070707075B0A7F7F7F7F7F5C125C6E7F7F7F7F7F7F7F7F655B65651C6D7F
              7F0A52F707070707070707070707070707070707070707070707070707075264
              7F7F7F656D7F7F7F657F7F7F7F7F7F7F7F776E7F7F7F7F6D7777135B07070707
              070707070707070707070707070707070707070707075B127F7F7F776465651B
              657F7F7F7F7F7F7F7F7F65121B64777F7F7F5C0A070707070707070707070707
              07070707070707070707070707521277656E7F7F7F7F657F7F7F7F7F7F7F7F7F
              77657F7F77656E7F7F5B52F70707070707070707070707070707070707070707
              0707070707495C6D777F7F7F7F7F6E7F7F7F7F7F7F7F7F7F77657F7F7F6E6E7F
              7F5B52F70707070707070707070707070707070707070707070707070707075B
              52BF7F7F646E777F76657F7F7F7F7F7F7F7F6565777765657F7F6E0A5B070707
              070707070707070707070707070707070707070707075B0A7F7F7F7F6E1B1C1B
              5B7F7F7F7F7F7F7F7F6E6E777F765B6E7F1252F7070707070707070707070707
              070707070707070707070707070752647F7F7764777F7F7F6D7F7F7F7F7F7F7F
              7F77657F7F7F7F777F7F5B520707070707070707070707070707070707070707
              0707070707F7521C7F7F7F655C6E776E5C7F7F7F7F7F7F7F7F7F65656E651377
              7F7F640007070707070707070707070707070707070707070707070707495B77
              657F7F7F7F776D7F7F7F7F7F7F7F7F7F77657F7F7F77657F7F5B52F707070707
              0707070707070707070707070707070707070707A50A5C7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F776D7F7F7F77657F7F5C52F7070707070707070707070707
              0707070707070707070707070707075B5B7F7F6E657F7F7F77657F7F7F7F7F7F
              7F7F6E6E7F7F77646E7F6E0A5B07070707070707070707070707070707070707
              0707070707075B0A7F7F7F77646E776E64777F7F7F7F7F7F7F6E6E7F7F7F775C
              771B49F707070707070707070707070707070707070707070707070707075B64
              7F7F6E6E7F7F7F7F6D7F7F7F7F7F7F7F7F7F6E7F7F7F7F7F7F7F5B5207070707
              070707070707070707070707070707070707070707F70A657F7F6E1C777F7F76
              647F7F7F7F7F7F7F7F7F6E7777775C647F7F6E0AF70707070707070707070707
              070707070707070707070707F7495C777F7F7F7F7F77777F7F7F7F7F7F7F7F7F
              776D7F7F7F7F6D767F5C52070707070707070707070707070707070707070707
              07070707A40A5C7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E7F7F7F7F6E7F
              775B5BF70707070707070707070707070707070707070707070707070707075B
              5C7F7765777F7F7F776D7F7F7F7F7F7F7F7F656E7F7F7F776D7F6E0A5B070707
              070707070707070707070707070707070707070707075B007F7F7F6D657F7F77
              647F7F7F7F7F7F7F7F776E7F7F7F7F77765C00A4070707070707070707070707
              07070707070707070707070707075B127F7F657F7F7F7F7F777F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F5B0A0707070707070707070707070707070707070707
              0707070707F70A6D7F775C6E7F7F7F6E6D7F7F7F7F7F7F7F7F7F6E7F7F7F7764
              777F6E0A9C0707070707070707070707070707070707070707070707F70A1B77
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E7F7F7F7F776D775B5B0707070707
              0707070707070707070707070707070707070707A4005C777F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F77777F7F7F7F7F7F6E126407070707070707070707070707
              0707070707070707070707070707075B5B7F6E777F7F7F7F776E7F7F7F7F7F7F
              7F7F656E7F7F7F7F6E766E0A5B07070707070707070707070707070707070707
              0707070707075B007F7F7F65777F7F7F6E7F7F7F7F7F7F7F7F7F767F7F7F7F7F
              7F6E009C0707070707070707070707070707070707070707070707070707AD0A
              7F7F777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F130007070707
              070707070707070707070707070707070707070707F7006D7F6E6E7F7F7F7F76
              6E7F7F7F7F7F7F7F7F7F6E7F7F7F7F766E7F6E0A5B0707070707070707070707
              070707070707070707070707A4005B777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F776E1264070707070707070707070707070707070707070707
              07070707A4001C777F7F7F7F7F7F7F7F7F7F776E6E777F7F7F7F7F7F7F7F7F7F
              6E0AA4070707070707070707070707070707070707070707070707070707075B
              1B7F7F7F7F7F7F7F77777F7F7F7F7F7F7F7F6E767F7F7F7F7F656E0A5B070707
              070707070707070707070707070707070707070707079C007F7F776D7F7F7F7F
              6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E009C070707070707070707070707
              0707070707070707070707070707F749777F7F7F7F7F7F7F7F7F7F7F7F776E77
              777F7F7F7F7F7F7F7F7712000707070707070707070707070707070707070707
              0707070707F7006D776D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6D777F7F7F7F
              777F77129C0707070707070707070707070707070707070707070707A4001B6E
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0AA40707070707
              0707070707070707070707070707070707070707A40A1C777F7F7F7F7F7F7F7F
              7F776E6E6E6E7F7F7F7F7F7F7F7F7F775C0AA507070707070707070707070707
              0707070707070707070707070707075B5B777F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F77777F7F7F7F7F776E0A5B07070707070707070707070707070707070707
              070707070707A50A6E7F7F767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F6E009C07070707070707070707070707070707070707070707070707070752
              1C777F7F7F7F7F7F7F7F7F7F776E6E6E777F7F7F7F7F7F7F7F77120007070707
              070707070707070707070707070707070707070707F700657F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F6E777F7F7F7F7F7F6E0A640707070707070707070707
              070707070707070707070707A40A5C6E77777F7F7F7F7F7F7F7F777777777F7F
              7F7F7F7F7F7F7F7F640AA5070707070707070707070707070707070707070707
              07070707A40A1C65777F7F7F7F7F7F7F7F7F7F7F7F777F7F7F7F7F7F7F7F776E
              124907070707070707070707070707070707070707070707070707070707075B
              12777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6D0AA4070707
              07070707070707070707070707070707070707070707F7495B7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F65009C070707070707070707070707
              0707070707070707070707070707075B126E777F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F776E12000707070707070707070707070707070707070707
              0707070707F700657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F777F7F7F7F7F
              7F7F6400A40707070707070707070707070707070707070707070707A40A656E
              6E6E6D7F7F7F7F7F7F7F77776E77777F7F7F7F7F7F7F7F7F5C52F70707070707
              0707070707070707070707070707070707070707A40A125C777F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F776E650A520707070707070707070707070707
              0707070707070707070707070707075B0A6E7F7F7F7F7F7F7F7F7F7F7F777777
              7F7F7F7F7F7F7F7F7F7F65000707070707070707070707070707070707070707
              070707070707F75212777F7F7F7F7F7F7F7F7F7F7F6E6E7F7F7F7F7F7F7F7F7F
              775C009C070707070707070707070707070707070707070707070707070707A4
              0A656E7776777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F655C120A07070707
              070707070707070707070707070707070707070707F7005C7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F1B00F70707070707070707070707
              070707070707070707070707A4001C655C13657F7F7F7F7F7F7F7F7F7F7F777F
              7F7F7F7F7F7F7F76125207070707070707070707070707070707070707070707
              070707F7520A647F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E5B1B
              005B0707070707070707070707070707070707070707070707070707070707F7
              0A65777F7F7F7F7F7F7F7F7F776F7777777F7F7F7F7F7F7F7F77650007070707
              07070707070707070707070707070707070707070707075B0A656E777F7F7F7F
              7F7F7F7F766E77767F7F7F7F7F7F7F776E1C009C070707070707070707070707
              07070707070707070707070707070707001C6E5C657F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F6E0A00F707070707070707070707070707070707070707
              0707070707F70A1C777F7F7F7F7F7F7F7F7F7F777777777F7F7F7F7F7F7F7F7F
              7F771B00070707070707070707070707070707070707070707070707A4000A12
              6E777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7777776D0A9C070707070707
              07070707070707070707070707070707070707A4005C7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A00A40707070707070707070707070707
              0707070707070707070707070707070700656E777F7F7F7F7F7F7F7F77777777
              777F7F7F7F7F7F7F7F771B000707070707070707070707070707070707070707
              07070707070707A4001C656E6E777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E
              5C5C00A407070707070707070707070707070707070707070707070707070708
              520A1C6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F650A52F70707
              07070707070707070707070707070707070707070707520A777F7F7F7F7F7F7F
              7F7F77777777777F7F7F7F7F7F7F7F7F7F6E1352070707070707070707070707
              07070707070707070707070752005B767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F77646E5C00A507070707070707070707070707070707070707070707
              0707F7520A76B7AFAF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F65
              0A4AF70707070707070707070707070707070707070707070707070707070707
              00641C6D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F656E120007070707
              0707070707070707070707070707070707070707070707070012656564777F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F76120052070707070707070707070707
              0707070707070707070707070707070852006D7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F64005B070707070707070707070707070707070707
              070707070707520A6E777F7F7F7F7F7F7F7F7F777F7F777F7F7F7F7F7F7F7F77
              776E0A9C0707070707070707070707070707070707070707070707A50A13777F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E1B0A004AF70707070707
              070707070707070707070707070707070707F70A6477AFA7A7AF7F7F7F7F7F7F
              776E7777766E7F7F7F7F7F7F7F7FBF7F640AA407070707070707070707070707
              070707070707070707070707070707070012657F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F641B0A0A0707070707070707070707070707070707070707
              0707070707070707520A1C65777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F760A00F70707070707070707070707070707070707070707070707070707F7
              005C7F7F7F7F7F7F7F7F7F7F7F7F7F7F777F7F7F7F7F7F7FB7B7B77F1349F707
              07070707070707070707070707070707070707070707520A1B6E7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E656E650AA5070707070707070707070707
              0707070707070707070707520A6EB7B7B77F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F6D125B0A52F70707070707070707070707070707070707070707
              0707F70A6DB7AFA7A7AF7F7F7F7F7F77656D65656D656D777F7F7F7FB7AFAF7F
              770A5B070707070707070707070707070707070707070707070707070707075B
              0A657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A0AF7070707
              0707070707070707070707070707070707070707070707F749005C7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E0A5B0707070707070707070707
              07070707070707070707070707F79C0A1277B7B7BF7F7F7F7F7F7F766D65776E
              64656E7F7F7F7FBFAFA7A7B76D00F70707070707070707070707070707070707
              070707070707520A6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6D
              5C1B52F707070707070707070707070707070707070707070707F70A5CB7AFAF
              AFB77F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F656E130AA507070707
              070707070707070707070707070707070707F70A657FAFA7A7B77F7F7F7F7F7F
              7F7F7F777F7F77777F7F7F7FAFA7A7AF771B52F7070707070707070707070707
              0707070707070707070707070707A40A657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F650A5B07070707070707070707070707070707070707
              070707070707F74A0012777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              B7B7B75B49A507070707070707070707070707070707070707070707F7520A12
              5CB7AFAFB77F7F7F7F7F7F646D6E646D77776E7F7F7F7FB7A7A7A7AF760AF707
              070707070707070707070707070707070707070707F70A5C7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E1252F7070707070707070707070707
              07070707070707070707F70A6EB7AFAFAFB77F7F7F7F7F765C6564645C657F7F
              7F7F7F7FB7B7776E641349F70707070707070707070707070707070707070707
              0707F70A1B777FB7B77F7F7F7F7F7F7F7F775C647F7F7F7F7F7F7F7FAFA7A7AF
              BF5C52F707070707070707070707070707070707070707070707070707F75200
              7FB7AFB7BF7F7F7F7F7F7F6E6D777F776E777F7F7F7F7F7F7F7F7F5C52F70707
              070707070707070707070707070707070707070707F7490A64657F7F7F7F7F7F
              7F7F7F7F77777F7F77777F7F7F7F7FB7A7A7AF6E005B07070707070707070707
              0707070707070707070707F7520A657764AFA7A7AFBF7F7F7F7F7F777F7F777F
              7F7F7F7F7F7F7FBFAFA7A7B76E0AF70707070707070707070707070707070707
              07070707075B0A767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F6D0AA407070707070707070707070707070707070707070707F70A6DB7AFAF
              AFB77F7F7F7F7F777F7F766E776E777F7F7F7FB7AFAFAF775B0A520707070707
              07070707070707070707070707070707070707520A777F7F7765131B6E7F7F7F
              7F776564777F7F7F7F7F777FAFA7A7B77F1B5B07070707070707070707070707
              07070707070707070707070707F70A1BB7AFA7A7B77F7F7F7F7F7F646E6E6D6E
              6E6E777F7F7F7FB7AFAFB7770A5B070707070707070707070707070707070707
              07070707F70A5B776E6EB7AFAF7F7F7F7F7F7F6D5B5C655C646D6D7F7F7F7FAF
              A7A7A7B70052070707070707070707070707070707070707070707F7526E7F7F
              5CAFA7A7AFBF7F7F7F7F7F7F7F7F1B6D7F7F7F7F7F7F777FBFB7B77F6500F707
              070707070707070707070707070707070707070707491B7FB7AFAFB7BF7F7F7F
              7F7F776E76776E6E7F7F7F7F7F7FBFB7B7B71B52070707070707070707070707
              07070707070707070707F70A647FB7B7B77F7F7F7F7F7F7F7F7F6E767F7F7F7F
              7F7F7FB7AFAFAFB7130AA4070707070707070707070707070707070707070707
              0707075B0A6E7F7F650A000012777F7F7F7F7F7F7F7F7F7F77645B6577B7B77F
              7712A40707070707070707070707070707070707070707070707070707F70A65
              B7AFA7A7AF7F7F7F7F7F7F777F7F777F7F7F7F7F7F7F7FAFA7A7AFBF0A0AF707
              07070707070707070707070707070707070707F7525B777F6D77A7A7A7B77F7F
              7F7F7F6E77776E767F7F7F7F7F7F7FAFA7A7AFB70A5207070707070707070707
              0707070707070707070707075B5B7F7F64B7AFAFB77F7F7F7F7F7F7F7F7F646E
              7F7F7F7F7F655B64777F7F7F6400F70707070707070707070707070707070707
              07070707F70A657FAFA7A7AFB77F7F7F7F77656E655B6565657F7F7F7F7FB7A7
              A7AF650A07070707070707070707070707070707070707070707075B13777F7F
              7F6E646E7F7F7F7F7F775C657F7F7F7F7F7F7FB7AFAFAFB7130A9CF707070707
              07070707070707070707070707070707070707A400657F7F1B529C000A6E7F7F
              7F7F7F7F7F7F7F771200000A657F7F7F650AF707070707070707070707070707
              0707070707070707070707070707525B7FB7AFAFB77F7F7F7F7F7F7F7F776E7F
              7F7F7F7F7F7F7FAFA7A7AF7F1C0AF70707070707070707070707070707070707
              070707A4005C7F7F64B7A7A7A7AF7F7F7F7F7F7F7F7F656E7F7F7F7F7F7F777F
              B7B7B77F0A5207070707070707070707070707070707070707070707F749657F
              65777FBF7F77655C6E7F7F7F7F7F7F7F7F7F7F7F6500000013777F7F6500F707
              0707070707070707070707070707070707070707AD0A657FAFA7A7A7B77F7F7F
              7F7F7F7F7F777F7F7F7F7F7F7F7FAFA7A7A76E12F70707070707070707070707
              07070707070707070707079C0A767F7F650A000A657F7F7F7F7F7F7F7F7F7F7F
              776E6E77B7B7B7775B0A0052F707070707070707070707070707070707070707
              070707F70A657F7F6564AD0A12777F7F7F7F7F7F7F7F7F6E0A4900005C7F7F7F
              13005BF707070707070707070707070707070707070707070707070707075B0A
              7FBFB7BF7F77777F7F7F7F7F7F655B767F7F7F7F7F7F7FB7AFAFB7BF0A00F707
              07070707070707070707070707070707070707F752127F7F6E77AFA7AFB77F7F
              7F7F7F7F7F775B5C777F7F7F775C5B64777F7F7F005B07070707070707070707
              070707070707070707070707075B12776E6E7F7F771300000A767F7F7F7F7F7F
              7F7F7F7F5B5252000A777F7F1B52F70707070707070707070707070707070707
              07070707A40A5C7FB7AFAFB7BF7F7F7F7F7F7F7F6E777F7F7F7F7F7F7F7FB7A7
              A7AF6E12F707070707070707070707070707070707070707070707F70A657F7F
              1200000012777F7F7F7F7F7F7F7F7F6E120A12657F7F7F6E656E5B0A499C0707
              07070707070707070707070707070707070707F749657F7F765B520A657F7F7F
              7F7F7F7F7F7F7F6E5B645200647F7F6E1B0A0052070707070707070707070707
              07070707070707070707070707079C0A777F7F7F651212657F7F7F7F7F7F777F
              7F7F7F7765646E77BFBF7F770049F70707070707070707070707070707070707
              07070707A40A6E7F6E6EBFB7BF7F776E777F7F7F7F7F7F7F7F7F7F771B00000A
              6D7F7F7F00A40707070707070707070707070707070707070707070707A50A6E
              77657F7F6D12520000647F7F7F7F7F7F7F7F7F7F64655B0013777F7F0A520707
              0707070707070707070707070707070707070707F70A13777FBFB77F77777F7F
              7F7F7F771B657F7F7F7F7F7F777F7FB7B7B76D0A070707070707070707070707
              0707070707070707070707F749647F7F13A45B000A777F7F7F7F7F7F7F7F775B
              0000005B777F7F65777F7F6E130A52F707070707070707070707070707070707
              070707F7525B7F7F7F776E767F7F7F7F7F7F7F7F7F7F7F7F655B1213777F7F6E
              6E77130A52AD070707070707070707070707070707070707070707070707A50A
              647F7F650A00000A767F7F7F7F7F7F7F7F7F7F5B00000A657F7F7F6D005B0707
              070707070707070707070707070707070707070707495B7F77657F7F7F6D0A0A
              126E7F7F7F7F7F7F7F7F7F6E0A520000647F7F7749F707070707070707070707
              070707070707070707070707070752137F65777F6E64074900657F7F7F7F7F7F
              7F7F7F7F776413136E7F7F7F005B070707070707070707070707070707070707
              0707070707520A6E7F7F775B0A0A5C7F7F7F7F7F7F7F7F7F7F7F6E1B121B767F
              7F7F5C520707070707070707070707070707070707070707070707F7525B7F7F
              65655B005B7F7F7F7F7F7F7F7F7F775B9C5B0012777F7764777F7F7F77650A5B
              07070707070707070707070707070707070707075B0A777F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F776E6E777F7F7F65777F77650A5207070707070707070707
              0707070707070707070707070707F749647F7F655B5B000A6E7F7F7F7F7F7F7F
              7F7F7713520A001B777F7F5C00A4070707070707070707070707070707070707
              07070707075B0A767F6D777F7F5B0A00001B7F7F7F7F7F7F7F7F7F765BF75200
              647F7F6549F70707070707070707070707070707070707070707070707075B00
              7F6D777F77645B0012767F7F7F7F7F7F7F7F7F7F7F7777777F7F7F7F0AA40707
              07070707070707070707070707070707070707070752006D7F7F6D0A0000006E
              7F7F7F7F7F7F7F7F7F771B0000005C7F7F771264070707070707070707070707
              0707070707070707070707075B127F7F7F6E6465777F7F7F7F7F7F7F7F7F7F6D
              AD5B0A657F7F77657F7F7F7F7F7F1352F7070707070707070707070707070707
              07070707A40A647F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7765
              7F7F7F7F6500F707070707070707070707070707070707070707070707070752
              5B7F7F76ADA50A0A777F7F7F7F7F7F7F7F7F7F64F75B005C7F7F771349F70707
              070707070707070707070707070707070707070707F700657F6E6E7F7F5BF75B
              005B7F7F7F7F7F7F7F7F7F7F6E5B125B777F7F5C49F707070707070707070707
              070707070707070707070707079C0A657F77657F7F77776E777F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F6D49F7070707070707070707070707070707070707
              07070707076400657F7F649C520000657F7F7F7F7F7F7F7F7F7713A45200127F
              7F7712A4070707070707070707070707070707070707070707070707A40A777F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E5B657F7F7F6E6E7F7F7F7F7F7F1349
              F707070707070707070707070707070707070707F70A12777F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F65657F7F7F7F6500F7070707070707070707
              0707070707070707070707070707075B0A767F7F6E5B5B6E7F7F7F7F7F7F7F7F
              7F7F7F6E645213767F7F761252F7070707070707070707070707070707070707
              07070707F752005C7F77647F7F65AD520A657F7F7F7F7F7F7F7F7F7F7F776E77
              7F7F7F5C49F707070707070707070707070707070707070707070707A40A657F
              7F7F5C777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5B52070707
              070707070707070707070707070707070707070707A5005C7F7F6EAD5B000A77
              7F7F7F7F7F7F7F7F7F775CA45200647F7F7652F7070707070707070707070707
              070707070707070707070707A40A6D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F657F7F7F7F7F7F7F1B49F7070707070707070707070707070707
              070707079C0A126D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F775C65
              6E7F7F7F6500F7070707070707070707070707070707070707070707070707F7
              0A6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E777F7F7F6E0A5B070707
              070707070707070707070707070707070707F79C490A5C777F7F5C777F77655C
              65777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77130AA407070707070707070707
              07070707070707070707076452657F7F7F7F6E657F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F6E0A0A9C070707070707070707070707070707070707
              0707070707F7520A7F7F7F651312657F7F7F7F7F7F7F7F7F7F7F77641365777F
              7F6E52F7070707070707070707070707070707070707070707070707F70A1377
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F775B777F7F7F7F7F7F5B49
              F7070707070707070707070707070707070707A50A1265777F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7765651C6E7F7F6500F7070707070707070707
              0707070707070707070707070707070700647F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F64009C07070707070707070707070707070707070707
              07A4520A1B767F7F7F7F6E6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F6E12000AA407070707070707070707070707070707070707A40A657F7F7F
              7F7F775C767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F655C0A005BF7
              070707070707070707070707070707070707070707075B00777F7F7F77777F7F
              7F7F7F7F7F7F7F7F7F7F7F7F777F7F7F7F5B5B07070707070707070707070707
              070707070707070707070707A40A0A657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F64121B6E7F7F7F7F7F1B49F7070707070707070707070707070707
              070707520A65777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E
              651B6E7F6500F7070707070707070707070707070707070707070707070707F7
              000A777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7713005BF70707
              070707070707070707070707070707F7520A136E7F7F7F7F7F7F7765777F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F651C5B0A0A9C0707070707070707
              070707070707070707F70A5C7F7F7F7F7F7F771B5C7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F776E65130052F7070707070707070707070707070707
              070707070707A549657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              770A9C070707070707070707070707070707070707070707070707F70A13656E
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F775C6E5C12647F7F7F7F1B49
              F70707070707070707070707070707070707A40A5C777F7F7F7F7F7F76777F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7777655C766400F7070707070707070707
              07070707070707070707070707F75B0A0A12647F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F6E1B130052A5070707070707070707070707070707A449
              0A6D7F7F7F7F7F7F7F7F7F5C6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F775C6565650A005B07070707070707070707070707070707F749647F7F7F7F
              7F7F641C5C6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F776E1B0A
              52F70707070707070707070707070707070707070707A44913777F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F650A495BF70707070707070707070707
              0707070707070707070707520A6E77777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F776E6E6E650A5B777F7F1349F7070707070707070707070707070707
              07F74912777F7F7F7F7F7F65121B5C656E777F7F7F7F7F7F6E767F7F7F7F7F7F
              7F77655C1249F7070707070707070707070707070707070707070707F752001B
              656E5C777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F656E6E1B0049A4
              07070707070707070707070707075B0A6E7F7F7F7F7F7F7F7F7F65121B7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77776E6D65120A5B070707070707
              070707070707070707075B1B7F7F7F7F7F651B6E777F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F776E1B0A52F707070707070707070707070707
              0707070707F752125C6E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77
              5C65130A52A407070707070707070707070707070707070707F7520A6D777F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F777777650A0A6E771349
              F7070707070707070707070707070707075B0A6E7F7F7F7F7F77640000000000
              00000A0A0A0A13120A5B777F7F7F7F7F7F7F77650052F7070707070707070707
              07070707070707070707F79C0A0A6D7777777F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F77776F650A0052F7070707070707070707070707A40A
              6E7F7F7F7F7F7F7F7F645B6D65657F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F776E1C0052F70707070707070707070707070707A40A767F7F7F
              6E1B6E777F7F7F7F77656576777777777777776E6D655C6D777F7F7F7F7F7777
              650A49F707070707070707070707070707070707F749126D6E657F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6E6E6F6E6D130A52F70707070707070707
              0707070707070707075B0A5C777F7F7F7F7F7F6565656E777F7F7F7F7F7F7F77
              777F7F7F7F7F7F7F77775C000A5C1249F7070707070707070707070707070707
              F7000A7F7F7F7F7F775B0A52A45B5B5B5B5B525252520A0A0000136E7F7F7F7F
              7F7F7F771B005B070707070707070707070707070707070707F75B0A136D7777
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77776512
              0052A50707070707070707070707F70A647F7F7F7F7F7F7F641C657777777F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77765B0052F7070707
              070707070707070707070752657F7F7F1B65777F7F7F7F7F640A000A12125212
              12120A0A00000A0A5C767F7F7F7F7F7F77650A52F70707070707070707070707
              070707F752126D6E77767F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7777776F6E640A0A9C070707070707070707070707070707A40012767FBF7F7F
              7F775C000A0A0A0A125B645C5B13120A0A65777F7F7F7F7F7F7F775C00000049
              F70707070707070707070707070707F75200137F7F7F7F77130A5B0707070707
              070707F7F7F7F7F7F764520A5B767F7F7F7F7F7F6E0A00A40707070707070707
              0707070707070707A5490A5C767F7F7F7F7F7F7F7F775C125C76777F7F7F7F7F
              7F77777777777F7F7F7F7F7F7F7F776E12000AA4070707070707070707070752
              137F7F7F7F7F7765136E777F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77777665
              6E7F7F7F7F7F7F7F7F765B0052F7070707070707070707070707075B5B7F7F5C
              65777F7F7F7F7F640A4A52525252490A0A52525B64F7F75B0A0A64777F7F7F7F
              7F77650052F7070707070707070707070707F7520A6577777F7F7F7F7F77777F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77776D120A52F70707070707
              07070707070707F70A00657FBFBF7FBF6E120A5BA4A45252524A524A52525252
              520A126E7F7F7F7F7F7F7F771300005BF70707070707070707070707070707A4
              000A1C7F7F7F6E124AA407070707070707070707070707070707F79C0A126577
              7F7F7F7F7F650049F707070707070707070707070707F75B000A6D777F7F7F7F
              7F7F7F7765130A49520A125B1B5B5B5C5C646E5C0A5B6D7F7F7F7F7F7F7F7F7F
              6E120049A407070707070707070707A40A777F7F7F771312767F7F7F7F7F7F7F
              77656E6E7676777777766E6513120A0A0A5B65777F7F7F7F7F7F77120052F707
              0707070707070707070707A40A766513777F7F7F7F7F5C005207070707F7F7A5
              AD07070707070707A552000A64777F7F7F7F7713005B07070707070707070707
              07F7520A6577777F7F7F7F7F6E641B6E7777777F7F7F7F7F7F77776E6E777F7F
              7F7F7F7F7F7F776E1B000AA5070707070707070707070752001377BF7FBF776D
              0A0A9C07070707F7F7F7F7F7F7F7F707F7A4490A1B6E7F7F7F7F7F7F640A0052
              07070707070707070707070707070752000A657F7F6E120AF707070707070707
              070707070707070707070707F7520A5B65777F7F7F6E0A005207070707070707
              0707070707F752000A65777F7F7F7F7F7F776D1B0A499CF7F7A452520A000A00
              001B775C000A0A1B6E777F7F7F7F7F7F7F650A0049A4070707070707070707A4
              006E7F7F7F640A657F7F7F7F7F7F7F771B0A5252131212120A120A49525BA4A4
              5B0A0A1265777F7F7F7F7F650A0052070707070707070707070707F752641265
              777F7F7F7F640A52F707070707070707070707070707070707F75B4900136577
              7F7F7F650A0AA407070707070707070707520A6577777F7F7F7F7F6D130A0A6E
              6E655B6565656E6E641212120A1264767F7F7F7F7F7F7F7F6E120049A4070707
              0707070707079C000A5C7FBF7F6E130A52A50707070707070707070707070707
              0707F75B490A136D777F7F7F650A0A009C07070707070707070707070707F700
              0A0A6E77650A52F707070707070707070707070707070707070707070707A452
              0A1264767F6E120A00A407070707070707070707F7520A0A12767F7F7F776E65
              120A0A52A4F7070707070707F7F7F7A55B0A1B1249F75B520A12646E7F7F7F7F
              7F771B0A000AA40707070707070707F752647F7F650A1C777F7F7F7F7F77650A
              49A5F7F7F7F764A4A4A5F7070707070707F79C520A0A5B6E777F7F77130A00A4
              0707070707070707070707F74A00126E7F7F7F775C0A52F70707070707070707
              0707070707070707070707075B520A0A64767F77130A0AF70707070707070707
              5B0013777F7F7F7F776D130A00000A6E7F6E0A000A0A000A49525B5B9C5B490A
              12656E777F7F7F7F7F5B0A00009C07070707070707A5490A0A6E7F77640A0A9C
              F707070707070707070707070707070707070707F75B0A001265767F6E130A00
              49F70707070707070707070707075B000A12651B0A5BF7070707070707070707
              070707070707070707070707070707F7A4520A0A5C65130A0A52F70707070707
              070707F752000A121B6E6E5C13120A00525BAD07070707070707070707070707
              075B0000520707F79C520A0A13646E7F7F7F5C120A0000A40707070707070707
              5B1277761312657F7F7F7F7F765B0A52F7070707070707070707070707070707
              070707F7A452490A12646E7F640A000AF707070707070707070707A4000A5C77
              7F7F6E130A5BF70707070707070707070707070707070707070707070707AD52
              0A0A5B6D130A0052F70707070707079C000A657F7F7F7F76130A0052A45B0064
              7F65005252529CA5F7F707070707F79C52000A0A5B6576777F65120A000AA507
              07070707F752000A0A6D640A005BF70707070707070707070707070707070707
              070707070707F7A452490A125C130A0A005B0707070707070707070707F75200
              0A0A0A499C070707070707070707070707070707070707070707070707070707
              0707F7A449000A0A0A00A507070707070707075B000000000A0A49525252A4F7
              F70707070707070707070707070707070707A452F70707070707F7A45249000A
              136D5C12120A00520707070707070707F70A64120A13777F7F7F6E5B0A499C07
              07070707070707070707070707070707070707070707F7A55B520A12120A0A00
              5B070707070707070707075200126E7F7F6D0A005B0707070707070707070707
              07070707070707070707070707070707F75B490A00000000A40707070707A400
              0A136E7F7F6E5C0A0052A40707F7520A775C49F7070707070707070707070707
              07F79C52520A0A0A1B640A0A0A000AF707070707F7000A0A0A0A0A52A4070707
              07070707070707070707070707070707070707070707070707F75B0A00000000
              000AF707070707070707070707F70A0000005BF7070707070707070707070707
              0707070707070707070707070707070707070707F7A4520A0052F70707070707
              070707F7525B5BA4A5A5F7070707070707070707070707070707070707070707
              070707F7070707070707070707F7A452520A00000A0000520707070707070707
              07490A0A0A1B777F6E5C0A0052F7070707070707070707070707070707070707
              07070707070707070707A5A452490A0052F70707070707070707A4000A13777F
              130A52AD07070707070707070707070707070707070707070707070707070707
              0707F7A55B5B5252F707070707F752001213776E1B0A00499CF7070707076400
              5C0A5B070707070707070707070707070707070707A55B49490A0000000000F7
              07070707520000000052A4F70707070707070707070707070707070707070707
              0707070707070707070707F79C5B49494952F707070707070707070707F74900
              52A4070707070707070707070707070707070707070707070707070707070707
              07070707070707F7A5F707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              07A45B52494952A40707070707070707F70A0A0A0A1B6E5B0A0A52A4F7070707
              0707070707070707070707070707070707070707070707070707070707F7F7A4
              F707070707070707070752000A135C0A495BF707070707070707070707070707
              07070707070707070707070707070707070707070707070707070707075B000A
              12125C0A0A52A4F7070707070707F70A0049F707070707070707070707070707
              070707070707070707A59C5B5B9CA407070707075200005BA507070707070707
              070707070707070707070707070707070707070707070707070707070707F7F7
              F7F7070707070707070707070707A464F7070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707F7F7F70707070707070707F7
              52000A0A0A0A0A0052A4F7070707070707070707070707070707070707070707
              07070707070707070707070707070707070707070707070707F70A0A0A000052
              A407070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707F70A000A00000052A4F70707070707070707075B
              005B070707070707070707070707070707070707070707070707070707070707
              07070707F75BF707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707F70A000000004952A4F707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707A40000004A9CF707070707070707070707070707070707
              07070707070707070707070707070707070707070707070707070707F752000A
              495BF7070707070707070707070707F764F70707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              9C52525B64F70707070707070707070707070707070707070707070707070707
              07070707070707070707070707070707070707070707070707F75252A4070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707070707070707070707F7A5F707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707F70707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              07070707070707070707F7070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              0707070707070707070707070707070707070707070707070707070707070707
              070707070707070707070707070707070707}
          end
          object SpeedButton4: TSpeedButton
            Left = 68
            Top = 1
            Width = 15
            Height = 11
            Hint = 'Iniciar'
            Flat = True
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
            OnClick = SpeedButton4Click
          end
          object SpeedButton5: TSpeedButton
            Left = 84
            Top = 1
            Width = 15
            Height = 11
            Hint = 'Zerar/Come'#231'o'
            Flat = True
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
            OnClick = SpeedButton5Click
          end
          object Panel10: TPanel
            Left = 50
            Top = 21
            Width = 115
            Height = 35
            BorderWidth = 4
            Caption = '00:00:00'
            Color = 15787737
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet10: TTabSheet
          ImageIndex = 10
          object Image4: TImage
            Left = 190
            Top = 82
            Width = 32
            Height = 20
            AutoSize = True
            Center = True
            Picture.Data = {
              07544269746D6170B6060000424DB60600000000000036040000280000002000
              000014000000010008000000000080020000C40E0000C40E0000000100000000
              000000000000000080000080000000808000800000008000800080800000C0C0
              C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF00000000000000FF00FF001000000000000000F400647AFF001F320800BD3D
              DF00FFFF1F00000000001F3200000C89460000000300961940009D9EB7000000
              0000000080000700FC0000000200808B0200BF168B00B7170000000000008008
              07000C89020000000200248B80006C8412000C89020000009700670287000000
              67000000C500F7BFDC005E8178004D5F0300405F88004D5F4000000003000000
              740056007400560078004D5F70005600CC0056003300495F7400560074005600
              B4005600E300495F00000000C00056006700405F7400560074005600D0005600
              B500495FFF00FFFFDC0056000700405F0100000074005600AC005600C500495F
              FF00FFFFB8005600B8000101C0006900C00069000000000053006D206E006D65
              00001A85BD009F170100D0856F00AA0043000C890200808B020000000000B717
              64003A85BD009F170100D0856F00AA004300808B0200248B0200000000000000
              00005A85BD009F170100D0856F00AA004300248B020000005000E4855200B717
              0100000061002C0040008E0000000002FC0028866F004A200A00020000000002
              AA0043010000618E2C00AA00430000000000000000000000000097101F000000
              0000000000009710970000000100C716BE00740300000000000000001F001101
              00000000B700E31040008E00AA008D310F00CE42E30012550000628700000000
              97000700020000000000FC0A08007C0B00000200500020001400200001000000
              D700E0FFFF000000FE0060020000D742040000040000CE420000000000000000
              80000000000028866F00248B64006800FC000002000001002000140000006743
              500020002000200001000000DF00E0FFFF000000FE00E0030000DF2804000004
              0000BE31000000000000000080000000C000FFFF64000000100000006800495F
              01000100200000000000C7310600000000000000000000000000000000000000
              0000000000000000D8005D80000000005700C487BF001F0757000000570086FC
              67000000C70060555700502677000000000000000000000000002000CC000000
              8400000000000000E000580000000000040000000300C0420000D02800000487
              DF003F02E200D028010057024600E94A3F0064135700C0420000D02800004687
              56002E875600000000000100980001000000D0280000D7045700A7000000E0F5
              4600448700000C000000D428840056001C00000054005900B4000000A000F7BF
              00008A095A000254000000007A003A648A002602DE004D4FC700010022000000
              570090874800E7058A0000004E00CA8BDA00025402005707CC009913F7004226
              0200000000000000000000000000000000000000000000000000000000000000
              0000000202020202020202020202020202020202020202020202020202020202
              0200000202020202020202020202020202020202020202020202020202020202
              02000002020202020202020202020202020B0B02020202020202020202020202
              02000002020202020202020202020B0B0B0B0B0B0B0B02020202020202020202
              0200000202020202020202020B0B0B0B0B0B0B0B0B0B0B0B0202020202020202
              020000020202020202020B0B0B0B0B0C0C0C0C0C0C0B0B0B0B0B020202020202
              020000020202020B0B0B0B0B0B0B0C0F0C0C0F0C0C0C0B0B0B0B0B0B0B020202
              02000002020B0B0B0B0B0B0B0B0C0C0C0C0F0C0C0C0C0F0B0B0B0B0B0B0B0B02
              020000020B0B0B0B0B0B0B0B0B0C0C0F0C0C0C0C0F0F0C0B0B0B0B0B0B0B0B0B
              020000020B0B0B0B0B0B0B0B0B0C0C0C0C0C0F0F0C0C0C0B0B0B0B0B0B0B0B0B
              02000002020B0B0B0B0B0B0B0B0C0C0C0F0F0C0C0C0C0C0B0B0B0B0B0B0B0B02
              020000020202020B0B0B0B0B0B0B0C0C0C0C0C0F0C0C0B0B0B0B0B0B0B020202
              020000020202020202020B0B0B0B0B0C0C0C0C0C0C0B0B0B0B0B020202020202
              0200000202020202020202020B0B0B0B0B0B0B0B0B0B0B0B0202020202020202
              02000002020202020202020202020B0B0B0B0B0B0B0B02020202020202020202
              02000002020202020202020202020202020B0B02020202020202020202020202
              0200000202020202020202020202020202020202020202020202020202020202
              0200000202020202020202020202020202020202020202020202020202020202
              0200000000000000000000000000000000000000000000000000000000000000
              0000}
            Stretch = True
            OnDblClick = Image4DblClick
          end
          object LabelX8: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 12
            Align = alTop
            AutoSize = False
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitLeft = 2
            ExplicitTop = 3
            ExplicitWidth = 225
          end
          object Panel14: TPanel
            Left = 0
            Top = 12
            Width = 229
            Height = 64
            Align = alTop
            BorderWidth = 2
            Color = 15583102
            TabOrder = 0
            object Shape2: TShape
              Left = 3
              Top = 3
              Width = 223
              Height = 58
              Align = alClient
              Brush.Style = bsClear
              Pen.Color = 14588445
              Shape = stRoundRect
              ExplicitTop = 40
              ExplicitWidth = 219
            end
            object Label22: TLabel
              Left = 22
              Top = 23
              Width = 93
              Height = 11
              Cursor = crHandPoint
              Caption = 'antoninocs@gmail.com'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 21
              Top = 6
              Width = 144
              Height = 11
              Caption = 'Para novas vers'#245'es envie email p/'
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 153
            Width = 229
            Height = 26
            Align = alBottom
            BevelInner = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PaintBox1: TPaintBox
              Left = 2
              Top = 2
              Width = 225
              Height = 22
              Align = alClient
              Color = clNavy
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Courier'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitWidth = 185
            end
          end
        end
        object TabSheet11: TTabSheet
          ImageIndex = 9
          object Panel19: TPanel
            Left = 0
            Top = 37
            Width = 229
            Height = 118
            Align = alTop
            TabOrder = 0
            object StringGrid1: TStringGrid
              Left = 1
              Top = 1
              Width = 212
              Height = 116
              Align = alClient
              Color = 16774378
              ColCount = 3
              DefaultColWidth = 20
              DefaultRowHeight = 15
              RowCount = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              OnClick = StringGrid1Click
              OnEnter = StringGrid1Enter
              OnKeyDown = StringGrid1KeyDown
              OnKeyPress = StringGrid1KeyPress
              ColWidths = (
                20
                75
                66)
            end
            object ScrollBar1: TScrollBar
              Left = 213
              Top = 1
              Width = 15
              Height = 116
              Align = alRight
              Kind = sbVertical
              PageSize = 0
              TabOrder = 1
              OnChange = ScrollBar1Change
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 37
            Align = alTop
            TabOrder = 1
            object LabelX9: TLabel
              Left = 1
              Top = 1
              Width = 138
              Height = 14
              Align = alClient
              AutoSize = False
              Caption = ' Agenda de Contatos:'
              Color = clSkyBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitWidth = 98
            end
            object LabelX10: TLabel
              Left = 139
              Top = 1
              Width = 89
              Height = 14
              Align = alRight
              Alignment = taCenter
              AutoSize = False
              Color = 15329990
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              ExplicitLeft = 135
              ExplicitTop = -4
            end
            object Panel20: TPanel
              Left = 1
              Top = 15
              Width = 227
              Height = 21
              Align = alBottom
              TabOrder = 0
              object PageScroller3: TPageScroller
                Left = 1
                Top = 1
                Width = 225
                Height = 19
                Align = alClient
                AutoScroll = True
                ButtonSize = 13
                Control = ToolBar3
                TabOrder = 0
                object ToolBar3: TToolBar
                  Left = 0
                  Top = 0
                  Width = 304
                  Height = 18
                  Align = alNone
                  AutoSize = True
                  ButtonHeight = 18
                  ButtonWidth = 19
                  Images = ImageList2
                  TabOrder = 0
                  TabStop = True
                  object ToolButton30: TToolButton
                    Left = 0
                    Top = 0
                    Hint = 'Agenda'
                    ImageIndex = 25
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton30Click
                  end
                  object ToolButton31: TToolButton
                    Left = 19
                    Top = 0
                    Hint = 'In'#237'cio'
                    ImageIndex = 9
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton31Click
                  end
                  object ToolButton32: TToolButton
                    Left = 38
                    Top = 0
                    Hint = 'PgUp'
                    ImageIndex = 10
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton32Click
                  end
                  object ToolButton33: TToolButton
                    Left = 57
                    Top = 0
                    Hint = 'Registro Anterior'
                    ImageIndex = 11
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton33Click
                  end
                  object ToolButton34: TToolButton
                    Left = 76
                    Top = 0
                    Hint = 'Registro Posterior'
                    ImageIndex = 12
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton34Click
                  end
                  object ToolButton35: TToolButton
                    Left = 95
                    Top = 0
                    Hint = 'PgDown'
                    ImageIndex = 13
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton35Click
                  end
                  object ToolButton36: TToolButton
                    Left = 114
                    Top = 0
                    Hint = 'Fim'
                    ImageIndex = 14
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton36Click
                  end
                  object ToolButton37: TToolButton
                    Left = 133
                    Top = 0
                    Hint = 'Adicionar'
                    ImageIndex = 6
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton37Click
                  end
                  object ToolButton38: TToolButton
                    Left = 152
                    Top = 0
                    Hint = 'Deletar'
                    ImageIndex = 7
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton38Click
                  end
                  object ToolButton39: TToolButton
                    Left = 171
                    Top = 0
                    Hint = 'Salvar'
                    ImageIndex = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton39Click
                  end
                  object ToolButton40: TToolButton
                    Left = 190
                    Top = 0
                    Hint = 'Procurar'
                    ImageIndex = 18
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton40Click
                  end
                  object ToolButton41: TToolButton
                    Left = 209
                    Top = 0
                    Hint = 'Ir para...'
                    ImageIndex = 15
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton41Click
                  end
                  object ToolButton42: TToolButton
                    Left = 228
                    Top = 0
                    Hint = 'Reorganizar'
                    ImageIndex = 17
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton42Click
                  end
                  object ToolButton43: TToolButton
                    Left = 247
                    Top = 0
                    Hint = 'Apagar Todos os Registros'
                    ImageIndex = 16
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton43Click
                  end
                  object ToolButton44: TToolButton
                    Left = 266
                    Top = 0
                    Hint = 'Op'#231#245'es de Busca'
                    ImageIndex = 22
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton44Click
                  end
                  object ToolButton45: TToolButton
                    Left = 285
                    Top = 0
                    Hint = 'Importar/Exportar utilizando arquivo ".csv"'
                    ImageIndex = 24
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = ToolButton45Click
                  end
                end
              end
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 3
      Top = 324
      Width = 241
      Height = 13
      Align = alBottom
      BevelInner = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Images = ImageList1
    Left = 118
    Top = 8
    object Details1: TMenuItem
      Caption = '&Detalhes...'
      Default = True
      ImageIndex = 12
      OnClick = Details1Click
    end
    object Alarm1: TMenuItem
      Caption = '&Alarme'
      OnClick = Alarm1Click
    end
    object Transparent1: TMenuItem
      Caption = '&Transparente'
      OnClick = Transparent1Click
    end
    object Lock1: TMenuItem
      Caption = '&Destravar'
      OnClick = Lock1Click
    end
    object Close1: TMenuItem
      Caption = '&Fechar'
      ImageIndex = 3
      OnClick = Close1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object About1: TMenuItem
      Caption = '&Sobre...'
      ImageIndex = 11
      OnClick = About1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList1
    Left = 118
    Top = 36
    object N6: TMenuItem
      Caption = '-'
    end
    object Config2: TMenuItem
      Caption = '&Configura'#231#227'o'
      Hint = 'Configura'#231#227'o'
      ImageIndex = 9
      OnClick = Config1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Dos1: TMenuItem
      Caption = 'Prompt MS-&DOS'
      Hint = 'Prompt MS-DOS'
      ImageIndex = 10
      OnClick = Dos1Click
    end
    object Notas1: TMenuItem
      Caption = 'Bloco de &Notas'
      Hint = 'Bloco de Notas'
      ImageIndex = 4
      OnClick = Notas1Click
    end
    object Calculadora1: TMenuItem
      Caption = 'Calculadora'
      Hint = 'Calculadora'
      ImageIndex = 5
      OnClick = Calculadora1Click
    end
    object Executar1: TMenuItem
      Caption = 'E&xecutar...'
      ImageIndex = 6
      OnClick = Executar1Click
    end
    object ImprimirImagem1: TMenuItem
      Caption = '&Imprimir Imagem'
      ImageIndex = 18
      OnClick = ImprimirImagem1Click
    end
    object PrinterSetup1: TMenuItem
      Caption = 'Printer Setup'
      ImageIndex = 19
      OnClick = PrinterSetup1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AbrirFigura1: TMenuItem
      Caption = '&Abrir Figura...'
      Hint = 'Abrir Figura'
      ImageIndex = 14
      OnClick = AbrirFigura1Click
    end
    object SalvarFigura1: TMenuItem
      Caption = 'Salvar Figura &como...'
      Hint = '&Salvar Figura como'
      ImageIndex = 17
      OnClick = SalvarFigura1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Transparent2: TMenuItem
      Caption = 'Transparente'
      OnClick = Transparent2Click
    end
    object Lock2: TMenuItem
      Caption = 'Ativar Movimento da Janela'
      OnClick = Lock2Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Sobre1: TMenuItem
      Caption = '&Sobre...'
      Hint = 'Sobre...'
      ImageIndex = 11
      OnClick = About1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Minimizar1: TMenuItem
      Caption = '&Minimizar'
      Hint = 'Minimizar'
      ImageIndex = 8
      OnClick = Minimizar1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      Hint = 'Fechar Formul'#225'rio'
      ImageIndex = 7
      OnClick = Fechar1Click
    end
    object Finalizar: TMenuItem
      Caption = '&Finalizar'
      Hint = 'Encerrar Programa'
      ImageIndex = 3
      OnClick = Close1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    OnClose = OpenPictureDialog1Close
    Filter = 
      'All (*.jpg;*.jpeg;*.bmp)|*.jpg;*.jpeg;*.bmp|JPEG Image File (*.j' +
      'pg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp'
    Left = 34
    Top = 36
  end
  object SavePictureDialog1: TSavePictureDialog
    OnClose = SavePictureDialog1Close
    Filter = 'Bitmaps (*.bmp)|*.bmp|JPEG Image File (*.jpg)|*.jpg'
    FilterIndex = 0
    Left = 6
    Top = 36
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 6
    Top = 8
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 34
    Top = 8
  end
  object ImageList1: TImageList
    Left = 62
    Top = 8
    Bitmap = {
      494C01012C003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000C0000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A734C003A734C003A734C00336D
      4700336D4700336D47002C6642002C6642002C664200265D3800265D3800265D
      38001E5331001E5331001E5331001A4D2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808000000000000000000000000000003A734C006CA67C0066A0770066A0
      77005F9B72005F9B720058966B0058966B0049935F0049935F0049935F003D8C
      57003D8C5700358C4F00358C4F001A4D2A000000000000000000000000000000
      000000000000000000000000000000FFFF008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00000000000000000000FFFF000000000000417B57006CA67C00EBF3EB00E8F1
      E800E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADD00DCEADB00D9E8
      D900D8E7D800D8E7D800358C4F001A4D2A000000000000000000000000000000
      000000000000000000000000000000FFFF008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      000000000000FFFF0000FFFF000000000000417B570071AA8100EDF5ED00EBF3
      EB00EAF1E900E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADB00DCEA
      DB00DAE9DA00D8E7D8003D8C57001E5331000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00008080800080808000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000000000000000
      0000FFFF0000FFFF0000000000000000000047815D0076AF8500EFF6EF00EDF5
      ED00EBF3EB00E9F2E900E8F1E800E4EFE40081AA8D002C5230002C5230002C52
      30002C523000DAE9DA003D8C57001E53310000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
      00000000000080808000808080000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      000080800000FFFF00000000000080800000FFFF00000000000000000000FFFF
      0000FFFF00000000000000000000000000004D8762007CB58A00F3F8F30055A4
      5A002C5230002C5230002C5230002C5230001D781E006DB6750049935F004B96
      4D00265D3800DCEADB0049935F00265D380000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000000000808080000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFF00000000000000000000000000008080000080800000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      000000000000000000000000000000000000558E670081BC9000F4F9F400F1F7
      F10055A45A0063B2760055A45A001D781E007CC1850049935F004B964D00265D
      380081AA8D00DCEADD0049935F00265D380000000000FFFFFF00800000008000
      000080000000800000000000000000000000000000000080800000FFFF0000FF
      FF0000FFFF0000000000808080000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000080800000FFFF0000FFFF
      000080800000FFFF0000FFFF00000000000000000000FFFF0000FFFF00000000
      00000000000000000000000000000000000058966B008AB79500F6FAF600F5F9
      F500F3F8F30055A45A003287350081BC900049935F004B964D00265D38006199
      640061996400DFECDF0049935F00265D380000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000080800000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000000000000000000000000080800000FFFF0000FFFF
      0000FFFF000080800000FFFF0000FFFF000080800000FFFF0000000000000000
      0000000000000000000000000000000000005F9B720094C79C00F9FBFA00F6FA
      F600F5F9F5003287350094C79C005CAA650055A45A00336D470004690400E6F0
      E600E2EEE300E1EDE10058966B002C66420000000000FFFFFF00800000008000
      0000800000008000000000000000000000000080800000FFFF0000FFFF0000FF
      FF000000000000000000808080000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000FF000000FF000000FF0000000000
      0000FFFF0000FFFF000080800000FFFF0000FFFF000080800000000000000000
      00000000000000000000000000000000000066A0770094C79C00FCFDFB00F9FB
      FA00409347009DD0A7006DB675005CAA65004287490055A45A00328735000469
      0400E6F0E600E4EFE40058966B002C66420000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000FFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFF0000000000000000
      000000000000FFFF0000FFFF000080800000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000006CA67C009DD0A700FCFDFC004B96
      4D00AAD6B20073BB7C0073BB7C0049935F0057825A0068B06F0055A45A003287
      350004690400E6F0E6005F9B7200336D470000000000FFFFFF00800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000080800000FFFF00000000
      00008080800000000000FFFF0000FFFF000080800000FFFF0000000000000000
      00000000000000000000000000000000000071AA81009DD0A700FEFEFE0068B0
      6F0064AC690064AC6900579A5E00F6F9F600F3F8F30057825A0057825A005782
      5A0057825A00E9F2E9005F9B7200336D470000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000FF000000000000000000000000000000000080800000FFFF
      000000000000FF000000FFFF0000FFFF0000FFFF000080800000000000000000
      00000000000000000000000000000000000076AF8500AAD6B200FEFEFE00FDFE
      FD00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6F9F600F4F9F400F1F7F100EFF6
      EF00EDF5ED00EBF3EB0066A077003A734C0000000000FFFFFF00800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      0000FFFF0000FF000000FFFF0000FFFF00008080000000000000000000000000
      0000000000000000000000000000000000007CB58A00AAD6B200000000000000
      0000FEFFFE00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6FAF600F4F9F400F1F7
      F100EFF6EF00EDF5ED0066A077003A734C0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007CB58A00AAD6B200AAD6B2009DD0
      A7009DD0A70094C79C0094C79C0094C79C008AB7950081BC90007CB58A0076AF
      850071AA810071AA81006CA67C003A734C0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081BC90007CB58A0076AF850071AA
      81006CA67C0066A077005F9B720058966B00558E67004D8762004D8762004781
      5D00417B5700417B57003A734C003A734C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000084840000848400008484000084840000848400008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      00000000FF000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400000000000084840000848400008484000084840000848400008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F00BFBFBF007F7F7F00000000000000
      00000000000000000000000000000000FF0000000000848484000000000000FF
      FF0000FFFF0000000000000000000000000000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400000000000084840000848400000000000000000000000000008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00000000000000
      000000000000000000000000FF000000000000000000848484000000000000FF
      FF0000FFFF0000000000000000000000000000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000848400008484000000000000848400008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000000000000000000000000000FFFF0000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00000000000000
      0000000000000000FF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400000000000084840000848400008484000000000000848400000000
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000FFFF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F000000000000000000BFBFBF00BFBFBF00000000000000
      00000000FF000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000848400000000000000000000848400008484000000000000000000000000
      000084840000848400000000000000000000000000000000000000FFFF000000
      000000FFFF00000000000000000000FFFF0000FFFF0000000000000000000000
      000000FFFF0000FFFF000000000000000000000000007F7F7F0000000000BFBF
      BF00BFBFBF00BFBFBF0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      0000000000000000000000000000000000000000000084848400000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000848400008484000000000000000000008484000000000000848400000000
      000084840000848400000000000000000000000000000000000000FFFF000000
      000000FFFF0000FFFF00000000000000000000FFFF000000000000FFFF000000
      000000FFFF0000FFFF000000000000000000000000007F7F7F00000000007F7F
      7F007F7F7F007F7F7F0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      00000000FF000000FF000000FF000000FF000000000084848400000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000000000008484000084840000848400008484000000000000848400008484
      000000000000848400000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FF
      FF000000000000FFFF00000000000000000000000000BFBFBF0000000000BFBF
      BF00BFBFBF00BFBFBF0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000848400008484000084840000848400000000000000000000000000000000
      000000000000848400000000000000000000000000000000000000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000FFFF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF000000000000000000BFBFBF00BFBFBF00000000000000
      00000000FF000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000000000008484000084840000848400008484000084840000848400008484
      000084840000848400000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF00000000007F7F7F00BFBFBF00BFBFBF00000000000000
      0000000000000000FF00000000000000000000000000848484000000000000FF
      000000FF000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      000084840000848400000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF00000000007F7F7F007F7F7F00BFBFBF00000000000000
      000000000000000000000000FF000000000000000000848484000000000000FF
      000000FF000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000FF000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00000000007F7F7F0000000000000000000000
      00000000FF000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00BDBDBD00FFFFFF0000000000FFFFFF00BDBDBD000000FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      FF00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD000000
      FF00000000007B7B7B0000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000C0C0C00000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      00000000FF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000C0C0C00000000000C0C0C00000FF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000C0C0C000000000000000FF0000000000FFFF
      FF0000FFFF00000000000000000000000000000000007B7B7B00000000000000
      FF00BDBDBD0000000000FFFFFF0000000000FFFFFF0000000000BDBDBD000000
      FF00000000007B7B7B0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00C0C0C00000000000C0C0C00000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000FF00BDBDBD00FFFFFF0000000000FFFFFF00BDBDBD000000FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF00FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C0C0C00000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00000000000000
      FF000000000000FFFF0000000000000000000000000000000000FFFFFF00C0C0
      C00000000000C0C0C000FFFFFF0000FFFF00FFFFFF0000000000008000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FF00000000000000FFFF000000000000FFFF000000
      000000FFFF00FFFFFF000000000000000000000000000000000000FFFF000000
      000000FF000000000000C0C0C00000000000C0C0C000C0C0C00000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000FFFF0000000000FF0000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00C0C0
      C00000000000C0C0C00000000000FF0000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00C0C0C00000000000C0C0C000FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFF0000FF000000FF00000000000000000000000000
      8400000000000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFF0000FF000000FF00000000000000000000000000
      8400000000000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000FFFF00FFFF0000FF00000000000000000000000000
      840000FFFF000000FF0000008400000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000084000000840000008400000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00008484840000FFFF000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF00000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00008484840000FFFF000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00008484840000FFFF0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF0000000000000000000000FF00BDBDBD00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF0000000000000000000000000084848400848484008484
      840084848400848484008484840000FFFF008484840084848400000000000000
      00000000000000FFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF0000000000000000000000FF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000000000000000
      0000FFFFFF000000FF0000000000000000008484840000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      840084848400FFFFFF0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF0000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00000000000000000084848400FFFFFF0000FFFF00FFFF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000000000FF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000FF00000000000000000084848400FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000FF00FFFF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF000000000000000000000000000000000084848400848484000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00BDBDBD00FFFFFF00FF000000FFFFFF00BDBDBD000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00008400000084000000840000008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF0000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00008400000084000000840000008400000000FF0000FFFFFF0000FF0000FFFF
      FF0000FF0000FFFFFF0000FF000000FF0000000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00008400000084000000840000008400000000FF0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FF000000FF0000000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000FFFF00000000000000
      0000848484000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000FFFF0000FFFF000000000000FFFF0000FFFF000000
      000000FFFF000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF0000FF
      0000FFFFFF00FFFFFF00FFFFFF0000FF0000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000FF000000FFFFFF00FF000000FFFF
      0000000000000084840000FFFF000000000000000000848484000000000000FF
      FF0000FFFF000084840000000000000000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF0000FF000000FF
      000000FF0000FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FF00000000FF000000FF000000FF000000FF0000FF000000BDBD
      BD00BDBDBD00BDBDBD000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000000000000000000000FFFF00848484008484840000000000848484000084
      8400000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00FFFFFF0000FF
      0000FFFFFF00FFFFFF00FFFFFF0000FF0000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      0000BDBDBD00000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      000000000000000000000000000000FFFF0084848400000000008484840000FF
      FF0000FFFF000000000000000000000000008400000084000000FFFFFF008400
      000084000000FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      0000BDBDBD00000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF000000848400848484008484840084848400848484000000
      0000008484000000000000000000000000008400000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000008400000000FF0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FF000000FF00000000000000000000FFFF0000FFFF
      000000000000FFFF0000BDBDBD0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000848484008484840000000000FFFF
      0000FF000000FF0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF0000FFFFFF0000FF0000FFFF
      FF0000FF0000FFFFFF0000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF000000000000BDBDBD000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      000000000000FF00000000FF000000FF000000FF000000FF0000FF0000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000848484008484840000000000FF00
      0000FFFF0000FF000000000000000000000084000000FFFFFF00FFFFFF008400
      000084000000FFFFFF00FFFFFF008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FF000000FF000000000000000000000084000000FFFFFF00FFFFFF008400
      000084000000FFFFFF00FFFFFF008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFF0000FF0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000008400000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00840000008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFF0000FF0000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000FFFFFF008400
      000084000000FFFFFF00840000008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00008400000084000000840000008400000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000EFEFEF00DEDEDE00CECECE00C6C6C600C6C6C600CECECE00DEDEDE00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00DEDEDE00CECECE00C6C6C600C6C6C600CECECE00DEDEDE00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700DEDE
      DE00A5A5A500737373005252520042424200424242005252520073737300ADAD
      AD00DEDEDE00F7F7F70000000000000000000000000000000000F7F7F700DEDE
      DE00A5A5A500737373005252520042424200424242005252520073737300ADAD
      AD00DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700CECECE006B9C
      A50018A5C60000BDEF0000C6FF0000CEFF0000C6EF000894B50018424A004242
      42008C8C8C00DEDEDE00F7F7F7000000000000000000F7F7F700CECECE006B9C
      A50018A5C60000BDEF0000C6FF0000CEFF0000C6EF000894B50018424A004242
      42008C8C8C00DEDEDE00F7F7F700000000000000000000000000000000003163
      9C0031639C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6DEDE0042A5BD0000C6
      EF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000C6FF001863
      7B00424242008C8C8C00DEDEDE000000000000000000D6DEDE0042A5BD0000C6
      EF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000C6FF001863
      7B00424242008C8C8C00DEDEDE00000000000052630031639C0031639C003163
      9C0031639C000000000000526300005263000052630000526300005263000052
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000EFEFEF004ABDD60000C6FF0000CE
      FF0010BDE70063BDD600C6DEE700DEEFF7008CE7FF0010CEFF0000CEFF0000C6
      F70018637B0042424200ADADAD00EFEFEF00EFEFEF004ABDD60000C6FF0000CE
      FF0010BDE70063BDD600C6DEE700DEEFF7008CE7FF0010CEFF0000CEFF0000C6
      F70018637B0042424200ADADAD00EFEFEF0000526300316B9C00316B9C003163
      9C0031639C000000000000CEFF0000CEFF0000CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000ADD6E70000C6FF0000CEFF0018A5
      CE00A5BDBD00EFEFEF0000000000000000000000FF00E7FFFF0042D6FF0000CE
      FF0000C6FF0018424A0073737300DEDEDE00ADD6E70000C6FF0000CEFF0018A5
      CE00A5BDBD00EFEFEF000000FF000000000000000000E7FFFF0042D6FF0000CE
      FF0000C6FF0018424A0073737300DEDEDE0000526300296BA500296BA500296B
      9C00296B9C000000000000CEFF0000CEFF0000CEFF000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000042CEEF0000CEFF0008B5DE00848C
      8C00E7E7E70000000000000000000000FF000000FF0000000000E7FFFF0010CE
      FF0000CEFF000894B50052525200CECECE0042CEEF0000CEFF0008B5DE00848C
      8C00E7E7E700000000000000FF000000FF000000000000000000E7FFFF0010CE
      FF0000CEFF000894B50052525200CECECE00005263002173AD002173A5002173
      A5002973A5000000000010CEFF0000CEFF0000CEFF0000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00000000000000000010CEFF0000CEFF0021738C00ADAD
      AD00F7F7F700000000000000FF000000FF000000FF0000000000000000008CE7
      FF0000CEFF0000C6EF0042424200C6C6C60010CEFF0000CEFF0021738C00ADAD
      AD00F7F7F700000000000000FF000000FF000000FF0000000000000000008CE7
      FF0000CEFF0000C6EF0042424200C6C6C60000526300187BAD00187BAD00FFFF
      FF002173AD000000000031D6FF0029D6FF0018D6FF00FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000CEFF0000CEFF0031424A00ADAD
      AD00F7F7F7000000FF000000FF000000FF000000FF000000000000000000DEEF
      F70000CEFF0000CEFF0042424200C6C6C60000CEFF0000CEFF0031424A00ADAD
      AD00F7F7F700000000000000FF000000FF000000FF000000FF0000000000DEEF
      F70000CEFF0000CEFF0042424200C6C6C600005263001084B5001884B5001884
      B500187BB5000000000063DEFF0052DEFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000CEFF0000CEFF00293131008C8C
      8C00E7E7E700000000000000FF000000FF000000FF000000000000000000C6DE
      E70000CEFF0000C6FF0052525200CECECE0000CEFF0000CEFF00293131008C8C
      8C00E7E7E700000000000000FF000000FF000000FF000000000000000000C6DE
      E70000CEFF0000C6FF0052525200CECECE0000526300088CBD00108CBD001084
      BD001084B500000000008CE7FF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B000000000000000000000000000000000008CEFF0000CEFF00186373005252
      5200B5B5B500EFEFEF00000000000000FF000000FF0000000000EFEFEF005ABD
      D60000CEFF0000BDEF0073737300DEDEDE0008CEFF0000CEFF00186373005252
      5200B5B5B500EFEFEF000000FF000000FF000000000000000000EFEFEF005ABD
      D60000CEFF0000BDEF0073737300DEDEDE00005263000894C600088CC600088C
      C600088CBD0000000000B5EFFF00A5EFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000
      00000000000000000000000000000000000039D6FF0000CEFF0008B5DE002931
      310063636300BDBDBD0000000000F7F7F7000000FF00E7E7E700A5BDBD0010BD
      E70000CEFF0018A5C600A5A5A500EFEFEF0039D6FF0000CEFF0008B5DE002931
      310063636300BDBDBD000000FF00F7F7F700F7F7F700E7E7E700A5BDBD0010BD
      E70000CEFF0018A5C600A5A5A500EFEFEF00005263000094CE000094CE000094
      C6000094C60000000000DEF7FF00CEF7FF00C6EFFF00FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      000000000000000000000000000000000000C6F7FF0008CEFF0000CEFF00109C
      BD0029292900525252008C8C8C00ADADAD00A5A5A500848C8C0018A5CE0000CE
      FF0000BDEF006B9CA500DEDEDE0000000000C6F7FF0008CEFF0000CEFF00109C
      BD0029292900525252008C8C8C00ADADAD00A5A5A500848C8C0018A5CE0000CE
      FF0000BDEF006B9CA500DEDEDE000000000000526300009CCE00009CCE00009C
      CE000094CE0000000000FFFFFF00F7F7FF00E7F7FF0000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BE7FF0000CEFF0000CE
      FF0008B5DE001863730029394200314A520021738C0008B5DE0000CEFF0000C6
      FF0042A5BD00CECECE00F7F7F70000000000000000007BE7FF0000CEFF0000CE
      FF0008B5DE001863730029394200314A520021738C0008B5DE0000CEFF0000C6
      FF0042A5BD00CECECE00F7F7F7000000000000526300009CCE00009CCE00009C
      CE00009CCE0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BDEFF0008CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000C6FF004ABD
      D600D6DEDE00F7F7F700000000000000000000000000000000006BDEFF0008CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000C6FF004ABD
      D600D6DEDE00F7F7F7000000000000000000000000000052630000526300009C
      CE00009CCE000000000000526300005263000052630000526300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDEF
      FF004AD6FF0010CEFF0000CEFF0008CEFF0010CEFF0042CEEF00ADD6E700EFEF
      EF0000000000000000000000000000000000000000000000000000000000BDEF
      FF004AD6FF0010CEFF0000CEFF0008CEFF0010CEFF0042CEEF00ADD6E700EFEF
      EF00000000000000000000000000000000000000000000000000000000000052
      6300005263000052630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000084848400C6C6C600848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD000000000000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6008484840000000000C6C6C600000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD000000000000000000BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C6000000000000000000000000000000000000000000000000000000FF000000
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600848484008484840000000000C6C6C6000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400000000008484840000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000BDBDBD0000000000FF000000FF000000FF00
      00000000FF00FF000000FF0000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000000000000000000000000000C6C6
      C600848484008484840084848400848484008484840084848400848484008484
      840084848400000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084840000FFFF
      0000FFFF0000FFFF00000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFF00008484
      000000000000000000008484840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000C6C6C600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFF00008484
      000000000000000000008484840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084840000FFFF
      0000FFFF0000FFFF00000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00BDBD
      BD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      84000000000000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF0000000000FFFFFF0000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000848400008484000084
      8400000000000000000000FFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000FFFFFF000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000084
      84000084840000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFFFF0000000000FFFFFF000000
      FF00FFFFFF00FF000000FFFFFF00000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000084840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      FF00FFFFFF00FF000000FFFFFF0000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000084840000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF000000
      00000000000000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000FFFF000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000084
      84000000000000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000BDBDBD00BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000BDBDBD00BDBDBD000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000FFFF00000000000000
      000084848400000000000000000000000000FF00000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FF0000000000000000000000000000000000
      0000000000000000000000000000008484000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000FFFF0000FFFF000000000000FFFF0000FFFF000000
      000000FFFF00000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FF000000FFFF
      0000000000000084840000FFFF000000000000000000848484000000000000FF
      FF0000FFFF00008484000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000000000000000000000FFFF00848484008484840000000000848484000084
      840000000000000000000000000000000000FF0000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000084000000FF0000000000000000000000000000000084
      8400000000000000FF0000000000000000000000000000000000000000000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      000000000000000000000000000000FFFF0084848400000000008484840000FF
      FF0000FFFF00000000000000000000000000FF00000000000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000FF0000000000000000000000008484000000
      0000FFFF0000FFFFFF00FFFFFF00000000000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF000000848400848484008484840084848400848484000000
      000000848400000000000000000000000000FF00000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000084000000FF0000000000000000000000008484000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000848484008484840000000000FFFF
      0000FF000000FF0000000000000000000000FF00000000000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000084000000FF0000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00008484000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000848484008484840000000000FF00
      0000FFFF0000FF0000000000000000000000FF0000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000084000000FF0000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FF000000FF0000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FF0000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFF0000FF0000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000008484000000000000000000000000000000000000FF
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000FF00000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000000FFFF0000000000FFFF0000FF0000000000000000000000000000000000
      000000848400FFFFFF00000000000084840000000000000000000000000000FF
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFF0000FF0000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000FFFF0000848400000000000084840000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000008484840084000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000840000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000000000000000000084000000FFFF
      000000848400008484000084840000848400008484000084840000848400FFFF
      0000840000008484840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000848484008400
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      8400FFFF00008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000008400
      0000FFFF00008484840000848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      8400FFFF00008400000084000000008484000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000848484008400
      0000FFFF0000FFFF000084848400848484008484840084848400848484008484
      8400FFFF00000084840084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000084
      840084000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000008484
      840084000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000008C8C8C000000
      00000000000000000000000000008C8C8C0000000000000000008C8C8C000000
      00008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000084840000848400000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6008C8C8C0000000000000000000000
      000000000000FFFF000000000000000000008C8C8C00000000008C8C8C000000
      0000000000008C8C8C00000000008C8C8C000000000000000000000000000000
      00000000000000000000000000000084840000848400C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000848400C6C6C600000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000000000
      00009C9C0000FFFF000000000000000000008C8C8C0000000000000000008C8C
      8C00000000008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF00000000000000000000000000008C8C8C00000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000008484840000000000848484000000000084848400000000008484
      8400000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000008484840000000000848484000000000084848400000000008484
      840000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000000000C6C6C6000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF0000000000008C8C8C008C8C8C00000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C60000000000C6C6C600000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000084848400000000000000000000FFFF000000000000FFFF00000000000000
      000084848400000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      000000000000FFFF0000000000008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000000000008484840000000000000000000000000000000000000000008484
      8400000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      000000000000848484000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      0000FFFFFF00FFFF0000000000008C8C8C008C8C8C0000000000FFFF00000000
      00008C8C8C008C8C8C008C8C8C00000000000000000000000000000000000000
      0000C6C6C600C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF00C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      000000000000FFFF0000000000008C8C8C00000000009C9C0000FFFF00000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000000000000000
      0000C6C6C6000000000000000000C6C6C6000000000000000000000000000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      000000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF000000000000000000009C9C0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF0000000000C6C6C6000000000000FF
      FF0000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF0000000000008C8C8C0000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000FFFF000000000000FFFF00C6C6C600000000000000
      0000C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF0000000000008C8C8C008C8C8C0000000000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C600000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF0000000000000000000000000000FF
      FF0000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      00009C9C0000FFFF0000000000008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      00008484840000000000C6C6C6000000000000FFFF0000000000C6C6C6000000
      000084848400000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C00000000009C9C
      0000FFFF0000000000008C8C8C008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000008C8C8C0000000000FFFF
      0000000000008C8C8C008C8C8C008C8C8C008C8C8C0000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000C00000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFE10000FFFFFFFFFFE40000FC07FFFF
      FF880000FC070001FF90000000030001C0210000000100018043000000010001
      0087000000010001010F000000010001001F000000010001001F000000030001
      101F000000010001001F000000010001801F000000070101C03F3000003FC387
      E07F0000003FFFFFFFFF0000003FFFFF8003FFFFFFFFFFFFBFFB80018001FC7B
      BFFB80018001F837A38B80018001F03EA38B80018001E01DA38B80018001E01B
      BFFB800180018017A38B80018001001FA3EB800180010010A3EB80018001001F
      BFFB800180018017A38B80018001E01BA38B80018001E01DA38B80018001F03E
      BFFB80018001F8378003FFFFFFFFFC7BF83F8003FFFFFFFFE00F800391FFFC1F
      C0078003DBFFF80780038003C21FF00380038003F407F00380038003E003F801
      80038003E003E00180038003E001C001C0078003E0018001E00F8003E0018001
      F01F8003E0018003FC7F8003E0038007FC7F8003F007C00FFEFF8007F80FE01F
      FC7F800FFE1FF07FFFFF801FFFFFFFFFF828F3FFFFFFFFFFF828E0FF0000F83F
      F820E03F0000E00FFC71C00F0000C007FC71C00300008003FC71800000008003
      FC71800000000001983100000000000100010001000000010001800100000001
      0001C001000000010000F000000080039800FE0000008003FFE0FF000000C007
      FFE0FFC10000E00FFFE0FFE30000F83FFFFFFFFF0000C003FFFFFF1F0000C003
      FFFFF8030000C003FF8780010000C003FE0300910000C003FC0301010000C003
      F80300490000C003F00702410000C003F00700010000C003F00F00010000C003
      F81F00010000C003FC3F00010000C003FFFF00010000C003FFFF00030000C003
      FFFF807F0000C003FFFFC0FF0000C003F00FF00FFFFFFFFFC003C003E3FFFFFF
      8001800183FFFFFF80018001000FFF8700000000003FFE0303000180002FFC03
      064004C0000FF80304600460000FF007006004200001F007046004600001F00F
      024000C00001F81F02000000000FFC3F00010001000FFFFF80018001002FFFFF
      C003C003803FFFFFE00FE00FE3FFFFFFFFFFFF00FFFFFFFF8003FF00C0078007
      0001FF00800300030001FF000001400100010000000140000001000000017FF0
      0001000000008008000100000000C005000100238000E00300010001C000FFC1
      00010000E001C00100010023E007C00700010063F007C001000100C3F003FF81
      00010107F803FFC1800303FFFFFFFFFFF1C7FFFFFFFFFFFFF0870000FFFF801F
      F0070000FFFF000088080000FFFF000080000000C00F00008000000080070000
      C001000080030000E003000080010000C00100008001000080000000800F8000
      80000000800F800088080000801FFC00F0070000C0FFFC01F0870000C0FFFC03
      F1C7FFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFE481FFFFFF1FFFFFF181
      FFFFF8030000FB81FFFF80010000FA21FFFF00910000E021FFFF01010000E061
      FFFF00490000C0C1E00F024100008081E00F000100008003E00F00010000A0F7
      FFFF00010000A0C7FFFF00010000F1C1FFFF00010000F1C1FFFF00030004E0C1
      FFFF807F0000E0C1FFFFC0FFFFFFF1C7F007C007FFFFFFFFC003C007FFFFFFFF
      8003C007E007FFFF8003C007E003FFFF8003C007C003FFFF8003C0070001FFFF
      8003C007C001FFFF8003C0070801FC7F8003C007E000FC7F8003C0070000FC7F
      8003C007E000FFFF8003C0070000FFFF8003C007F000FFFFB007C007FFFFFFFF
      D007C007FFFFFFFFEAAFC007FFFFFFFFFE3FFE3F0000D8D7FC1FFC1F0000715A
      FC1FFC1F0000A16BFC1FFC1F000081BFB88EB88E0000803FD94DD94D0000800F
      F2A7F2A70000800FE553E55301808001E2A3E2A301808000A552A55200008000
      EA8BEA8B00008000E513E5130000800FF227F2270000800FF147F1470000802F
      DC1DDC1D0000803FBFFEBFFE0000C03F00000000000000000000000000000000
      000000000000}
  end
  object ImageList3: TImageList
    Height = 3
    Left = 90
    Top = 36
    Bitmap = {
      494C010103000400040010000300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000300000001002000000000000003
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000030000000100010000000000180000000000000000000000
      000000000000000000000000FFFFFF000000FE7FF00F00000000FC3FFC3F0000
      0000F00FFE7F000000000000000000000000000000000000000000000000}
  end
  object PrintDialog1: TPrintDialog
    Left = 175
    Top = 8
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 62
    Top = 38
  end
  object FindDialog1: TFindDialog
    Options = [frDown, frMatchCase, frDisableMatchCase, frDisableUpDown, frDisableWholeWord]
    Left = 146
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 90
    Top = 8
  end
  object ImageList2: TImageList
    Height = 12
    Width = 12
    Left = 146
    Top = 37
    Bitmap = {
      494C01011A001D0004000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000030000000540000000100200000000000003F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000081AA8D002C52
      30002C5230002C5230002C523000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000000080000000800000008000C0C0
      C0000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000055A45A002C5230002C5230002C5230002C5230001D781E006DB6
      750049935F004B964D00265D38000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      80000000800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000055A45A0063B2760055A45A001D781E007CC185004993
      5F004B964D00265D380081AA8D000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000C0C0C0000000FF00000080000000800000008000000080000000
      800000008000C0C0C000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000055A45A003287350081BC900049935F004B96
      4D00265D38006199640061996400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000008000000080000000
      80000000800000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000000000000000
      00000000000000000000000000003287350094C79C005CAA650055A45A00336D
      47000469040000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      80000000800000008000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000409347009DD0A7006DB675005CAA65004287490055A4
      5A00328735000469040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000FFFF000000FF000000FF000000FF000000
      FF000000800000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000004B964D00AAD6B20073BB7C0073BB7C0049935F0057825A0068B0
      6F0055A45A003287350004690400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C0000000FF0000FFFF0000FFFF000000FF000000FF000000
      FF0000008000C0C0C000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000068B06F0064AC690064AC6900579A5E0000000000000000005782
      5A0057825A0057825A0057825A00000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000FF000000FF000000FF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000080800000FFFF000080
      800000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      00000080800000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF0000000000FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C0000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000FFFF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      FF00000000000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000FF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000080800000FFFF00008080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000FF000000FF00000000000000FF000000FF
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000800000000000000080000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000FF00000080000000FF00000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000FF0000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000FF00000080000000FF00000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000800000000000000080000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808080008080800080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000800000008000000080000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000808080000BD390000BD390000BD39000052
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      00000000000000000000000000000808080010E7520010D64A0000BD39000052
      1800000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FF0000008000
      00008000000080000000800000008000000080000000C0C0C000000000000000
      00000000000008080800080808000808080018EF5A0010D64A0000BD39000052
      1800005218000052180000000000000000000000000000000000000000000000
      0000FF000000FFFF0000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF0000008000000080000000800000008000000080000000000000000000
      00000808080008CE4A0008CE4A0008CE4A0021EF5A0018E7520000BD390000BD
      390000BD390000BD390000521800000000000000000000000000FF000000FF00
      0000FF000000FFFF0000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      80000000800000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000800000008000000080000000000000000000
      000008080800B5FFB50029F7630029F7630029F7630018E7520018E7520010D6
      4A0010D64A0000BD390000521800000000000000000000000000FF000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FF00000000000000000000000000
      00000000000000000000000080000000FF000000FF000000FF000000FF000000
      FF000000800000000000000000000000000000000000FF000000FF000000FFFF
      0000FF000000FF000000FF000000FF0000008000000080000000000000000000
      00000808080039BD0000B5FFB500B5FFB5008CFF8C0029EF630021EF5A0084FF
      940084FF940000BD390000521800000000000000000000000000FF000000FF00
      0000FF000000FFFF0000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      80000000800000000000000000000000000000000000C0C0C000FF000000FFFF
      0000FFFF0000FF000000FF000000FF00000080000000C0C0C000000000000000
      000000000000080808000808080008080800B5FFB50029F7630000BD39000052
      1800005218000052180000000000000000000000000000000000000000000000
      0000FF000000FFFF0000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000008000000000000000000000000000
      000000000000000000000000000008080800B5FFB50031F7630000BD39000052
      1800000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000FF000000FF000000FF000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000808080039BD0000B5FFB50039BD00000052
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808080008080800005218000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF008080000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0080800000808000008080000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808000008080000080800000808000008080000000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000000000000000000000
      0000000000008080000080800000808000008080000080800000808000008080
      000000FFFF00FFFFFF000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF00000000000000
      00000000000000000000FFFFFF00808000008080000080800000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF000000000000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0080800000808000008080000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF00FFFFFF00FFFFFF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000FFFFFF00808000008080000080800000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000BFBFBF00FFFFFF00BFBFBF00BFBFBF00FFFFFF00BFBFBF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000FFFF008080000080800000808000000000000000FF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000BFBFBF00FFFFFF00BFBFBF00BFBFBF00FFFFFF00BFBFBF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0080800000808000008080000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000BFBFBF00BFBFBF00FFFFFF00FFFFFF00BFBFBF00BFBFBF000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000030000000540000000100010000000000A00200000000000000000000
      000000000000000000000000FFFFFF0080306000000000008030000000000000
      8010000000000000800000000000000080100000000000008030000000000000
      8030000000000000003000000000000000300000000000000070000000000000
      80F000000000000081FC630000000000007FFFFFFFFF0000007FFF0E1FFF0000
      003FC1041E0F0000001801041C070000000C010018030000001E010018030000
      003E070018030000007C0304180300000078018E3803000010F8618E3C070000
      01FFFF8E3E0F000003FFFFFFFFFF0000FFFFFFFFFF000000C07E03FFCF000000
      C07E03C3CF000000C07E0329FE000000C07F8351EE100000C07E832AE0000000
      C07C635030000000803EE32A80000000803F1F402E010000803F1F2BFE030000
      803F1FC7CF070000E0FFFFFFCFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000F7FEDFEE7FBF0000F3FE4FE67F1F0000F1FE07E27E0F0000
      F0FE03E07FBF0000F1FE07E27C070000F3FE4FE67C070000F7FEDFEE7C070000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000EEFE77FB7FDF0000C47E67F27F9F0000E0FE47E07F1F0000
      F1FE07C07E1F0000E0FE47E07F1F0000C47E67F27F9F0000EEFE77FB7FDF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFF1FFFFFFF0000
      E0FE0FFFFFFF0000C07E0FF1FFFF0000803803F1FFFF0000803001C07C070000
      803001C07C070000803001C07C070000803803F1FFFF0000C07E0FF1FFFF0000
      E0FE0FFFFFFF0000FFFF1FFFFFFF0000FFF801FFFFFD0000FFF801C03FF80000
      FFF801801FF10000C07801801FE30000803801801C07000080180180180F0000
      80180180100F000080780180100F000080780380100F0000C0F80780100F0000
      C0F80FC0381F0000FFF81FFFFC3F000000000000000000000000000000000000
      000000000000}
  end
  object ImageList4: TImageList
    Height = 24
    Width = 24
    Left = 201
    Top = 8
    Bitmap = {
      494C010102000500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000008484840000000000848484000000
      0000848484000000000084848400000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C600000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6000000000000FF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400000000000000000000FFFF000000
      000000FFFF000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000FFFF000000000000FF
      FF000000000000FFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60000FFFF000000000000FFFF000000
      000000FFFF000000000000FFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C6000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C600000000000000000000000000C6C6C6000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000FFFF000000000000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF000000
      0000C6C6C6000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C600C6C6C6000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000FFFF000000000000FF
      FF00C6C6C6000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000000000C6C6C6000000000000FF
      FF0000000000C6C6C60000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000
      FFC7FFFFC7FF000000000000FF83FFFF83FF000000000000FF83FFFF83FF0000
      00000000FF83FFFF83FF000000000000F711DFF711DF000000000000FB29BFFB
      29BF000000000000FE54FFFE54FF000000000000FCAA7FFCAA7F000000000000
      FC547FFC547F000000000000E4AA4FE4AA4F000000000000FD517FFD517F0000
      00000000FCA27FFCA27F000000000000FE44FFFE44FF000000000000FE28FFFE
      28FF000000000000FF83FFFF83FF000000000000FBFFBFFBFFBF000000000000
      F7FFDFF7FFDF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList5: TImageList
    Left = 174
    Top = 37
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000FF00000000FF000000FF000000FF000000FF0000FF000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD000000000000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD000000000000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FF00000000FF000000FF000000FF000000FF000000FF000000FF0000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000FF000000FF000000FF000000FF0000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FF87FF8700000000FE03FE0300000000FC03FC0300000000
      F803F80300000000F007F00700000000F007F00700000000F00FF00F00000000
      F81FF81F00000000FC3FFC3F00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
