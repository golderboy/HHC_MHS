unit prenatal_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tprenatal_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    show_visitDBTableView1BDATE: TcxGridDBColumn;
    show_visitDBTableView1GRAVIDA: TcxGridDBColumn;
    show_visitDBTableView1GA: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1DATE_HCT: TcxGridDBColumn;
    show_visitDBTableView1HB_RESULT: TcxGridDBColumn;
    show_visitDBTableView1HCT_RESULT: TcxGridDBColumn;
    show_visitDBTableView1HIV_RESULT: TcxGridDBColumn;
    show_visitDBTableView1VDRL_RESULT: TcxGridDBColumn;
    show_visitDBTableView1THALASSEMIA: TcxGridDBColumn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  prenatal_form: Tprenatal_form;

implementation

uses data_modune;

{$R *.dfm}

procedure Tprenatal_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tprenatal_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

end.
