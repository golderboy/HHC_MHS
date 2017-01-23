program HHC_MHS;

uses
  Forms,
  main_unit_f in 'main_unit_f.pas' {main_unit_form},
  data_modune in 'data_modune.pas' {DataModule1: TDataModule},
  chronic_f in 'chronic_f.pas' {chronic_form},
  miniEMR_f in 'miniEMR_f.pas' {miniEMR_form},
  login_f in 'login_f.pas' {f_login},
  main_50f_f in 'main_50f_f.pas' {main_50f_form},
  service_f in 'service_f.pas' {service_form},
  drugallergy_f in 'drugallergy_f.pas' {drugallergy_form},
  epi_f in 'epi_f.pas' {epi_form},
  labor_f in 'labor_f.pas' {labor_form},
  connection_f in 'connection_f.pas' {connection_form},
  prenatal_f in 'prenatal_f.pas' {prenatal_form},
  postnatal_f in 'postnatal_f.pas' {postnatal_form},
  err_anc in 'err_anc.pas' {err_anc_f},
  err_person in 'err_person.pas' {err_person_f},
  err_chronic in 'err_chronic.pas' {err_chronic_f},
  err_code_maps in 'err_code_maps.pas' {show_err},
  person_f in 'person_f.pas' {person_maps_f},
  err_disability in 'err_disability.pas' {err_disability_f},
  err_drugallergy in 'err_drugallergy.pas' {err_drugallergy_f},
  err_epi in 'err_epi.pas' {err_epi_f},
  err_fp in 'err_fp.pas' {err_fp_f},
  err_prenatal in 'err_prenatal.pas' {err_prenatal_f},
  err_postnatal in 'err_postnatal.pas' {err_postnatal_f},
  err_labor in 'err_labor.pas' {err_labor_f},
  emr in 'emr.pas' {emr_f},
  err_newborn in 'err_newborn.pas' {err_newborn_f},
  sql_text in 'sql_text.pas' {sql_text_f};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_login, f_login);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tconnection_form, connection_form);
  Application.Run;
end.
