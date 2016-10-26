object connection_form: Tconnection_form
  Left = 0
  Top = 0
  Caption = 'connection_form'
  ClientHeight = 377
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'TH SarabunPSK'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 30
  object Label1: TLabel
    Left = 48
    Top = 104
    Width = 40
    Height = 30
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 48
    Top = 148
    Width = 80
    Height = 30
    Caption = 'Database'
  end
  object Label3: TLabel
    Left = 48
    Top = 192
    Width = 37
    Height = 30
    Caption = 'user'
  end
  object Label4: TLabel
    Left = 48
    Top = 236
    Width = 37
    Height = 30
    Caption = 'Pass'
  end
  object Label5: TLabel
    Left = 48
    Top = 280
    Width = 37
    Height = 30
    Caption = 'Port'
  end
  object Label6: TLabel
    Left = 232
    Top = 55
    Width = 154
    Height = 30
    Caption = #3605#3636#3604#3605#3656#3629#3600#3634#3609#3586#3657#3629#3617#3641#3621#3627#3621#3633#3585
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 619
    Height = 33
    Align = alTop
    Caption = 'mysql connection'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object host: TcxTextEdit
    Left = 128
    Top = 101
    TabOrder = 1
    Text = 'host'
    Width = 225
  end
  object database: TcxTextEdit
    Left = 128
    Top = 145
    TabOrder = 2
    Text = 'database'
    Width = 225
  end
  object user: TcxTextEdit
    Left = 128
    Top = 189
    TabOrder = 3
    Text = 'user'
    Width = 225
  end
  object pass: TcxTextEdit
    Left = 128
    Top = 233
    Properties.EchoMode = eemPassword
    TabOrder = 4
    Text = 'pass'
    Width = 225
  end
  object connect_btn: TcxButton
    Left = 368
    Top = 97
    Width = 227
    Height = 213
    Caption = 'connect'
    TabOrder = 5
    OnClick = connect_btnClick
  end
  object port: TcxSpinEdit
    Left = 128
    Top = 277
    TabOrder = 6
    Width = 225
  end
  object Panel1: TPanel
    Left = 0
    Top = 330
    Width = 619
    Height = 47
    Align = alBottom
    TabOrder = 7
    DesignSize = (
      619
      47)
    object save_btn: TcxButton
      Left = 507
      Top = 5
      Width = 83
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'save'
      TabOrder = 0
      OnClick = save_btnClick
    end
  end
end
