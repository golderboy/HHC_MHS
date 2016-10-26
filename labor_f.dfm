object labor_form: Tlabor_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 534
  ClientWidth = 781
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
    Width = 781
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
    Left = 582
    Top = 33
    Width = 199
    Height = 501
    Align = alRight
    TabOrder = 1
    DesignSize = (
      199
      501)
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 190
      Height = 35
      Anchors = [akTop, akRight]
      Caption = #3585#3634#3619#3613#3634#3585#3588#3619#3619#3606#3660#3585#3656#3629#3609#3588#3621#3629#3604
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 3
      Top = 452
      Width = 190
      Height = 34
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 47
      Width = 190
      Height = 35
      Anchors = [akTop, akRight]
      Caption = #3585#3634#3619#3604#3641#3649#3621#3627#3621#3633#3591#3588#3621#3629#3604
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 576
    Height = 495
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
      OptionsView.GroupByBox = False
      object show_visitDBTableView1BDATE: TcxGridDBColumn
        DataBinding.FieldName = 'BDATE'
        Width = 67
      end
      object show_visitDBTableView1BHOSP: TcxGridDBColumn
        DataBinding.FieldName = 'BHOSP'
        Width = 65
      end
      object show_visitDBTableView1EDC: TcxGridDBColumn
        DataBinding.FieldName = 'EDC'
        Width = 94
      end
      object show_visitDBTableView1LMP: TcxGridDBColumn
        DataBinding.FieldName = 'LMP'
        Width = 71
      end
      object show_visitDBTableView1GRAVIDA: TcxGridDBColumn
        DataBinding.FieldName = 'GRAVIDA'
        Width = 66
      end
      object show_visitDBTableView1BTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'BTYPE'
        Width = 63
      end
      object show_visitDBTableView1BRESULT: TcxGridDBColumn
        DataBinding.FieldName = 'BRESULT'
        Width = 81
      end
      object show_visitDBTableView1SBORN: TcxGridDBColumn
        DataBinding.FieldName = 'SBORN'
        Width = 66
      end
      object show_visitDBTableView1LBORN: TcxGridDBColumn
        DataBinding.FieldName = 'LBORN'
        Width = 64
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      
        'SELECT l.BDATE,l.BHOSP,l.EDC,l.LMP,l.GRAVIDA,l.BTYPE,l.BRESULT,l' +
        '.SBORN,l.LBORN,p.cid'
      'from labor l'
      'LEFT JOIN person p ON p.HOSPCODE = l.HOSPCODE AND p.PID = l.PID'
      ''
      'LEFT OUTER JOIN co_office c ON c.off_id = l.BHOSP '
      ''
      'WHERE p.cid = :cid'
      '#WHERE p.cid = 3580400525259'
      ''
      'ORDER BY l.BDATE,p.cid desc')
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
