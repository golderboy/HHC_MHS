object miniEMR_form: TminiEMR_form
  Left = 0
  Top = 0
  Caption = 'miniEMR_form'
  ClientHeight = 537
  ClientWidth = 767
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
  object Panel1: TPanel
    Left = 0
    Top = 504
    Width = 767
    Height = 33
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      767
      33)
    object BitBtn1: TBitBtn
      Left = 684
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 3
      Width = 75
      Height = 25
      Caption = 'CHRONIC'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 88
      Top = 3
      Width = 75
      Height = 25
      Caption = #3585#3634#3619#3605#3633#3657#3591#3588#3619#3619#3606#3660
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 169
      Top = 3
      Width = 75
      Height = 25
      Caption = #3623#3633#3588#3595#3637#3609
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 250
      Top = 3
      Width = 75
      Height = 25
      Caption = #3649#3614#3657#3618#3634
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 761
    Height = 152
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 2
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 753
      Height = 144
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = D_chronic
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1HOSPCODE: TcxGridDBColumn
          DataBinding.FieldName = 'HOSPCODE'
          Width = 82
        end
        object cxGridDBTableView1DATE_SERV: TcxGridDBColumn
          DataBinding.FieldName = 'DATE_SERV'
          Width = 99
        end
        object cxGridDBTableView1CHIEFCOMP: TcxGridDBColumn
          DataBinding.FieldName = 'CHIEFCOMP'
          Width = 248
        end
        object cxGridDBTableView1WEIGHT: TcxGridDBColumn
          DataBinding.FieldName = 'WEIGHT'
          Width = 60
        end
        object cxGridDBTableView1HEIGHT: TcxGridDBColumn
          DataBinding.FieldName = 'HEIGHT'
          Width = 69
        end
        object cxGridDBTableView1WAIST_CM: TcxGridDBColumn
          DataBinding.FieldName = 'WAIST_CM'
          Width = 76
        end
        object cxGridDBTableView1SBP: TcxGridDBColumn
          DataBinding.FieldName = 'SBP'
        end
        object cxGridDBTableView1DBP: TcxGridDBColumn
          DataBinding.FieldName = 'DBP'
        end
        object cxGridDBTableView1FOOT: TcxGridDBColumn
          DataBinding.FieldName = 'FOOT'
          Width = 43
        end
        object cxGridDBTableView1RETINA: TcxGridDBColumn
          DataBinding.FieldName = 'RETINA'
          Width = 68
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 194
    Width = 558
    Height = 307
    Align = alLeft
    Caption = 'Panel3'
    TabOrder = 3
    object show_visit: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 550
      Height = 299
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object show_visitDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = D_lab
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsData.Appending = True
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object show_visitDBTableView1hospcode: TcxGridDBColumn
          DataBinding.FieldName = 'hospcode'
          Width = 67
        end
        object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
          DataBinding.FieldName = 'DATE_SERV'
          Width = 87
        end
        object show_visitDBTableView1labtest: TcxGridDBColumn
          DataBinding.FieldName = 'labtest'
          Width = 391
        end
      end
      object show_visitLevel1: TcxGridLevel
        GridView = show_visitDBTableView1
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 567
    Top = 194
    Width = 197
    Height = 307
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 4
    object cxGrid2: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 189
      Height = 299
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = D_drug
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsData.Appending = True
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView2Dname: TcxGridDBColumn
          DataBinding.FieldName = 'Dname'
          Width = 358
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object S_lab: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT c.hospcode,c.DATE_SERV,'
      
        'concat('#39'[ '#39',c.LABTEST,'#39' ] '#39',l.labtest,'#39' RESULT = '#39',c.LABRESULT,'#39 +
        '\n'#39') as labtest '
      ' '
      'FROM labfu c '
      'LEFT OUTER JOIN clabtest l ON l.id_labtest = c.LABTEST'
      ''
      '#WHERE c.pid = '#39'264'#39
      ''
      'WHERE c.hospcode = :hospcode'
      'AND c.pid = :pid'
      'AND c.SEQ = :seq'
      ''
      'GROUP BY c.hospcode,c.pid,c.SEQ,c.LABTEST'
      'ORDER BY c.date_serv DESC')
    Left = 168
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hospcode'
      end
      item
        DataType = ftUnknown
        Name = 'pid'
      end
      item
        DataType = ftUnknown
        Name = 'seq'
      end>
  end
  object D_lab: TMyDataSource
    DataSet = S_lab
    Left = 256
    Top = 216
  end
  object S_chronic: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT se.HOSPCODE,se.DATE_SERV,se.CHIEFCOMP,c.WEIGHT,p.cid,'
      'if(c.HEIGHT is null,'#39'-'#39',c.HEIGHT)as HEIGHT,'
      'if(c.WAIST_CM is null,'#39'-'#39',c.WAIST_CM)as WAIST_CM,'
      'if(c.SBP is null,se.SBP,c.SBP) as SBP,'
      'if(c.DBP is null,se.DBP,c.DBP) as DBP,'
      'if(c.FOOT is null,'#39'-'#39',c.FOOT) as FOOT,'
      'if(c.RETINA is null,'#39'-'#39',c.RETINA) as RETINA'
      'FROM service se'
      
        'LEFT OUTER JOIN chronicfu c ON c.HOSPCODE = se.HOSPCODE AND c.PI' +
        'D = se.PID AND c.SEQ = se.SEQ'
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = se.HOSPCODE AND p.PID =' +
        ' se.PID'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      'LEFT OUTER JOIN csex s ON s.sex = p.SEX '
      ''
      '#WHERE c.pid = '#39'264'#39
      ''
      'WHERE se.hospcode = :hospcode'
      'AND se.pid = :pid'
      'AND se.SEQ = :seq'
      ''
      'GROUP BY se.hospcode,se.pid'
      ''
      'ORDER BY se.date_serv DESC')
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hospcode'
      end
      item
        DataType = ftUnknown
        Name = 'pid'
      end
      item
        DataType = ftUnknown
        Name = 'seq'
      end>
  end
  object D_chronic: TMyDataSource
    DataSet = S_chronic
    Left = 360
    Top = 104
  end
  object S_drug: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'SELECT '
      'concat('#39' '#39','
      'if(d1.DNAME  !="",d1.DNAME,'#39'NO NAME'#39'),'#39'  '#3592#3635#3609#3623#3609' '#39','
      'if(d1.AMOUNT !="",d1.AMOUNT,'#39'0'#39'),'#39' [ '#39','
      'if(d1.UNIT_PACKING !="",d1.UNIT_PACKING,"-"),'#39' ]'#39') as Dname'
      ''
      'FROM service f '
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = f.HOSPCODE AND p.PID = ' +
        'f.PID'
      
        'LEFT OUTER JOIN drug_opd d1 ON d1.SEQ = f.SEQ AND d1.HOSPCODE = ' +
        'f.HOSPCODE AND d1.PID = f.PID '
      ''
      'WHERE f.hospcode = :hospcode'
      'AND f.pid = :pid'
      'AND f.SEQ = :seq'
      'AND d1.DNAME != ""'
      ''
      '#GROUP BY f.hospcode,f.pid,f.SEQ'
      ''
      'UNION ALL'
      ''
      'SELECT '
      'concat('#39' '#39','
      'if(d2.DNAME  !="",d2.DNAME,'#39'NO NAME'#39'),'#39'  '#3592#3635#3609#3623#3609' '#39','
      'if(d2.AMOUNT !="",d2.AMOUNT,'#39'0'#39'),'#39' [ '#39','
      'if(d2.UNIT_PACKING !="",d2.UNIT_PACKING,"-"),'#39' ]'#39') as Dname'
      ''
      'FROM service f '
      
        'LEFT OUTER JOIN person p ON p.HOSPCODE = f.HOSPCODE AND p.PID = ' +
        'f.PID'
      
        'LEFT OUTER JOIN admission a ON a.SEQ = f.SEQ AND a.HOSPCODE = f.' +
        'HOSPCODE AND a.PID = f.PID '
      
        'LEFT OUTER JOIN drug_ipd d2 ON d2.HOSPCODE = a.HOSPCODE AND d2.P' +
        'ID = a.PID AND d2.an = a.an'
      ''
      'WHERE a.hospcode = :hospcode'
      'AND a.pid = :pid'
      'AND a.SEQ = :seq'
      'AND d2.DNAME != ""'
      ''
      '#GROUP BY f.hospcode,f.pid,f.SEQ')
    Left = 520
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hospcode'
      end
      item
        DataType = ftUnknown
        Name = 'pid'
      end
      item
        DataType = ftUnknown
        Name = 'seq'
      end
      item
        DataType = ftUnknown
        Name = 'hospcode'
      end
      item
        DataType = ftUnknown
        Name = 'pid'
      end
      item
        DataType = ftUnknown
        Name = 'seq'
      end>
  end
  object D_drug: TMyDataSource
    DataSet = S_drug
    Left = 608
    Top = 248
  end
end
