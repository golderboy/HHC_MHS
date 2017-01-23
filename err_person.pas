unit err_person;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, cxLabel, StdCtrls, ExtCtrls, JvExControls,
  JvNavigationPane,ShellAPI,cxExport,cxGridExportLink, cxTextEdit;

type
  Terr_person_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    year: TComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    hosp: TComboBox;
    RzBitBtn4: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
    cxGridDBTableViewBYEAR: TcxGridDBColumn;
    cxGridDBTableViewERR_CODE: TcxGridDBColumn;
    cxGridDBTableViewHOSPCODE: TcxGridDBColumn;
    cxGridDBTableViewPID: TcxGridDBColumn;
    cxGridDBTableViewCID: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewLNAME: TcxGridDBColumn;
    cxGridDBTableViewTYPEAREA: TcxGridDBColumn;
    cxGridDBTableViewBIRTH: TcxGridDBColumn;
    cxGridDBTableViewNATION: TcxGridDBColumn;
    cxGridDBTableViewchk_cid: TcxGridDBColumn;
    cxGridDBTableViewchk_type: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    s_text: TcxTextEdit;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  GetTempDir : string;
    procedure s_textKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableViewTYPEAREACustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewCIDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    text_data : string;
  end;

var
  err_person_f: Terr_person_f;

implementation

uses data_modune, err_code_maps, person_f;

{$R *.dfm}

procedure Terr_person_f.cxGridDBTableViewCIDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[4]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Terr_person_f.cxGridDBTableViewTYPEAREACustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[7]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Terr_person_f.FormShow(Sender: TObject);
begin
  DataModule1.Chospital.Close;
  DataModule1.Chospital.Open;
    while NOT DataModule1.Chospital.Eof do begin
       hosp.Items.Add(DataModule1.Chospital['hoscode']);
       DataModule1.Chospital.Next;
    end;

  MyQuery.Close;
  MyQuery.Params.ParamValues['byear'] :=  year.Text;
  //showmessage(year.Text);
  MyQuery.Open;
end;

function Terr_person_f.GetTempDir: string;
  var
    TempDir: array[0..MAX_PATH] of Char;
begin
    TempDir[GetTempPath(260, TempDir)] := #0;
    Result := TempDir;
end;

procedure Terr_person_f.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Terr_person_f.RzBitBtn2Click(Sender: TObject);
begin
MyQuery.Close;

if (hosp.Text <> '') or (hosp.itemIndex >=0) then
    begin
      MyQuery.SQL.Text := 'SELECT e.*                                       '+
      ' ,(select group_concat(hospcode) from person where cid = e.cid  	 group by cid)as chk_cid  '+
      ' ,(select group_concat(TYPEAREA) from person where cid = e.cid 	 group by cid)as chk_type '+
      ' from err_person e                                                   '+
      ' LEFT JOIN person p ON p.PID = e.PID AND p.HOSPCODE = e.HOSPCODE     '+
      ' where e.BYEAR = "'+year.Text+'" AND e.HOSPCODE = "'+hosp.Text+'"    ';
    end
else
    begin
      MyQuery.SQL.Text := 'SELECT e.*                                       '+
      ' ,(select group_concat(hospcode) from person where cid = e.cid  	 group by cid)as chk_cid  '+
      ' ,(select group_concat(TYPEAREA) from person where cid = e.cid 	 group by cid)as chk_type '+
      ' LEFT JOIN person p ON p.PID = e.PID AND p.HOSPCODE = e.HOSPCODE     '+
      ' where e.BYEAR = "'+year.Text+'"     ';
    end;
MyQuery.Open;
//showmessage(MyQuery.SQL.Text);
end;

procedure Terr_person_f.RzBitBtn3Click(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', cxGrid, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Terr_person_f.s_textKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if length(s_text.text) =2 then
     begin
      show_err := Tshow_err.Create(application);
      show_err.s_text.Text := s_text.Text;
      show_err.ShowModal;
      show_err.Free;
     end;
end;

end.
