object chronicfu_form: Tchronicfu_form
  Left = 0
  Top = 0
  Caption = 'chronicfu_form'
  ClientHeight = 533
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'TH SarabunPSK'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 22
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 777
    Height = 33
    Align = alTop
    Caption = ' Home Health Care Maehongson By.DHDC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitWidth = 773
  end
  object Panel1: TPanel
    Left = 0
    Top = 492
    Width = 777
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 416
    ExplicitTop = 344
    ExplicitWidth = 185
    DesignSize = (
      777
      41)
    object BitBtn1: TBitBtn
      Left = 688
      Top = 8
      Width = 75
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'close'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 12
      Caption = #3592#3635#3609#3623#3609
    end
    object record_count: TcxLabel
      Left = 95
      Top = 12
      Anchors = [akLeft, akBottom]
      Caption = '0'
    end
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 771
    Height = 453
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 27
    ExplicitWidth = 570
    ExplicitHeight = 506
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = D_chronic
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1HOSPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPCODE'
        Width = 82
      end
      object show_visitDBTableView1PID: TcxGridDBColumn
        DataBinding.FieldName = 'PID'
        Width = 48
      end
      object show_visitDBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
        Width = 48
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 99
      end
      object show_visitDBTableView1WEIGHT: TcxGridDBColumn
        DataBinding.FieldName = 'WEIGHT'
        Width = 72
      end
      object show_visitDBTableView1HEIGHT: TcxGridDBColumn
        DataBinding.FieldName = 'HEIGHT'
        Width = 69
      end
      object show_visitDBTableView1WAIST_CM: TcxGridDBColumn
        DataBinding.FieldName = 'WAIST_CM'
        Width = 88
      end
      object show_visitDBTableView1SBP: TcxGridDBColumn
        DataBinding.FieldName = 'SBP'
        Width = 33
      end
      object show_visitDBTableView1DBP: TcxGridDBColumn
        DataBinding.FieldName = 'DBP'
        Width = 34
      end
      object show_visitDBTableView1FOOT: TcxGridDBColumn
        DataBinding.FieldName = 'FOOT'
        Width = 43
      end
      object show_visitDBTableView1RETINA: TcxGridDBColumn
        DataBinding.FieldName = 'RETINA'
        Width = 68
      end
      object show_visitDBTableView1PROVIDER: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDER'
        Width = 97
      end
      object show_visitDBTableView1D_UPDATE: TcxGridDBColumn
        DataBinding.FieldName = 'D_UPDATE'
        Width = 118
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 97
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object S_chronic: TMyQuery
    Connection = DataModule1.Connect
    SQL.Strings = (
      'SELECT c.* '
      'from person p '
      'LEFT OUTER JOIN '
      
        '(SELECT c.*,p.cid,CONCAT(pe.prename,'#39' '#39',p.`NAME`,'#39' '#39',p.LNAME) as' +
        ' ptname'
      'FROM chronicfu c '
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = c.HOSPCODE AND p.PID = ' +
        'c.PID'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      'LEFT OUTER JOIN csex s ON s.sex = p.SEX '
      ')c ON c.cid = p.cid '
      ''
      'WHERE c.cid = :cid '
      '#WHERE c.cid = '#39'3580400329808'#39
      ''
      'GROUP BY c.hospcode,c.pid'
      ''
      'ORDER BY c.date_serv DESC')
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object D_chronic: TMyDataSource
    DataSet = S_chronic
    Left = 360
    Top = 104
  end
end
