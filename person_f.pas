unit person_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, cxContainer, RzButton, cxTextEdit, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tperson_maps_f = class(TForm)
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    Panel1: TPanel;
    s_text: TcxTextEdit;
    RzBitBtn1: TRzBitBtn;
    cxGridDBTableViewHOSPCODE: TcxGridDBColumn;
    cxGridDBTableViewCID: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewLNAME: TcxGridDBColumn;
    cxGridDBTableViewSEX: TcxGridDBColumn;
    cxGridDBTableViewage_y: TcxGridDBColumn;
    procedure s_textKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cxGridDBTableViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  person_maps_f: Tperson_maps_f;

implementation

uses data_modune, main_unit_f, emr;

{$R *.dfm}

procedure Tperson_maps_f.cxGridDBTableViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 s_text.text :=  DataModule1.t_person.FieldByName('cid').AsString;
end;

procedure Tperson_maps_f.cxGridDBTableViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    main_unit_form.text_s.text := DataModule1.t_person.FieldByName('cid').AsString;
    main_unit_form.cid_text.Caption := DataModule1.t_person.FieldByName('cid').AsString;
    main_unit_form.Qvisit.Close;
    main_unit_form.Qvisit.Params.ParamValues['cid'] := DataModule1.t_person.FieldByName('cid').AsString;
    main_unit_form.Qvisit.Open;

    emr_f.text_s.text := DataModule1.t_person.FieldByName('cid').AsString;
    emr_f.cid_text.Caption := DataModule1.t_person.FieldByName('cid').AsString;
    emr_f.Qvisit.Close;
    emr_f.Qvisit.Params.ParamValues['cid'] := DataModule1.t_person.FieldByName('cid').AsString;
    emr_f.Qvisit.Open;

    close;
end;

procedure Tperson_maps_f.RzBitBtn1Click(Sender: TObject);
begin
DataModule1.t_person.Close;
DataModule1.t_person.SQL.Text := ' select * from t_person_cid p '+
                                  ' WHERE p.cid like "'+s_text.text+'"                      '+
                                  ' OR p.lname like "%'+s_text.text+'"                      '+
                                  ' OR p.name like "'+s_text.text+'%"                      '+
                                  ' OR p.hn like "%'+s_text.text+'"                         '+
                                  ' OR p.pid like "%'+s_text.text+'"                         '+
                                  ' OR CONCAT(p.name," ",p.lname) like "%'+s_text.text+'%" '+
                                  ' limit 10';
DataModule1.t_person.Open;
main_unit_form.text_s.text := DataModule1.t_person.FieldByName('cid').AsString;
main_unit_form.cid_text.Caption := DataModule1.t_person.FieldByName('cid').AsString;

emr_f.text_s.text := DataModule1.t_person.FieldByName('cid').AsString;
emr_f.cid_text.Caption := DataModule1.t_person.FieldByName('cid').AsString;
end;

procedure Tperson_maps_f.s_textKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DataModule1.t_person.Close;
DataModule1.t_person.SQL.Text := ' select * from t_person_cid p '+
                                  ' WHERE p.cid like "'+s_text.text+'"                      '+
                                  ' OR p.lname like "%'+s_text.text+'"                      '+
                                  ' OR p.name like "'+s_text.text+'%"                      '+
                                  ' OR p.hn like "%'+s_text.text+'"                         '+
                                  ' OR p.pid like "%'+s_text.text+'"                         '+
                                  ' OR CONCAT(p.name," ",p.lname) like "%'+s_text.text+'%" '+
                                  ' limit 10';
DataModule1.t_person.Open;
end;

end.
