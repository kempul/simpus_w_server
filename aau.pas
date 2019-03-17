unit aau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvMenus, ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, ActnList, JvTimer, JvComponentBase, JvFormPlacement, JvExControls,
  JvLabel, System.Actions, Pipes;

type
  TForm1_aa = class(TForm)
    JvMainMenu1: TJvMainMenu;
    N1: TMenuItem;
    File1: TMenuItem;
    Quit1: TMenuItem;
    MasterData0: TMenuItem;
    Puskesmas1: TMenuItem;
    Setting0: TMenuItem;
    Help0: TMenuItem;
    panelUtama: TJvPanel;
    ActionList1: TActionList;
    actMasterPuskesmas: TAction;
    actMasterDokter: TAction;
    actMasterPoli: TAction;
    actMasterJmlTmpTidur: TAction;
    MasterServis: TAction;
    N5: TMenuItem;
    UbahPasswor1: TMenuItem;
    Pemakai1: TMenuItem;
    Dokter1: TMenuItem;
    MasterPoli1: TMenuItem;
    N2: TMenuItem;
    JenisPenjualan1: TMenuItem;
    ServisdanEmbalase1: TMenuItem;
    FeeRawat1: TMenuItem;
    N9: TMenuItem;
    MasterRawat: TAction;
    Pemakai: TAction;
    MasterICDX1: TMenuItem;
    N11: TMenuItem;
    actMasterICDX: TAction;
    tentangAplikasi1: TMenuItem;
    MasterBiaya1: TMenuItem;
    masterBiaya: TAction;
    DataPasien0: TMenuItem;
    Pasien1: TMenuItem;
    actPasien: TAction;
    actPasienKunjungan: TAction;
    KunjunganPasien: TMenuItem;
    MedicalRecord1: TMenuItem;
    actPasienMR: TAction;
    Tools0: TMenuItem;
    EksportData1: TMenuItem;
    KirimDataOnline1: TMenuItem;
    ImportMasterData1: TMenuItem;
    Laporan0: TMenuItem;
    Laporan2: TMenuItem;
    actEksportData: TAction;
    actKirimDataOnline: TAction;
    actImportMaster: TAction;
    actLaporan: TAction;
    MasterPONED1: TMenuItem;
    actMasterPONED: TAction;
    Pustu0: TMenuItem;
    MasterPUSTU1: TMenuItem;
    MasterBidanDesa1: TMenuItem;
    N4: TMenuItem;
    DataEntriPustu1: TMenuItem;
    DataEntriBidanDesa1: TMenuItem;
    actMasterPustu: TAction;
    actMasterBidan: TAction;
    actPustuData: TAction;
    actBidanPoned: TAction;
    actPustuKesakitan: TAction;
    Kunjungan1: TMenuItem;
    Kesakitan1: TMenuItem;
    actPasienPelayanan: TAction;
    PelayananPasien1: TMenuItem;
    InstalasiFarmasi0: TMenuItem;
    indakanPasien1: TMenuItem;
    actFarmasi: TAction;
    InstalasiLab0: TMenuItem;
    LabPasien1: TMenuItem;
    actPasienLab: TAction;
    toolBPJS: TMenuItem;
    N3: TMenuItem;
    actBPJSTool: TAction;
    MasterDataBPJS1: TMenuItem;
    actBPJSMaster: TAction;
    MasterImunisasi1: TMenuItem;
    actMasterImunisasi: TAction;
    actPasienLama: TAction;
    pasienLama: TMenuItem;
    N6: TMenuItem;
    PelayananRI: TMenuItem;
    actPasienRI: TAction;
    MasterLab1: TMenuItem;
    actMasterLab: TAction;
    DataEntriBidanDesa2: TMenuItem;
    PasswordBPJS1: TMenuItem;
    actPasswdPcare: TAction;
    MasterInstalasi0: TMenuItem;
    actMasterInstalasi: TAction;
    actKamarRi: TAction;
    RawatInap0: TMenuItem;
    MasterKelasKamar1: TMenuItem;
    PoliFKTP1: TMenuItem;
    PoliAntrian0: TMenuItem;
    N7: TMenuItem;
    MasterRSRujukan1: TMenuItem;
    MasterTindakan1: TMenuItem;
    MasterKesadaran1: TMenuItem;
    MasterPulang1: TMenuItem;
    MasterObat1: TMenuItem;
    actMasterRsRujukan: TAction;
    actMasterPoliAntrian: TAction;
    actMasterTindakan: TAction;
    actMasterObat: TAction;
    MasterObat2: TMenuItem;
    MasterLab2: TMenuItem;
    ToolDinkes1: TMenuItem;
    actToolsDinkes: TAction;
    RawatJalan1: TMenuItem;
    PipeServer1: TPipeServer;
    PipeClient1: TPipeClient;
    Prolanis0: TMenuItem;
    actProlanis: TAction;
    procedure Quit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actMasterPuskesmasExecute(Sender: TObject);
    procedure BersihkanCacheMutasi1Click(Sender: TObject);
    procedure UbahPasswor1Click(Sender: TObject);
    procedure Pemakai1Click(Sender: TObject);
    procedure actMasterDokterExecute(Sender: TObject);
    procedure actMasterPoliExecute(Sender: TObject);
    procedure actMasterJmlTmpTidurExecute(Sender: TObject);
    procedure MasterRawatExecute(Sender: TObject);
    procedure PemakaiExecute(Sender: TObject);
    procedure actMasterICDXExecute(Sender: TObject);
    procedure tentangAplikasi1Click(Sender: TObject);
    procedure masterBiayaExecute(Sender: TObject);
    procedure snglnstnc1SecondRun(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PipeServer1PipeMessage(Sender: TObject; Pipe: HPIPE;
      Stream: TStream);
    procedure PipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
      Stream: TStream);
    procedure actPasienExecute(Sender: TObject);
    procedure actPasienKunjunganExecute(Sender: TObject);
    procedure actMasterPONEDExecute(Sender: TObject);
    procedure actPasienPelayananExecute(Sender: TObject);
    procedure actMasterImunisasiExecute(Sender: TObject);
    procedure actPasienRIExecute(Sender: TObject);
    procedure actPasswdPcareExecute(Sender: TObject);
    procedure actMasterInstalasiExecute(Sender: TObject);
    procedure actKamarRiExecute(Sender: TObject);
    procedure actBPJSMasterExecute(Sender: TObject);
    procedure actMasterRsRujukanExecute(Sender: TObject);
    procedure actMasterPoliAntrianExecute(Sender: TObject);
    procedure actMasterTindakanExecute(Sender: TObject);
    procedure actMasterObatExecute(Sender: TObject);
    procedure actMasterLabExecute(Sender: TObject);
    procedure actBPJSToolExecute(Sender: TObject);
    procedure actToolsDinkesExecute(Sender: TObject);
    procedure actLaporanExecute(Sender: TObject);
    procedure actProlanisExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ProlanisX, masterX, pasienX, RawatJalanX, ToolsX, laporanx, settingX, labX, farmasiX, rawatinapX : integer;
    formAktif : TForm;
    procedure loadForm( kelasForm : TFormClass);
    procedure buka_menu( iOrd : integer);
    procedure settingMenu;
    procedure log_pemakai;
    procedure logout_pemakai;
    procedure awal;
    function ambil_puskesmas : string;
    procedure update_pulang;
  public
    { Public declarations }
  const
      judulApp = 'SIM PUSKESMAS #Client';
  var puskesmas : string;
  end;

