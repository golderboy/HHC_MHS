object main_chronic_form: Tmain_chronic_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 539
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'TH SarabunPSK'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 22
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 767
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
    Left = 568
    Top = 33
    Width = 199
    Height = 506
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 571
    ExplicitTop = 39
    DesignSize = (
      199
      506)
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 190
      Height = 35
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3619#3633#3585#3625#3634
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 3
      Top = 457
      Width = 190
      Height = 34
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
    Width = 562
    Height = 500
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
      DataController.DataSource = D_chronic
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1HOSPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPCODE'
        Width = 89
      end
      object show_visitDBTableView1PID: TcxGridDBColumn
        DataBinding.FieldName = 'PID'
        Width = 66
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 111
      end
      object show_visitDBTableView1CHRONIC: TcxGridDBColumn
        DataBinding.FieldName = 'CHRONIC'
        Width = 89
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 132
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 145
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
      
        '(SELECT f.HOSPCODE,f.PID,f.DATE_SERV,f.SEQ,c.CHRONIC,p.cid,CONCA' +
        'T(pe.prename,'#39' '#39',p.`NAME`,'#39' '#39',p.LNAME) as ptname'
      'FROM chronicfu f '
      
        'LEFT OUTER JOIN chronic c ON c.HOSPCODE = f.HOSPCODE AND c.PID =' +
        ' f.PID'
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = c.HOSPCODE AND p.PID = ' +
        'c.PID'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      'LEFT OUTER JOIN csex s ON s.sex = p.SEX '
      ')c ON c.cid = p.cid '
      ' '
      '#WHERE c.cid = '#39'3580400329808'#39
      'WHERE c.cid = :cid'
      ''
      'GROUP BY c.hospcode,c.pid,c.SEQ'
      ''
      'ORDER BY c.DATE_SERV desc')
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
