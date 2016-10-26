unit chronicfu_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tchronicfu_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    S_chronic: TMyQuery;
    D_chronic: TMyDataSource;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1SEQ: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1WEIGHT: TcxGridDBColumn;
    show_visitDBTableView1HEIGHT: TcxGridDBColumn;
    show_visitDBTableView1WAIST_CM: TcxGridDBColumn;
    show_visitDBTableView1SBP: TcxGridDBColumn;
    show_visitDBTableView1DBP: TcxGridDBColumn;
    show_visitDBTableView1FOOT: TcxGridDBColumn;
    show_visitDBTableView1RETINA: TcxGridDBColumn;
    show_visitDBTableView1PROVIDER: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  chronicfu_form: Tchronicfu_form;

implementation

uses data_modune;

{$R *.dfm}

procedure Tchronicfu_form.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tchronicfu_form.FormShow(Sender: TObject);
begin
S_chronic.Close;
S_chronic.Params.ParamValues['cid'] := cid;
S_chronic.Open;
record_count.Caption :=  IntToStr(S_chronic.RecordCount);
end;

end.
