unit pasienKunjunganu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvEdit, JvCheckBox, JvMemo, Pipes, DynVarsEh, pngimage,
  ImgList, JvCtrls, JvToolEdit, JvSplit, ActnList, ToolWin, JvToolBar,
  JvComCtrls, JvBaseDlg, JvProgressDialog, System.Actions,
  EhLibVCL, brPesertaU, brObatU, System.ImageList, JvBaseEdits, Vcl.Samples.Spin,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TForm1_pasienKunjungan = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
    JvPanel2: TJvPanel;
    JvBevel1: TJvBevel;
    PipeClient1: TPipeClient;
    frxdb1Cetak: TfrxDBDataset;
    frxdb1KK: TfrxDBDataset;
    frxReport1: TfrxReport;
    btn_pasienAdd: TJvTransparentButton;
    btn_close: TJvTransparentButton;
    panel2: TPanel;
    grid1: TDBGridEh;
    panel5: TPanel;
    lbl20: TLabel;
    dtPicker1: TJvDateTimePicker;
    lbl23: TLabel;
    editMR: TEdit;
    btn1: TSpeedButton;
    btnCariPasien: TSpeedButton;
    lbl27: TLabel;
    editNama: TEdit;
    lbl28: TLabel;
    dateTglLahir: TJvDateEdit;
    panel6: TPanel;
    dtPickerJam: TJvDateTimePicker;
    panel7: TPanel;
    btn1Simpan: TButton;
    btn1Batal: TButton;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl5: TLabel;
    cbbBiaya: TJvComboBox;
    cbbCaraDatang: TJvComboBox;
    actlst1: TActionList;
    actCariPasien: TAction;
    images1: TImageList;
    actNew: TAction;
    actPrint: TAction;
    actClose: TAction;
    btnPrint: TJvTransparentButton;
    actLab: TAction;
    btnKunjunganDel: TJvTransparentButton;
    actDel: TAction;
    btnTandaiRm: TJvTransparentButton;
    actEditBPJS: TAction;
    btnRefresh: TJvTransparentButton;
    actRefresh: TAction;
    pnl1: TPanel;
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    memoHeader: TMemo;
    memoData: TMemo;
    memoResponse: TMemo;
    ts3: TTabSheet;
    memoOlah: TMemo;
    pb1: TJvProgressDialog;
    grpRawat: TGroupBox;
    lbl1: TLabel;
    cbbKunjungan: TComboBox;
    lbl29: TLabel;
    cbbInstalasi: TComboBox;
    lbl30: TLabel;
    cbbPoli: TJvComboBox;
    editNIK: TEdit;
    chkBaru: TJvCheckBox;
    ts4: TTabSheet;
    panel3: TPanel;
    check1: TCheckBox;
    labelBPJS: TLabel;
    labelPasien: TLabel;
    dbeditNama: TDBEdit;
    dbeditMR: TDBEdit;
    panelAntriDisplay: TPanel;
    btnAntrikan: TButton;
    grp3: TGroupBox;
    grp4: TGroupBox;
    editAntri: TJvCalcEdit;
    editLoket: TJvCalcEdit;
    formStorage1: TJvFormStorage;
    checkLuarWilayah: TJvCheckBox;
    panelAntri: TPanel;
    labelAntri: TLabel;
    spinAntri: TSpinEdit;
    btn2: TButton;
    dtpDaftarAndro: TJvDateTimePicker;
    btnPanggil: TButton;
    actRmDiambil: TAction;
    idTCPClient1: TIdTCPClient;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure cbbCaraDatangChange(Sender: TObject);
    procedure btn1BatalClick(Sender: TObject);
    procedure dtPicker1Change(Sender: TObject);
    procedure btn1SimpanClick(Sender: TObject);
    procedure PipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
      Stream: TStream);
    procedure editMRKeyPress(Sender: TObject; var Key: Char);
    procedure dtPickerJamKeyPress(Sender: TObject; var Key: Char);
    procedure cbbInstalasiKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBiayaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbCaraDatangKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPoliKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSebabDatangKeyPress(Sender: TObject; var Key: Char);
    procedure editNonTraumaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbTraumaKeyPress(Sender: TObject; var Key: Char);
    procedure checkPengantarKeyPress(Sender: TObject; var Key: Char);
    procedure editDariKeyPress(Sender: TObject; var Key: Char);
    procedure editDignosaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbDokterKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenyakitKeyPress(Sender: TObject; var Key: Char);
    procedure cbbTindakanGigi0KeyPress(Sender: TObject; var Key: Char);
    procedure cbbTindakanGigi1KeyPress(Sender: TObject; var Key: Char);
    procedure dtPickerJamPulangKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSebabPulangKeyPress(Sender: TObject; var Key: Char);
    procedure checkHarusKontrolKeyPress(Sender: TObject; var Key: Char);
    procedure dtPickerKontrolTanggalKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKontrolPoliKeyPress(Sender: TObject; var Key: Char);
    procedure dtPickerMeninggalJamKeyPress(Sender: TObject; var Key: Char);
    procedure editMeninggalSebabKeyPress(Sender: TObject; var Key: Char);
    procedure editMeninggalOtopsiKeyPress(Sender: TObject; var Key: Char);
    procedure editDirujukKeKeyPress(Sender: TObject; var Key: Char);
    procedure dtPickerPulangPaksaKeyPress(Sender: TObject; var Key: Char);
    procedure editPulangPaksaKeyPress(Sender: TObject; var Key: Char);
    procedure editRSDitujuKeyPress(Sender: TObject; var Key: Char);
    procedure btn_pindahRawatInapClick(Sender: TObject);
    procedure dbeditMRChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbBiayaChange(Sender: TObject);
    procedure cbbKunjunganKeyPress(Sender: TObject; var Key: Char);
    procedure editNamaKeyPress(Sender: TObject; var Key: Char);
    procedure dateTglLahirKeyPress(Sender: TObject; var Key: Char);
    procedure editKeluhanKeyPress(Sender: TObject; var Key: Char);
    procedure actCariPasienExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actLabExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cbbKunjunganChange(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
    procedure chkBaruKeyPress(Sender: TObject; var Key: Char);
    procedure editMRChange(Sender: TObject);
    procedure grid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnAntrikanClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPanggilClick(Sender: TObject);
    procedure actRmDiambilExecute(Sender: TObject);
  private
    { Private declarations }

    iDummi, idxPoli, idPuskesmas : Integer;
    vidxstr, strTgl, strMasuk : string;
    jsParam, displayHost, displayPort : string;
    boleh_buka : Boolean;

    procedure awal;
    procedure buka_data;
    procedure ambil_konfig;
    procedure cetak_kunjungan (vtgl1 , vtgl2 : TDate);

    procedure kosongkan_baru;


    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure update_combo_poli( isJKN : Boolean; isSakit : Boolean);
    function ambil_idxstr : string;
    function ambil_puskesmas : integer;

    function simpan_masuk : Boolean;
    procedure simpan_datang_rujukan(strTgl, strNomor, strMR, strDari, strDiagnosa : string);
    procedure bersihkan_form;
    procedure kunjungan_delete(idxstr : string);


    function check_jkn : Boolean;
    procedure update_provider_peserta(mr , provider_pst : string);
    procedure kirim_blok_kunjungan(pasien : string; kunjungan : string; puskesmas : integer; tanggal : TDateTime; tanggalAndro : TDateTime);
    procedure kirim_blok_kunjungan_nunggu(pasien : string; kunjungan : string; puskesmas : integer; tanggal : TDateTime; tanggalAndro : TDateTime);
    function kirim_blok_antrian(puskesmas : Integer; tanggal : TDateTime) : string;
    function kirim_blok_antrian_nunggu(puskesmas : Integer; tanggal : TDateTime) : string;
    procedure dinkes_delete(idxstr: string);

    function ambilAntri : Integer;
    procedure updateAntri(tanggal : TDate; nomor: integer; loket : Integer);
    procedure putarSuara(antri : Integer; loket : integer);

    procedure setJamDaftarAndro(jam : word = 8);
    procedure insertKunjunganFromAndro(puskesmas : Integer; tanggal: TDateTime; biaya : string);
    procedure tandai_rm_diambil;

    procedure delBpjsDaftar(idxstr : string);


  public
    { Public declarations }
  end;

var
  Form1_pasienKunjungan: TForm1_pasienKunjungan;
const
  vTopKeluar = 141;
  vLeftKeluar = 41;

implementation

uses DateUtils, OtlParallel,aau, aau111, dmKunjungan, pasienCariu, ICDXCariu, kunjunganCetakDlgU,
  pasienBaruU, amyhttp, mybridge, SynCommons, flcHash, flcUtils
  , srvAntriU, srvDaftarU
  //,srvMLabU, antrikanU, srvAntriU, SrvParallelU,  srvDaftarU, srvPasienU, srvKunjunganU
  , brPendaftaranU;

{$R *.dfm}

{ TForm1_satuan }

procedure Sleep(MilliSecondsToWait: LongInt);
var StartTime: LongInt;
begin
      StartTime := GetTickCount;
      while (GetTickCount >= StartTime) and
            (GetTickCount < (StartTime + MilliSecondsToWait)) do
        Application.ProcessMessages
end {Sleep};

procedure TForm1_pasienKunjungan.actLabExecute(Sender: TObject);
begin
  ShowMessage('tes');
end;

procedure TForm1_pasienKunjungan.actCariPasienExecute(Sender: TObject);
begin
Form1_pasienCari.ShowModal;
if Form1_pasienCari.ModalResult = mrOk then
begin
  labelPasien.Caption := Form1_pasienCari.labelPasien.Caption;
  editMR.Text := Form1_pasienCari.lblMR.Caption;
  editNama.Text := Form1_pasienCari.lblNama.Caption;
  editNIK.Text := Form1_pasienCari.labelNIK.Caption;
  labelBPJS.Caption := Form1_pasienCari.lblBPJS.Caption;
  dateTglLahir.Date := Form1_pasienCari.dtp1.DateTime;
  check1.Checked := Form1_pasienCari.check1.Checked;
  editMR.SetFocus;
end;

end;

procedure TForm1_pasienKunjungan.actCloseExecute(Sender: TObject);
begin
PipeClient1.Disconnect;
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grideh1.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataKunjungan.fdconnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');

end;

procedure TForm1_pasienKunjungan.actDelExecute(Sender: TObject);
var
vidxstr, vpertanyaan : string;

begin
   vpertanyaan := 'Hapus Batal Berobat --> MR : ' + dbeditMR.Text + '  Nama : ' + dbeditNama.Text + '  ?';
if Application.MessageBox( PWideChar(vpertanyaan), 'Konfirmasi', MB_YESNO) = mrYes then

try

   vidxstr := dataKunjungan.fdQueryKunjungan.FieldByName('idxstr').AsString;

   delBpjsDaftar(vidxstr);

   kunjungan_delete(vidxstr);
   dinkes_delete(vidxstr);
finally
  ShowMessage('Data Dihapus');
  buka_data;

end;
end;

procedure TForm1_pasienKunjungan.actNewExecute(Sender: TObject);
var strMR : string;
begin
  form1_pasienBaru.ShowModal;
  if Form1_pasienBaru.ModalResult = mrOk then
  begin
    try
    strMR := Form1_pasienBaru.editMR.Text;
    if Length(Form1_pasienBaru.editMR.Text) > 0 then strMR := Form1_pasienBaru.editMR.Text;
    editMR.Text := strMR;
    finally
    btn1.Click;
    end;
  end;
end;

procedure TForm1_pasienKunjungan.actPrintExecute(Sender: TObject);
var pasien : string;
begin

with dataKunjungan do
begin
pasien := fdQueryKunjungan.FieldByName('id_pasien').AsString;
fdQCetak.Close;
fdQCetak.ParamByName('idxstr').AsString := pasien;
fdQCetak.Open();
end;
frxReport1.ShowReport();

end;


procedure TForm1_pasienKunjungan.actRefreshExecute(Sender: TObject);
begin
//ShowMessage('ok');
//btn2Click(self);
buka_data;
end;

procedure TForm1_pasienKunjungan.actRmDiambilExecute(Sender: TObject);
begin
tandai_rm_diambil;
end;

function TForm1_pasienKunjungan.ambilAntri: Integer;
begin
with dataKunjungan do
begin
  fdQueryAntriAmbil.Close;
  fdQueryAntriAmbil.ParamByName('tanggal').AsDate := dtPicker1.Date;
  fdQueryAntriAmbil.Open();

  Result := fdQueryAntriAmbil.FieldByName('nomor').AsInteger;
  fdQueryAntriAmbil.Close;
end;
end;


function TForm1_pasienKunjungan.ambil_idxstr: string;
var sql0, sql1 : string;
begin
with dataKunjungan do
begin
   sql0 := 'select idxstr from simpus.pasien_kunjungan where tanggal = %s and tanggal_masuk = %s and id_pasien = %s';
   sql1 := Format(sql0, [QuotedStr(strTgl), QuotedStr(strMasuk), QuotedStr(labelPasien.Caption)]);
   fdQueryBuka.Close;
   fdQueryBuka.SQL.Clear;
   fdQueryBuka.SQL.Add(sql1);
   fdQueryBuka.Open;

   Result := fdQueryBuka.FieldByName('idxstr').AsString;
   fdQueryBuka.Close;
end;

end;

procedure TForm1_pasienKunjungan.ambil_konfig;
var i : Integer;
    myJson : Variant;
begin
jsParam := ExtractFilePath(Application.ExeName) + 'param.json';

myJson := _JsonFast(StringFromFile(jsParam));

displayHost := myJson.display.host;
displayPort := myJson.display.port;

idTCPClient1.Host := displayHost;
idTCPClient1.Port := StrToIntDef(displayPort, 5544);


// pulang

 cbbCaraDatang.Clear;
 for i := 0 to myJson.datang._Count - 1 do
      cbbCaraDatang.Items.Add(myJson.datang.Value(i));
{
 cbbInstalasi.Clear;
 for i := 0 to myJson.instalasi._Count - 1 do
      cbbInstalasi.Items.Add(myJson.instalasi.Value(i));



 cbbInstalasi.ItemIndex := 0;
 }
end;




function TForm1_pasienKunjungan.ambil_puskesmas: integer;
begin
with dataKunjungan do
begin
  fdQueryPkmUnique.Close;
  fdQueryPkmUnique.Open();

  Result := fdQueryPkmUnique.FieldByName('kd_cabang').AsInteger;
  fdQueryPkmUnique.Close;
end;

end;

procedure TForm1_pasienKunjungan.awal;
begin
PipeClient1.Connect(2000);
boleh_buka := False;

idPuskesmas := ambil_puskesmas;
ambil_konfig;


grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);

