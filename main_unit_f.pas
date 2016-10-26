unit main_unit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvNavigationPane, Grids, DBGrids, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  RzButton, cxTextEdit, cxLabel, RzDBGrid, DB, MemDS, DBAccess, MyAccess,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons;

type
  Tmain_unit_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel_header: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    text_s: TcxTextEdit;
    RzBitBtn1: TRzBitBtn;
    D_person: TMyDataSource;
    S_person: TMyQuery;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1CID: TcxGridDBColumn;
    show_visitDBTableView1BIRTH: TcxGridDBColumn;
    show_visitDBTableView1sexname: TcxGridDBColumn;
    show_visitDBTableView1TYPEAREA: TcxGridDBColumn;
    show_visitDBTableView1DISCHARGE: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RzBitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cid : string;
  end;

var
  main_unit_form: Tmain_unit_form;

implementation

uses data_modune, chronic_f, main_50f_f, service_f, drugallergy_f, epi_f,
  labor_f;

{$R *.dfm}

procedure Tmain_unit_form.BitBtn1Click(Sender: TObject);
begin
    chronic_form := Tchronic_form.Create(application);
    chronic_form.cid := S_person.FieldByName('cid').AsString;
    chronic_form.ShowModal;
    chronic_form.Free;
end;

procedure Tmain_unit_form.BitBtn2Click(Sender: TObject);
begin
    labor_form  := Tlabor_form.Create(application);
    labor_form.cid := S_person.FieldByName('cid').AsString;
    labor_form.ShowModal;
    labor_form.Free;
end;

procedure Tmain_unit_form.BitBtn3Click(Sender: TObject);
begin
    epi_form  := Tepi_form.Create(application);
    epi_form.cid := S_person.FieldByName('cid').AsString;
    epi_form.ShowModal;
    epi_form.Free;
end;

procedure Tmain_unit_form.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tmain_unit_form.BitBtn5Click(Sender: TObject);
begin
    drugallergy_form  := Tdrugallergy_form.Create(application);
    drugallergy_form.cid := S_person.FieldByName('cid').AsString;
    drugallergy_form.ShowModal;
    drugallergy_form.Free;
end;

procedure Tmain_unit_form.BitBtn6Click(Sender: TObject);
begin
    main_50f_form := Tmain_50f_form.Create(application);
    main_50f_form.ShowModal;
    main_50f_form.Free;
end;

procedure Tmain_unit_form.BitBtn7Click(Sender: TObject);
begin
    service_form := Tservice_form.Create(application);
    service_form.cid := S_person.FieldByName('cid').AsString;
    service_form.ShowModal;
    service_form.Free;
end;

procedure Tmain_unit_form.RzBitBtn1Click(Sender: TObject);
begin
  S_person.Close;
  S_person.Params.ParamValues['text_edit'] := text_s.Text;
  S_person.Open;
end;

procedure Tmain_unit_form.RzBitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var pwd : String;
begin
if key = vk_return then
end;

end.
