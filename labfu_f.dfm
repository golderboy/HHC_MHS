object labfu_form: Tlabfu_form
  Left = 0
  Top = 0
  Caption = 'labfu_form'
  ClientHeight = 537
  ClientWidth = 771
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
    Width = 771
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
    ExplicitLeft = -6
    ExplicitWidth = 777
  end
  object Panel1: TPanel
    Left = 0
    Top = 496
    Width = 771
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = 492
    ExplicitWidth = 777
    DesignSize = (
      771
      41)
    object BitBtn1: TBitBtn
      Left = 688
      Top = 8
      Width = 75
      Height = 33
      Anchors = [akTop, akRight, akBottom]
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
    Width = 765
    Height = 457
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitWidth = 771
    ExplicitHeight = 453
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = D_lab
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1hospcode: TcxGridDBColumn
        DataBinding.FieldName = 'hospcode'
        Width = 67
      end
      object show_visitDBTableView1pid: TcxGridDBColumn
        DataBinding.FieldName = 'pid'
        Width = 48
      end
      object show_visitDBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
        Width = 55
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 87
      end
      object show_visitDBTableView1LABTEST: TcxGridDBColumn
        DataBinding.FieldName = 'LABTEST'
        Width = 67
      end
      object show_visitDBTableView1lab_name: TcxGridDBColumn
        DataBinding.FieldName = 'lab_name'
        Width = 306
      end
      object show_visitDBTableView1LABRESULT: TcxGridDBColumn
        DataBinding.FieldName = 'LABRESULT'
        Width = 85
      end
      object show_visitDBTableView1D_UPDATE: TcxGridDBColumn
        DataBinding.FieldName = 'D_UPDATE'
        Width = 125
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 137
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object S_lab: TMyQuery
    Connection = DataModule1.Connect
    SQL.Strings = (
      'SELECT c.*'
      'from person p '
      'LEFT OUTER JOIN '
      
        '(SELECT c.hospcode,c.pid,c.SEQ,c.DATE_SERV,c.LABTEST,l.labtest a' +
        's lab_name,c.LABRESULT,c.D_UPDATE,'
      'p.cid,CONCAT(pe.prename,'#39' '#39',p.`NAME`,'#39' '#39',p.LNAME) as ptname'
      'FROM labfu c '
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = c.HOSPCODE AND p.PID = ' +
        'c.PID'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      'LEFT OUTER JOIN csex s ON s.sex = p.SEX '
      'LEFT OUTER JOIN clabtest l ON l.id_labtest = c.LABTEST'
      ')c ON c.cid = p.cid '
      ' '
      '#WHERE c.cid = '#39'3580400170949'#39
      'WHERE c.cid = :cid'
      ''
      'GROUP BY c.hospcode,c.pid,c.date_serv,c.labtest'
      'ORDER BY c.date_serv DESC')
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object D_lab: TMyDataSource
    DataSet = S_lab
    Left = 360
    Top = 104
  end
end
