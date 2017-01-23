unit labor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane, RzButton;

type
  Tlabor_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qlabor: TMyQuery;
    Dlabor: TMyDataSource;
    show_visitDBTableView1BDATE: TcxGridDBColumn;
    show_visitDBTableView1BHOSP: TcxGridDBColumn;
    show_visitDBTableView1EDC: TcxGridDBColumn;
    show_visitDBTableView1LMP: TcxGridDBColumn;
    show_visitDBTableView1GRAVIDA: TcxGridDBColumn;
    show_visitDBTableView1BTYPE: TcxGridDBColumn;
    show_visitDBTableView1BRESULT: TcxGridDBColumn;
    show_visitDBTableView1SBORN: TcxGridDBColumn;
    show_visitDBTableView1LBORN: TcxGridDBColumn;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    show_visitDBTableView1GA: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1DATE_HCT: TcxGridDBColumn;
    show_visitDBTableView1HB_RESULT: TcxGridDBColumn;
    show_visitDBTableView1HCT_RESULT: TcxGridDBColumn;
    show_visitDBTableView1HIV_RESULT: TcxGridDBColumn;
    show_visitDBTableView1VDRL_RESULT: TcxGridDBColumn;
    show_visitDBTableView1THALASSEMIA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Qprenatal: TMyQuery;
    Dprenatal: TMyDataSource;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1BDATE: TcxGridDBColumn;
    cxGridDBTableView1GRAVIDA: TcxGridDBColumn;
    cxGridDBTableView1PPCARE: TcxGridDBColumn;
    cxGridDBTableView1PPPLACE: TcxGridDBColumn;
    cxGridDBTableView1PPRESULT: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Qpostnatal: TMyQuery;
    Dpostnatal: TMyDataSource;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  labor_form: Tlabor_form;

implementation

uses data_modune, prenatal_f, postnatal_f;

{$R *.dfm}

procedure Tlabor_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tlabor_form.FormShow(Sender: TObject);
begin
    Qlabor.Close;
    Qpostnatal.Close;
    Qprenatal.close;
    Qlabor.Params.ParamValues['cid'] := cid;
    Qpostnatal.Params.ParamValues['cid'] := cid;
    Qprenatal.Params.ParamValues['cid'] := cid;
    Qlabor.Open;
    Qpostnatal.Open;
    Qprenatal.Open;
end;

procedure Tlabor_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