var
  Form1_aa: TForm1_aa;

implementation

uses pesan_enum, pembuka, aaULogin, aau111,
  ABOUT, versionInfoUnit, dmMaster, pcare_passwdU, ubahpasswdu,
  feerawatu, pemakaiu, masterpuskesmasu, dokteru, masterPoliu, masterBiayau,
  masterICDXu, masterJmlTmpTiduru, pasienu, masterInstalasiU, masterImunisasiU,
  masterPonedu, pasienKunjunganu, pasienPelayananu, SynCommons,
  pasienPelayananRIu, masterKelasTmpTiduru, bpjsMasterU,
  master_poli_antrianu, masterTindakanu, masterObatu, masterLabU, bpjsToolU,
  dinkesToolU, laporanU, prolanisU, kirim_dinkes_u;

{$R *.dfm}


function TForm1_aa.ambil_puskesmas: string;
var v1 : Variant;
begin
v1 := _json(StringFromFile('param.json'));
//ShowMessage(VariantSaveJSON(v1));
  Form111.storageUmum.StoredValue['nama_puskesmas'] := v1.puskesmas;
  Result := v1.puskesmas;
end;

procedure TForm1_aa.awal;
begin
form111.storageUmum.StoredValue['versi']:= getAppVersion;
caption := 'SIMPUS Kang Bedjo @ DKK REMBANG - versi : ' + form111.storageUmum.StoredValue['versi'];

puskesmas := ambil_puskesmas;
PipeClient1.SendMessage('0');
//update_pulang;
end;

