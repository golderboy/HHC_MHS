unit emr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvNavigationPane, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, cxTextEdit, cxLabel, ExtCtrls,
  MemDS, DBAccess, MyAccess;

type
  Temr_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel_header: TPanel;
    cxLabel1: TcxLabel;
    text_s: TcxTextEdit;
    RzBitBtn1: TRzBitBtn;
    cid_text: TcxLabel;
    RzBitBtn4: TRzBitBtn;
    Panel2: TPanel;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1HOSPCODE: TcxGridDBColumn;
    cxGridDBTableView1DATE_SERV: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
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
    Panel3: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Dvisit: TMyDataSource;
    Qvisit: TMyQuery;
    QService: TMyQuery;
    DService: TMyDataSource;
    procedure RzBitBtn4Click(Sender: TObject);
    procedure text_sKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure show_visitDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  emr_f: Temr_f;

implementation

uses data_modune, miniEMR_f, person_f;

{$R *.dfm}

procedure Temr_f.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    QService.Close;
    QService.Params.ParamValues['hospcode'] := Qvisit.FieldByName('hospcode').AsString;
    QService.Params.ParamValues['seq'] := Qvisit.FieldByName('seq').AsString;
    //showmessage(Qvisit.FieldByName('hospcode').AsString+' -- '+Qvisit.FieldByName('seq').AsString);
    QService.Open;
end;

procedure Temr_f.cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    QService.Close;
    QService.Params.ParamValues['hospcode'] := Qvisit.FieldByName('hospcode').AsString;
    QService.Params.ParamValues['seq'] := Qvisit.FieldByName('seq').AsString;
//showmessage(Qvisit.FieldByName('hospcode').AsString+' -- '+Qvisit.FieldByName('seq').AsString);
    QService.Open;
end;

procedure Temr_f.RzBitBtn1Click(Sender: TObject);
begin
  Qvisit.Close;
  Qvisit.Params.ParamValues['cid'] := text_s.Text;
  Qvisit.Open;
end;

procedure Temr_f.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Temr_f.RzBitBtn3Click(Sender: TObject);
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

procedure Temr_f.RzBitBtn4Click(Sender: TObject);
begin
  person_maps_f := Tperson_maps_f.Create(application);
  person_maps_f.s_text.Text := text_s.Text;
  person_maps_f.ShowModal;
  person_maps_f.Free;
end;

procedure Temr_f.show_visitDBTableView1CellDblClick(
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

procedure Temr_f.text_sKeyUp(Sender: TObject; var Key: Word;
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
