program HHC_MHS;

uses
  Forms,
  main_unit_f in 'main_unit_f.pas' {main_unit_form},
  data_modune in 'data_modune.pas' {DataModule1: TDataModule},
  chronic_f in 'chronic_f.pas' {chronic_form},
  main_chronic_f in 'main_chronic_f.pas' {main_chronic_form},
  miniEMR_f in 'miniEMR_f.pas' {miniEMR_form},
  login_f in 'login_f.pas' {f_login},
  main_50f_f in 'main_50f_f.pas' {main_50f_form},
  service_f in 'service_f.pas' {service_form},
  drugallergy_f in 'drugallergy_f.pas' {drugallergy_form},
  epi_f in 'epi_f.pas' {epi_form},
  labor_f in 'labor_f.pas' {labor_form},
  connection_f in 'connection_f.pas' {connection_form},
  prenatal_f in 'prenatal_f.pas' {prenatal_form},
  postnatal_f in 'postnatal_f.pas' {postnatal_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_login, f_login);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tconnection_form, connection_form);
  Application.CreateForm(Tpostnatal_form, postnatal_form);
  Application.Run;
end.
