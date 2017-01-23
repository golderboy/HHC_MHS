unit sql_text;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, RzButton, cxTextEdit, cxMemo, ExtCtrls, JvExControls,
  JvNavigationPane, DB, DBAccess, MyAccess, MemDS, Grids
  , DBGrids,ShellAPI,cxExport,cxGridExportLink, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tsql_text_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    sql_text: TcxMemo;
    run_btn: TRzBitBtn;
    Panel2: TPanel;
    exit_btn: TRzBitBtn;
    exp_btn: TRzBitBtn;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
    DBGrid1: TDBGrid;
    procedure exit_btnClick(Sender: TObject);
    procedure run_btnClick(Sender: TObject);
    procedure exp_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sql_text_f: Tsql_text_f;

implementation

uses data_modune;

{$R *.dfm}

function Tsql_text_f.GetTempDir: string;
  var
    TempDir: array[0..MAX_PATH] of Char;
begin
    TempDir[GetTempPath(260, TempDir)] := #0;
    Result := TempDir;
end;

procedure Tsql_text_f.run_btnClick(Sender: TObject);
begin
MyQuery.Close;
MyQuery.SQL.Text := sql_text.Text;
MyQuery.Open;
 if MyQuery.RecordCount < 1 then
    begin
      showmessage('SQL ไม่ถูกต้อง หรือไม่พบข้อมูล');
   end;

end;

procedure Tsql_text_f.exit_btnClick(Sender: TObject);
begin
close;
end;

procedure Tsql_text_f.exp_btnClick(Sender: TObject);
begin
  { ExportGridToExcel(gettempdir + 'data_export.xls', show_data, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal); }
end;

procedure Tsql_text_f.FormShow(Sender: TObject);
begin
showmessage('กรุณาใส่เครื่องหมาย ";" ปิดท้ายคำสั่งทุครั้ง');
end;

end.
procedure Tsql_text_f.FormShow(Sender: TObject);
begin

end;

