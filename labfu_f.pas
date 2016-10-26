unit labfu_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvNavigationPane;

type
  Tlabfu_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    S_lab: TMyQuery;
    D_lab: TMyDataSource;
    show_visitDBTableView1hospcode: TcxGridDBColumn;
    show_visitDBTableView1pid: TcxGridDBColumn;
    show_visitDBTableView1SEQ: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1LABTEST: TcxGridDBColumn;
    show_visitDBTableView1lab_name: TcxGridDBColumn;
    show_visitDBTableView1LABRESULT: TcxGridDBColumn;
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
  labfu_form: Tlabfu_form;

implementation

uses data_modune;

{$R *.dfm}

procedure Tlabfu_form.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tlabfu_form.FormShow(Sender: TObject);
begin
S_lab.Close;
S_lab.Params.ParamValues['cid'] := cid;
S_lab.Open;
record_count.Caption :=  IntToStr(S_lab.RecordCount);
end;

end.
