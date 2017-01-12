unit service_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tservice_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1SBP: TcxGridDBColumn;
    show_visitDBTableView1DBP: TcxGridDBColumn;
    show_visitDBTableView1CHIEFCOMP: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure show_visitDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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
  service_form: Tservice_form;

implementation

uses data_modune, miniEMR_f;

{$R *.dfm}

procedure Tservice_form.BitBtn1Click(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.hospcode := QService.FieldByName('hospcode').AsString;
    miniEMR_form.pid := QService.FieldByName('pid').AsString;
    miniEMR_form.seq := QService.FieldByName('seq').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tservice_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tservice_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

procedure Tservice_form.show_visitDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.hospcode := QService.FieldByName('hospcode').AsString;
    miniEMR_form.pid := QService.FieldByName('pid').AsString;
    miniEMR_form.seq := QService.FieldByName('seq').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

end.
