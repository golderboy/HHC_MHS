unit main_unit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvNavigationPane, Grids, DBGrids, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  RzButton, cxTextEdit, cxLabel, RzDBGrid, DB, MemDS, DBAccess, MyAccess,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, dxRibbonSkins,
  dxBar, dxRibbon;

type
  Tmain_unit_form = class(TForm)
    Panel_header: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    text_s: TcxTextEdit;
    RzBitBtn1: TRzBitBtn;
    BarManager: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    BarManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dhdc_btn: TdxBarLargeButton;
    Panel1: TPanel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1SBP: TcxGridDBColumn;
    show_visitDBTableView1DBP: TcxGridDBColumn;
    show_visitDBTableView1CHIEFCOMP: TcxGridDBColumn;
    show_visitLevel1: TcxGridLevel;
    QService: TMyQuery;
    DService: TMyDataSource;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Qvisit: TMyQuery;
    Dvisit: TMyDataSource;
    cxGridDBTableView1HOSPCODE: TcxGridDBColumn;
    cxGridDBTableView1DATE_SERV: TcxGridDBColumn;
    cid_text: TcxLabel;
    Panel3: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    dxBarLargeButton2: TdxBarLargeButton;
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
    procedure dhdc_btnClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure show_visitDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure text_sKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
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
  labor_f, miniEMR_f, person_f, err_code_maps, login_f, emr, sql_text;

{$R *.dfm}

procedure Tmain_unit_form.BitBtn1Click(Sender: TObject);
begin
    chronic_form := Tchronic_form.Create(application);
    chronic_form.cid := QService.FieldByName('cid').AsString;
    chronic_form.ShowModal;
    chronic_form.Free;
end;

procedure Tmain_unit_form.BitBtn2Click(Sender: TObject);
begin
    labor_form  := Tlabor_form.Create(application);
    labor_form.cid := QService.FieldByName('cid').AsString;
    labor_form.ShowModal;
    labor_form.Free;
end;

procedure Tmain_unit_form.BitBtn3Click(Sender: TObject);
begin
    epi_form  := Tepi_form.Create(application);
    epi_form.cid := QService.FieldByName('cid').AsString;
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
    drugallergy_form.cid := QService.FieldByName('cid').AsString;
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
    service_form.cid := QService.FieldByName('cid').AsString;
    service_form.ShowModal;
    service_form.Free;
end;

procedure Tmain_unit_form.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    QService.Close;
    QService.Params.ParamValues['hospcode'] := Qvisit.FieldByName('hospcode').AsString;
    QService.Params.ParamValues['seq'] := Qvisit.FieldByName('seq').AsString;
    //showmessage(Qvisit.FieldByName('hospcode').AsString+' -- '+Qvisit.FieldByName('seq').AsString);
    QService.Open;
end;

procedure Tmain_unit_form.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    QService.Close;
    QService.Params.ParamValues['hospcode'] := Qvisit.FieldByName('hospcode').AsString;
    QService.Params.ParamValues['seq'] := Qvisit.FieldByName('seq').AsString;
//showmessage(Qvisit.FieldByName('hospcode').AsString+' -- '+Qvisit.FieldByName('seq').AsString);
    QService.Open;
end;

procedure Tmain_unit_form.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    QService.Close;
    QService.Params.ParamValues['hospcode'] := Qvisit.FieldByName('hospcode').AsString;
    QService.Params.ParamValues['seq'] := Qvisit.FieldByName('seq').AsString;
    //showmessage(Qvisit.FieldByName('hospcode').AsString+' -- '+Qvisit.FieldByName('seq').AsString);
    QService.Open;
end;

procedure Tmain_unit_form.dhdc_btnClick(Sender: TObject);
begin
    main_50f_form := Tmain_50f_form.Create(application);
    main_50f_form.ShowModal;
    main_50f_form.Free;
end;

procedure Tmain_unit_form.dxBarLargeButton1Click(Sender: TObject);
begin
  emr_f := Temr_f.Create(application);
  emr_f.ShowModal;
  emr_f.Free;
end;

procedure Tmain_unit_form.dxBarLargeButton2Click(Sender: TObject);
begin
  sql_text_f := Tsql_text_f.Create(application);
  sql_text_f.ShowModal;
  sql_text_f.Free;
end;

procedure Tmain_unit_form.RzBitBtn1Click(Sender: TObject);
begin
  Qvisit.Close;
  Qvisit.Params.ParamValues['cid'] := text_s.Text;
  Qvisit.Open;
end;

procedure Tmain_unit_form.RzBitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var pwd : String;
begin
if key = vk_return then
end;

procedure Tmain_unit_form.RzBitBtn2Click(Sender: TObject);
begin
close;
f_login.Close;
end;

procedure Tmain_unit_form.RzBitBtn3Click(Sender: TObject);
begin
  if QService.Active = true then
      begin
        miniEMR_form := TminiEMR_form.Create(application);
        miniEMR_form.hospcode := QService.FieldByName('hospcode').AsString;
        miniEMR_form.pid := QService.FieldByName('pid').AsString;
        miniEMR_form.seq := QService.FieldByName('seq').AsString;
        miniEMR_form.ShowModal;
        miniEMR_form.Free;
      end;
end;

procedure Tmain_unit_form.RzBitBtn4Click(Sender: TObject);
begin
  person_maps_f := Tperson_maps_f.Create(application);
  person_maps_f.s_text.Text := text_s.Text;
  person_maps_f.ShowModal;
  person_maps_f.Free;
end;

procedure Tmain_unit_form.show_visitDBTableView1CellDblClick(
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

procedure Tmain_unit_form.text_sKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (length(text_s.text) =3) then
     begin
        person_maps_f := Tperson_maps_f.Create(application);
        person_maps_f.s_text.Text := text_s.Text;
        person_maps_f.ShowModal;
        person_maps_f.Free;
     end;

end;

end.