procedure TForm1_aa.BersihkanCacheMutasi1Click(Sender: TObject);
var sql0 : string;
begin
end;

procedure TForm1_aa.buka_menu(iOrd: integer);
var str0 : string;
//i : integer;
begin
str0 := intToStr(iOrd);
PipeClient1.SendMessage(str0);
end;

procedure TForm1_aa.tentangAplikasi1Click(Sender: TObject);
begin
//ShowMessage(Form111.storageUmum.StoredValue['provider_bpjs']);
AboutBox.Caption := 'Tentang ' +Caption;
AboutBox.JvgLabel1.Caption := judulApp;
AboutBox.ShowModal;
end;

procedure TForm1_aa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ShowMessage('Keluar Aplikasi? Sabar....');
Form1_kirim_dinkes.ShowModal;
end;

procedure TForm1_aa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := formAktif is TForm1_pembuka;
if canClose then logout_pemakai;

end;

procedure TForm1_aa.FormCreate(Sender: TObject);
begin
PipeServer1.Active := True;
end;

procedure TForm1_aa.FormDestroy(Sender: TObject);
begin
PipeServer1.Active := False;
end;

procedure TForm1_aa.FormShow(Sender: TObject);
var sah: Boolean;
    k:integer;
    k_string : string;
begin

sah:=false;
k:=1;

repeat
try
//MessageBox(0, 'tes', 'tes', mb_ok);
Application.CreateForm(TFormLogin, FormLogin);
FormLogin.ShowModal;
if FormLogin.ModalResult<>mrOK then application.Terminate;
if FormLogin.ModalResult=mrOK then
begin
        with FormLogin do
        begin
        fdQueryLogin.Close;
        fdQueryLogin.ParamByName('Nama').AsString:=FormLogin.Edit1.Text;
        fdQueryLogin.ParamByName('Passwd').AsString:=FormLogin.Edit2.Text;
        fdQueryLogin.Open;

        if fdQueryLogin.IsEmpty then
        begin
        Application.MessageBox('User ID atau Password Salah','Salah', MB_OK or MB_ICONHAND);
        k:=k+1;
        end else
        begin
        form111.StorageUmum.StoredValue['pegawai'] := fdQueryLogin.FieldByName('nama').AsString;
        masterX := fdQueryLogin.FieldByName('master').AsInteger;
        RawatJalanX := fdQueryLogin.FieldByName('rawatjalan').AsInteger;
        ToolsX := fdQueryLogin.FieldByName('tools').AsInteger;
        LaporanX := fdQueryLogin.FieldByName('laporan').AsInteger;
        SettingX := fdQueryLogin.FieldByName('setting').AsInteger;
        pasienX := fdQueryLogin.FieldByName('datapasien').AsInteger;
        ProlanisX := fdQueryLogin.FieldByName('prolanis').AsInteger;
        //farmasiX := fdQueryLogin.FieldByName('farmasi').AsInteger;
        //labX := fdQueryLogin.FieldByName('lab').AsInteger;
        rawatinapX := fdQueryLogin.FieldByName('rawatinap').AsInteger;
        sah:=true;
        end;
        end;

end else
begin
k:=4;
end;
Finally
FormLogin.Free;
end;
until sah or (k > 3);

if (k >3) then Application.Terminate;

//sah := true;
 { TODO : tambahan harus dihapus }

 if sah then
begin
PipeClient1.Connect(2000);
//log_pemakai;
Application.ShowMainForm:=True;
Form111.storageUmum.StoredValue['puskesmas'] := ambil_puskesmas;
awal;
end;

end;

procedure TForm1_aa.loadForm(kelasForm: TFormClass);
begin
if assigned(formAktif) then
begin
FreeAndNil(formAktif);
end;
formAktif := kelasForm.Create(self);
formAktif.Parent:=panelUtama;
formAktif.Width:=panelUtama.Width;
formAktif.Height:=panelUtama.Height;
formAktif.BorderStyle:=bsNone;
formAktif.Align:=alClient;
formAktif.Show;

end;

procedure TForm1_aa.logout_pemakai;
var sql0, sql1 : string;
begin
with form111 do
begin
//  ibsp00.ParamByName('ip_login').AsString:=storageUmum.StoredValue['log_pemakai'];
//  ibsp00.ExecProc;
//  conn1.Connected := false;
  end;
end;

procedure TForm1_aa.log_pemakai;
begin
end;

procedure TForm1_aa.actMasterPoliExecute(Sender: TObject);
begin
buka_menu(Ord(master_poli));
end;

