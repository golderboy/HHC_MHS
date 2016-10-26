unit chronic_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, JvExControls, JvNavigationPane, DBAccess, MyAccess, MemDS;

type
  Tchronic_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    S_chronic: TMyQuery;
    D_chronic: TMyDataSource;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1DATE_DIAG: TcxGridDBColumn;
    show_visitDBTableView1CHRONIC: TcxGridDBColumn;
    show_visitDBTableView1HOSP_DX: TcxGridDBColumn;
    show_visitDBTableView1HOSP_RX: TcxGridDBColumn;
    show_visitDBTableView1DATE_DISCH: TcxGridDBColumn;
    show_visitDBTableView1TYPEDISCH: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1sexname: TcxGridDBColumn;
    BitBtn4: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  chronic_form: Tchronic_form;

implementation

uses data_modune, chronicfu_f, labfu_f, main_chronic_f;

{$R *.dfm}

procedure Tchronic_form.BitBtn1Click(Sender: TObject);
begin
    main_chronic_form := Tmain_chronic_form.Create(application);
    main_chronic_form.cid := S_chronic.FieldByName('cid').AsString;
    main_chronic_form.ShowModal;
    main_chronic_form.Free;
end;

procedure Tchronic_form.BitBtn3Click(Sender: TObject);
begin
    labfu_form := Tlabfu_form.Create(application);
    labfu_form.cid := S_chronic.FieldByName('cid').AsString;
    labfu_form.ShowModal;
    labfu_form.Free;
end;

procedure Tchronic_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tchronic_form.FormShow(Sender: TObject);
begin
    S_chronic.Close;
    S_chronic.Params.ParamValues['cid'] := cid;
    S_chronic.Open;
end;

end.
