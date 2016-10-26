unit connection_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, ExtCtrls, cxMaskEdit, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, JvExControls, JvNavigationPane, IniFiles;

type
  Tconnection_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    host: TcxTextEdit;
    database: TcxTextEdit;
    user: TcxTextEdit;
    pass: TcxTextEdit;
    connect_btn: TcxButton;
    port: TcxSpinEdit;
    Panel1: TPanel;
    save_btn: TcxButton;
    procedure connect_btnClick(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  connection_form: Tconnection_form;

implementation

uses data_modune;

{$R *.dfm}

procedure Tconnection_form.connect_btnClick(Sender: TObject);
begin
   DataModule1.connect_db.Server := host.Text;
   DataModule1.connect_db.Database := database.Text;
   DataModule1.connect_db.Username := user.Text;
   DataModule1.connect_db.Password := pass.Text;
   DataModule1.connect_db.Port := port.Value;
   DataModule1.connect_db.Options.Charset := 'tis620';
   try

   DataModule1.connect_db.Connected := true;

   if DataModule1.connect_db.Connected then
      begin
      showmessage('Connect ok..');
      end;
   except
     on e : exception do
        begin
        showmessage('False Connect!!'+e.Message);
        end;
   end;
end;

procedure Tconnection_form.FormCreate(Sender: TObject);
begin
  if fileexists('D:\dhdc.ini') then
   begin
		controlstore := Tinifile.Create('D:\dhdc.ini');
		host.Text := controlstore.ReadString('dhdc','host','127.0.0.1');
		database.Text := controlstore.ReadString('dhdc','database','hos');
		user.Text := controlstore.ReadString('dhdc','user','sa');
		pass.Text := controlstore.ReadString('dhdc','pass','');
		port.Text := controlstore.ReadString('dhdc','port','3306');
   end;
end;

procedure Tconnection_form.save_btnClick(Sender: TObject);
begin
   controlstore := Tinifile.Create('D:\dhdc.ini');
   controlstore.WriteString('dhdc','host',host.Text);
   controlstore.WriteString('dhdc','database',database.Text);
   controlstore.WriteString('dhdc','user',user.Text);
   controlstore.WriteString('dhdc','pass',pass.Text);
   controlstore.WriteString('dhdc','port',port.Text);

   controlstore.Free;
   close;
end;

end.