procedure TForm1_aa.actMasterPoliAntrianExecute(Sender: TObject);
begin
buka_menu(Ord(master_poliantrian));
end;

procedure TForm1_aa.actMasterPONEDExecute(Sender: TObject);
begin
buka_menu(Ord(master_poned));
end;

procedure TForm1_aa.actBPJSMasterExecute(Sender: TObject);
begin
buka_menu(Ord(master_bpjs));
end;

procedure TForm1_aa.actBPJSToolExecute(Sender: TObject);
begin
buka_menu(Ord(bpjs_tools));
end;

procedure TForm1_aa.actKamarRiExecute(Sender: TObject);
begin
buka_menu(Ord(kamar_ri));
end;

procedure TForm1_aa.actLaporanExecute(Sender: TObject);
begin
buka_menu(Ord(menu_laporan));
end;

procedure TForm1_aa.actMasterDokterExecute(Sender: TObject);
begin
buka_menu(Ord(master_dokter));
end;

procedure TForm1_aa.masterBiayaExecute(Sender: TObject);
begin
buka_menu(Ord(master_biaya));
end;

procedure TForm1_aa.actMasterJmlTmpTidurExecute(Sender: TObject);
begin
buka_menu(Ord(master_jmlTT));
end;

procedure TForm1_aa.actMasterLabExecute(Sender: TObject);
begin
buka_menu(Ord(master_lab));
end;

procedure TForm1_aa.actMasterObatExecute(Sender: TObject);
begin
buka_menu(Ord(master_obat));
end;

procedure TForm1_aa.actMasterICDXExecute(Sender: TObject);
begin
buka_menu(Ord(master_icdx));
end;

procedure TForm1_aa.actMasterImunisasiExecute(Sender: TObject);
begin
buka_menu(Ord(master_imunisasi));
end;

procedure TForm1_aa.actMasterInstalasiExecute(Sender: TObject);
begin
buka_menu(Ord(master_instalasi));
end;

procedure TForm1_aa.MasterRawatExecute(Sender: TObject);
begin
buka_menu(Ord(master_feerawat));
end;

procedure TForm1_aa.actMasterPuskesmasExecute(Sender: TObject);
begin
buka_menu(Ord(master_puskesmas));

end;

procedure TForm1_aa.actMasterRsRujukanExecute(Sender: TObject);
begin
buka_menu(Ord(master_rsrujukan));
end;

procedure TForm1_aa.actMasterTindakanExecute(Sender: TObject);
begin
buka_menu(Ord(master_tindakan));
end;

procedure TForm1_aa.actPasienExecute(Sender: TObject);
begin
buka_menu(Ord(data_pasien));
end;

procedure TForm1_aa.actPasienKunjunganExecute(Sender: TObject);
begin
buka_menu(Ord(pasien_kunjungan));
end;

procedure TForm1_aa.actPasienPelayananExecute(Sender: TObject);
begin
buka_menu(Ord(pasien_pelayanan));
end;

procedure TForm1_aa.actPasienRIExecute(Sender: TObject);
begin
buka_menu(Ord(pasien_ri));
end;

procedure TForm1_aa.actPasswdPcareExecute(Sender: TObject);
begin
Form1_passwdPcare.ShowModal;
end;

procedure TForm1_aa.actProlanisExecute(Sender: TObject);
begin
buka_menu(Ord(menu_prolanis));
end;

procedure TForm1_aa.actToolsDinkesExecute(Sender: TObject);
begin
buka_menu(Ord(dinkes_tools));
end;

procedure TForm1_aa.Pemakai1Click(Sender: TObject);
begin
buka_menu(Ord(pemakai_data));
end;

procedure TForm1_aa.PemakaiExecute(Sender: TObject);
begin
buka_menu(Ord(pemakai_data));

end;

procedure TForm1_aa.PipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
  Stream: TStream);
var
    Msg : String;
begin
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
//    Memo1.Lines.Add('Received: "' + Msg + '"');

end;

procedure TForm1_aa.PipeServer1PipeMessage(Sender: TObject; Pipe: HPIPE;
  Stream: TStream);
var
    i : Integer;
    Msg : String;
