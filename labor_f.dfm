object labor_form: Tlabor_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 629
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
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 781
    Height = 168
    Align = alTop
    TabOrder = 1
    object show_visit: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 773
      Height = 160
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 2
      object show_visitDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Dlabor
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 201
    Width = 781
    Height = 185
    Align = alTop
    TabOrder = 2
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 773
      Height = 177
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 36
      ExplicitWidth = 756
      ExplicitHeight = 476
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Dlabor
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
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'BDATE'
          Width = 67
        end
        object cxGridDBColumn2: TcxGridDBColumn
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
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 386
    Width = 781
    Height = 234
    Align = alTop
    TabOrder = 3
    ExplicitTop = 296
    object cxGrid2: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 773
      Height = 226
      Align = alClient
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 36
      ExplicitWidth = 749
      ExplicitHeight = 456
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 588
    Width = 781
    Height = 41
    Align = alBottom
    TabOrder = 4
    ExplicitLeft = 1
    ExplicitTop = 192
    ExplicitWidth = 779
    object RzBitBtn1: TRzBitBtn
      Left = 688
      Top = 8
      Caption = 'Exit'
      TabOrder = 0
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730B0000730B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8EEE3AC
        E3EEE8E8E8E8E8E8E8E8E8E8E8EEE8ACE3EEE8E8E8E8E8E8E8E8E8EEE3E28257
        57E2ACE3EEE8E8E8E8E8E8EEE8E2818181E2ACE8EEE8E8E8E8E8E382578282D7
        578181E2E3E8E8E8E8E8E881818181D7818181E2E8E8E8E8E8E857828989ADD7
        57797979EEE8E8E8E8E88181DEDEACD781818181EEE8E8E8E8E857898989ADD7
        57AAAAA2D7ADE8E8E8E881DEDEDEACD781DEDE81D7ACE8E8E8E857898989ADD7
        57AACEA3AD10E8E8E8E881DEDEDEACD781DEAC81AC81E8E8E8E85789825EADD7
        57ABCFE21110E8E8E8E881DE8181ACD781ACACE28181E8E8E8E8578957D7ADD7
        57ABDE101010101010E881DE56D7ACD781ACDE818181818181E857898257ADD7
        57E810101010101010E881DE8156ACD781E381818181818181E857898989ADD7
        57E882101010101010E881DEDEDEACD781E381818181818181E857898989ADD7
        57ACEE821110E8E8E8E881DEDEDEACD781ACEE818181E8E8E8E857898989ADD7
        57ABE8AB8910E8E8E8E881DEDEDEACD781ACE3ACDE81E8E8E8E857828989ADD7
        57ACE8A3E889E8E8E8E88181DEDEACD781ACE381E8DEE8E8E8E8E8DE5E8288D7
        57A2A2A2E8E8E8E8E8E8E8DE8181DED781818181E8E8E8E8E8E8E8E8E8AC8257
        57E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object Qlabor: TMyQuery
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
    ReadOnly = True
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object Dlabor: TMyDataSource
    DataSet = Qlabor
    Left = 360
    Top = 104
  end
  object Qprenatal: TMyQuery
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
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object Dprenatal: TMyDataSource
    DataSet = Qprenatal
    Left = 360
    Top = 256
  end
  object Qpostnatal: TMyQuery
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
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid'
      end>
  end
  object Dpostnatal: TMyDataSource
    DataSet = Qpostnatal
    Left = 360
    Top = 464
  end
end
