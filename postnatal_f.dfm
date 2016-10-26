object postnatal_form: Tpostnatal_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 527
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 755
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
    ExplicitLeft = -7
    ExplicitWidth = 762
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 749
    Height = 456
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitWidth = 756
    ExplicitHeight = 476
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1BDATE: TcxGridDBColumn
        DataBinding.FieldName = 'BDATE'
        Width = 67
      end
      object show_visitDBTableView1GRAVIDA: TcxGridDBColumn
        DataBinding.FieldName = 'GRAVIDA'
        Width = 78
      end
      object show_visitDBTableView1GA: TcxGridDBColumn
        DataBinding.FieldName = 'GA'
        Width = 37
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 99
      end
      object show_visitDBTableView1DATE_HCT: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_HCT'
        Width = 78
      end
      object show_visitDBTableView1HB_RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'HB_RESULT'
        Width = 86
      end
      object show_visitDBTableView1HCT_RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'HCT_RESULT'
        Width = 95
      end
      object show_visitDBTableView1HIV_RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'HIV_RESULT'
        Width = 89
      end
      object show_visitDBTableView1VDRL_RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'VDRL_RESULT'
        Width = 115
      end
      object show_visitDBTableView1THALASSEMIA: TcxGridDBColumn
        DataBinding.FieldName = 'THALASSEMIA'
        Width = 100
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 495
    Width = 755
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -7
    ExplicitWidth = 762
    DesignSize = (
      755
      32)
    object BitBtn4: TBitBtn
      Left = 562
      Top = -1
      Width = 190
      Height = 34
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = BitBtn4Click
      ExplicitLeft = 569
    end
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 749
    Height = 456
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = -1
    ExplicitWidth = 756
    ExplicitHeight = 476
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DService
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1BDATE: TcxGridDBColumn
        DataBinding.FieldName = 'BDATE'
        Width = 67
      end
      object cxGridDBTableView1GRAVIDA: TcxGridDBColumn
        DataBinding.FieldName = 'GRAVIDA'
        Width = 66
      end
      object cxGridDBTableView1PPCARE: TcxGridDBColumn
        DataBinding.FieldName = 'PPCARE'
      end
      object cxGridDBTableView1PPPLACE: TcxGridDBColumn
        DataBinding.FieldName = 'PPPLACE'
        Width = 79
      end
      object cxGridDBTableView1PPRESULT: TcxGridDBColumn
        DataBinding.FieldName = 'PPRESULT'
        Width = 78
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DService: TMyDataSource
    DataSet = QService
    Left = 360
    Top = 104
  end
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT l.BDATE,l.GRAVIDA,e.PPCARE,e.PPPLACE,e.PPRESULT,p.cid'
      'from labor l'
      
        'INNER JOIN postnatal e on e.HOSPCODE = l.HOSPCODE AND e.PID = l.' +
        'PID AND e.GRAVIDA = l.GRAVIDA'
      
        'LEFT JOIN t_person_cid p ON p.HOSPCODE = e.HOSPCODE AND p.PID = ' +
        'e.PID'
      'LEFT OUTER JOIN co_office c ON c.off_id = e.HOSPCODE '
      ''
      'WHERE p.cid = :cid'
      '#WHERE p.cid = 5580600035642'
      '#WHERE a.HOSPCODE = 11207 '
      ''
      'ORDER BY e.PPCARE desc')
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
end
