unit data_modune;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS;

type
  TDataModule1 = class(TDataModule)
    connect_db: TMyConnection;
    Dhospital: TMyDataSource;
    Chospital: TMyQuery;
    Derr_code: TMyDataSource;
    Qerr_code: TMyQuery;
    t_person: TMyQuery;
    d_person: TMyDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