begin
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
//    Memo1.Lines.Add('Rcvd: "' + Msg + '" ' + IntToStr(Pipe));
// ShowMessage(Msg);
i:=StrToIntDef(Msg, 10000);
case i of
0 : loadForm(TForm1_pembuka);
1 : loadForm(TForm1_feeRawat);
2 : loadForm(TForm1_pemakai);
3 : loadForm(TForm1_masterPuskesmas);
4 : loadForm(TForm1_Dokter);
5 : loadForm(TForm1_masterPoli);
6 : loadForm(TForm1_masterBiaya);
7 : loadForm(TForm1_masterICDX);
8 : loadForm(TForm1_masterJmlTmpTidur);
9 : loadForm(TForm1_pasien);
10 : loadForm(TForm1_masterInstalasi);
11 : loadForm(TForm1_masterImunisasi);
12 : loadForm(TForm1_masterPONED);
13 : loadForm(TForm1_pasienKunjungan);
14 : loadForm(TForm1_pelayanan);
15 : loadForm(TForm1_pelayananRI);
16 : loadForm(TForm1_masterKelasTmpTidur);
17 : loadForm(TForm1_masterBpjs);
18 : ;
19 : loadForm(TForm1_masterPoliAntrian);
20 : loadForm(TForm1_masterTindakan);
21 : loadForm(TForm1_masterObat);
22 : loadForm(TForm1_masterLab);
23 : loadForm(TForm1_toolsBpjs);
24 : loadForm(TForm1_toolsDinkes);
25 : loadForm(TForm1_laporan);
26 : loadForm(TForm1_Prolanis);

{
11 : loadForm(TForm1_MRpasien);
12 : (* do nothing *) ; // pake dialog loadForm(TForm1_eksportData);
13 : loadForm(TForm1_kirimOnline);
14 : loadForm(TForm1_importMaster);
15 : loadForm(TForm1_laporan);
17 : loadForm(TForm1_masterPustu);
18 : loadForm(TForm1_masterBidan);
19 : loadForm(TForm1_pustuData);
20 : loadForm(TForm1_bidanPoned);
21 : loadForm(TForm1_pustuKesakitan);
23 : loadForm(TForm1_pasienFarmasi);
24 : loadForm(TForm1_LabData);
25 : loadForm(TForm1_bpjsTool);
26 : loadForm(TForm1_masterBPJS);
28 : loadForm(TForm1_pasienLama);
29 : loadForm(TForm1_pelayananRI);
30 : loadForm(TForm1_masterLab);
}
else
//1001 dmLaporan qpasienKunjungan
//1002 : peringatan pada instalasi lab bahwa ada data baru
//1003 : hapus diagnosa pada dinkes
//ShowMessage(Msg);
//PipeServer1.BroadcastMessage(Msg, 0);
end;

settingMenu;
end;

procedure TForm1_aa.Quit1Click(Sender: TObject);
begin
//showMessage(form111.storageUmum.StoredValue['pegawai']);
close;
end;

procedure TForm1_aa.settingMenu;
begin
Prolanis0.Enabled := (formaktif is TForm1_pembuka) and (ProlanisX = 1);
MasterData0.Enabled := (formaktif is TForm1_pembuka) and (masterx = 1);
DataPasien0.Enabled :=  (formaktif is TForm1_pembuka) and (pasienX = 1);
RawatJalan1.Enabled := (formAktif is TForm1_pembuka) and (RawatJalanX = 1);
Tools0.Enabled := (formaktif is TForm1_pembuka) and (ToolsX = 1) ;
Laporan0.Enabled := (formaktif is TForm1_pembuka) and (laporanX = 1) ;
Setting0.Enabled := (formaktif is TForm1_pembuka) and (settingX = 1) ;
InstalasiFarmasi0.Enabled := (formaktif is TForm1_pembuka) and (farmasiX = 1) ;
InstalasiLab0.Enabled := (formaktif is TForm1_pembuka) and (labX = 1) ;
rawatinap0.Enabled := (formaktif is TForm1_pembuka) and (rawatinapX = 1) ;
//Help0.Enabled := formaktif is TForm1_pembuka;

end;

procedure TForm1_aa.snglnstnc1SecondRun(Sender: TObject);
begin
ShowMessage(judulApp + 'telah dijalankan !');
end;


procedure TForm1_aa.UbahPasswor1Click(Sender: TObject);
begin
// if PipeServer1.Active then ShowMessage('aktif') else ShowMessage('not active');

// if PipeClient1.Connected then ShowMessage('connected') else ShowMessage('not connected');

form1_ubahPasswd.labelPemakai.Caption:=form111.storageUmum.StoredValue['pegawai'];
form1_ubahPasswd.ShowModal;
end;

procedure TForm1_aa.update_pulang;
begin
{
with dataMaster do
begin
  uspPulangAuto.Prepare;
  uspPulangAuto.ExecProc;
  uspPulangAuto.Close;
  conn1.Connected := False;
end;
}
end;

end.