dtPicker1.DateTime := Now;
setJamDaftarAndro(8);
kosongkan_baru;

cbbKunjungan.ItemIndex := 1;
cbbKunjunganChange(cbbKunjungan);
buka_data;
btn1Simpan.Enabled := False;

// connect ke display server
try
idTCPClient1.Connect;
except
  ShowMessage('Display Antrian Tidak Aktif');
end;

end;

procedure TForm1_pasienKunjungan.bersihkan_form;
begin
editMR.Clear;
dtPicker1.DateTime := Now;
dtPickerJam.DateTime := Now;
editNama.Clear;
dateTglLahir.Clear;
//cbbInstalasi.ItemIndex := 0;
//isi_combo(TComboBox(cbbBiaya), 'select biaya from simpus2.m_pasien_biaya where adl_aktif = 1 order by upper(biaya)', 'biaya');
//isi_combo(TComboBox(cbbPoli), 'select poli from simpus2.m_poli order by id_poli', 'poli' );
{
cbbPoli.ItemIndex := idxPoli;
cbbCaraDatang.ItemIndex := 0;
cbbSebabDatang.ItemIndex := 1;
editNonTrauma.Clear;
editNonTrauma.Visible := True;
cbbTrauma.Visible := False;
}
//btn1Simpan.Enabled := False;
//grp1.Visible := False;
cbbKunjungan.SelStart := 0;
cbbInstalasi.SelStart := 0;
cbbPoli.SelStart := 0;
cbbBiaya.SelStart := 0;
cbbCaraDatang.SelStart := 0;

