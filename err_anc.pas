unit err_anc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, JvExControls, JvNavigationPane, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBAccess,
  MyAccess, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  Terr_anc_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1BDATE: TcxGridDBColumn;
    cxGridDBTableView1GRAVIDA: TcxGridDBColumn;
    cxGridDBTableView1PPCARE: TcxGridDBColumn;
    cxGridDBTableView1PPPLACE: TcxGridDBColumn;
    cxGridDBTableView1PPRESULT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Query: TMyQuery;
    Data: TMyDataSource;
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  err_anc_f: Terr_anc_f;

implementation

{$R *.dfm}

procedure Terr_anc_f.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
