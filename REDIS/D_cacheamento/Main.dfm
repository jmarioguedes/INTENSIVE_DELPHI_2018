object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'TDC POA - 2018 | Cacheamento'
  ClientHeight = 764
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -33
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 40
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 1151
    Height = 126
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 1152
    object Button1: TButton
      Left = 9
      Top = 27
      Width = 182
      Height = 74
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'LISTAR'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 804
      Top = 27
      Width = 326
      Height = 74
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'NOVA INST'#194'NCIA'
      TabOrder = 1
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 228
      Top = 33
      Width = 350
      Height = 62
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Ativar temporizador'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 612
      Top = 27
      Width = 182
      Height = 74
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'LIMPAR'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 735
    Width = 1167
    Height = 29
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <>
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 150
    Width = 1151
    Height = 577
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    ExplicitTop = 221
    ExplicitWidth = 1152
    ExplicitHeight = 492
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 605
      Height = 559
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -33
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -33
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -33
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sum'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -33
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'FATURAMENTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -33
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 375
          Visible = True
        end>
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 630
      Top = 9
      Width = 512
      Height = 559
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Consolas'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 629
      ExplicitWidth = 514
      ExplicitHeight = 474
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'ApplicationName=TDC2018'
      'Password=postgres'
      'Server=localhost'
      'User_Name=postgres'
      'Database=TDC2018')
    LoginPrompt = False
    Left = 72
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT "UF", SUM("VALOR") '
      'FROM "TB_VENDAS"'
      'GROUP BY "UF"'
      'ORDER BY "UF";')
    Left = 165
    Top = 205
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQuery1
    Left = 256
    Top = 200
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 69
    Top = 293
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 69
    Top = 371
  end
end