end;

procedure TForm1_pasienKunjungan.btn1BatalClick(Sender: TObject);
begin
try
  kosongkan_baru;
finally
  editMR.SetFocus;
end;
end;

procedure TForm1_pasienKunjungan.btn1Click(Sender: TObject);
begin
with dataKunjungan do
begin
   fdQueryCariMr.Close;
   fdQueryCariMr.ParamByName('mr').AsString := editMR.Text;
   fdQueryCariMr.Open;

   if not fdQueryCariMr.IsEmpty then
   begin
     editNama.Text := fdQueryCariMr.FieldByName('nama_lengkap').AsString;
     editNIK.Text := fdQueryCariMr.FieldByName('nik').AsString;
     dateTglLahir.Date := fdQueryCariMr.FieldByName('tgl_lahir').AsDateTime;
     labelBPJS.Caption := fdQueryCariMr.FieldByName('kartu_bpjs').AsString;
     labelPasien.Caption := fdQueryCariMr.FieldByName('idxstr').AsString;
     check1.Checked := not fdQueryCariMr.FieldByName('kartu_bpjs').IsNull;
     editNama.SetFocus;
   end else
   begin
   ShowMessage('Data Tidak Ditemukan');
   editMR.SetFocus;
   end;

   fdQueryCariMr.Close;

end;
end;

procedure TForm1_pasienKunjungan.btn1SimpanClick(Sender: TObject);
var boolTes, hasil : Boolean;
begin
if dtpDaftarAndro.DateTime > dtPicker1.DateTime then insertKunjunganFromAndro(idPuskesmas, dtPicker1.DateTime, '');

hasil := False;
pb1.Position := 30;
pb1.Interval := 10;
pb1.Show;
if cbbBiaya.Items[cbbBiaya.ItemIndex] = 'JKN' then
begin
pb1.Position := 10;
Application.ProcessMessages;
if check_jkn then
    begin
//    ShowMessage('check_jkn lolos');
      dataKunjungan.fdQueryPesertaBpjs.Close;
      dataKunjungan.fdQueryPesertaBpjs.ParamByName('noKartu').AsString := labelBPJS.Caption;
      dataKunjungan.fdQueryPesertaBpjs.Open;

 //   ShowMessage('memoOlah.Lines.Values[adl_aktif] : ' + memoOlah.Lines.Values['adl_aktif']);
    pb1.Position := 60;
    if not dataKunjungan.fdQueryPesertaBpjs.FieldByName('adl_aktif').AsBoolean  then
    begin
      ShowMessage('Kartu BPJS tidak aktif. Layanan tidak bisa diberikan');
      pb1.Hide;
      Exit;
    end;
    pb1.Position := 70;
