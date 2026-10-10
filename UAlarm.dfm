object AlarmForm: TAlarmForm
  Left = 360
  Top = 340
  Width = 276
  Height = 185
  Caption = 'Painel - Despertador!!!'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 257
    Height = 137
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 64
      Width = 253
      Height = 13
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object LabelEffect2: TLabel
      Left = 2
      Top = 37
      Width = 253
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'Alarme!!!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelEffect1: TLabel
      Left = 2
      Top = 2
      Width = 253
      Height = 35
      Align = alTop
      Alignment = taCenter
      Caption = 'Alarme!!!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -24
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 102
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333334433333333333334AA4333333333334A22A43333333334A2222A4333
        33334A22A222A4333333A22A3A222A433333A2A333A222A433333A33333A222A
        433333333333A222A433333333333A222A433333333333A222A433333333333A
        222A333333333333A22A3333333333333A2A33333333333333A3}
    end
  end
end
