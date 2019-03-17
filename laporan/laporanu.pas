unit laporanu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  Spin, JvRadioGroup;

type
  TForm1_laporan = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    panelUtama1: TJvPanel;
    JvPanel2: TJvPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvLabel2: TJvLabel;
    JvBevel1: TJvBevel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btn_printTgl: TJvTransparentButton;
    btn_cetak: TJvTransparentButton;
    btn_jaminan: TJvTransparentButton;
    btnBuatLaporan: TJvTransparentButton;
    spinEdit1: TSpinEdit;
    cbb1: TJvComboBox;
    radioGrp1: TJvRadioGroup;
    panel2: TPanel;
    panel3: TPanel;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure spinEdit1Change(Sender: TObject);
    procedure btnBuatLaporanClick(Sender: TObject);
    procedure btn_printTglClick(Sender: TObject);
    procedure btn_jaminanClick(Sender: TObject);
  private
    { Private declarations }
    strTahun, strBln : string;
    procedure awal;
    procedure buka_data;
    procedure set_periode;
    procedure set_thblDummi;
    procedure buatLaporan;

    procedure cetakData;
    procedure cetak_dataKunjungan;
    procedure cetak_dataKunjunganHarian;
    procedure cetak_dataKunjunganLuar;
    procedure cetak_dataKesakitan;
    procedure cetak_gigi;
    procedure cetak_dataRawatInap;
    procedure cetak_10Besar;
    procedure cetak_poned;
    procedure cetak_rujukan;
    procedure eksekusi_procedure(nama_procedure : string);


  public
    { Public declarations }
  end;

var
  Form1_laporan: TForm1_laporan;

implementation

uses dmMaster, aau, aau111, frxu, rptKunjunganDlgU, rptKesakitanDlgU, tanggalRentangDlgU,
    bpjs_eksport_xls_u;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_laporan.awal;
begin
set_periode;
set_thblDummi;
end;

procedure TForm1_laporan.btnBuatLaporanClick(Sender: TObject);
begin
buatLaporan;
end;

procedure TForm1_laporan.btn_cetakClick(Sender: TObject);
begin
cetakData;
end;

procedure TForm1_laporan.btn_closeClick(Sender: TObject);
begin

Form1_frx.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_laporan.btn_jaminanClick(Sender: TObject);
begin
Form1_bpjsEkxportXLS.se1.Value := spinEdit1.Value;
Form1_bpjsEkxportXLS.se2.Value := cbb1.ItemIndex + 1;

Form1_bpjsEkxportXLS.ShowModal;
end;

procedure TForm1_laporan.btn_printTglClick(Sender: TObject);
begin
Form1_tglRentang.ShowModal;
if Form1_tglRentang.ModalResult = mrOk then
begin
with Form1_frx do
begin
{
  unsql1.CreateProcCall('simpus2.rpt_dummi_rentang_tgl_buat');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tanggal1').AsDate := Form1_tglRentang.dtp1.Date;
  unsql1.ParamByName('ip_tanggal2').AsDate := Form1_tglRentang.dtp2.Date;
  unsql1.ParamByName('ip_institusi').AsString := '';
  unsql1.ParamByName('ip_alamat').AsString := '';
  unsql1.Execute;

  unsql1.CreateProcCall('simpus2.eksport_kesakitan_tanggal');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tgl1').AsDate := Form1_tglRentang.dtp1.Date;
  unsql1.ParamByName('ip_tgl2').AsDate := Form1_tglRentang.dtp2.Date;
  unsql1.Execute;

  uniQTgl.Close;
  uniQKesakitan_tanggal.Close;


  frxReport1KesakitanTgl.ShowReport();
  }
  end;

end;
end;

procedure TForm1_laporan.buatLaporan;
begin
with Form1_frx do
begin
  // kunjungan
  {
  unsql1.CreateProcCall('simpus2.eksport_kunjungan_bulanan');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

  unsql1.CreateProcCall('simpus2.eksport_kunjungan_pustu');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

  // kesakitan
  unsql1.CreateProcCall('simpus2.eksport_kesakitan_bulanan');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

  unsql1.CreateProcCall('simpus2.eksport_kesakitan_pustu');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

   }

end;

end;

procedure TForm1_laporan.buka_data;
begin
with dataMaster do
begin
  //conn1.Connected := false;
  //uqPuskesmas.Open;
end;
end;

procedure TForm1_laporan.cbb1Change(Sender: TObject);
begin
set_thblDummi;
end;

