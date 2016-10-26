unit drugallergy_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, JvExControls, JvNavigationPane;

type
  Tdrugallergy_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    show_visitDBTableView1DNAME: TcxGridDBColumn;
    show_visitDBTableView1ALEVEL: TcxGridDBColumn;
    show_visitDBTableView1INHOSP: TcxGridDBColumn;
    show_visitDBTableView1DATERECORD: TcxGridDBColumn;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  drugallergy_form: Tdrugallergy_form;

implementation

uses data_modune, miniEMR_f;

{$R *.dfm}

procedure Tdrugallergy_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tdrugallergy_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

end.
