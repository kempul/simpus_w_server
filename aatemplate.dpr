program aatemplate;

uses
  Forms,
  aau in 'aau.pas' {Form1_aa},
  pesan_enum in 'pesan_enum.pas',
  pembuka in 'pembuka.pas' {Form1_pembuka},
  aaaliCrypt in 'aaaliCrypt.pas',
  aaULogin in 'aaULogin.pas' {FormLogin},
  masterpuskesmasu in 'masterpuskesmasu.pas' {Form1_masterPuskesmas},
  ubahpasswdu in 'ubahpasswdu.pas' {Form1_ubahPasswd},
  aau111 in 'aau111.pas' {Form111},
  kunciu in 'kunciu.pas' {Form1_kunci},
  dmMaster in 'dmMaster.pas' {dataMaster: TDataModule},
  feerawatu in 'feerawatu.pas' {Form1_feeRawat},
  masterfeerawatu in 'masterfeerawatu.pas' {Form1_masterFeeRawat},
  ABOUT in 'ABOUT.pas' {AboutBox},
  versionInfoUnit in 'versionInfoUnit.pas',
  frxu in 'frxu.pas' {Form1_frx},
  dmlaporan in 'dmlaporan.pas' {dataLaporan: TDataModule},
  masterPoliu in 'masterPoliu.pas' {Form1_masterPoli},
  pegawaiu in 'pegawaiu.pas' {Form1_pegawai},
  dokteru in 'dokteru.pas' {Form1_dokter};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SIMPUS';
  Application.CreateForm(TForm1_aa, Form1_aa);
  Application.CreateForm(TForm1_kunci, Form1_kunci);
  Application.CreateForm(TForm111, Form111);
  Application.CreateForm(TForm1_ubahPasswd, Form1_ubahPasswd);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm1_frx, Form1_frx);
  Application.CreateForm(TdataMaster, dataMaster);
  Application.CreateForm(TdataLaporan, dataLaporan);
  Application.Run;
end.

