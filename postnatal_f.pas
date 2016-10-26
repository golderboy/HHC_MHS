unit postnatal_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, MemDS, DBAccess, MyAccess, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, JvExControls, JvNavigationPane;

type
  Tpostnatal_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
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
    show_visitLevel1: TcxGridLevel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DService: TMyDataSource;
    QService: TMyQuery;
    cxGridDBTableView1BDATE: TcxGridDBColumn;
    cxGridDBTableView1GRAVIDA: TcxGridDBColumn;
    cxGridDBTableView1PPCARE: TcxGridDBColumn;
    cxGridDBTableView1PPPLACE: TcxGridDBColumn;
    cxGridDBTableView1PPRESULT: TcxGridDBColumn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  postnatal_form: Tpostnatal_form;

implementation

{$R *.dfm}

procedure Tpostnatal_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tpostnatal_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

end.
