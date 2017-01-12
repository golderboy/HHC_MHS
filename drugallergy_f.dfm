object drugallergy_form: Tdrugallergy_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 552
  ClientWidth = 774
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
    Width = 774
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
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 768
    Height = 481
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      object show_visitDBTableView1DNAME: TcxGridDBColumn
        DataBinding.FieldName = 'DNAME'
        Width = 252
      end
      object show_visitDBTableView1ALEVEL: TcxGridDBColumn
        DataBinding.FieldName = 'ALEVEL'
        Width = 56
      end
      object show_visitDBTableView1INHOSP: TcxGridDBColumn
        DataBinding.FieldName = 'INHOSP'
        Width = 69
      end
      object show_visitDBTableView1DATERECORD: TcxGridDBColumn
        DataBinding.FieldName = 'DATERECORD'
        Width = 113
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 774
    Height = 32
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      774
      32)
    object BitBtn4: TBitBtn
      Left = 581
      Top = -1
      Width = 190
      Height = 34
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
  end
  object QService: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT d.DNAME,d.ALEVEL,d.INFORMHOSP AS INHOSP,d.DATERECORD '
      'from drugallergy d'
      'LEFT JOIN person p ON p.HOSPCODE = d.HOSPCODE AND p.PID = d.PID'
      ''
      'WHERE p.cid = :cid'
      '#WHERE p.cid = 3580400323303'
      ''
      'ORDER BY d.DATERECORD desc')
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
