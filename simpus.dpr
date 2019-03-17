program simpus;

uses
  Forms,
  aau in 'aau.pas' {Form1_aa},
  aaaliCrypt in 'aaaliCrypt.pas',
  aau111 in 'aau111.pas' {Form111},
  ABOUT in 'ABOUT.pas' {AboutBox},
  amyhttp in 'brigde\amyhttp.pas',
  aaULogin in 'aaULogin.pas' {FormLogin},
  ubahpasswdu in 'ubahpasswdu.pas' {Form1_ubahPasswd},
  kunciu in 'kunciu.pas' {Form1_kunci},
  pembuka in 'pembuka.pas' {Form1_pembuka},
  pcare_passwdU in 'pcare_passwdU.pas' {Form1_passwdPcare},
  masterpuskesmasu in 'master_data\masterpuskesmasu.pas' {Form1_masterPuskesmas},
  pemakaiu in 'pemakaiu.pas' {Form1_pemakai},
  dinkesToolU in 'master_bpjs\dinkesToolU.pas' {Form1_toolsDinkes},
  dmMaster in 'master_data\dmMaster.pas' {dataMaster: TDataModule},
  prolanisU in 'prolanis\prolanisU.pas' {Form1_Prolanis},
  brDokterU in 'brigde\brDokterU.pas',
  brCommonsU in 'brigde\brCommonsU.pas',
  masterInstalasiU in 'master_data\masterInstalasiU.pas' {Form1_masterInstalasi},
  masterBiayau in 'master_data\masterBiayau.pas' {Form1_masterBiaya},
  masterRSRujukanu in 'master_data\masterRSRujukanu.pas' {Form1_masterRSRujukan},
  masterKelasTmpTiduru in 'master_data\masterKelasTmpTiduru.pas' {Form1_masterKelasTmpTidur},
  pasienu in 'pasien\pasienu.pas' {Form1_pasien},
  dmPasien in 'pasien\dmPasien.pas' {dataPasien: TDataModule},
  cetakKartuBerobatU in 'master_data\cetakKartuBerobatU.pas' {Form1_cetakKartuBerobat},
  brPoliU in 'brigde\brPoliU.pas',
  masterTindakanu in 'master_data\masterTindakanu.pas' {Form1_masterTindakan},
  pesan_enum in 'pesan_enum.pas',
  brDiagnosaU in 'brigde\brDiagnosaU.pas',
  diagnosaDlgU in 'master_data\diagnosaDlgU.pas' {Form1_diagnosaDlg},
  pasien_sentuh_u in 'pasien\pasien_sentuh_u.pas' {Form1_sentuhPasien},
  masterImunisasiU in 'master_data\masterImunisasiU.pas' {Form1_masterImunisasi},
  masterPonedu in 'master_data\masterPonedu.pas' {Form1_masterPONED},
  dmRI in 'pelayananri\dmRI.pas' {dataRI: TDataModule},
  pasienKunjunganu in 'kunjungan\pasienKunjunganu.pas' {Form1_pasienKunjungan},
  brPesertaU in 'brigde\brPesertaU.pas',
  brProlanisU in 'brigde\brProlanisU.pas',
  pasienCariu in 'kunjungan\pasienCariu.pas' {Form1_pasienCari},
  dmpelayanan in 'pelayanan\dmpelayanan.pas' {dataPelayanan: TDataModule},
  pasienPelayananu in 'pelayanan\pasienPelayananu.pas' {Form1_pelayanan},
  ICDXCariu in 'pelayanan\ICDXCariu.pas' {Form1_ICDXCari},
  icdxCaridiPcareU in 'pelayanan\icdxCaridiPcareU.pas' {Form1_icdxCariDiPCARE},
  pulangBantuU in 'pelayanan\pulangBantuU.pas' {Form1_pulangBantu},
  capilCariU in 'kunjungan\capilCariU.pas' {Form1_cariDiDukcapil},
  gigiBantuU in 'pelayanan\gigiBantuU.pas' {Form1_gigiBantu},
  tindakanAddU in 'pelayanan\tindakanAddU.pas' {Form1_tindakanAdd},
  mtindakanLuU in 'pelayanan\mtindakanLuU.pas' {Form1_tindakanLU},
  obatAddU in 'pelayanan\obatAddU.pas' {Form1_obatAdd},
  obatCariU in 'pelayanan\obatCariU.pas' {Form1_obatCari},
  ImunisasiBantuU in 'pelayanan\ImunisasiBantuU.pas' {Form1_ImunisasiBantu},
  labCariU in 'pelayanan\labCariU.pas' {Form1_LabCari},
  ponedBantuU in 'pelayanan\ponedBantuU.pas' {Form1_ponedBantu},
  pasienPelayananRIu in 'pelayananri\pasienPelayananRIu.pas' {Form1_pelayananRI},
  dmKunjungan in 'kunjungan\dmKunjungan.pas' {dataKunjungan: TDataModule},
  bedDlgU in 'pelayananri\bedDlgU.pas' {Form1_bedDlg},
  masterJmlTmpTiduru in 'master_data\masterJmlTmpTiduru.pas' {Form1_masterJmlTmpTidur},
  kamarEditU in 'master_data\kamarEditU.pas' {Form1_kamarEdit},
  kamarAddU in 'master_data\kamarAddU.pas' {Form1_kamarAdd},
  diagnosaAddU in 'pelayananri\diagnosaAddU.pas' {Form1_diagnosaAdd},
  fisikAddU in 'pelayananri\fisikAddU.pas' {Form1_fisikAdd},
  bpjsMasterU in 'master_bpjs\bpjsMasterU.pas' {Form1_masterBPJS},
  dmBPJS in 'master_bpjs\dmBPJS.pas' {dataBPJS: TDataModule},
  brProviderU in 'brigde\brProviderU.pas',
  brTindakanU in 'brigde\brTindakanU.pas',
  brKesadaranU in 'brigde\brKesadaranU.pas',
  obatDlgU in 'master_bpjs\obatDlgU.pas' {Form1_obatDlg},
  brPulangU in 'brigde\brPulangU.pas',
  icdxTouchU in 'master_bpjs\icdxTouchU.pas' {Form1_icdxTouch},
  masterObatu in 'master_data\masterObatu.pas' {Form1_masterObat},
  masterPoliu in 'master_data\masterPoliu.pas' {Form1_masterPoli},
  masterPoliRujukanu in 'master_data\masterPoliRujukanu.pas' {Form1_masterPoliRujukan},
  masterICDXu in 'master_data\masterICDXu.pas' {Form1_masterICDX},
  obatTouchU in 'master_bpjs\obatTouchU.pas' {Form1_obatTouch},
  brPendaftaranU in 'brigde\brPendaftaranU.pas',
  brKunjunganU in 'brigde\brKunjunganU.pas',
  masterLabU in 'master_data\masterLabU.pas' {Form1_masterLab},
  lab_pasien_u in 'pelayanan\lab_pasien_u.pas' {Form1_labPasien},
  formatSettingKomputerU in 'formatSettingKomputerU.pas',
  imunisasiCariU in 'pelayanan\imunisasiCariU.pas' {Form1_ImunisasiCari},
  feerawatu in 'feerawatu.pas' {Form1_feeRawat},
  dmBPJSMaster in 'master_bpjs\dmBPJSMaster.pas' {dataMasterBPJS: TDataModule},
  bpjsToolU in 'master_bpjs\bpjsToolU.pas' {Form1_toolsBpjs},
  SrvBpjsParallelU in 'SrvBpjsParallelU.pas',
  antrikanU in 'antrikanU.pas',
  kunjunganRiU in 'pelayananri\kunjunganRiU.pas' {Form1_kunjunganRI},
  frxu in 'laporan\frxu.pas' {Form1_frx},
  laporanu in 'laporan\laporanu.pas' {Form1_laporan},
  brCapilU in 'brigde\brCapilU.pas',
  brFktlU in 'brigde\brFktlU.pas',
  faskesRujukanU in 'pelayanan\faskesRujukanU.pas' {Form1_faskesRujukan},
  dmRujukanU in 'pelayanan\dmRujukanU.pas' {dataRujukan: TDataModule},
  obatCaridiPcareU in 'pelayanan\obatCaridiPcareU.pas' {Form1_obatCariDiPCARE},
  lab_bpjs in 'pelayanan\lab_bpjs.pas' {Form1_labBpjs},
  dmMcu in 'pelayanan\dmMcu.pas' {dataMCU: TDataModule},
  brMcuU in 'brigde\brMcuU.pas',
  brObatU in 'brigde\brObatU.pas',
  dokteru in 'master_data\dokteru.pas' {Form1_dokter},
  dmProlanis in 'prolanis\dmProlanis.pas' {dataProlanis: TDataModule},
  bulanDialog in 'prolanis\bulanDialog.pas' {Form1_bulanDialog},
  KegiatanAddU in 'prolanis\KegiatanAddU.pas' {Form1_prolanisKegiatanAdd},
  pesertaAddU in 'prolanis\pesertaAddU.pas' {Form1_tambahPeserta};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SIMPUS';
  Application.CreateForm(TForm1_aa, Form1_aa);
  Application.CreateForm(TForm1_kunci, Form1_kunci);
  Application.CreateForm(TForm111, Form111);
  Application.CreateForm(TdataMaster, dataMaster);
  Application.CreateForm(TdataRI, dataRI);
  Application.CreateForm(TdataPelayanan, dataPelayanan);
  Application.CreateForm(TdataPasien, dataPasien);
  Application.CreateForm(TdataBPJS, dataBPJS);
  Application.CreateForm(TdataKunjungan, dataKunjungan);
  Application.CreateForm(TdataMCU, dataMCU);
  Application.CreateForm(TdataProlanis, dataProlanis);
  Application.CreateForm(TdataRujukan, dataRujukan);
  Application.CreateForm(TdataMasterBPJS, dataMasterBPJS);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TForm1_ubahPasswd, Form1_ubahPasswd);
  Application.CreateForm(TForm1_passwdPcare, Form1_passwdPcare);
  Application.CreateForm(TForm1_diagnosaDlg, Form1_diagnosaDlg);
  Application.CreateForm(TForm1_sentuhPasien, Form1_sentuhPasien);
  Application.CreateForm(TForm1_pasienCari, Form1_pasienCari);
  Application.CreateForm(TForm1_cetakKartuBerobat, Form1_cetakKartuBerobat);
  Application.CreateForm(TForm1_ICDXCari, Form1_ICDXCari);
  Application.CreateForm(TForm1_icdxCariDiPCARE, Form1_icdxCariDiPCARE);
  Application.CreateForm(TForm1_pulangBantu, Form1_pulangBantu);
  Application.CreateForm(TForm1_cariDiDukcapil, Form1_cariDiDukcapil);
  Application.CreateForm(TForm1_gigiBantu, Form1_gigiBantu);
  Application.CreateForm(TForm1_tindakanAdd, Form1_tindakanAdd);
  Application.CreateForm(TForm1_tindakanLU, Form1_tindakanLU);
  Application.CreateForm(TForm1_obatAdd, Form1_obatAdd);
  Application.CreateForm(TForm1_obatCari, Form1_obatCari);
  Application.CreateForm(TForm1_ImunisasiBantu, Form1_ImunisasiBantu);
  Application.CreateForm(TForm1_LabCari, Form1_LabCari);
  Application.CreateForm(TForm1_ponedBantu, Form1_ponedBantu);
  Application.CreateForm(TForm1_bedDlg, Form1_bedDlg);
  Application.CreateForm(TForm1_kamarEdit, Form1_kamarEdit);
  Application.CreateForm(TForm1_kamarAdd, Form1_kamarAdd);
  Application.CreateForm(TForm1_diagnosaAdd, Form1_diagnosaAdd);
  Application.CreateForm(TForm1_fisikAdd, Form1_fisikAdd);
  Application.CreateForm(TForm1_obatDlg, Form1_obatDlg);
  Application.CreateForm(TForm1_icdxTouch, Form1_icdxTouch);
  Application.CreateForm(TForm1_masterPoliRujukan, Form1_masterPoliRujukan);
  Application.CreateForm(TForm1_masterICDX, Form1_masterICDX);
  Application.CreateForm(TForm1_masterICDX, Form1_masterICDX);
  Application.CreateForm(TForm1_obatTouch, Form1_obatTouch);
  Application.CreateForm(TForm1_masterLab, Form1_masterLab);
  Application.CreateForm(TForm1_labPasien, Form1_labPasien);
  Application.CreateForm(TForm1_ImunisasiCari, Form1_ImunisasiCari);
  Application.CreateForm(TForm1_feeRawat, Form1_feeRawat);
  Application.CreateForm(TForm1_toolsBpjs, Form1_toolsBpjs);
  Application.CreateForm(TForm1_kunjunganRI, Form1_kunjunganRI);
  Application.CreateForm(TForm1_frx, Form1_frx);
  Application.CreateForm(TForm1_laporan, Form1_laporan);
  Application.CreateForm(TForm1_faskesRujukan, Form1_faskesRujukan);
  Application.CreateForm(TForm1_obatCariDiPCARE, Form1_obatCariDiPCARE);
  Application.CreateForm(TForm1_labBpjs, Form1_labBpjs);
  Application.CreateForm(TForm1_bulanDialog, Form1_bulanDialog);
  Application.CreateForm(TForm1_prolanisKegiatanAdd, Form1_prolanisKegiatanAdd);
  Application.CreateForm(TForm1_tambahPeserta, Form1_tambahPeserta);
  Application.Run;
end.

