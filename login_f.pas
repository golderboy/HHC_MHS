unit login_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, RzButton, ExtCtrls, cxTextEdit, cxLabel, JvExControls,
  JvNavigationPane, DB, DBAccess, MyAccess, MemDS, IniFiles;

type
  Tf_login = class(TForm)
    header_login: TJvNavPanelHeader;
    cxLabel1: TcxLabel;
    username_t: TcxTextEdit;
    password_t: TcxTextEdit;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    login_bit: TRzBitBtn;
    Quser: TMyQuery;
    Duser: TMyDataSource;
    connect_btn: TRzBitBtn;
    procedure login_bitClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure connect_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  f_login: Tf_login;

implementation

uses main_unit_f, connection_f, data_modune;

{$R *.dfm}

procedure Tf_login.connect_btnClick(Sender: TObject);
begin
    connection_form := Tconnection_form.Create(application);
    connection_form.ShowModal;
    connection_form.Free;
end;

procedure Tf_login.FormShow(Sender: TObject);
begin
            DataModule1.connect_db.Connected := false;
            if DataModule1.connect_db.Connected then
                  begin
                  showmessage('False Connect!!');
                    connection_form := Tconnection_form.Create(application);
                    connection_form.ShowModal;
                    connection_form.Free;
                  end
            else
              begin
                  login_bit.Enabled := True
              end;

         DataModule1.connect_db.Server := connection_form.host.Text;
         DataModule1.connect_db.Database := connection_form.database.Text;
         DataModule1.connect_db.Username := connection_form.user.Text;
         DataModule1.connect_db.Password := connection_form.pass.Text;
         DataModule1.connect_db.Port := connection_form.Port.Value;
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

procedure Tf_login.login_bitClick(Sender: TObject);
begin
  Quser.Close;
  Quser.sql.text := 'select username,password_hash,role '+
    ' from user2 '+
    ' where username = "'+username_t.text+'" '+
    ' and password_hash = "'+password_t.Text+'" '+
    ' and role in ("1","2","3") ';
  Quser.Open;
    if  Quser.RecordCount > 0 then
          begin
            showmessage (' Login ...OK');
            username_t.Text := '';
            password_t.Text := '';
            main_unit_form := Tmain_unit_form.Create(application);
            main_unit_form.Show;
          end
    else
          begin
              showmessage ('USERNAME OR PASSWORD IS NOT VALUE');
              username_t.Text := '';
              password_t.Text := '';
           end

end;

procedure Tf_login.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