procedure TForm1_laporan.cetakData;
begin
Form1_frx.FDConnection1.Connected := False;
set_thblDummi;
case radioGrp1.ItemIndex of
0 : cetak_dataKunjungan;
1 : cetak_dataKunjunganHarian;
2 : cetak_dataKunjunganLuar;
3 : cetak_dataKesakitan;
4 : cetak_gigi;
5 : cetak_dataRawatInap;
6 : cetak_10Besar;
7 : cetak_poned;
8 : cetak_rujukan;
end;
end;

procedure TForm1_laporan.cetak_10Besar;
begin
with form1_frx do
begin
  FDConnection1.Connected := false;
  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQBesar10.Close;
  fdQBesar10.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQBesar10.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQBesar10.Open;


  //q10Besar.Close;
  //q10Besar.Open;

  frxReport1_10Besar.ShowReport();

end;
end;

procedure TForm1_laporan.cetak_dataKesakitan;
var sql0 : string;
begin
//form1_cetakKesakitanDlg.ShowModal;
//if form1_cetakKesakitanDlg.ModalResult = mrOk then

with form1_frx do
begin
  FDConnection1.Connected := false;
  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQKesakitan.Close;
  fdQKesakitan.Prepare;
  fdQKesakitan.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQKesakitan.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQKesakitan.Open();

  frxReport1_kesakitan.ShowReport();

  {
  unsql1.CreateProcCall('simpus2.rpt_kesakitan_buat');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

  sql0 := 'select rpt.* from simpus2.rpt_kesakitan_view rpt order by icdx, biaya, kat, jenis_kelamin, kelompok_umur_idx';

  if form1_cetakKesakitanDlg.radioGroup1.ItemIndex = 1 then
  begin
  unsql1.CreateProcCall('simpus2.rpt_kesakitan_pustu_buat');
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;

  sql0 := 'select rpt.* from simpus2.rpt_kesakitan_plus_pustu_view rpt order by icdx, biaya, kat, jenis_kelamin, kelompok_umur_idx';
  end;

  qthblDummi.Close;
  qthblDummi.Open;

  qkesakitan.Close;
  qKesakitan.SQL.Clear;
  qKesakitan.SQL.Add(sql0);
  qkesakitan.Open;
  frxReport1_kesakitan.ShowReport();
   }
end;
end;

procedure TForm1_laporan.cetak_dataKunjungan;
var sql0 : string;
begin
//form1_cetakKunjunganDlg.ShowModal;
//if form1_cetakKunjunganDlg.ModalResult = mrOK then
with Form1_frx do
begin
  FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQKunjungan.Close;
  fdQKunjungan.Prepare;
  fdQKunjungan.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQKunjungan.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQKunjungan.Open();

  frxReport1_kunjungan.ShowReport();
  {
  uspKunjungan.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  uspKunjungan.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspKunjungan.ExecProc;
  uspKunjungan.Close;

  sql0 := 'select * from simpus2.rpt_kunjungan order by poli, biaya, kat, jenis_kelamin';


  if form1_cetakKunjunganDlg.radioGroup1.ItemIndex = 1 then
  begin
  uspKunjunganPlusPustu.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  uspkunjunganPlusPustu.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspkunjunganPlusPustu.ExecProc;
  uspKunjunganPlusPustu.Close;
  sql0 := 'select * from simpus2.rpt_kunjungan_pluspustu_view order by poli, biaya, kat, jenis_kelamin';

  end;

  qthblDummi.Close;
  qthblDummi.Open;

  qKunjungan.Close;
  qKunjungan.SQL.Clear;
  qKunjungan.SQL.Add(sql0);
  qKunjungan.Open;

  frxReport1_kunjungan.ShowReport();
}
end;
end;

procedure TForm1_laporan.cetak_dataKunjunganHarian;
begin
with form1_frx do
begin
    FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQKunjunganHarian.Close;
  fdQKunjunganHarian.Prepare;
  fdQKunjunganHarian.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQKunjunganHarian.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQKunjunganHarian.Open();

  frxReport1_kunjunganHarian.ShowReport();

  {
  uspKunjunganHarian.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  uspKunjunganHarian.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspKunjunganHarian.ExecProc;
  uspKunjunganHarian.Close;


  qkunjunganHarian.Close;
  qkunjunganHarian.Open;
  frxReport1_kunjunganHarian.ShowReport();
}
end;

end;

