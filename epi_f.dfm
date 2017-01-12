object epi_form: Tepi_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 543
  ClientWidth = 738
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
    Width = 738
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
    Top = 511
    Width = 738
    Height = 32
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      738
      32)
    object BitBtn4: TBitBtn
      Left = 545
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
    Width = 732
    Height = 472
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
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 102
      end
      object show_visitDBTableView1VACCINETYPE: TcxGridDBColumn
        DataBinding.FieldName = 'VACCINETYPE'
        Width = 100
      end
      object show_visitDBTableView1engvaccine: TcxGridDBColumn
        DataBinding.FieldName = 'engvaccine'
        Width = 134
      end
      object show_visitDBTableView1VACCINEPLACE: TcxGridDBColumn
        DataBinding.FieldName = 'VACCINEPLACE'
        Width = 107
      end
      object show_visitDBTableView1HOSPNAME: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPNAME'
        Width = 232
      end
      object show_visitDBTableView1vacc_age: TcxGridDBColumn
        DataBinding.FieldName = 'vacc_age'
        Width = 78
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT e.DATE_SERV,e.VACCINETYPE,v.engvaccine,e.VACCINEPLACE'
      
        ',c.off_name as '#39'HOSPNAME'#39',timestampdiff(year,p.BIRTH,e.DATE_SERV' +
        ') as '#39'vacc_age'#39
      'from epi e'
      'LEFT JOIN person p ON p.HOSPCODE = e.HOSPCODE AND p.PID = e.PID'
      'LEFT JOIN cvaccinetype v ON v.vaccinecode = e.VACCINETYPE'
      'LEFT OUTER JOIN co_office c ON c.off_id = e.VACCINEPLACE '
      ''
      'WHERE p.cid = :cid'
      '#WHERE p.cid = 1580400093085'
      ''
      'ORDER BY e.DATE_SERV desc')
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