//    ShowMessage('memoOlah.Lines.Values[adl_pstPelayanan] : ' + memoOlah.Lines.Values['adl_pstPelayanan']);
    if not dataKunjungan.fdQueryPesertaBpjs.FieldByName('is_provider').AsBoolean then
    begin
      if MessageBox(0, 'Peserta BPJS di luar area layanan, Apakah tetap dilayani?','Konfirmasi', MB_YESNO) = mrNo then
      begin
        pb1.Hide;
        Exit;
      end;

    end;
    pb1.Position := 90;
    //if not dataKunjungan.uniQPesertaBPJS.FieldByName('is_no_ktp_ok').AsBoolean then
    //    ShowMessage('No KTP di BPJS BERBEDA dengan No KTP di CAPIL !!!');
    try
      hasil := simpan_masuk;
      ShowMessage('ok');
      bersihkan_form;
      //kosongkan_baru;
    finally
      buka_data;
      editMR.SetFocus;
    end;
    end else
    begin
      ShowMessage('data kartu bpjs tidak ditemukan !');
    end;
end else
begin
     try
      hasil := simpan_masuk;
      ShowMessage('ok');
      bersihkan_form;
      //kosongkan_baru;
    finally
      buka_data;
      editMR.SetFocus;
    end;
end;
//dataKunjungan.fdQueryBuka.Close;

pb1.Hide;

end;

procedure TForm1_pasienKunjungan.btn2Click(Sender: TObject);
var
  str0 : string;
//  srv : srvDaftar;
//  srv0 : srvAntri;
  dt : TDateTime;

begin
FormatSettings.DateSeparator      := '-'; //: string;
dt := StrToDateTime('20-12-2018');

ShowMessage(DateTimeToStr(dt));
//putarSuara(1, 2);
{
dt := EncodeDateTime(2018, 3, 13, 0, 0,0,0);
srv0 := srvAntri.Create;
try
  memoData.Lines.Add(srv0.ambilJsonAntriFcmPost(idPuskesmas, dt));
  srv0.postAntriFcm(idPuskesmas, dt, true);
finally
  srv0.Free;
end;
}
{
srv := srvDaftar.Create;
try
  srv.postDaftarGagalFcm(idPuskesmas, dt, True);
finally
  srv.Free;
end;
}
if Length(str0) <= 5 then ShowMessage('lebih kecil') else ShowMessage('lebih besar');

str0 := '';
if Length(str0) <= 5 then ShowMessage('lebih kecil') else ShowMessage('lebih besar');

end;

procedure TForm1_pasienKunjungan.btnAntrikanClick(Sender: TObject);
begin
// ambil antrian dari database
editAntri.AsInteger := ambilAntri;
updateAntri(dtPicker1.Date, editAntri.AsInteger, editLoket.AsInteger);
if editAntri.AsInteger > 0 then
begin
putarSuara(editAntri.AsInteger, editLoket.AsInteger);
spinAntri.Value := editAntri.AsInteger;
end else ShowMessage('antrian habis !!');

kirim_blok_antrian_nunggu(idPuskesmas, dtPicker1.DateTime);
end;

procedure TForm1_pasienKunjungan.btnPanggilClick(Sender: TObject);
begin
putarSuara(spinAntri.Value, editLoket.AsInteger);
updateAntri(dtPicker1.Date, spinAntri.Value, editLoket.AsInteger);
end;

procedure TForm1_pasienKunjungan.btn_closeClick(Sender: TObject);
begin
PipeClient1.Disconnect;
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grideh1.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataKunjungan.fdconnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_pasienKunjungan.btn_pindahRawatInapClick(Sender: TObject);
var str0, str1, vidxstr : string;
begin
if (MessageBox(0, 'Pindahkan ke Rawat Inap ?', 'Konfirmasi', MB_YESNO or MB_ICONQUESTION) = mrYes) then
begin
with dataKunjungan do
begin
vidxstr := fdQueryKunjungan.FieldByName('idxstr').AsString;
str0 := 'update simpus.pasien_kunjungan set instalasi = %s where idxstr = %s';
str1 := Format(str0, [QuotedStr('RAWAT INAP'), QuotedStr(vidxstr)]);

   fdCmd1.Execute(str1);

end;
ShowMessage('ok');
buka_data;
dataKunjungan.fdQueryKunjungan.Locate('idxstr', vidxstr, []);
end;
end;

procedure TForm1_pasienKunjungan.buka_data;
begin
with dataKunjungan do
begin
  fdconnection1.Connected := false;
  fdQueryKunjungan.close;
  fdQueryKunjungan.ParamByName('tanggal').AsDate := dtPicker1.Date;
//  qPasienKunjungan.ParamByName('puskesmas').AsString := Form111.storageUmum.StoredValue['puskesmas'];
  fdQueryKunjungan.Open;
{
  uqKendali.Close;
  uqKendali.Open;

  qPasienPulang.close;
  qPasienPulang.ParamByName('tanggal').AsDate := dtPicker1.Date;
//  qPasienPulang.ParamByName('puskesmas').AsString := Form111.storageUmum.StoredValue['puskesmas'];
  qPasienPulang.Open;
}
end;
  boleh_buka := True;
end;

procedure TForm1_pasienKunjungan.cbbBiayaChange(Sender: TObject);
var isJKN, isSakit : Boolean;
begin
isJKN := UpperCase(cbbBiaya.Items[cbbBiaya.ItemIndex]) = 'JKN';
isSakit := cbbKunjungan.ItemIndex = 1;

