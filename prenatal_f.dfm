object prenatal_form: Tprenatal_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 547
  ClientWidth = 762
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
    Width = 762
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 762
    Height = 32
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      762
      32)
    object BitBtn4: TBitBtn
      Left = 569
      Top = -1
      Width = 190
      Height = 34
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 756
    Height = 476
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DService
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
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
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      
        'SELECT l.BDATE,l.GRAVIDA,a.GA,a.DATE_SERV,e.DATE_HCT,e.HB_RESULT' +
        ',e.HCT_RESULT,e.HIV_RESULT,e.VDRL_RESULT,e.THALASSEMIA,p.CID'
      'from labor l'
      
        'INNER JOIN anc a on a.HOSPCODE = l.HOSPCODE AND a.PID = l.PID AN' +
        'D a.GRAVIDA = l.GRAVIDA'
      
        'LEFT JOIN prenatal e on e.HOSPCODE = l.HOSPCODE AND e.PID = l.PI' +
        'D'
      
        'LEFT JOIN t_person_cid p ON p.HOSPCODE = a.HOSPCODE AND p.PID = ' +
        'a.PID'
      'LEFT OUTER JOIN co_office c ON c.off_id = a.HOSPCODE '
      ''
      'WHERE p.cid = :cid'
      '#WHERE p.cid = 5580600035642'
      ''
      'GROUP BY a.GA,l.GRAVIDA'
      'ORDER BY a.DATE_SERV desc')
    ReadOnly = True
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object DService: TMyDataSource
    DataSet = QService
    Left = 360
    Top = 104
  end
end
