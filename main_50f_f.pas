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
  cxDBLookupEdit, cxDBLookupComboBox;

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
    procedure RzBitBtn1Click(Sender: TObject);
    procedure yearSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_50f_form: Tmain_50f_form;

implementation

uses data_modune;

{$R *.dfm}

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
