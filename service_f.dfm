object service_form: Tservice_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 542
  ClientWidth = 775
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
    Width = 775
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
    Top = 504
    Width = 775
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      775
      38)
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 650
      Top = 3
      Width = 61
      Height = 30
      Anchors = [akLeft, akBottom]
      Caption = 'EMR'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 712
      Top = 3
      Width = 60
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 769
    Height = 465
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 570
    ExplicitHeight = 503
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = show_visitDBTableView1CellDblClick
      DataController.DataSource = DService
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 87
      end
      object show_visitDBTableView1HOSPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPCODE'
        Width = 82
      end
      object show_visitDBTableView1PID: TcxGridDBColumn
        DataBinding.FieldName = 'PID'
        Width = 48
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 97
      end
      object show_visitDBTableView1SBP: TcxGridDBColumn
        DataBinding.FieldName = 'SBP'
        Width = 33
      end
      object show_visitDBTableView1DBP: TcxGridDBColumn
        DataBinding.FieldName = 'DBP'
        Width = 46
      end
      object show_visitDBTableView1CHIEFCOMP: TcxGridDBColumn
        DataBinding.FieldName = 'CHIEFCOMP'
        Width = 291
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT c.* '
      'from person p '
      'LEFT OUTER JOIN '
      
        '(SELECT s.HOSPCODE,s.PID,s.DATE_SERV,s.SEQ,p.cid,CONCAT(pe.prena' +
        'me,'#39' '#39',p.`NAME`,'#39' '#39',p.LNAME) as ptname'
      ',s.SBP,s.DBP,s.CHIEFCOMP'
      'FROM service s '
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = s.HOSPCODE AND p.PID = ' +
        's.PID'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      ''
      ')c ON c.cid = p.cid '
      ' '
      '#WHERE c.cid = '#39'3580400329808'#39
      'WHERE c.cid = :cid'
      ''
      'GROUP BY c.hospcode,c.pid,c.SEQ'
      ''
      'ORDER BY c.DATE_SERV desc'
      ''
      'limit 100;')
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