//update_combo_poli(isJKN, isSakit);
update_combo_poli(False, isSakit);
{
 if cbbBiaya.Items[cbbBiaya.ItemIndex] = 'JKN' then
    begin
      { TODO : Cek apakah kartu diblokir atau tidak }
  {
      ShowMessage('sistem harus melihat pada sistem p-care : apakah nomor kartu di blok ?');
    end;
 }
 end;

procedure TForm1_pasienKunjungan.cbbBiayaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbCaraDatangChange(Sender: TObject);
begin
//grp1.Visible := cbbCaraDatang.ItemIndex  = 1;
end;

procedure TForm1_pasienKunjungan.cbbCaraDatangKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbDokterKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbInstalasiKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbKontrolPoliKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbKunjunganChange(Sender: TObject);
var isJKN, isSakit : Boolean;
begin
isJKN := UpperCase(cbbBiaya.Items[cbbBiaya.ItemIndex]) = 'JKN';
isSakit := cbbKunjungan.ItemIndex = 1;

update_combo_poli(isJKN, isSakit);
end;

procedure TForm1_pasienKunjungan.cbbKunjunganKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = Chr(13) then SelectNext(TWinControl(Sender), True, true);

end;

procedure TForm1_pasienKunjungan.cbbPenyakitKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbPoliKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbSebabDatangKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbSebabPulangKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbTindakanGigi0KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbTindakanGigi1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cbbTraumaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.cetak_kunjungan(vtgl1, vtgl2: TDate);
begin
{
with dataKunjungan do
begin
  fdconnection1.Connected := false;

  uspTglRentang.ParamByName('ip_tanggal1').AsDate := vtgl1;
  uspTglRentang.ParamByName('ip_tanggal2').AsDate := vtgl2;
  uspTglRentang.ParamByName('ip_institusi').AsString := Form111.institusiR;
  uspTglRentang.ParamByName('ip_alamat').AsString := Form111.alamatR;
  uspTglRentang.ExecProc;
  uspTglRentang.Close;

  uqPuskesmas_pv.Close;
  uqPuskesmas_pv.Open;

  qTglRentang.Close;
  qTglRentang.Open;

  qPasienKunjunganCetak.Close;
  qPasienKunjunganCetak.Open;

end;

frxReport1.ShowReport();
}
end;

procedure TForm1_pasienKunjungan.checkHarusKontrolKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.checkPengantarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

function TForm1_pasienKunjungan.check_jkn: Boolean;
var adl_berhasil : Boolean;
    aPeserta : brPeserta;
    sql0, sql1 : string;
begin
aPeserta := brPeserta.create;
// cek apakah data kartu bpjs tersedia
Result := False;
adl_berhasil := False;

  if Length(labelBPJS.Caption) <= 0 then
  begin
     ShowMessage('kartu bpjs masih kosong... Cari Data Pasien, edit kartu BPJS');
     Result := False;
  end else
  begin
  pb1.Position := 10;
  //ambil_header(jsConsID, jsKey, jsUserID, jsPasswd, memoHeader.Lines);
  if aPeserta.getPeserta(labelBPJS.Caption) then
    // berhasil get
    begin
      Result := True;
      memoData.Lines.Text := aPeserta.aScript.Text;
    end else
    begin
      //get peserta gagal
      ShowMessage('koneksi ke server PCARE BPJS gagal');
      Result := False;
    end;

  end;
  pb1.Position := 50;
  if not Result then pb1.Hide;

  aPeserta.Free;
end;

procedure TForm1_pasienKunjungan.chkBaruKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dateTglLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dbeditMRChange(Sender: TObject);
begin
      if dataKunjungan.fdQueryKunjungan.Active then
      begin
      btnKunjunganDel.Visible := dataKunjungan.fdQueryKunjungan.FieldByName('sdh_dilayani').AsInteger = 0;
      btn1Simpan.Enabled := not dbeditMR.Field.IsNull;
      btnTandaiRm.Visible := dataKunjungan.fdQueryKunjungan.FieldByName('rm_diambil').AsInteger = 0;
//      btnEditBpjs.Visible := Length(dbeditMR.Text) > 0;
      //      btn_pindahRawatInap.Visible := dbedit2.Field.Value <> 'RAWAT INAP';
//      dataKunjungan.qPasienKunjungan.FieldByName('instalasi').AsString <> 'RAWAT INAP';
      end;

end;

procedure TForm1_pasienKunjungan.delBpjsDaftar(idxstr: string);
var
  noKartu, noUrut, bpjsKunjungan, kdPoli : string;
    tglDaftar : TDateTime;
    tglStr : string;

begin
with dataKunjungan do
begin
  fdQ1del.Close;
  fdQ1del.ParamByName('idxstr').AsString := idxstr;
  fdQ1del.Open();

noKartu := fdQ1del.FieldByName('no_kartu').AsString;
kdPoli := fdQ1del.FieldByName('poli').AsString;
tglDaftar := fdQ1del.FieldByName('tanggal').AsDateTime;
DateTimeToString(tglStr, 'DD-MM-YYYY', tglDaftar);
noUrut := '';
if not fdQ1del.FieldByName('bpjs_urut').IsNull then noUrut := fdQ1del.FieldByName('bpjs_urut').AsString;

bpjsKunjungan := '';
if not fdQ1del.FieldByName('bpjs_kunjungan').IsNull then bpjsKunjungan := fdQ1del.FieldByName('bpjs_kunjungan').AsString;


fdQ1del.Close;

   Parallel.Async(
   procedure
   var srv : brPendaftaran;
   begin
      srv := brPendaftaran.Create;
      try
      srv.delPendaftaran(idxstr, bpjsKunjungan, noKartu, tglStr, noUrut, kdPoli);
      finally
        srv.Free;
      end;
   end
   );

end;
end;

procedure TForm1_pasienKunjungan.dtPicker1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
setJamDaftarAndro(8);
end;

procedure TForm1_pasienKunjungan.dtPickerJamKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dtPickerJamPulangKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dtPickerKontrolTanggalKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dtPickerMeninggalJamKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.dtPickerPulangPaksaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editDariKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editDignosaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editDirujukKeKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editKeluhanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );
end;

procedure TForm1_pasienKunjungan.editMeninggalOtopsiKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editMeninggalSebabKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editMRChange(Sender: TObject);
begin
btn1Simpan.Enabled := length(editMR.Text) > 0;
end;

procedure TForm1_pasienKunjungan.editMRKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
btn1.Click;
SelectNext(TWinControl(Sender), True, True );
end;

end;

procedure TForm1_pasienKunjungan.editNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editNonTraumaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editPulangPaksaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.editRSDitujuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_pasienKunjungan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if idTCPClient1.Connected then
               idTCPClient1.Disconnect;
end;

procedure TForm1_pasienKunjungan.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pasienKunjungan.grid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if dataKunjungan.fdQueryKunjungan.FieldByName('instalasi').AsString = 'RAWAT INAP' then
begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clMaroon;
end;

if dataKunjungan.fdQueryKunjungan.FieldByName('instalasi').AsString = 'PONED' then
begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clMaroon;
end;

end;

procedure TForm1_pasienKunjungan.insertKunjunganFromAndro(puskesmas: Integer;
  tanggal: TDateTime; biaya: string);
  var
    sql0, sql1, tanggalStr : string;
