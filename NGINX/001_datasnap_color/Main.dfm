object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Servidor DataSnap Stand-alone'
  ClientHeight = 186
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 27
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 178
    Top = 20
    Width = 290
    Height = 35
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    TabOrder = 1
    Text = '8080'
    Items.Strings = (
      '8080'
      '8081'
      '8082'
      '')
  end
  object Button2: TButton
    Left = 122
    Top = 114
    Width = 346
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Nova Inst'#226'ncia'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DSServer1: TDSServer
    AutoStart = False
    Left = 24
    Top = 40
  end
  object DSHTTPService1: TDSHTTPService
    Server = DSServer1
    Filters = <>
    SessionTimeout = 120000
    Left = 104
    Top = 40
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Invocation'
    Left = 184
    Top = 40
  end
end
