unit labor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, JvExControls, JvNavigationPane;

type
  Tlabor_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    show_visitDBTableView1BDATE: TcxGridDBColumn;
    show_visitDBTableView1BHOSP: TcxGridDBColumn;
    show_visitDBTableView1EDC: TcxGridDBColumn;
    show_visitDBTableView1LMP: TcxGridDBColumn;
    show_visitDBTableView1GRAVIDA: TcxGridDBColumn;
    show_visitDBTableView1BTYPE: TcxGridDBColumn;
    show_visitDBTableView1BRESULT: TcxGridDBColumn;
    show_visitDBTableView1SBORN: TcxGridDBColumn;
    show_visitDBTableView1LBORN: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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

procedure Tlabor_form.BitBtn1Click(Sender: TObject);
begin
    prenatal_form  := Tprenatal_form.Create(application);
    prenatal_form.cid := QService.FieldByName('cid').AsString;
    prenatal_form.ShowModal;
    prenatal_form.Free;
end;

procedure Tlabor_form.BitBtn2Click(Sender: TObject);
begin
    postnatal_form  := Tpostnatal_form.Create(application);
    postnatal_form.cid := QService.FieldByName('cid').AsString;
    postnatal_form.ShowModal;
    postnatal_form.Free;
end;

procedure Tlabor_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tlabor_form.FormShow(Sender: TObject);
begin
    QService.Close;
    QService.Params.ParamValues['cid'] := cid;
    QService.Open;
end;

end.
