unit kunjunganRiU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  JvExStdCtrls, JvCheckBox, JvCombobox, JvEdit, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, Vcl.Buttons, Vcl.ExtCtrls,
  JvBaseDlg, JvProgressDialog;

type
  TForm1_kunjunganRI = class(TForm)
    panel2: TPanel;
    panel5: TPanel;
    lbl20: TLabel;
    lbl23: TLabel;
    btn1: TSpeedButton;
    btnCariPasien: TSpeedButton;
    lbl27: TLabel;
    lbl28: TLabel;
    dtPicker1: TJvDateTimePicker;
    editMR: TEdit;
    editNama: TEdit;
    dateTglLahir: TJvDateEdit;
    dtPickerJam: TJvDateTimePicker;
    editNIK: TEdit;
    panel6: TPanel;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl5: TLabel;
    cbbBiaya: TJvComboBox;
    cbbCaraDatang: TJvComboBox;
    chkBaru: TJvCheckBox;
    checkLuarWilayah: TJvCheckBox;
    panel7: TPanel;
    btn1Simpan: TButton;
    btn1Batal: TButton;
    grpRawat: TGroupBox;
    lbl1: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    cbbKunjungan: TComboBox;
    cbbInstalasi: TComboBox;
    cbbPoli: TJvComboBox;
    pb1: TJvProgressDialog;
    procedure cbbKunjunganChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1BatalClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnCariPasienClick(Sender: TObject);
    procedure btn1SimpanClick(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
  private
    { Private declarations }
    iDummi : Integer;
    idxPoli : Integer;
    idPasien, strTgl, strMasuk : string;
    isKartuAda : Boolean;
    kartuBpjs : string;
    jsParam : string;
    procedure awal;
    procedure ambil_config;
    procedure kosongkan_baru;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure update_combo_poli( isJKN : Boolean; isSakit : Boolean);

    function simpan_masuk : Boolean;


    function ambil_kunjungan : string;

    function check_jkn : Boolean;
    procedure kirim_blok_kunjungan(pasien : string; kunjungan : string);

  public
    { Public declarations }
  end;

var
  Form1_kunjunganRI: TForm1_kunjunganRI;

implementation

{$R *.dfm}
    uses SynCommons, dmRI, OtlParallel, pasienCariu, brPesertaU;
    //, srvDaftarU, srvKunjunganU; //SrvParallelU, srvPasienU,
{ TForm1_kunjunganRI }

procedure TForm1_kunjunganRI.ambil_config;
var i : Integer;
    myJson : Variant;
begin
jsParam := ExtractFilePath(Application.ExeName) + 'param.json';

myJson := _JsonFast(StringFromFile(jsParam));
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

function TForm1_kunjunganRI.ambil_kunjungan: string;
var sql0, sql1 : string;
begin
with dataRI do
begin
   sql0 := 'select idxstr from simpus.pasien_kunjungan where tanggal = %s and tanggal_masuk = %s and id_pasien = %s';
   sql1 := Format(sql0, [QuotedStr(strTgl), QuotedStr(strMasuk), QuotedStr(idPasien)]);
   fdQueryBuka.Close;
   fdQueryBuka.SQL.Clear;
   fdQueryBuka.SQL.Add(sql1);
   fdQueryBuka.Open;

   Result := fdQueryBuka.FieldByName('idxstr').AsString;
   fdQueryBuka.Close;
end;

end;

procedure TForm1_kunjunganRI.awal;
begin

ambil_config;


dtPicker1.DateTime := Now;

kosongkan_baru;

cbbKunjungan.ItemIndex := 1;
cbbKunjunganChange(cbbKunjungan);
btn1Simpan.Enabled := False;
end;

procedure TForm1_kunjunganRI.btn1BatalClick(Sender: TObject);
begin
Close;
end;

procedure TForm1_kunjunganRI.btn1Click(Sender: TObject);
begin
with dataRI do
begin
   fdQueryCariMr.Close;
   fdQueryCariMr.ParamByName('mr').AsString := editMR.Text;
   fdQueryCariMr.Open;

   if not fdQueryCariMr.IsEmpty then
   begin
     editNama.Text := fdQueryCariMr.FieldByName('nama_lengkap').AsString;
     editNIK.Text := fdQueryCariMr.FieldByName('nik').AsString;
     dateTglLahir.Date := fdQueryCariMr.FieldByName('tgl_lahir').AsDateTime;
     kartuBpjs := fdQueryCariMr.FieldByName('kartu_bpjs').AsString;
     idPasien := fdQueryCariMr.FieldByName('idxstr').AsString;
     isKartuAda := not fdQueryCariMr.FieldByName('kartu_bpjs').IsNull;
     editNama.SetFocus;
     btn1Simpan.Enabled := true;
   end else
   begin
   ShowMessage('Data Tidak Ditemukan');
   editMR.SetFocus;
   end;

   fdQueryCariMr.Close;

end;
end;

procedure TForm1_kunjunganRI.btn1SimpanClick(Sender: TObject);
var boolTes, hasil : Boolean;
begin
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
      dataRI.fdQueryPesertaBpjs.Close;
      dataRI.fdQueryPesertaBpjs.ParamByName('noKartu').AsString := kartuBpjs;
      dataRI.fdQueryPesertaBpjs.Open;

 //   ShowMessage('memoOlah.Lines.Values[adl_aktif] : ' + memoOlah.Lines.Values['adl_aktif']);
    pb1.Position := 60;
    if not dataRI.fdQueryPesertaBpjs.FieldByName('adl_aktif').AsBoolean  then
    begin
      ShowMessage('Kartu BPJS tidak aktif. Layanan tidak bisa diberikan');
      pb1.Hide;
      Exit;
    end;
    pb1.Position := 70;
//    ShowMessage('memoOlah.Lines.Values[adl_pstPelayanan] : ' + memoOlah.Lines.Values['adl_pstPelayanan']);
    if not dataRI.fdQueryPesertaBpjs.FieldByName('is_provider').AsBoolean then
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
      Close;
//      bersihkan_form;
      //kosongkan_baru;
    finally
  //    buka_data;
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
    //  bersihkan_form;
      //kosongkan_baru;
    finally
      //buka_data;
      editMR.SetFocus;
    end;
end;
//dataKunjungan.fdQueryBuka.Close;

pb1.Hide;
Close;
end;

procedure TForm1_kunjunganRI.btnCariPasienClick(Sender: TObject);
begin
Form1_pasienCari.ShowModal;
if Form1_pasienCari.ModalResult = mrOk then
begin
  idPasien := Form1_pasienCari.labelPasien.Caption;
  editMR.Text := Form1_pasienCari.lblMR.Caption;
  editNama.Text := Form1_pasienCari.lblNama.Caption;
  editNIK.Text := Form1_pasienCari.labelNIK.Caption;
  kartuBpjs := Form1_pasienCari.lblBPJS.Caption;
  dateTglLahir.Date := Form1_pasienCari.dtp1.DateTime;
  isKartuAda := Form1_pasienCari.check1.Checked;
  editMR.SetFocus;
  btn1Simpan.Enabled := true;
end;
end;

procedure TForm1_kunjunganRI.cbbKunjunganChange(Sender: TObject);
var isJKN, isSakit : Boolean;
begin
isJKN := UpperCase(cbbBiaya.Items[cbbBiaya.ItemIndex]) = 'JKN';
isSakit := cbbKunjungan.ItemIndex = 1;

update_combo_poli(isJKN, isSakit);
end;

function TForm1_kunjunganRI.check_jkn: Boolean;
var adl_berhasil : Boolean;
    aPeserta : brPeserta;
    sql0, sql1 : string;
begin
aPeserta := brPeserta.create;
// cek apakah data kartu bpjs tersedia
Result := False;
adl_berhasil := False;

  if Length(kartuBpjs) <= 0 then
  begin
     ShowMessage('kartu bpjs masih kosong... Cari Data Pasien, edit kartu BPJS');
     Result := False;
  end else
  begin
  pb1.Position := 10;
  //ambil_header(jsConsID, jsKey, jsUserID, jsPasswd, memoHeader.Lines);
  if aPeserta.getPeserta(kartuBpjs) then
    // berhasil get
    begin
      Result := True;
  //    memoData.Lines.Text := aPeserta.aScript.Text;
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

procedure TForm1_kunjunganRI.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_kunjunganRI.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataRI do
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

procedure TForm1_kunjunganRI.kirim_blok_kunjungan(pasien, kunjungan: string);
begin
 {
      Parallel.Async(
   procedure
   var
   aPasien : srvPasien;
   aKunjungan : srvKunjungan;
   aDaftar : srvDaftar;
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

   end
   );
   }
end;


procedure TForm1_kunjunganRI.kosongkan_baru;
begin
editMR.Clear;
dtPicker1.DateTime := Now;
dtPickerJam.DateTime := Now;
editNama.Clear;
dateTglLahir.Clear;
//cbbInstalasi.ItemIndex := 0;
isi_combo(TComboBox(cbbBiaya), 'select biaya from simpus.m_pasien_biaya order by upper(biaya)', 'biaya');
isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where upper(poli) = ''UMUM'';', 'poli' );

//isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli order by upper(poli)', 'poli');
isi_combo(TComboBox(cbbInstalasi), 'select instalasi from simpus.m_instalasi where instalasi = ''PONED'' or instalasi = ''RAWAT INAP''  order by upper(instalasi)', 'instalasi' );
cbbPoli.ItemIndex := idxPoli;
cbbCaraDatang.ItemIndex := 0;
end;

procedure TForm1_kunjunganRI.pb1Progress(Sender: TObject;
  var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

function TForm1_kunjunganRI.simpan_masuk : Boolean;
var str0, str1, idxstr, idPasien0 : string;
    strDatangSebab, strPoli, strNomor : string;
    strLama, strLuar : string;
    hasil : Boolean;
begin
//ShowMessage('awal simpan masuk');
idPasien0 := idPasien;
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
                      QuotedStr(idPasien),
                      QuotedStr(cbbKunjungan.Items[cbbKunjungan.ItemIndex]),
                      QuotedStr(cbbBiaya.Items[cbbBiaya.ItemIndex]),
                      strLama,
                      QuotedStr(cbbCaraDatang.Items[cbbCaraDatang.ItemIndex]),
                      QuotedStr('tes'),
                      QuotedStr(cbbPoli.Items[cbbPoli.ItemIndex]),
                      QuotedStr(strMasuk),
                      QuotedStr(cbbInstalasi.Items[cbbInstalasi.ItemIndex]),
                      strLuar,
                      IntTostr(0)
                      ]);

with dataRI do
begin
 // ShowMessage(str1);

  fdCmd1.Execute(str1);
  //ShowMessage('habis insert kunjungan');
  hasil := True;
end;

try
  //buka_data;
finally
  idxstr := ambil_kunjungan;
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
 // ShowMessage('hasil true');
  kirim_blok_kunjungan(idPasien0, idxstr);
end;
Result := hasil;
end;

procedure TForm1_kunjunganRI.update_combo_poli(isJKN, isSakit: Boolean);
begin
isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where upper(poli) = ''UMUM'';', 'poli' );
{
isSakit := True;
if isJKN then
begin
 if isSakit then isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where adl_bpjs = true and poli_sakit = true and adl_aktif = true order by upper(poli)', 'poli' ) else
                 isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where adl_bpjs = true and poli_sakit = false and adl_aktif = true order by upper(poli)', 'poli' );
end else
begin
 if isSakit then isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where poli_sakit = true and adl_aktif = true order by upper(poli)', 'poli' ) else
                 isi_combo(TComboBox(cbbPoli), 'select poli from simpus.m_poli where poli_sakit = false and adl_aktif = true order by upper(poli)', 'poli' );
end;
}
cbbPoli.ItemIndex := 0;
end;

end.
