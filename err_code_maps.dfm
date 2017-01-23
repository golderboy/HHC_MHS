object show_err: Tshow_err
  Left = 878
  Top = 0
  Caption = 'show_err'
  ClientHeight = 552
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 25
    Align = alTop
    TabOrder = 0
    object s_text: TcxTextEdit
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      OnKeyDown = s_textKeyDown
      Width = 445
    end
  end
  object cxGrid: TcxGrid
    Left = 0
    Top = 25
    Width = 447
    Height = 527
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataModule1.Derr_code
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableViewcode: TcxGridDBColumn
        DataBinding.FieldName = 'code'
        Width = 62
      end
      object cxGridDBTableViewdetail: TcxGridDBColumn
        DataBinding.FieldName = 'detail'
        Width = 366
      end
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridDBTableView
    end
  end
end