begin
{
DateTimeToString(tanggalStr, 'YYYY-MM-DD', tanggal);
// bayar
sql0 := 'INSERT INTO simpus.pasien_kunjungan(tanggal, id_pasien, jenis_kunjungan, biaya, lama, datang_rujukan, datang_sebab, poli_tujuan, tanggal_masuk, instalasi, andro, luar_wilayah, antri) ' +
        'select  tanggal, id_pasien, jenis_kunjungan, biaya, lama, datang_rujukan, datang_sebab, poli_tujuan, tanggal_masuk, instalasi, id, 0, 0 from andro.insert_kunjungan_bayar_view where puskesmas = %s and tanggal = %s;';

sql1 := Format(sql0, [IntToStr(puskesmas), QuotedStr(tanggalStr)]);

dataKunjungan.fdCmd1.Execute(sql1);

// jkn
sql0 := 'INSERT INTO simpus.pasien_kunjungan(tanggal, id_pasien, jenis_kunjungan, biaya, lama, datang_rujukan, datang_sebab, poli_tujuan, tanggal_masuk, instalasi, andro, luar_wilayah, antri) ' +
        'select  tanggal, id_pasien, jenis_kunjungan, biaya, lama, datang_rujukan, datang_sebab, poli_tujuan, tanggal_masuk, instalasi, id, 0, 0 from andro.insert_kunjungan_jkn_view where puskesmas = %s and tanggal = %s;';

sql1 := Format(sql0, [IntToStr(puskesmas), QuotedStr(tanggalStr)]);

dataKunjungan.fdCmd1.Execute(sql1);
 }

end;

procedure TForm1_pasienKunjungan.isi_combo(aCombo: TComboBox; aQuery, aField: string);
begin
aCombo.Clear;
with dataKunjungan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(aQuery);
  fdQueryBuka.Open;

  while not fdQueryBuka.Eof do
  begin
    aCombo.Items.Add(fdQueryBuka.FieldByName(aField).AsString);
    fdQueryBuka.Next;
  end;
  fdQueryBuka.Close;
  aCombo.ItemIndex := 0;
end;
end;

procedure TForm1_pasienKunjungan.dinkes_delete(idxstr : string);
//var aKunjungan : SrvParallel;
begin
  {
    aKunjungan := SrvParallel.Create;
    try
      aKunjungan.kunjunganDelete(idxstr);
    finally
      aKunjungan.Free;
    end;
    }
end;


function TForm1_pasienKunjungan.kirim_blok_antrian(puskesmas: Integer;
  tanggal: TDateTime) : string;
begin
  {
   Parallel.Async(
   procedure
   var
   aAntri : srvAntri;
   begin
      // ambil antrian android
      aAntri := srvAntri.Create;
      try
        aAntri.getAntriAndro(puskesmas, tanggal);
      finally
        aAntri.Free;
      end;

      //Diambil alih oleh mesin antrian
      // post antri
      aAntri := srvAntri.Create;
      try
        aAntri.postAntri(puskesmas, tanggal);
        finally
          aAntri.Free;
        end;

            // post antri fcm
      aAntri := srvAntri.Create;
      try
        aAntri.postAntriFcm(puskesmas, tanggal, False);
        finally
          aAntri.Free;
        end;
   end
   );
   }
end;

function TForm1_pasienKunjungan.kirim_blok_antrian_nunggu(puskesmas: Integer;
  tanggal: TDateTime): string;

//  var aAntri : srvAntri;
begin
  {
     // ShowMessage('awal');
      pb1.Max := 6;
      pb1.Position := 0;
      pb1.Show;
      // ambil antrian android
      pb1.Position := 1;
      aAntri := srvAntri.Create;
      //ShowMessage('1');
      try
        aAntri.getAntriAndro(puskesmas, tanggal);
        pb1.Position := 2;
      finally
        aAntri.Free;
      end;

        pb1.Position := 3;

      //Diambil alih oleh mesin antrian
      // post antri
      aAntri := srvAntri.Create;
      try
        aAntri.postAntri(puskesmas, tanggal);
        pb1.Position := 4;
        finally
          aAntri.Free;
        end;

        pb1.Position := 5;

            // post antri fcm
      aAntri := srvAntri.Create;
      try
        aAntri.postAntriFcm(puskesmas, tanggal, False);
        pb1.Position := 6;
        finally
          aAntri.Free;
        end;
      pb1.Position := 7;

      pb1.Hide;
      }
end;

procedure TForm1_pasienKunjungan.kirim_blok_kunjungan(pasien,
  kunjungan: string; puskesmas : Integer; tanggal : TDateTime; tanggalAndro : TDateTime);

begin
Parallel.Async(
  procedure
  var
    aAntri : SrvAntri;
    aDaftar : srvDaftar;
  begin
    //post antrian
    aAntri := srvAntri.Create;
    try
      aAntri.postAntri(puskesmas, tanggal)
    finally
      aAntri.Free;
    end;

    //post daftar
    aDaftar := srvDaftar.Create;
    try
      aDaftar.postDaftar(puskesmas, tanggal);
    finally
      aDaftar.Free;
    end;
  end
);
{
      Parallel.Async(
   procedure
   var
   aPasien : srvPasien;
   aKunjungan : srvKunjungan;
   aDaftar : srvDaftar;
   aPeserta : brPeserta;
   begin
      // kirim pasien
      aPasien := srvPasien.Create;
      try
        aPasien.postPasien(pasien);
      finally
        aPasien.Free;
      end;

      // kirim kunjungan
      aKunjungan := srvKunjungan.Create;
      try
        aKunjungan.postKunjungan(kunjungan);
      finally
        aKunjungan.Free;
      end;

      // ambil daftar dari android
      aDaftar := srvDaftar.Create;
      try
        aDaftar.getDaftarAndro(puskesmas, tanggal);
      finally
        aDaftar.Free;
      end;

      // kirim post andro, tandai sudah diambil
      aDaftar := srvDaftar.Create;
      try
          aDaftar.postDaftarAndro(puskesmas, tanggal);
            finally
          aDaftar.Free;
        end;

      // verifikasi peserta daftar andro
      aPeserta := brPeserta.Create;
      try
        aPeserta.cekPesertaAndro(puskesmas, tanggal);
      finally
        aPeserta.Free;
      end;

      // kirim fcm gagal daftar
      aDaftar := srvDaftar.Create;
      try
        aDaftar.postDaftarGagalFcm(puskesmas, tanggal, False);
      finally
        aDaftar.Free;
      end;

      // kirim daftar
      aDaftar := srvDaftar.Create;
      try
        aDaftar.postDaftar(kunjungan);
      finally
        aDaftar.Free;
      end;

      //kirim daftar fcm
      aDaftar := srvDaftar.Create;
      try
        aDaftar.postDaftarFcm(kunjungan, False);
      finally
        aDaftar.Free;
      end;

   end
   );
   }
