unit epi_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tepi_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1VACCINETYPE: TcxGridDBColumn;
    show_visitDBTableView1engvaccine: TcxGridDBColumn;
    show_visitDBTableView1VACCINEPLACE: TcxGridDBColumn;
    show_visitDBTableView1HOSPNAME: TcxGridDBColumn;
    show_visitDBTableView1vacc_age: TcxGridDBColumn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  epi_form: Tepi_form;

implementation

uses data_modune;

{$R *.dfm}

procedure Tepi_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tepi_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

end.