procedure TForm1_laporan.cetak_dataKunjunganLuar;
var sql0 : string;
begin
//form1_cetakKunjunganDlg.ShowModal;
//if form1_cetakKunjunganDlg.ModalResult = mrOK then
with Form1_frx do
begin
  FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQKunjunganLuar.Close;
  fdQKunjunganLuar.Prepare;
  fdQKunjunganLuar.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQKunjunganLuar.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQKunjunganLuar.Open();

  frxReport1_kunjunganLuar.ShowReport();
end;
end;

procedure TForm1_laporan.cetak_dataRawatInap;
begin
with form1_frx do
begin
  FDConnection1.Connected := false;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  try

   fdSpRI.StoredProcName := 'reporting.buat_rpt_rawat_inap';
   fdSpRI.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
   fdSpRI.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
   fdSpRI.ParamByName('ip_pkm').AsInteger := fdQPuskesmasThbl.FieldByName('kd_cabang').AsInteger;
   fdSpRI.ExecProc;



  //ShowMessage('tes');
  finally
  fdQRI.Close;
  fdQRI.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQRI.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQRI.Open();
 // ShowMessage('tes')

  end;
  frxReport1_rawatInap.ShowReport();

end;

end;

procedure TForm1_laporan.cetak_gigi;
begin
with form1_frx do
begin
    FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQTindakanGigi.Close;
  fdQTindakanGigi.Prepare;
  fdQTindakanGigi.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQTindakanGigi.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQTindakanGigi.Open();

  frxReport1_gigi.ShowReport();

  end;

end;

procedure TForm1_laporan.cetak_poned;
begin
with form1_frx do
begin
    FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQPoned.Close;
  fdQPoned.Prepare;
  fdQPoned.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQPoned.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPoned.Open();

  fdQImunisasi.Close;
  fdQImunisasi.Prepare;
  fdQImunisasi.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQImunisasi.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQImunisasi.Open();


  frxReport_poned.ShowReport();
end;

end;

procedure TForm1_laporan.cetak_rujukan;
begin
with Form1_frx do
begin
    FDConnection1.Connected := False;

  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQRujuk.Close;
  fdQRujuk.Prepare;
  fdQRujuk.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQRujuk.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQRujuk.Open();

  fdQRujukKePkm.Close;
  fdQRujukKePkm.Prepare;
  fdQRujukKePkm.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQRujukKePkm.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQRujukKePkm.Open();

  fdQRujukLengkap.Close;
  fdQRujukLengkap.Prepare;
  fdQRujukLengkap.ParamByName('tahun').AsInteger := spinEdit1.Value;
  fdQRujukLengkap.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQRujukLengkap.Open();


  frxReport_rujukan.ShowReport();

end;

end;
procedure TForm1_laporan.eksekusi_procedure(nama_procedure : string);
begin
with Form1_frx do
begin
  // kunjungan
  {
  unsql1.CreateProcCall(nama_procedure);
  unsql1.Prepare;
  unsql1.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  unsql1.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  unsql1.Execute;
  }
end;

end;

{
procedure TForm1_laporan.eksekusi_storedProc(aQuery: string);
begin
with Form1_frx do
begin
  qproses.SQL.Clear;
  qproses.SQL.Text := 'execute ' + aQuery;
  qproses.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  qproses.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex;
  qproses.Prepare;
  qproses.Execute;
end;
end;
}
procedure TForm1_laporan.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_laporan.set_periode;
var th, bl, tg  : Word;
begin
   DecodeDate(Now, th, bl, tg);
   spinEdit1.Value := th;
   cbb1.ItemIndex := bl - 1;
   //cbb1.Clear;
   with Form1_frx do
   begin
     {
     uqbuka.Close;
     uqbuka.SQL.Clear;
     uqbuka.SQL.Add('select bulan from simpus2.m_bulan order by bln_id');
     uqbuka.Open;
     uqbuka.First;

     while not uqbuka.Eof do
     begin
       cbb1.Items.Add(uqbuka.FieldByName('bulan').AsString);
       uqbuka.Next;
     end;
     uqbuka.Close;
     }
   end;
   cbb1.ItemIndex := bl -1;
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);
end;


procedure TForm1_laporan.set_thblDummi;
begin
with Form1_frx do
begin
  {
  uspThblDummi.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
  uspThblDummi.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspThblDummi.ExecProc;
  }
end;
end;

procedure TForm1_laporan.spinEdit1Change(Sender: TObject);
begin
set_thblDummi;
end;

end.