end;



procedure TForm1_pasienKunjungan.kirim_blok_kunjungan_nunggu(pasien,
  kunjungan: string; puskesmas: integer; tanggal, tanggalAndro: TDateTime);
{
     var
   aPasien : srvPasien;
   aKunjungan : srvKunjungan;
   aDaftar : srvDaftar;
   aPeserta : brPeserta;
 }
  begin
 {
  //ShowMessage('awal blok kunjungan');
     pb1.Max := 20;
     pb1.Interval := 1;
     pb1.Position := 0;
     pb1.Show;

     pb1.Position := pb1.Position + pb1.Interval;
      // kirim pasien
      // ShowMessage('awal blok kunjungan -- pasien');

      aPasien := srvPasien.Create;
      try
        aPasien.postPasien(pasien);
     pb1.Position := pb1.Position + pb1.Interval;
      finally
        aPasien.Free;
      end;
     pb1.Position := pb1.Position + pb1.Interval;

      // kirim kunjungan
       //ShowMessage('awal blok kunjungan -- kunjungan');

      aKunjungan := srvKunjungan.Create;
      try
     pb1.Position := pb1.Position + pb1.Interval;
        aKunjungan.postKunjungan(kunjungan);
      finally
        aKunjungan.Free;
      end;
     pb1.Position := pb1.Position + pb1.Interval;

      // ambil daftar dari android
       //ShowMessage('awal blok kunjungan -- android daftar');
      aDaftar := srvDaftar.Create;
      try
        aDaftar.getDaftarAndro(puskesmas, tanggal);
     pb1.Position := pb1.Position + pb1.Interval;
      finally
        aDaftar.Free;
      end;
     pb1.Position := pb1.Position + pb1.Interval;

      // kirim post andro, tandai sudah diambil
         //    ShowMessage('awal blok kunjungan -- android post');

      aDaftar := srvDaftar.Create;
      try
     pb1.Position := pb1.Position + pb1.Interval;
          aDaftar.postDaftarAndro(puskesmas, tanggal);
            finally
          aDaftar.Free;
        end;

     pb1.Position := pb1.Position + pb1.Interval;
      // verifikasi peserta daftar andro
      aPeserta := brPeserta.Create;
      try
        aPeserta.cekPesertaAndro(puskesmas, tanggal);
     pb1.Position := pb1.Position + pb1.Interval;
      finally
        aPeserta.Free;
      end;

      // kirim fcm gagal daftar
     pb1.Position := pb1.Position + pb1.Interval;
      aDaftar := srvDaftar.Create;
      try
        aDaftar.postDaftarGagalFcm(puskesmas, tanggal, False);
     pb1.Position := pb1.Position + pb1.Interval;
      finally
        aDaftar.Free;
     pb1.Position := pb1.Position + pb1.Interval;
      end;

      // kirim daftar
      aDaftar := srvDaftar.Create;
      try
     pb1.Position := pb1.Position + pb1.Interval;
        aDaftar.postDaftar(kunjungan);
      finally
        aDaftar.Free;
     pb1.Position := pb1.Position + pb1.Interval;
      end;

      //kirim daftar fcm
     pb1.Position := pb1.Position + pb1.Interval;
      aDaftar := srvDaftar.Create;
      try
        aDaftar.postDaftarFcm(kunjungan, False);
     pb1.Position := pb1.Position + pb1.Interval;
      finally
        aDaftar.Free;
      end;

   pb1.Hide;
   }
end;

procedure TForm1_pasienKunjungan.kosongkan_baru;
begin
spinAntri.Value := 0;
editMR.Clear;
dtPicker1.DateTime := Now;
dtPickerJam.DateTime := Now;
editNama.Clear;
dateTglLahir.Clear;
//cbbInstalasi.ItemIndex := 0;
isi_combo(TComboBox(cbbBiaya), 'select biaya from simpus.m_pasien_biaya order by upper(biaya)', 'biaya');
isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli order by upper(poli)', 'poli');
isi_combo(TComboBox(cbbInstalasi), 'select instalasi from simpus.m_instalasi where upper(instalasi) = ''GAWAT DARURAT'' or ' +
                                    'upper(instalasi) = ''RAWAT JALAN'' order by upper(instalasi)', 'instalasi' );

cbbInstalasi.ItemIndex := 1;
cbbPoli.ItemIndex := idxPoli;
cbbCaraDatang.ItemIndex := 0;
end;

procedure TForm1_pasienKunjungan.kunjungan_delete(idxstr : string);
var

sql0, sql1, vpertanyaan : string;
begin
sql0 := 'delete from simpus.pasien_kunjungan where idxstr = %s;';
with dataKunjungan do
begin
   sql1 := Format(sql0, [QuotedStr(idxstr)]);
   fdCmd1.Execute(sql1);
end;
end;

procedure TForm1_pasienKunjungan.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
//  apv := dataKunjungan.qMasterPoli.FieldByName('id_poli').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
 // dataKunjungan.qMasterPoli.Locate('id_poli', apv, []);
end;


end;

procedure TForm1_pasienKunjungan.pb1Progress(Sender: TObject;
  var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

procedure TForm1_pasienKunjungan.PipeClient1PipeMessage(Sender: TObject;
  Pipe: HPIPE; Stream: TStream);
var
    i : Integer;
    Msg : String;
begin
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);
    if (Msg = '1001') then
    begin

//      lblDiagnosa.Caption := 'Diagnosa Terakhir : ' + ambil_diagnosaTerakhir;
//      lbldbtxt2.Caption := dataKunjungan.qPasienKunjungan.FieldByName('mr').AsString + ' - ' + dataKunjungan.qPasienKunjungan.FieldByName('nama').AsString;

    end;
end;

procedure TForm1_pasienKunjungan.putarSuara(antri, loket: integer);
var
    v0 : Variant;
    jsAntri : string;
begin
  if idTCPClient1.Connected then
  begin
  v0 := _Json('{"loket" : 0,"antri" : 0, "poli" : ""}');
  v0.loket := loket;
  v0.antri := antri;
  jsAntri := VariantSaveJSON(v0);
  IdTCPClient1.IOHandler.WriteLn(jsAntri);
  end;

