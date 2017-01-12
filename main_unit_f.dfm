object main_unit_form: Tmain_unit_form
  Left = 0
  Top = 0
  Caption = 'HHC_MHS Bata'
  ClientHeight = 533
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'TH SarabunPSK'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 22
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 773
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
  object Panel_header: TPanel
    Left = 0
    Top = 33
    Width = 773
    Height = 40
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 16
      Top = 6
      Caption = #3588#3657#3609#3627#3634' CID / '#3594#3639#3656#3629' / '#3609#3634#3617#3626#3585#3640#3621
    end
    object text_s: TcxTextEdit
      Left = 166
      Top = 6
      TabOrder = 1
      Width = 402
    end
    object RzBitBtn1: TRzBitBtn
      Left = 574
      Top = 6
      Height = 28
      AllowAllUp = True
      Default = True
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 2
      OnClick = RzBitBtn1Click
      OnKeyDown = RzBitBtn1KeyDown
    end
  end
  object Panel2: TPanel
    Left = 574
    Top = 73
    Width = 199
    Height = 460
    Align = alRight
    TabOrder = 2
    DesignSize = (
      199
      460)
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 190
      Height = 35
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3586#3638#3657#3609#3607#3632#3648#3610#3637#3618#3609' CHRONIC'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 3
      Top = 47
      Width = 190
      Height = 34
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3605#3633#3657#3591#3588#3619#3619#3606#3660
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 3
      Top = 87
      Width = 190
      Height = 34
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3593#3637#3604#3623#3633#3588#3595#3637#3609
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 3
      Top = 415
      Width = 190
      Height = 34
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 3
      Top = 127
      Width = 190
      Height = 34
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3649#3614#3657#3618#3634
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 3
      Top = 207
      Width = 190
      Height = 34
      Anchors = [akTop, akRight]
      Caption = 'DHDC CHK'
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 3
      Top = 167
      Width = 190
      Height = 34
      Anchors = [akTop, akRight]
      Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3619#3633#3585#3625#3634
      TabOrder = 6
      OnClick = BitBtn7Click
    end
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 568
    Height = 454
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = D_person
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
      object show_visitDBTableView1HOSPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPCODE'
        Width = 82
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 217
      end
      object show_visitDBTableView1CID: TcxGridDBColumn
        DataBinding.FieldName = 'CID'
        Width = 130
      end
      object show_visitDBTableView1BIRTH: TcxGridDBColumn
        DataBinding.FieldName = 'BIRTH'
        Width = 60
      end
      object show_visitDBTableView1sexname: TcxGridDBColumn
        DataBinding.FieldName = 'sexname'
        Width = 61
      end
      object show_visitDBTableView1TYPEAREA: TcxGridDBColumn
        DataBinding.FieldName = 'TYPEAREA'
        Width = 91
      end
      object show_visitDBTableView1DISCHARGE: TcxGridDBColumn
        DataBinding.FieldName = 'DISCHARGE'
        Width = 97
      end
      object show_visitDBTableView1D_UPDATE: TcxGridDBColumn
        DataBinding.FieldName = 'D_UPDATE'
        Width = 118
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object D_person: TMyDataSource
    DataSet = S_person
    Left = 360
    Top = 104
  end
  object S_person: TMyQuery
    Connection = DataModule1.connect_db
    SQL.Strings = (
      'set @text = :text_edit ;'
      '#set @text = '#39'1580400093085'#39' ;'
      ''
      
        'select p.HOSPCODE,CONCAT(pe.prename,'#39' '#39',p.`NAME`,'#39' '#39',p.LNAME) as' +
        ' ptname,p.CID,p.BIRTH,s.sexname,p.TYPEAREA,p.DISCHARGE,p.D_UPDAT' +
        'E'
      'from person p'
      'LEFT OUTER JOIN cprename pe ON pe.id_prename = p.PRENAME'
      'LEFT OUTER JOIN csex s ON s.sex = p.SEX'
      ''
      'WHERE p.CID like concat('#39'%'#39',@text,'#39'%'#39')'
      'OR p.LNAME like concat(@text,'#39'%'#39')'
      'OR p.`NAME` like concat('#39'%'#39',@text)'
      'OR concat(p.`NAME`,'#39' '#39',p.LNAME) like concat('#39'%'#39',@text,'#39'%'#39')'
      ''
      ''
      'ORDER BY  p.`NAME`,p.D_UPDATE asc')
    ReadOnly = True
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'text_edit'
      end>
  end
end
