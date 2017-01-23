object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 509
  Width = 656
  object connect_db: TMyConnection
    Database = 'dhdc5806'
    Options.UseUnicode = True
    Options.Charset = 'utf8'
    Username = 'pond-prox'
    Password = 'smh5811207'
    Server = '192.168.1.220'
    Connected = True
    Left = 160
    Top = 80
  end
  object Dhospital: TMyDataSource
    DataSet = Chospital
    Left = 416
    Top = 160
  end
  object Chospital: TMyQuery
    Connection = connect_db
    SQL.Strings = (
      'SELECT hoscode,hosname from chospital_amp')
    ReadOnly = True
    Left = 360
    Top = 160
  end
  object Derr_code: TMyDataSource
    DataSet = Qerr_code
    Left = 416
    Top = 216
  end
  object Qerr_code: TMyQuery
    Connection = connect_db
    SQL.Strings = (
      'SELECT * from err_code_maps')
    ReadOnly = True
    Left = 360
    Top = 216
  end
  object t_person: TMyQuery
    Connection = connect_db
    SQL.Strings = (
      'SELECT * from t_person_cid limit 100')
    ReadOnly = True
    Left = 360
    Top = 272
  end
  object d_person: TMyDataSource
    DataSet = t_person
    Left = 416
    Top = 272
  end
end