end;

procedure TForm1_pasienKunjungan.setJamDaftarAndro(jam : word);
var th, bl, tg, jm, mn, dt, dtz : Word;
begin
DecodeDatetime(dtPicker1.DateTime, th, bl, tg, jm, mn, dt, dtz);
dtpDaftarAndro.DateTime := EncodeDateTime(th, bl, tg, jam, 0, 0, 0)
end;

procedure TForm1_pasienKunjungan.simpan_datang_rujukan(strTgl, strNomor, strMR, strDari, strDiagnosa : string);
var str0, str1 : string;
begin
   str0 := 'INSERT INTO simpus.datang_dirujuk(tanggal, nomor, mr, dari, diagnosa ) ' +
            'values(%s, %s, %s, %s, %s);';
   str1 := Format(str0, [
                         QuotedStr(strTgl),
                         strNomor,
                         QuotedStr(strMR),
                         QuotedStr(strDari),
                         QuotedStr(strDiagnosa)
                  ]);
    with dataKunjungan do
    begin
      fdCmd1.Execute(str1);
    end;
end;


function TForm1_pasienKunjungan.simpan_masuk : Boolean;
var str0, str1, pasien0, kunjungan0 : string;
    strDatangSebab, strPoli, strNomor : string;
    strLama, strLuar : string;
    hasil : Boolean;
begin
//ShowMessage('awal simpan masuk');
pasien0 := labelPasien.Caption;
hasil := False;
DateTimeToString(strTgl, 'YYYY-MM-DD', dtPicker1.Date);
DateTimeToString(strMasuk, 'yyyy-MM-dd''T''hh:mm:ss', dtPickerJam.DateTime);
strLama := '1';
strLuar := '0';

if chkBaru.Checked then strLama := '0';
if checkLuarWilayah.Checked then strLuar := '1';



str0 := 'INSERT INTO simpus.pasien_kunjungan(tanggal, id_pasien, jenis_kunjungan, biaya, lama, datang_rujukan, datang_sebab, poli_tujuan, tanggal_masuk, instalasi, luar_wilayah, antri) ' +
        'VALUES( %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)';

str1 := Format(str0, [
                      QuotedStr(strTgl),
                      QuotedStr(labelPasien.Caption),
                      QuotedStr(cbbKunjungan.Items[cbbKunjungan.ItemIndex]),
                      QuotedStr(cbbBiaya.Items[cbbBiaya.ItemIndex]),
                      strLama,
                      QuotedStr(cbbCaraDatang.Items[cbbCaraDatang.ItemIndex]),
                      QuotedStr('tes'),
                      QuotedStr(cbbPoli.Items[cbbPoli.ItemIndex]),
                      QuotedStr(strMasuk),
                      QuotedStr(cbbInstalasi.Items[cbbInstalasi.ItemIndex]),
                      strLuar,
                      IntTostr(spinAntri.Value)
                      ]);

with dataKunjungan do
begin
  //ShowMessage(str1);

  fdCmd1.Execute(str1);
  //ShowMessage('habis insert kunjungan');
  hasil := True;
end;

try
  buka_data;
finally
  kunjungan0 := ambil_idxstr;
  dataKunjungan.fdQueryKunjungan.Locate('idxstr', kunjungan0, []);
  strNomor := dataKunjungan.fdQueryKunjungan.FieldByName('nomor').AsString;
{
  if cbbCaraDatang.ItemIndex = 1 then
    simpan_datang_rujukan(strTgl, strNomor, editMR.Text, editDari.Text, editDignosa.Text);

  if cbbInstalasi.Items[cbbInstalasi.ItemIndex] = 'RAWAT INAP' then
    simpan_rawat_inap(strTgl, strNomor, editMR.Text);
}
end;
idxPoli := cbbPoli.ItemIndex;

if hasil then
begin
//  kirim_blok_kunjungan_nunggu(pasien0, kunjungan0, idPuskesmas, dtPicker1.DateTime, dtpDaftarAndro.DateTime);

  kirim_blok_kunjungan(pasien0, kunjungan0, idPuskesmas, dtPicker1.DateTime, dtpDaftarAndro.DateTime);
end;
end;

procedure TForm1_pasienKunjungan.tandai_rm_diambil;
var sql0, sql1 : string;
begin
with dataKunjungan do
begin
vidxstr := fdQueryKunjungan.FieldByName('idxstr').AsString;
sql0 := 'update simpus.pasien_kunjungan set rm_diambil = 1 where idxstr = %s';
sql1 := Format(sql0, [quotedStr(vidxstr)]);
fdCmd1.Execute(sql1);
end;
buka_data;
end;

procedure TForm1_pasienKunjungan.updateAntri(tanggal : TDate; nomor: integer; loket: Integer);
var strTgl0, sql0, sql1 : string;
begin
DateTimeToString(strTgl0, 'YYYY-MM-DD', dtPicker1.DateTime);
sql0 := 'update simpus.antri set loket = %s where tanggal = %s and nomor = %s;';
with dataKunjungan do
begin
  sql1 := Format(sql0, [IntToStr(loket), QuotedStr(strTgl0), IntToStr(nomor)]);

  fdCmd1.Execute(sql1);
end;
end;

procedure TForm1_pasienKunjungan.update_combo_poli(isJKN, isSakit: Boolean);
begin
if isJKN then
begin
 if isSakit then isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where adl_bpjs = true and poli_sakit = true and adl_aktif = true order by upper(poli)', 'poli' ) else
                 isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where adl_bpjs = true and poli_sakit = false and adl_aktif = true order by upper(poli)', 'poli' );
end else
begin
 if isSakit then isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where poli_sakit = true and adl_aktif = true order by upper(poli)', 'poli' ) else
                 isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where poli_sakit = false and adl_aktif = true order by upper(poli)', 'poli' );
end;
cbbPoli.ItemIndex := 0;
end;


procedure TForm1_pasienKunjungan.update_provider_peserta(mr,
  provider_pst: string);
var sql0, sql1 : string;
begin
with dataKunjungan do
begin
  sql0 := 'update capil.capil_nik set kd_provider = %s where mr = %s;';
  sql1 := Format(sql0, [QuotedStr(provider_pst), QuotedStr(mr)]);
  fdCmd1.Execute(sql1);
end;
end;

end.
