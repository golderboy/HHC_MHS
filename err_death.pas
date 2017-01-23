unit err_death;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, RzButton, cxLabel, StdCtrls, ExtCtrls,
  JvExControls, JvNavigationPane;

type
  Terr_disability_f = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel2: TPanel;
    year: TComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    hosp: TComboBox;
    RzBitBtn4: TRzBitBtn;
    s_text: TcxTextEdit;
    cxLabel3: TcxLabel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridDBTableViewBYEAR: TcxGridDBColumn;
    cxGridDBTableViewERR_CODE: TcxGridDBColumn;
    cxGridDBTableViewHOSPCODE: TcxGridDBColumn;
    cxGridDBTableViewPID: TcxGridDBColumn;
    cxGridDBTableViewSEX: TcxGridDBColumn;
    cxGridDBTableViewDATE_SERV: TcxGridDBColumn;
    cxGridDBTableViewGRAVIDA: TcxGridDBColumn;
    cxGridDBTableViewANCNO: TcxGridDBColumn;
    cxGridDBTableViewGA: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewLNAME: TcxGridDBColumn;
    cxGridDBTableViewTYPEAREA: TcxGridDBColumn;
    cxGridLevel: TcxGridLevel;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  err_disability_f: Terr_disability_f;

implementation

{$R *.dfm}

end.
