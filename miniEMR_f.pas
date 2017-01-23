unit miniEMR_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess,
  MemDS, StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  TminiEMR_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    S_lab: TMyQuery;
    D_lab: TMyDataSource;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    show_visitDBTableView1hospcode: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1labtest: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    S_chronic: TMyQuery;
    D_chronic: TMyDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    S_drug: TMyQuery;
    D_drug: TMyDataSource;
    cxGridDBTableView2Dname: TcxGridDBColumn;
    cxGridDBTableView1HOSPCODE: TcxGridDBColumn;
    cxGridDBTableView1DATE_SERV: TcxGridDBColumn;
    cxGridDBTableView1CHIEFCOMP: TcxGridDBColumn;
    cxGridDBTableView1WEIGHT: TcxGridDBColumn;
    cxGridDBTableView1HEIGHT: TcxGridDBColumn;
    cxGridDBTableView1WAIST_CM: TcxGridDBColumn;
    cxGridDBTableView1SBP: TcxGridDBColumn;
    cxGridDBTableView1DBP: TcxGridDBColumn;
    cxGridDBTableView1FOOT: TcxGridDBColumn;
    cxGridDBTableView1RETINA: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hospcode : string;
    pid : string;
    seq : string;
    cid : string;
  end;

var
  miniEMR_form: TminiEMR_form;

implementation

uses connection_f, data_modune, chronic_f, labor_f, epi_f, drugallergy_f;

{$R *.dfm}

procedure TminiEMR_form.BitBtn1Click(Sender: TObject);
begin
close;
end;


procedure TminiEMR_form.BitBtn2Click(Sender: TObject);
begin
    chronic_form := Tchronic_form.Create(application);
    chronic_form.cid := S_chronic.FieldByName('cid').AsString;
    chronic_form.ShowModal;
    chronic_form.Free;
end;

procedure TminiEMR_form.BitBtn3Click(Sender: TObject);
begin
    labor_form  := Tlabor_form.Create(application);
    labor_form.cid := S_chronic.FieldByName('cid').AsString;
    labor_form.ShowModal;
    labor_form.Free;
end;

procedure TminiEMR_form.BitBtn4Click(Sender: TObject);
begin
    epi_form  := Tepi_form.Create(application);
    epi_form.cid := S_chronic.FieldByName('cid').AsString;
    epi_form.ShowModal;
    epi_form.Free;
end;

procedure TminiEMR_form.BitBtn5Click(Sender: TObject);
begin
    drugallergy_form  := Tdrugallergy_form.Create(application);
    drugallergy_form.cid := S_chronic.FieldByName('cid').AsString;
    drugallergy_form.ShowModal;
    drugallergy_form.Free;
end;

procedure TminiEMR_form.FormShow(Sender: TObject);
begin
    S_chronic.Close;
    S_chronic.Params.ParamValues['hospcode'] := hospcode;
    S_chronic.Params.ParamValues['pid'] := pid;
    S_chronic.Params.ParamValues['seq'] := seq;
    S_chronic.Open;

    S_lab.Close;
    S_lab.Params.ParamValues['hospcode'] := hospcode;
    S_lab.Params.ParamValues['pid'] := pid;
    S_lab.Params.ParamValues['seq'] := seq;
    S_lab.Open;

    S_drug.Close;
    S_drug.Params.ParamValues['hospcode'] := hospcode;
    S_drug.Params.ParamValues['pid'] := pid;
    S_drug.Params.ParamValues['seq'] := seq;
    S_drug.Open;

end;

end.
