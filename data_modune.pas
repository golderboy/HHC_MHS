unit data_modune;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess;

type
  TDataModule1 = class(TDataModule)
    connect_db: TMyConnection;
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
