unit err_code_maps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Grids, DBGrids, cxTextEdit, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tshow_err = class(TForm)
    Panel1: TPanel;
    s_text: TcxTextEdit;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridDBTableViewcode: TcxGridDBColumn;
    cxGridDBTableViewdetail: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure s_textKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    text_data :string;
  end;

var
  show_err: Tshow_err;

implementation

uses data_modune;

{$R *.dfm}

procedure Tshow_err.FormClose(Sender: TObject; var Action: TCloseAction);
begin
s_text.Clear;
end;

procedure Tshow_err.FormShow(Sender: TObject);
begin
DataModule1.Qerr_code.Close;
DataModule1.Qerr_code.SQL.Text := 'select code,detail from err_code_maps '+
                                  ' where code like "%'+s_text.text+'%" ';
DataModule1.Qerr_code.Open;
end;

procedure Tshow_err.s_textKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DataModule1.Qerr_code.Close;
DataModule1.Qerr_code.SQL.Text := 'select code,detail from err_code_maps '+
                                  ' where code like "%'+s_text.text+'%" ';
DataModule1.Qerr_code.Open;
end;

end.
