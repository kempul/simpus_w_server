unit pasienPelayananRIu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DynVarsEh,
  JvToolEdit, ComCtrls, JvExComCtrls, JvDateTimePicker, JvMemo, DBCtrlsEh, pngimage,
  JvBaseEdits, Menus, JvMenus, ActnList, ImgList, JvRichEdit, JvDBRichEdit,
  Pipes, JvEdit, JvComCtrls, bridgeClassU, JvBaseDlg, JvProgressDialog,
  System.Actions, EhLibVCL;

type

  TBridge = BridgeTool;
  TForm1_pelayananRI = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btnDiagEdit: TJvTransparentButton;
    btnLabTes: TJvTransparentButton;
    bevel1: TJvBevel;
    panel2: TPanel;
    grp1: TGroupBox;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    grp2: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    memoTindakan: TJvMemo;
    panel4: TPanel;
    lbl4: TLabel;
    cbbDokter: TJvComboBox;
    grid1: TDBGridEh;
    dbtxt1: TDBText;
    dbedit1: TDBEdit;
    date1: TDBDateTimeEditEh;
    dbeditInstalasi: TDBEdit;
    dbedit4: TDBEdit;
    txt1: TStaticText;
    editICDX: TEdit;
    btn1ICDXCari: TSpeedButton;
    lbl1: TLabel;
    dtpTindakan: TJvDateTimePicker;
    dtpTindakanJam: TJvDateTimePicker;
    checkKasusBaru: TCheckBox;
    panel3: TPanel;
    lbl5: TLabel;
    cbbPoli: TComboBox;
    grpFisik: TGroupBox;
    lbl111: TLabel;
    lbl112: TLabel;
    lbl113: TLabel;
    lbl114: TLabel;
    lbl115: TLabel;
    lbl116: TLabel;
    lbl117: TLabel;
    lbl118: TLabel;
    lbl121: TLabel;
    lbl122: TLabel;
    lbl123: TLabel;
    lbl124: TLabel;
    lbl125: TLabel;
    lbl127: TLabel;
    editTB: TJvCalcEdit;
    editBB: TJvCalcEdit;
    editSistol: TJvCalcEdit;
    editDiastol: TJvCalcEdit;
    editNafas: TJvCalcEdit;
    editHati: TJvCalcEdit;
    panel6: TPanel;
    btn1FisikSimpan: TButton;
    btn2FisikBatal: TButton;
    cbbKesadaran: TComboBox;
    images1: TImageList;
    actlst1: TActionList;
    actCariPasien: TAction;
    actNew: TAction;
    actPrint: TAction;
    actClose: TAction;
    actLab: TAction;
    actEdit: TAction;
    panel7: TPanel;
    pipeClient1: TPipeClient;
    btn1Batal: TButton;
    btn1Simpan: TButton;
    btnPulang: TJvTransparentButton;
    actPulang: TAction;
    checkBPJS: TCheckBox;
    btnRefresh: TJvTransparentButton;
    actRefresh: TAction;
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    lbl6: TLabel;
    edit1Keluhan: TJvEdit;
    gridDiag: TDBGridEh;
    navDiag: TJvDBNavigator;
    gridFisik: TDBGridEh;
    navFisik: TJvDBNavigator;
    btnPindah: TJvTransparentButton;
    actPindah: TAction;
    tsObat: TTabSheet;
    tsTindakan: TTabSheet;
    tsLab: TTabSheet;
    btnObat: TJvTransparentButton;
    actObat: TAction;
    actTindakan: TAction;
    btnTindakan: TJvTransparentButton;
    gridTindakan: TDBGridEh;
    pnl4: TPanel;
    nav1: TJvDBNavigator;
    grid2: TDBGridEh;
    btnBPJS: TJvTransparentButton;
    actBPJS: TAction;
    pb1: TJvProgressDialog;
    gridMCU: TDBGridEh;
    dbDTtanggal: TJvDBDateEdit;
    dbeditNomor: TDBEdit;
    tsData: TTabSheet;
    memoData: TMemo;
    tsResponse: TTabSheet;
    memoResponse: TMemo;
    grid4: TDBGridEh;
    btnCetakRujukan: TJvTransparentButton;
    navMCU: TJvDBNavigator;
    nav3: TJvDBNavigator;
    tsALL: TTabSheet;
    memoAll: TMemo;
    dtp1: TDateTimePicker;
    btnImunisasi: TJvTransparentButton;
    actImunisasi: TAction;
    btnPoned: TJvTransparentButton;
    actPoned: TAction;
    tsImunisasi: TTabSheet;
    tsPONED: TTabSheet;
    gridImunisasi: TDBGridEh;
    navImunisasi: TJvDBNavigator;
    gridPONED: TDBGridEh;
    navPONED: TJvDBNavigator;
    tsOlah: TTabSheet;
    memoOlah: TMemo;
    memoSQL: TMemo;
    frxReport1_rujukan: TfrxReport;
    frxReport1_rujukanTAcc: TfrxReport;
    frxReportX: TfrxReport;
    frxReport1RujukanNon: TfrxReport;
    frxReport1Register: TfrxReport;
    frxdb1tes: TfrxDBDataset;
    frxdb1_RujukanNon: TfrxDBDataset;
    frxdb1Puskemas: TfrxDBDataset;
    frxdb1_Rujukan: TfrxDBDataset;
    frxdb1RegisterGroup: TfrxDBDataset;
    frxdb1Register: TfrxDBDataset;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedit1Change(Sender: TObject);
    procedure btn1SimpanClick(Sender: TObject);
    procedure btn1ICDXCariClick(Sender: TObject);
    procedure btn2FisikBatalClick(Sender: TObject);
    procedure grid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cbbPoliChange(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actLabExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure dbMemopenyakitChange(Sender: TObject);
    procedure cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTindakanKeyPress(Sender: TObject; var Key: Char);
    procedure checkKasusBaruKeyPress(Sender: TObject; var Key: Char);
    procedure actPulangExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure navFisikClick(Sender: TObject; Button: TNavigateBtn);
    procedure actPindahExecute(Sender: TObject);
    procedure actObatExecute(Sender: TObject);
    procedure actTindakanExecute(Sender: TObject);
    procedure actBPJSExecute(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure navMCUClick(Sender: TObject; Button: TNavigateBtn);
    procedure nav3Click(Sender: TObject; Button: TNavigateBtn);
    procedure dtp1Change(Sender: TObject);
    procedure actImunisasiExecute(Sender: TObject);
    procedure actPonedExecute(Sender: TObject);
    procedure navPONEDClick(Sender: TObject; Button: TNavigateBtn);
    procedure navImunisasiClick(Sender: TObject; Button: TNavigateBtn);
    procedure editICDXKeyPress(Sender: TObject; var Key: Char);
    procedure editICDXChange(Sender: TObject);
    procedure memoTindakanChange(Sender: TObject);
    procedure editICDXEnter(Sender: TObject);
    procedure memoTindakanEnter(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : Boolean;
    ABridge : TBridge;
    vNoUrut, vNoKunjungan, vKdObatSK, vkdRacikan, vkdTindakanSK, vKdMCU : string;
    vidx_obat, vidx_tindakan : Integer;

    procedure proses_pendaftaran;
    procedure proses_obat;
    procedure proses_tindakan;
    procedure proses_mcu;
    procedure proses_bpjs;
    procedure eksekusi_script(aSQL : TStrings);

    function ambil_rujukan : Boolean;
    procedure awal;
    procedure buka_data;

    procedure kontrol_berikutnya(Sender: TObject; var Key: Char);


    procedure isi_pickList(aGrid : TDBGridEh; aKolom : Integer; aQuery : string; aField : String);
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_form;
    procedure simpan_tindakan;
    procedure simpan_tindakanGigi;
    procedure simpan_poned;
    procedure simpan_rawat_inap(strTgl, strNomor, strMr : string);

    function ambil_idxGigi : Integer;
    function ambil_idxPoned : Integer;

    procedure usai_tindakan;

    procedure simpan_pemeriksaan_fisik;
    procedure tampilkan_imunisasi;
    procedure simpan_imunisasi;
    function cariICDX : boolean;
  public
    { Public declarations }
  end;

var
  Form1_pelayananRI: TForm1_pelayananRI;

implementation

uses aau, aau111, dmpelayanan, pulangBantuU, ICDXCariu, gigiBantuU,
  ponedBantuU, lab_pasien_u, icdx_edit_u, tindakanAddU, obatAddU,
  ImunisasiBantuU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pelayananRI.actBPJSExecute(Sender: TObject);
var vmr : string;
begin
if checkBPJS.Checked then
begin
if MessageDlg('Pastikan Pelayanan Terhadap Pasien Sudah Dientri. Proses BPJS?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
  vmr := dbedit1.Text;
  try
  proses_bpjs;
  finally
    buka_data;
    dataPelayanan.uqKunjungan1.Locate('mr', vmr, []);
  end;
end;
end else ShowMessage('Bukan Pasien BPJS ! Proses dihentikan');
end;

procedure TForm1_pelayananRI.actCloseExecute(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
gridFisik.SaveColumnsLayoutIni(form111.MyIni, Name, False);
gridDiag.SaveColumnsLayoutIni(form111.MyIni, Name, False);

dataPelayanan.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

end;

procedure TForm1_pelayananRI.actEditExecute(Sender: TObject);
var sql0, sql1 : string;
begin
Form1_ICDXedit.lbl2.Caption := 'Edit Diagnosa : ' + dbedit1.Text + ' / ' + dbtxt1.Caption;
Form1_ICDXedit.lbl1.Caption := 'Diagnosa Lama : ' + dataPelayanan.uqMR0.FieldByName('penyakit').AsString + '   ' + dataPelayanan.uqMR0.FieldByName('nm_diag').AsString;
Form1_ICDXedit.ShowModal;
if Form1_ICDXedit.ModalResult = mrOK then
begin
   with dataPelayanan do
   begin
   sql0 := 'update simpus2.pasien_mr set penyakit = %s where tanggal = %s and nomor = %s and idx_diag = %s';
   sql1 := Format(sql0, [
                        QuotedStr(Form1_ICDXedit.lblICDX.Caption),
                        QuotedStr(FormatDateTime('YYYY-MM-DD', uqKunjungan1.FieldByName('tanggal').AsDateTime)),
                        uqKunjungan1.FieldByName('nomor').AsString,
                        uqMR0.FieldByName('idx_diag').AsString
                        ]);
   qproses.SQL.Clear;
   qproses.SQL.Add(sql1);
   qproses.Execute;
   end;
   buka_data;
   ShowMessage('Data disimpan');
end;
end;

procedure TForm1_pelayananRI.actImunisasiExecute(Sender: TObject);
var vmr : string;
begin
  vmr := dbedit1.Text;
      tampilkan_imunisasi;

     Form1_ImunisasiBantu.ShowModal;
      if Form1_ImunisasiBantu.ModalResult = mrOk then
      begin
        simpan_imunisasi;
      end;
  buka_data;
  dataPelayanan.uqKunjungan1.Locate('mr', vMR,[]);

end;

procedure TForm1_pelayananRI.actLabExecute(Sender: TObject);
begin
with dataPelayanan do
begin
  unspLabMohon.Prepare;
  unspLabMohon.ParamByName('ip_tanggal').AsDate := uqKunjungan1.FieldByName('tanggal').AsDateTime;
  unspLabMohon.ParamByName('ip_nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
  unspLabMohon.ParamByName('ip_bpjs').AsBoolean := checkBPJS.Checked;
  unspLabMohon.ParamByName('ip_tgl_pelayanan').AsDate := dtp1.DateTime;
  unspLabMohon.ExecProc;
end;

Form1_labPasien.checkBPJS.Checked := checkBPJS.Checked;
Form1_labPasien.dtp1.DateTime := dtp1.DateTime;
Form1_labPasien.ShowModal;
if Form1_labPasien.ModalResult = mrOK then
begin
  buka_data;
  ShowMessage('data disimpan');
//  pipeClient1.SendMesssage('1002');
end;
end;

procedure TForm1_pelayananRI.actObatExecute(Sender: TObject);
begin
Form1_obatAdd.Caption := 'Menambahkan Obat pada pasien ' + dbtxt1.Caption;
form1_obatAdd.ShowModal;
end;

procedure TForm1_pelayananRI.actPindahExecute(Sender: TObject);
var sql0, sql1 : string;
begin
if MessageBox(0, PWideChar('Yakin memindah ' + dbtxt1.Caption + ' ke instalasi RAWAT INAP?'), 'Konfirmasi', mb_YesNo or MB_ICONQUESTION)= mrYes then
with dataPelayanan do
begin
  simpan_rawat_inap(FormatDateTime('YYYY-MM-DD',uqKunjungan1.FieldByName('tanggal').AsDateTime),
                    uqKunjungan1.FieldByName('nomor').AsString,
                    uqKunjungan1.FieldByName('mr').AsString);

  sql0 := 'update simpus2.pasien_kunjungan set instalasi = ''RAWAT INAP'' where tanggal = %s and nomor = %s;';
  sql1 := Format(sql0, [QuotedStr(FormatDateTime('YYYY-MM-DD',uqKunjungan1.FieldByName('tanggal').AsDateTime)),
                        IntToStr(uqKunjungan1.FieldByName('nomor').AsInteger)
                        ]);
  try
  qproses.SQL.Clear;
  qproses.SQL.Add(sql1);
  qproses.Execute;
  finally
    buka_data;
  end;
end;
end;

procedure TForm1_pelayananRI.actPonedExecute(Sender: TObject);
var vmr : string;
begin
  vmr := dbedit1.Text;
     Form1_ponedBantu.ShowModal;
      if Form1_ponedBantu.ModalResult = mrOk then
      begin
        simpan_poned;
      end;
  buka_data;
  dataPelayanan.uqKunjungan1.Locate('mr', vMR,[]);
end;

procedure TForm1_pelayananRI.actPrintExecute(Sender: TObject);
var strTAcc : string;
    isTAcc : Boolean;
begin
if dataPelayanan.uqKunjungan1.FieldByName('tanggal_pulang').IsNull then
begin
  ShowMessage('Pasien Belum Pulang');
  Exit;
end;

if dataPelayanan.uqKunjungan1.FieldByName('periksa_fisik').AsInteger = 0 then
begin
  ShowMessage('Pemeriksaan Fisik Belum Dientri');
  Exit;
end;

if dataPelayanan.uqKunjungan1.FieldByName('sdh_dilayani').AsInteger = 0 then
begin
  ShowMessage('Pasien Belum Dilayani');
  Exit;
end;

if dataPelayanan.uniQBPJSLook.IsEmpty then
begin
if not checkBPJS.Checked then
begin
// bukan pasien bpjs
//ini harus cetak rujukan
   with dataPelayanan do
   begin
     uniQPuskesmas.Close;
     uniQRujukanNon.Close;

     uniQPuskesmas.Open;
     uniQRujukanNon.Open;

     frxReport1RujukanNon.ShowReport();

   end;
Exit;
end else
begin
// pasien bpjs salah entri
  ShowMessage('Terjadi kesalahan entri, kartu bpjs tidak ditemukan !');
  Exit;
end;
end;

if dataPelayanan.uniQBPJSLook.FieldByName('adl_daftar').AsBoolean then
begin
  ShowMessage('Pasien Belum Didaftar di BPJS');
  Exit;
end;

if dataPelayanan.uniQBPJSLook.FieldByName('adl_kunjung').AsBoolean then
begin
  ShowMessage('Pasien Belum Dilayani di BPJS');
  Exit;
end;

if dataPelayanan.uniQBPJSLook.FieldByName('adl_kunjung_update').AsBoolean then
begin
  ShowMessage('Data di BPJS perlu diupdate');
  Exit;
end;


pb1.Max := 100;
pb1.Interval := 10;
pb1.Text := 'memulai negosiasi dengan pcare';
pb1.Show;
pb1.Position := pb1.Position + pb1.Interval;

if ambil_rujukan then
begin
pb1.Text := 'Mendapatkan data';
pb1.Position := pb1.Position + pb1.Interval;



  dataPelayanan.uniQRujukanCetak.Close;
  dataPelayanan.uniQRujukanCetak.Open;
  strTAcc := dataPelayanan.uniQRujukanCetak.FieldByName('nm_tacc').AsString;
  isTAcc := Length(strTAcc) >= 2;

pb1.Hide;
  if isTAcc then frxReport1_rujukanTAcc.ShowReport() else
          frxReport1_rujukan.ShowReport();
end;
end;

procedure TForm1_pelayananRI.actPulangExecute(Sender: TObject);
begin
Form1_pulangBantu.grpTacc.Visible := dataPelayanan.uqMR0.FieldByName('non_spesialis').AsBoolean;
Form1_pulangBantu.check1BPJS.Checked := checkBPJS.Checked;
Form1_pulangBantu.check1Inap.Checked := dbeditInstalasi.Text = 'RAWAT INAP';
Form1_pulangBantu.ShowModal;
if Form1_pulangBantu.ModalResult = mrOK then
begin
buka_data;
ShowMessage('Data Pulang Disimpan');
end;

end;

procedure TForm1_pelayananRI.actRefreshExecute(Sender: TObject);
begin
buka_data;
end;

procedure TForm1_pelayananRI.actTindakanExecute(Sender: TObject);
begin
Form1_tindakanAdd.Caption := 'Menambahkan tindakan pasien : ' + dbtxt1.Caption;
form1_tindakanAdd.ShowModal;
if Form1_tindakanAdd.ModalResult = mrOk then
       begin
         dataPelayanan.uniQTindakan.Close;
         dataPelayanan.uniQTindakan.Open;
       end;
end;

function TForm1_pelayananRI.ambil_idxGigi: Integer;
begin
with dataPelayanan do
begin
  qTindakanGigi_pv.Close;
  qTindakanGigi_pv.ParamByName('jenis').AsString := Form1_gigiBantu.lblJenis.Caption;
  qTindakanGigi_pv.ParamByName('ket').AsString := Form1_gigiBantu.lblJenisDetil.Caption;
  qTindakanGigi_pv.Open;

  Result := qTindakanGigi_pv.FieldByName('idx').AsInteger;
  qTindakanGigi_pv.Close;
end;
end;

function TForm1_pelayananRI.ambil_idxPoned: Integer;
begin
with dataPelayanan do
begin
  qPoned_pv.Close;
  qPoned_pv.ParamByName('kelompok').AsString := Form1_ponedBantu.cbbPonedKlp.Items[Form1_ponedBantu.cbbPonedKlp.ItemIndex];
  qPoned_pv.ParamByName('penyakit').AsString := Form1_ponedBantu.cbbPonedPenyakit.Items[Form1_ponedBantu.cbbPonedPenyakit.ItemIndex];
  qPoned_pv.Open;

  Result := qPoned_pv.FieldByName('idx').AsInteger;
  qPoned_pv.Close;
end;

end;

function TForm1_pelayananRI.ambil_rujukan: Boolean;
begin
Result := False;
with dataPelayanan do
begin
uniQBPJS.Close;
uniQBPJS.Open;
if not uniQBPJS.IsEmpty then
begin
ABridge := TBridge.create;
Result := ABridge.get_rujukan(uniQBPJS.FieldByName('no_kunjungan').AsString, memoResponse.Lines);
if Result then ABridge.ambil_list_rujukan(memoData.Lines);
ABridge.Free;
end;
uniQBPJS.Close;
end;

end;

procedure TForm1_pelayananRI.awal;
begin
dtp1.DateTime := Now;
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
gridFisik.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
gridDiag.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
kosongkan_form;
isi_combo(cbbPoli, 'select poli from simpus2.m_poli where adl_bpjs = true and adl_aktif = TRUE order by upper(poli)', 'poli');
isi_combo(TComboBox(cbbKesadaran), 'select kesadaran_str from simpus2.m_kesadaran order by idx', 'kesadaran_str' );
cbbPoli.Items.Insert(0, 'SEMUA');
cbbPoli.ItemIndex := 0;
buka_data;
end;

procedure TForm1_pelayananRI.btn1ICDXCariClick(Sender: TObject);
begin
Form1_ICDXCari.ShowModal;
if Form1_ICDXCari.ModalResult = mrOk then
begin
   editICDX.Text := Form1_ICDXCari.lblICDX.Caption;
   txt1.Caption := Form1_ICDXCari.lblPenyakit.Caption;
   editICDXChange(editICDX);
   Form1_pulangBantu.grpTacc.Visible := Form1_ICDXCari.chkNonSpesialis.Checked;
   memoTindakan.SetFocus;
//   cbbPenyakit.ItemIndex := cbbPenyakit.Items.IndexOf(dataPelayanan.qICDXCari.FieldByName('penyakit_kode').AsString);
end;

end;

procedure TForm1_pelayananRI.btn1SimpanClick(Sender: TObject);
var vmr : string;
begin
  vmr := dbedit1.Text;

  try

  if UpperCase(dbedit4.Field.Value) = 'GIGI' then Form1_gigiBantu.ShowModal;
  if Form1_gigiBantu.ModalResult = mrOk then simpan_tindakanGigi;
  simpan_tindakan;

  {
  if ((UpperCase(dbedit4.Field.Value) = 'K I A') or (UpperCase(dbedit4.Field.Value) = 'KIA')) then
    begin
      tampilkan_imunisasi;

     Form1_ponedBantu.ShowModal;
      if Form1_ponedBantu.ModalResult = mrOk then
      begin
        simpan_poned;
        simpan_imunisasi;
      end;
    end;
  }
   if ((checkBPJS.Checked) and (dbeditInstalasi.Text = 'RAWAT JALAN')) then
  begin
    Form1_pulangBantu.simpan_pulan_auto;
  end;


  finally
  ShowMessage('data disimpan');
  usai_tindakan;
    buka_data;

  dataPelayanan.uqKunjungan1.Locate('mr', vmr, []);  
  end;


end;

procedure TForm1_pelayananRI.btn2FisikBatalClick(Sender: TObject);
var vMR : string;
begin
vMR := dbedit1.Text;
try
  simpan_pemeriksaan_fisik;
finally
  buka_data;
  dataPelayanan.uqKunjungan1.Locate('mr', vMR,[]);
end;
end;

procedure TForm1_pelayananRI.buka_data;
var s0, s1, strPoli, strTgl, QStrTgl : string;
begin
DateTimeToString(strTgl, 'yyyy-mm-dd', dtp1.Date);
QStrTgl := QuotedStr(strTgl);
strPoli := cbbPoli.Items[cbbPoli.ItemIndex];
s0 := 'SELECT simpus2.capil_nik.nik, simpus2.capil_nik.nama_lengkap, simpus2.capil_nik.tmpt_lahir, ' +
   'simpus2.capil_nik.tgl_lahir, simpus2.capil_nik.kartu_bpjs, age(simpus2.capil_nik.tgl_lahir) as umur, ' +
   'simpus2.pasien_kunjungan.* ' +
    'FROM simpus2.pasien_kunjungan ' +
    'INNER JOIN simpus2.capil_nik ON (simpus2.pasien_kunjungan.mr = simpus2.capil_nik.mr) ' +
    'where ( ' +
      '((simpus2.pasien_kunjungan.instalasi = ''RAWAT INAP'')) and ' +
      '((simpus2.pasien_kunjungan.tanggal = ' + QStrTgl +') or' +
      ' (simpus2.pasien_kunjungan.tanggal_pulang is null ) or ' +
      '(cast(simpus2.pasien_kunjungan.tanggal_pulang as date) = ' + QStrTgl + ')) and ' +
      '(%s) ) order by sdh_dilayani, tanggal desc, nomor';

{
s0 := 'SELECT simpus2.penduduk.nik, simpus2.penduduk.nama, simpus2.penduduk.tempat_lahir, ' +
   'simpus2.penduduk.tanggal_lahir, age(simpus2.penduduk.tanggal_lahir) as umur, ' +
   'simpus2.pasien_kunjungan.* ' +
    'FROM simpus2.pasien_kunjungan ' +
    'INNER JOIN simpus2.penduduk ON (simpus2.pasien_kunjungan.mr = simpus2.penduduk.mr) ' +
    'where ( ' +
     '((simpus2.pasien_kunjungan.sdh_dilayani = 0) or ' +
     '(simpus2.pasien_kunjungan.sdh_pulang = 0) or ' +
     '(cast(simpus2.pasien_kunjungan.tanggal_pulang as date) >= current_date)) and ' +
      '(%s) ) order by sdh_dilayani, tanggal desc, nomor';
}
if cbbPoli.ItemIndex = 0 then
  s1 := Format(s0, ['simpus2.pasien_kunjungan.poli_tujuan is not null' ]) else
  s1 := Format(s0, ['simpus2.pasien_kunjungan.poli_tujuan = ' + QuotedStr(strPoli)]);

//memoTindakan.Lines.Add(s1);

with dataPelayanan do
begin
  conn1.Connected := false;
  uqKunjungan1.Close;
  uqKunjungan1.SQL.Clear;
  uqKunjungan1.SQL.Add(s1);
  uqKunjungan1.Open;

  uqMR0.Close;
  uqMR0.Open;

  uniQFisik.Close;
  uniQFisik.Open;
  isi_pickList(gridFisik, 4, 'select kesadaran_str from simpus2.m_kesadaran order by idx', 'kesadaran_str');

  uniQTindakan.Close;
  uniQTindakan.Open;
  isi_pickList(gridTindakan, 7, 'select nm_tindakan from simpus2.m_tindakan order by upper(nm_tindakan)', 'nm_tindakan');

  uniQObatPasien.Close;
  uniQObatPasien.Open;

  uniQMCU.Close;
  uniQMCU.Open;

  uniQPONED.Close;
  uniQPONED.Open;

  uniQImunisasi.Close;
  uniQImunisasi.Open;

  uniQBPJSLook.Close;
  uniQBPJSLook.Open;

end;
  boleh_buka := True;
   dbedit1Change(dbedit1);
end;

function TForm1_pelayananRI.cariICDX: boolean;
begin
with dataPelayanan do
begin
   uqICDXCari0.Close;
   uqICDXCari0.ParamByName('kd_diag').AsString := editICDX.Text;
   uqICDXCari0.Open;

   if not uqICDXCari0.IsEmpty then
   begin
      txt1.Caption := uqICDXCari0.FieldByName('nm_diag').AsString;
      Form1_pulangBantu.grpTacc.Visible := uqICDXCari0.FieldByName('non_spesialis').AsBoolean;
      uqICDXCari0.Close;
      Result := True;
   end else
   begin
      uqICDXCari0.Close;
      ShowMessage('Data Tidak Ditemukan. Silahkan cari dari data berikut');
      Result := False;
   end;
end;
end;

procedure TForm1_pelayananRI.cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
begin
kontrol_berikutnya(Sender, Key);
end;

procedure TForm1_pelayananRI.cbbPoliChange(Sender: TObject);
begin
if boleh_buka then buka_data;

end;

procedure TForm1_pelayananRI.checkKasusBaruKeyPress(Sender: TObject;
  var Key: Char);
begin
kontrol_berikutnya(Sender, key);
end;

procedure TForm1_pelayananRI.dbedit1Change(Sender: TObject);
var sdh_dilayani, sdh_pulang : Integer;
    rawat_inap : Boolean;
begin
    checkBPJS.Checked := (Sender as TDBEdit).DataSource.DataSet.FieldByName('biaya').AsString = 'JKN';

    sdh_dilayani := (Sender as TDBEdit).DataSource.DataSet.FieldByName('sdh_dilayani').AsInteger;
    sdh_pulang := (Sender as TDBEdit).DataSource.DataSet.FieldByName('sdh_pulang').AsInteger;
    rawat_inap := (Sender as TDBEdit).DataSource.DataSet.FieldByName('instalasi').AsString = 'RAWAT INAP';

//    grpFisik.Visible := False;
//    grp2.Visible := False;

//    grpFisik.Visible := gridFisik.DataSource.DataSet.IsEmpty;

    btnPulang.Visible := sdh_dilayani = 1;
    btnPindah.Visible := dbeditInstalasi.Text <> 'RAWAT INAP';
//    btnBPJS.Visible := checkBPJS.Checked;
//    btnCetakRujukan.Visible := checkBPJS.Checked;
//    btnBPJS.Visible := not dataPelayanan.uniQBPJS.IsEmpty;
end;

procedure TForm1_pelayananRI.dbMemopenyakitChange(Sender: TObject);
begin
btnDiagEdit.Visible := not dataPelayanan.uqMR0.IsEmpty;
end;

procedure TForm1_pelayananRI.dtp1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;

procedure TForm1_pelayananRI.dtpTindakanKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(sender), True, True );

end;

procedure TForm1_pelayananRI.editICDXChange(Sender: TObject);
begin
btn1Simpan.Enabled := Length(txt1.Caption) > 4;
end;

procedure TForm1_pelayananRI.editICDXEnter(Sender: TObject);
begin
txt1.Caption := '';
end;

procedure TForm1_pelayananRI.editICDXKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
   if cariICDX then SelectNext(TWinControl(sender), True, true)
    else btn1ICDXCari.Click;

end;

procedure TForm1_pelayananRI.eksekusi_script(aSQL: TStrings);
begin
with dataPelayanan do
begin
  uniScript2.SQL.Clear;
  uniScript2.SQL.Assign(asql);
  uniScript2.Execute;
end;
end;

procedure TForm1_pelayananRI.FormCreate(Sender: TObject);
begin
boleh_buka := False;
end;

procedure TForm1_pelayananRI.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pelayananRI.grid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if dataPelayanan.uqKunjungan1.FieldByName('sdh_dilayani').AsInteger = 1 then
begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clGreen;
end;

if dataPelayanan.uqKunjungan1.FieldByName('sdh_pulang').AsInteger = 1 then
begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clMaroon;
end;

end;

procedure TForm1_pelayananRI.isi_combo(aCombo: TComboBox; aQuery, aField: string);
begin
aCombo.Clear;
with dataPelayanan do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(aQuery);
  qbuka.Open;

  while not qbuka.Eof do
  begin
    aCombo.Items.Add(qbuka.FieldByName(aField).AsString);
    qbuka.Next;
  end;
  qbuka.Close;
  aCombo.ItemIndex := 0;
end;

end;

procedure TForm1_pelayananRI.isi_pickList(aGrid: TDBGridEh; aKolom: Integer;
  aQuery, aField: String);
begin
with dataPelayanan do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(aQuery);
  qbuka.Open;

  aGrid.Columns[aKolom].PickList.Clear;
  while not qbuka.Eof do
  begin
    aGrid.Columns[aKolom].PickList.Add(qbuka.FieldByName(aField).AsString);
    qbuka.Next;
  end;

  qbuka.Close;
end;

end;

procedure TForm1_pelayananRI.kontrol_berikutnya(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(sender), True, True );
end;

procedure TForm1_pelayananRI.kosongkan_form;
begin
dtpTindakan.DateTime := Now;
dtpTindakanJam.DateTime := Now;
editICDX.Clear;
txt1.Caption := '';
memoTindakan.Clear;
isi_combo(TComboBox(cbbDokter), 'select nama from simpus2.dokter order by upper(nama)', 'nama');
edit1Keluhan.Clear;
cbbKesadaran.ItemIndex := 0;
editTB.AsInteger := 0;
editBB.AsInteger := 0;
editSistol.AsInteger := 0;
editDiastol.AsInteger := 0;
editNafas.AsInteger := 0;
editHati.AsInteger := 0;

end;

procedure TForm1_pelayananRI.memoTindakanChange(Sender: TObject);
begin
//btn1Simpan.Enabled := Length(txt1.Caption) > 4;
end;

procedure TForm1_pelayananRI.memoTindakanEnter(Sender: TObject);
begin
btn1Simpan.Enabled := Length(txt1.Caption) > 4;
end;

procedure TForm1_pelayananRI.navMCUClick(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin
if Button in [ nbInsert, nbEdit] then
begin
  gridMCU.Options := gridMCU.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  gridMCU.Options := gridMCU.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;
end;

procedure TForm1_pelayananRI.navPONEDClick(Sender: TObject; Button: TNavigateBtn);
begin
if Button in [ nbInsert, nbEdit] then
begin
  gridPONED.Options := gridPONED.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  gridPONED.Options := gridPONED.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;

end;

procedure TForm1_pelayananRI.nav3Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin
if Button in [ nbInsert, nbEdit] then
begin
  gridTindakan.Options := gridTindakan.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  gridTindakan.Options := gridTindakan.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;


end;

procedure TForm1_pelayananRI.navFisikClick(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin
if Button in [ nbInsert, nbEdit] then
begin
  gridFisik.Options := gridFisik.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  gridFisik.Options := gridFisik.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;


end;

procedure TForm1_pelayananRI.navImunisasiClick(Sender: TObject;
  Button: TNavigateBtn);
begin
if Button in [ nbInsert, nbEdit] then
begin
  gridImunisasi.Options := gridImunisasi.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  gridImunisasi.Options := gridImunisasi.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;

end;

procedure TForm1_pelayananRI.pb1Progress(Sender: TObject; var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

procedure TForm1_pelayananRI.proses_bpjs;
begin
memoAll.Clear;
pb1.Max := 100;
pb1.Interval := 10;
pb1.Text := 'memulai negosiasi dengan pcare';
pb1.Show;
pb1.Position := pb1.Position + pb1.Interval;

proses_pendaftaran;
proses_obat;
proses_tindakan;
proses_mcu;

pb1.Hide;
end;

procedure TForm1_pelayananRI.proses_mcu;
begin
  pb1.Text := 'Mendaftarkan Penunjang Diagnostik';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try
  ABridge.buat_json_mcu(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);
  memoAll.Lines.AddStrings(memoData.Lines);

  if memoData.Lines.Count > 0 then
  begin
  pb1.Text := 'Meminta Kode Penunjang Diagnostik';
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.post_mcu(memoData.Lines, memoResponse.Lines);
  vkdMCU := ABridge.kdMCU;
  memoAll.Lines.AddStrings(memoResponse.Lines);
  end;

  pb1.Text := 'Penunjang Diagnostik Selesai';
  pb1.Position := pb1.Position + pb1.Interval;

finally
  ABridge.Free;
end;

end;

procedure TForm1_pelayananRI.proses_obat;
var vrecord : Integer;
begin
  pb1.Text := 'Mendaftarkan pemakaian obat';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try
  vidx_obat := -1;
  repeat
  vidx_obat := ABridge.buat_json_obat(dbDTtanggal.Date, dbeditNomor.Field.AsInteger);
  memoData.Lines.Assign(ABridge.JsonSL);
  memoAll.Lines.AddStrings(memoData.Lines);
  if vidx_obat > 0 then
   begin
     ABridge.post_obat(memoData.Lines, memoResponse.Lines);
     vKdObatSK := ABridge.kdObatSK;
     pb1.Text := 'Mendapatkan nomor obat sk = ' + vKdObatSK;
     pb1.Position := pb1.Position + pb1.Interval;
     vkdRacikan := ABridge.kdRacikan;
  memoAll.Lines.AddStrings(memoResponse.Lines);
   end;
  until vidx_obat <= 0;

finally
  ABridge.Free;
end;

end;

procedure TForm1_pelayananRI.proses_pendaftaran;
begin
ABridge := TBridge.create;
try
  pb1.Text := 'Meminta nomor urut pendaftaran';
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.buat_json_daftar(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);
  memoAll.Lines.AddStrings(memoData.Lines);
  if memoData.Lines.Count > 0 then
  begin
     ABridge.post_pendaftaran(memoData.Lines, memoResponse.Lines);
     vNoUrut := ABridge.noUrut;
     memoAll.Lines.AddStrings(memoResponse.Lines);

     pb1.Text := 'Mendapatkan nomor urut = ' + vNoUrut;
     pb1.Position := pb1.Position + pb1.Interval;
  end;


  ABridge.buat_json_kunjungan(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));

  pb1.Text := 'Meminta nomor kunjungan';;
  pb1.Position := pb1.Position + pb1.Interval;

  memoData.Lines.Assign(ABridge.JsonSL);
  memoAll.Lines.AddStrings(memoData.Lines);
  if memoData.Lines.Count > 0 then
       begin
            ABridge.post_kunjungan(memoData.Lines, memoResponse.Lines);
            vNoKunjungan := ABridge.noKunjungan;
            pb1.Text := 'Mendapatkan nomor kunjungan = ' + vNoKunjungan;
            pb1.Position := pb1.Position + pb1.Interval;
            memoAll.Lines.AddStrings(memoResponse.Lines);
       end;

finally
ABridge.Free;
end;
end;

procedure TForm1_pelayananRI.proses_tindakan;
var vrecord : Integer;
begin
  pb1.Text := 'Medaftarkan tindakan ';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try

  vidx_tindakan := -1;
  repeat
  vidx_tindakan := ABridge.buat_json_tindakan(dbDTtanggal.Date, dbeditNomor.Field.AsInteger);
  memoData.Lines.Assign(ABridge.JsonSL);
  memoAll.Lines.AddStrings(memoData.Lines);
  if vidx_tindakan > 0 then
  begin
  ABridge.post_tindakan(memoData.Lines, memoResponse.Lines);
  vkdTindakanSK := ABridge.kdTindakanSK;

  pb1.Text := 'Mendapatkan nomor tindakan = ' + vkdTindakanSK;
  pb1.Position := pb1.Position + pb1.Interval;
  memoAll.Lines.AddStrings(memoResponse.Lines);
  end;
  until vidx_tindakan <= 0 ;

finally
  ABridge.Free;
end;

end;

procedure TForm1_pelayananRI.simpan_imunisasi;
begin
  with dataPelayanan do
  begin
    uspImunisasiDariPV.ParamByName('ip_tanggal').AsDate := uqKunjungan1.FieldByName('tanggal').AsDateTime;
    uspImunisasiDariPV.ParamByName('ip_nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
    uspImunisasiDariPV.ExecProc;
  end;
end;

procedure TForm1_pelayananRI.simpan_pemeriksaan_fisik;
begin
with dataPelayanan do
begin

  unsqlFisikInsert.ParamByName('tanggal').AsDateTime := uqKunjungan1.FieldByName('tanggal').AsDateTime;
  unsqlFisikInsert.ParamByName('nomor').AsString := uqKunjungan1.FieldByName('nomor').AsString;
  unsqlFisikInsert.ParamByName('mr').AsString := uqKunjungan1.FieldByName('mr').AsString;
  unsqlFisikInsert.ParamByName('nik').AsString := uqKunjungan1.FieldByName('nik').AsString;
  unsqlFisikInsert.ParamByName('keluhan').AsString := edit1Keluhan.text;
  unsqlFisikInsert.ParamByName('kesadaran').AsString := cbbKesadaran.Items[cbbKesadaran.ItemIndex];
  unsqlFisikInsert.ParamByName('tinggi_badan').AsInteger := editTB.AsInteger;
  unsqlFisikInsert.ParamByName('berat_badan').AsInteger := editBB.AsInteger;
  unsqlFisikInsert.ParamByName('sistole').AsInteger := editSistol.AsInteger;
  unsqlFisikInsert.ParamByName('diastole').AsInteger := editDiastol.AsInteger;
  unsqlFisikInsert.ParamByName('respiratory').AsInteger := editNafas.AsInteger;
  unsqlFisikInsert.ParamByName('heart').AsInteger := editHati.AsInteger;
  unsqlFisikInsert.ParamByName('adl_bpjs').AsBoolean := checkBPJS.Checked;
  unsqlFisikInsert.Execute;

end;

end;

procedure TForm1_pelayananRI.simpan_poned;
begin
with dataPelayanan do
begin

   qPonedInsert.ParamByName('tanggal').AsDateTime := uqKunjungan1.FieldByName('tanggal').AsDateTime;
   qPonedInsert.ParamByName('nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
   qPonedInsert.ParamByName('tgl_diagnosa').AsDateTime := dtpTindakan.Date;
   qPonedInsert.ParamByName('poned').AsInteger := ambil_idxPoned;
   qPonedInsert.Execute;

end;

end;



procedure TForm1_pelayananRI.simpan_rawat_inap(strTgl, strNomor, strMr: string);
var str0, str1 : string;
begin
   str0 := 'INSERT INTO simpus2.rawat_inap(tanggal, nomor, mr) ' +
            'values(%s, %s, %s);';
   str1 := Format(str0, [
                         QuotedStr(strTgl),
                         strNomor,
                         QuotedStr(strMR)
                  ]);
    with dataPelayanan do
    begin
      qproses.SQL.Clear;
      qproses.SQL.Add(str1);
      qproses.Execute;
    end;
end;

procedure TForm1_pelayananRI.simpan_tindakan;
var adlBaru : Integer;
begin
adlBaru := 0;
if checkKasusBaru.Checked then adlBaru := 1;

with dataPelayanan do
begin

  unsqlDiagnosaInsert.ParamByName('tanggal').AsDateTime := uqKunjungan1.FieldByName('tanggal').AsDateTime;
  unsqlDiagnosaInsert.ParamByName('nomor').AsString := uqKunjungan1.FieldByName('nomor').AsString;
  unsqlDiagnosaInsert.ParamByName('mr').AsString := uqKunjungan1.FieldByName('mr').AsString;
  unsqlDiagnosaInsert.ParamByName('nik').AsString := uqKunjungan1.FieldByName('nik').AsString;
  unsqlDiagnosaInsert.ParamByName('tanggal_diagnosa').AsDateTime := dtpTindakan.Date;
  unsqlDiagnosaInsert.ParamByName('jam_diagnosa').AsDateTime := dtpTindakanJam.Time;
  unsqlDiagnosaInsert.ParamByName('anamnese').AsString := '';
  unsqlDiagnosaInsert.ParamByName('tindakan').AsString := memoTindakan.Text;
  unsqlDiagnosaInsert.ParamByName('dokter').AsString := cbbDokter.Items[cbbDokter.ItemIndex];
  unsqlDiagnosaInsert.ParamByName('penyakit').AsString := editICDX.Text;
  unsqlDiagnosaInsert.ParamByName('adl_baru').AsInteger := adlBaru;
  unsqlDiagnosaInsert.ParamByName('adl_bpjs').AsBoolean := checkBPJS.Checked;
  unsqlDiagnosaInsert.Execute;

end;
end;



procedure TForm1_pelayananRI.simpan_tindakanGigi;
begin
with dataPelayanan do
begin

   qTindakanGigiInsert.ParamByName('tanggal').AsDateTime := uqKunjungan1.FieldByName('tanggal').AsDateTime;
   qTindakanGigiInsert.ParamByName('nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
   qTindakanGigiInsert.ParamByName('nik').AsString := uqKunjungan1.FieldByName('nik').AsString;
   qTindakanGigiInsert.ParamByName('mr').AsString := uqKunjungan1.FieldByName('mr').AsString;
   qTindakanGigiInsert.ParamByName('tgl_tindakan').AsDateTime := dtpTindakan.Date;
   qTindakanGigiInsert.ParamByName('tindakan').AsInteger := ambil_idxGigi;
   qTindakanGigiInsert.Execute;

end;

end;

procedure TForm1_pelayananRI.tampilkan_imunisasi;
begin
  with dataPelayanan do
  begin
  try
    uspImunisasiBuat.ParamByName('ip_tanggal').AsDate := uqKunjungan1.FieldByName('tanggal').AsDateTime;
    uspImunisasiBuat.ParamByName('ip_nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
    uspImunisasiBuat.ParamByName('ip_mr').AsString := uqKunjungan1.FieldByName('mr').AsString;
    uspImunisasiBuat.ParamByName('ip_nik').AsString := uqKunjungan1.FieldByName('nik').AsString;
    uspImunisasiBuat.ExecProc;
    uspImunisasiBuat.Close;
//    uspImunisasiBuat.Transaction.CommitRetaining;
  finally
    uqImunisasi_pv.Close;
    uqImunisasi_pv.ParamByName('tanggal').AsDate := uqKunjungan1.FieldByName('tanggal').AsDateTime;
    uqImunisasi_pv.ParamByName('nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
    uqImunisasi_pv.Open;
  end;

  end;
end;


procedure TForm1_pelayananRI.usai_tindakan;
begin
dtpTindakan.DateTime := Now;
dtpTindakanJam.DateTime := Now;
editICDX.Clear;
txt1.Caption := '';
memoTindakan.Clear;
end;

end.
