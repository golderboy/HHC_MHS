unit main_chronic_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tmain_chronic_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    S_chronic: TMyQuery;
    D_chronic: TMyDataSource;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1CHRONIC: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
    hospcode : string;
    pid : string;
    seq : string;
  end;

var
  main_chronic_form: Tmain_chronic_form;

implementation

uses data_modune, miniEMR_f;

{$R *.dfm}

procedure Tmain_chronic_form.BitBtn1Click(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.hospcode := S_chronic.FieldByName('hospcode').AsString;
    miniEMR_form.pid := S_chronic.FieldByName('pid').AsString;
    miniEMR_form.seq := S_chronic.FieldByName('seq').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tmain_chronic_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tmain_chronic_form.FormShow(Sender: TObject);
begin
    S_chronic.Close;
    S_chronic.Params.ParamValues['cid'] := cid;
    S_chronic.Open;
end;

end.
