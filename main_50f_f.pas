unit main_50f_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxBar, cxClasses, dxRibbon, RzButton, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess,
  MyAccess, MemDS, cxGridLevel, cxGridCustomView, cxGrid, StdCtrls, dblookup,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel;

type
  Tmain_50f_form = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    BarManager: TdxBarManager;
    BarManagerBar2: TdxBar;
    dxBarButton1: TdxBarButton;
    patient_btn: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    Panel1: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
    cxGridDBTableView1FILE: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1ERR: TcxGridDBColumn;
    cxGridDBTableView1BYEAR: TcxGridDBColumn;
    cxGridDBTableView1per: TcxGridDBColumn;
    year: TComboBox;
    cxLabel1: TcxLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure yearSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fid : string
  end;

var
  main_50f_form: Tmain_50f_form;

implementation

uses data_modune, err_anc, err_person, err_chronic, err_disability,
  err_drugallergy, login_f, err_epi, err_fp, err_prenatal, err_postnatal,
  err_labor, err_newborn;

{$R *.dfm}

procedure Tmain_50f_form.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
fid := MyQuery.FieldByName('FILE').AsString;
    if fid = 'ANC' then
      begin
          err_anc_f := Terr_anc_f.Create(application);
          err_anc_f.ShowModal;
          err_anc_f.Free;
      end;

    if fid = 'PERSON' then
      begin
          err_person_f := Terr_person_f.Create(application);
          err_person_f.ShowModal;
          err_person_f.Free;
      end;

    if fid = 'CHRONIC' then
      begin
          err_chronic_f := Terr_chronic_f.Create(application);
          err_chronic_f.ShowModal;
          err_chronic_f.Free;
      end;

    if fid = 'DISABILITY' then
      begin
          err_disability_f := Terr_disability_f.Create(application);
          err_disability_f.ShowModal;
          err_disability_f.Free;
      end;

    if fid = 'DRUGALLERGY' then
      begin
          err_disability_f := Terr_disability_f.Create(application);
          err_disability_f.ShowModal;
          err_disability_f.Free;
      end;

    if fid = 'EPI' then
      begin
          err_epi_f := Terr_epi_f.Create(application);
          err_epi_f.ShowModal;
          err_epi_f.Free;
      end;

    if fid = 'FP' then
      begin
          err_fp_f := Terr_fp_f.Create(application);
          err_fp_f.ShowModal;
          err_fp_f.Free;
      end;

    if fid = 'PRENATAL' then
      begin
          err_prenatal_f := Terr_prenatal_f.Create(application);
          err_prenatal_f.ShowModal;
          err_prenatal_f.Free;
      end;

    if fid = 'POSTNATAL' then
      begin
          err_postnatal_f := Terr_postnatal_f.Create(application);
          err_postnatal_f.ShowModal;
          err_postnatal_f.Free;
      end;

    if fid = 'LABOR' then
      begin
          err_labor_f := Terr_labor_f.Create(application);
          err_labor_f.ShowModal;
          err_labor_f.Free;
      end;

    if fid = 'NEWBORN' then
      begin
          err_newborn_f := Terr_newborn_f.Create(application);
          err_newborn_f.ShowModal;
          err_newborn_f.Free;
      end;

end;

procedure Tmain_50f_form.dxBarButton10Click(Sender: TObject);
begin
    err_anc_f := Terr_anc_f.Create(application);
    err_anc_f.ShowModal;
    err_anc_f.Free;
end;

procedure Tmain_50f_form.dxBarButton11Click(Sender: TObject);
begin
    err_newborn_f := Terr_newborn_f.Create(application);
    err_newborn_f.ShowModal;
    err_newborn_f.Free;
end;

procedure Tmain_50f_form.dxBarButton12Click(Sender: TObject);
begin
    err_epi_f := Terr_epi_f.Create(application);
    err_epi_f.ShowModal;
    err_epi_f.Free;
end;

procedure Tmain_50f_form.dxBarButton13Click(Sender: TObject);
begin
    err_fp_f := Terr_fp_f.Create(application);
    err_fp_f.ShowModal;
    err_fp_f.Free;
end;

procedure Tmain_50f_form.dxBarButton14Click(Sender: TObject);
begin
    err_labor_f := Terr_labor_f.Create(application);
    err_labor_f.ShowModal;
    err_labor_f.Free;
end;

procedure Tmain_50f_form.dxBarButton15Click(Sender: TObject);
begin
    err_prenatal_f := Terr_prenatal_f.Create(application);
    err_prenatal_f.ShowModal;
    err_prenatal_f.Free;
end;

procedure Tmain_50f_form.dxBarButton16Click(Sender: TObject);
begin
    err_postnatal_f := Terr_postnatal_f.Create(application);
    err_postnatal_f.ShowModal;
    err_postnatal_f.Free;
end;

procedure Tmain_50f_form.dxBarButton29Click(Sender: TObject);
begin
    err_disability_f := Terr_disability_f.Create(application);
    err_disability_f.ShowModal;
    err_disability_f.Free;
end;

procedure Tmain_50f_form.dxBarButton30Click(Sender: TObject);
begin

    err_drugallergy_f := Terr_drugallergy_f.Create(application);
    err_drugallergy_f.ShowModal;
    err_drugallergy_f.Free;
end;

procedure Tmain_50f_form.dxBarButton3Click(Sender: TObject);
begin
    err_person_f := Terr_person_f.Create(application);
    err_person_f.ShowModal;
    err_person_f.Free;
end;

procedure Tmain_50f_form.dxBarButton9Click(Sender: TObject);
begin
    err_chronic_f := Terr_chronic_f.Create(application);
    err_chronic_f.ShowModal;
    err_chronic_f.Free;
end;

procedure Tmain_50f_form.FormShow(Sender: TObject);
begin
MyQuery.Close;
MyQuery.Params.ParamValues['byear'] :=  year.Text;
//showmessage(year.Text);
MyQuery.Open;
end;

procedure Tmain_50f_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tmain_50f_form.yearSelect(Sender: TObject);
begin
MyQuery.Close;
MyQuery.Params.ParamValues['byear'] :=  year.Text;
//showmessage(year.Text);
MyQuery.Open;
end;

end.
