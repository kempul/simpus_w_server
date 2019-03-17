unit kirimonlineu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  JvToolEdit, Spin, JvCipher, JvZlibMultiple, JvComCtrls, JvSpecialProgress,
  ComCtrls, JvExComCtrls, JvStatusBar, JvMemo;

type
  TForm1_kirimOnline = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    panelUtama1: TJvPanel;
    JvPanel2: TJvPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvLabel2: TJvLabel;
    JvBevel1: TJvBevel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btn_mutasi: TJvTransparentButton;
    btn_cetak: TJvTransparentButton;
    btn_jaminan: TJvTransparentButton;
    btn_pakandikandang: TJvTransparentButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    formStorage1: TJvFormStorage;
    grpServer: TGroupBox;
    ipAddress1: TJvIPAddress;
    btnConnect: TButton;
    grpSendData: TGroupBox;
    spinEdit1: TSpinEdit;
    cbb1: TJvComboBox;
    btnSendData: TButton;
    pb1: TJvSpecialProgress;
    memo1: TJvMemo;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spinEdit1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure client1Connected(Sender: TObject);
    procedure client1Disconnected(Sender: TObject);
    procedure client1ServerAccept(Sender: TObject);
    procedure client1ServerAcceptStream(Sender: TObject);
    procedure client1ServerNeedMoreData(Sender: TObject);
    procedure client1ServerReceivedStream(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnSendDataClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    DataM : TMemoryStream;
    strPuskesmas : string;
    strTahun, strBln : string;
    procedure set_periode;
    procedure awal;
    procedure buka_data;
    procedure buat_deleteAll;
    procedure buat_sql;
    procedure buat_puskesmas;
    procedure buat_kk;
    procedure buat_pasien;
    procedure buat_kunjungan;
    procedure buat_mr;
    procedure buat_tindakangigi;
    procedure buat_pulang;
    procedure buat_tt;

    function set_teks(aFieldName : string) : string;
    function set_integer(aFieldName : string) : string;
    function set_tanggal(aFieldName, aFormat : string): string;
    function set_blobTeks(aFieldName : string): string;

  public
    { Public declarations }
  end;

var
  Form1_kirimOnline: TForm1_kirimOnline;

implementation

uses dmMaster, aau, aau111;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_kirimOnline.awal;
begin
strPuskesmas := Form111.storageUmum.StoredValue['puskesmas'];
pb1.Visible := False;
btnSendData.Enabled := False;

set_periode;
end;

procedure TForm1_kirimOnline.btnConnectClick(Sender: TObject);
begin
{
client1.UserName := strPuskesmas;

if Client1.Connected then
        Client1.Connected:=False
      else
      begin
      Client1.Host:=ipAddress1.Text;
      Client1.Connected:=True;
      end;
}
end;

procedure TForm1_kirimOnline.btnSendDataClick(Sender: TObject);
var ts:TStrings;
    i : integer;
begin


buat_sql;
pb1.Position:=0;
pb1.Visible:=True;
DataM := TMemoryStream.Create;
memo1.Lines.SaveToStream(DataM);
DataM.Position := 0;
pb1.Maximum:=DataM.Size;
memo1.Clear;
//Client1.AskToReceiveStream(DataM.Size,'"Data Puskesmas ..."');
end;

procedure TForm1_kirimOnline.btn_closeClick(Sender: TObject);
begin

//if Client1.Connected then Client1.Connected:=False;

dataMaster.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_kirimOnline.buat_deleteAll;
var sqlAwal : string;
begin
//jvMemo1.Lines.Add('--delete all');

//pulang
//jvMemo1.Lines.Add('--delete pulang');
sqlAwal := 'delete from pasien_kunjungan_pulang where puskesmas='+QuotedStr(strPuskesmas) +
           ' and tahun = ' + strTahun +' and bulan = ' + strBln;

memo1.Lines.Add(sqlAwal+';');

//tindakangigi
//jvMemo1.Lines.Add('--delete tindakan gigi');
sqlAwal := 'delete from pasien_tindakangigi where puskesmas = ' + QuotedStr(strPuskesmas) +
           ' and tahun = ' + strTahun +' and bulan = ' + strBln;

Memo1.Lines.Add(sqlAwal+';');

//medical record
//jvMemo1.Lines.Add('--delete medical record');
sqlAwal := 'delete from pasien_mr where puskesmas='+QuotedStr(strPuskesmas) +
           ' and tahun = ' + strTahun +' and bulan = ' + strBln;

memo1.Lines.Add(sqlAwal+';');

//kunjungan
//jvMemo1.Lines.Add('--delete kunjungan');
sqlAwal := 'delete from pasien_kunjungan where puskesmas=' + QuotedStr(strPuskesmas) +
           ' and tahun = ' + strTahun +' and bulan = ' + strBln;

memo1.Lines.Add(sqlAwal+';');

end;

procedure TForm1_kirimOnline.buat_kk;
var
  I: integer;
  theDateStr : string;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_kk(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex +1;
uqbuka.Open;

sql0 := 'UPDATE OR INSERT INTO KK (PUSKESMAS, ID_KK, KK, ISTRI, ALAMAT, RT, RW, DESA, KOTA, TELPON, ID_HELPER, TS_ENTRI, PEKERJAAN)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_teks('id_kk')+', ';
sqlValue := sqlValue + set_teks('kk')+', ';
sqlValue := sqlValue + set_teks('istri')+', ';
sqlValue := sqlValue + set_teks('alamat')+', ';
sqlValue := sqlValue + set_teks('rt')+', ';
sqlValue := sqlValue + set_teks('rw')+', ';
sqlValue := sqlValue + set_teks('desa')+', ';
sqlValue := sqlValue + set_teks('kota')+', ';
sqlValue := sqlValue + set_teks('telpon')+', ';
sqlValue := sqlValue + set_integer('id_helper')+', ';
sqlValue := sqlValue + set_tanggal('ts_entri', 'yyyy-MM-dd hh:mm:ss')+', ';
sqlValue := sqlValue + set_teks('pekerjaan');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_kunjungan;
var
  I: integer;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_kunjungan(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
uqbuka.Open;


sql0 := 'INSERT INTO PASIEN_KUNJUNGAN (PUSKESMAS, TANGGAL, NOMOR, MR, BIAYA, DATANG_RUJUKAN, DATANG_SEBAB, POLI_TUJUAN, JAM, TANGGAL_LAHIR, KELOMPOK_UMUR, LAMA, JENIS_DATA, SDH_PULANG, PULANG_TANGGAL)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_tanggal('tanggal','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('nomor')+', ';
sqlValue := sqlValue + set_teks('mr')+', ';
sqlValue := sqlValue + set_integer('biaya')+', ';
sqlValue := sqlValue + set_integer('datang_rujukan')+', ';
sqlValue := sqlValue + set_integer('datang_sebab')+', ';
sqlValue := sqlValue + set_integer('poli_tujuan')+', ';
sqlValue := sqlValue + set_tanggal('jam', 'hh:nn:ss')+', ';
sqlValue := sqlValue + set_tanggal('tanggal_lahir', 'yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('kelompok_umur')+', ';
sqlValue := sqlValue + set_integer('lama')+', ';
sqlValue := sqlValue + set_integer('jenis_data')+', ';
sqlValue := sqlValue + set_integer('sdh_pulang')+', ';
sqlValue := sqlValue + set_tanggal('pulang_tanggal', 'yyyy-MM-dd');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_mr;
var
  I: integer;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_mr(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
uqbuka.Open;

sql0 := 'INSERT INTO PASIEN_MR (PUSKESMAS, TANGGAL, NOMOR, MR, TANGGAL_DIAGNOSA, JAM_DIAGNOSA, ANAMNESE, TINDAKAN, DOKTER, PENYAKIT, ADL_BARU, IDX_DIAG)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_tanggal('tanggal','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('nomor')+', ';
sqlValue := sqlValue + set_teks('mr')+', ';
sqlValue := sqlValue + set_tanggal('tanggal_diagnosa','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_tanggal('jam_diagnosa','hh:nn:ss')+', ';
sqlValue := sqlValue + set_blobTeks('anamnese')+', ';
sqlValue := sqlValue + set_blobTeks('tindakan')+', ';
sqlValue := sqlValue + set_teks('dokter')+', ';
sqlValue := sqlValue + set_teks('penyakit')+', ';
sqlValue := sqlValue + set_integer('adl_baru')+', ';
sqlValue := sqlValue + set_integer('idx_diag');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_pasien;
var
  I: integer;
  theDateStr : string;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_pasien(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
uqbuka.Open;

sql0 := 'UPDATE OR INSERT INTO PASIEN (PUSKESMAS, MR, KK, NAMA, JENIS_KELAMIN, TEMPAT_LAHIR, TANGGAL_LAHIR, STATUS, KK_STATUS, MR_STATUS, STATUS_KE, STATUS_TEKS)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_teks('mr')+', ';
sqlValue := sqlValue + set_teks('kk')+', ';
sqlValue := sqlValue + set_teks('nama')+', ';
sqlValue := sqlValue + set_teks('jenis_kelamin')+', ';
sqlValue := sqlValue + set_teks('tempat_lahir')+', ';
sqlValue := sqlValue + set_tanggal('tanggal_lahir', 'yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('status')+', ';
sqlValue := sqlValue + set_integer('kk_status')+', ';
sqlValue := sqlValue + set_teks('mr_status')+', ';
sqlValue := sqlValue + set_integer('status_ke')+', ';
sqlValue := sqlValue + set_teks('status_teks');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_pulang;
var
  I: integer;
  theDateStr : string;
  sql0, sql01, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_pulang(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
uqbuka.Open;


sql0 := 'INSERT INTO PASIEN_KUNJUNGAN_PULANG(PUSKESMAS,TANGGAL,NOMOR,MR,PULANG_TANGGAL,PULANG_SEBAB,KONTROL_HARUS,KONTROL_TANGGAL,KONTROL_POLI, ';
sql01:='DIRUJUK_KE,PAKSA_TANGGAL_PERNYATAAN,PAKSA_TINDAKAN_DITOLAK,PAKSA_ADA_PERNYATAAN,PINDAH_RS,MENINGGAL_TANGGAL,MENINGGAL_JAM,MENINGGAL_SEBAB,MENINGGAL_OTOPSI,MENINGGAL_OTOPSI_HASIL,TS) ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_tanggal('tanggal','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('nomor')+', ';
sqlValue := sqlValue + set_teks('mr')+', ';
sqlValue := sqlValue + set_tanggal('pulang_tanggal','yyyy-MM-dd hh:mm:ss')+', ';
sqlValue := sqlValue + set_integer('pulang_sebab')+', ';
sqlValue := sqlValue + set_integer('kontrol_harus')+', ';
sqlValue := sqlValue + set_tanggal('kontrol_tanggal', 'yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('kontrol_poli')+', ';
sqlValue := sqlValue + set_teks('dirujuk_ke')+', ';
sqlValue := sqlValue + set_tanggal('paksa_tanggal_pernyataan', 'yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_teks('paksa_tindakan_ditolak')+', ';
sqlValue := sqlValue + set_integer('paksa_ada_pernyataan')+', ';
sqlValue := sqlValue + set_teks('pindah_rs')+', ';
sqlValue := sqlValue + set_tanggal('meninggal_tanggal', 'yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_tanggal('meninggal_jam', 'hh:mm:ss')+', ';
sqlValue := sqlValue + quotedStr(uqbuka.FieldByName('meninggal_sebab').AsString)+', ';
sqlValue := sqlValue + IntToStr(uqbuka.FieldByName('meninggal_otopsi').AsInteger)+', ';
sqlValue := sqlValue + quotedStr(uqbuka.FieldByName('meninggal_otopsi_hasil').AsString)+', ';
sqlValue := sqlValue + set_tanggal('ts', 'yyyy-MM-dd hh:nn:ss');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql01 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_puskesmas;
var
  I: integer;
  theDateStr : string;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from puskesmas where adl_aktif=1');
uqbuka.Open;

sql0 := 'UPDATE OR INSERT INTO PUSKESMAS (ID_PUSKESMAS, NAMA, DESA, KECAMATAN, KOTA, PROP, ADL_AKTIF)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('id_puskesmas')+', ';
sqlValue := sqlValue + set_teks('nama')+', ';
sqlValue := sqlValue + set_teks('desa')+', ';
sqlValue := sqlValue + set_teks('kecamatan')+', ';
sqlValue := sqlValue + set_teks('kota')+', ';
sqlValue := sqlValue + set_teks('prop')+', ';
sqlValue := sqlValue + '0 ';

sql1 :=format('values ( %s )', [sqlvalue]);

Memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_sql;
var fName, fzName : string;
begin
//   if Length(strBln)= 1 then strBln := '0'+ strBln;


//   fname := strTahun + strBln + '-' + strPuskesmas + '.pus';

//   try
//     sl:=TStringList.Create;
     Memo1.Clear;

    with dataMaster do
    begin
       conn1.Connected := false;
       conn1.Connected := True;
       uqEksportLaporan.Close;
       uqEksportLaporan.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
       uqEksportLaporan.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
       uqEksportLaporan.Open;
       while not uqEksportLaporan.Eof do
       begin
         memo1.Lines.Add(uqEksportLaporan.FieldByName('op_sql').AsString);
         uqEksportLaporan.Next
       end;
       uqEksportLaporan.Close;
       conn1.Connected := False;
    end;
     //create_kunjunganSQL;
     //create_kesakitanSQL;
     //create_rawatInapSQL;


  //   memo1.Lines.SaveToFile(dirEdit1.Directory+'\'+fname);
  //   cipher1.EncodeFile('15754', dirEdit1.Directory+'\'+fname);
//   finally
//     sl.Add(dirEdit1.Directory+'\'+fname);
//     fzName := dirEdit1.Directory+'\' + strTahun + strBln + '- ' + strPuskesmas + '.zpus';
//     zLib1.CompressFiles(sl, fzName);
//     sl.Free;

//     memo1.Clear;
//     memo1.Lines.Add('sql control --> OK');
//     showMessage('Data disimpan dg nama : '+ extractFileName(fzname)+ ' pada folder : '+ dirEdit1.Directory);
//     deleteFile(dirEdit1.Directory+'\'+fname);
//   end;
end;

procedure TForm1_kirimOnline.buat_tindakangigi;
var
  I: integer;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from eksport_tindakangigi(:ip_tahun, :ip_bulan)');
uqbuka.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
uqbuka.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
uqbuka.Open;


sql0 := 'INSERT INTO PASIEN_TINDAKANGIGI (PUSKESMAS, TANGGAL, NOMOR, MR, TGL_TINDAKAN, TINDAKAN, IDX)  ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_tanggal('tanggal','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('nomor')+', ';
sqlValue := sqlValue + set_teks('mr')+', ';
sqlValue := sqlValue + set_tanggal('tgl_tindakan','yyyy-MM-dd')+', ';
sqlValue := sqlValue + set_integer('tindakan')+', ';
sqlValue := sqlValue + set_integer('idx');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buat_tt;
var
  I: integer;
  theDateStr : string;
  sql0, sql1, sqlValue, sqlAwal : string;
begin

with dataMaster do
begin
uqbuka.Close;
uqbuka.SQL.Clear;
uqbuka.SQL.Add('select * from tt where puskesmas=(select id_puskesmas from puskesmas where adl_aktif=1)');
uqbuka.Open;


sql0 := 'UPDATE OR INSERT INTO TT (PUSKESMAS, JML) ';
while not uqbuka.Eof do
begin
sqlValue:='';
sqlValue := sqlValue + set_teks('puskesmas')+', ';
sqlValue := sqlValue + set_integer('jml');

sql1 :=format('values ( %s )', [sqlvalue]);

memo1.Lines.Add(sql0 + sql1+';');
uqbuka.Next;
end;
uqbuka.Close;
end;
end;

procedure TForm1_kirimOnline.buka_data;
begin
with dataMaster do
begin
  conn1.Connected := false;
  uqPuskesmas.Open;
end;
end;

procedure TForm1_kirimOnline.cbb1Change(Sender: TObject);
begin
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);

end;

procedure TForm1_kirimOnline.client1Connected(Sender: TObject);
begin
btnSendData.Enabled:=True;
showMessage('Telah terhubung dengan server : ' + ipAddress1.Text);
btnConnect.Caption:='Disconnect';

end;

procedure TForm1_kirimOnline.client1Disconnected(Sender: TObject);
begin
btnSendData.Enabled:=False;;
showMessage('Koneksi server terputus');
btnConnect.Caption:='Connect';
if not btn_Close.Enabled then btn_Close.Enabled:=True;
end;

procedure TForm1_kirimOnline.client1ServerAccept(Sender: TObject);
begin
//  Client1.Send(PChar(form111.institusiR), Length(form111.institusiR));
end;

procedure TForm1_kirimOnline.client1ServerAcceptStream(Sender: TObject);
begin
  btn_Close.Enabled:=False;
  //Client1.SendStream(DataM, 10);
  pb1.Position:=0;
end;

procedure TForm1_kirimOnline.client1ServerNeedMoreData(Sender: TObject);
begin
//  Client1.SendStream(DataM,10);
  pb1.StepIt;
  Application.ProcessMessages;
end;

procedure TForm1_kirimOnline.client1ServerReceivedStream(Sender: TObject);
begin
  memo1.Clear;
  DataM.Free;
  pb1.Position:=0;
  pb1.Visible:=False;
  showMessage('kirim data sukses');
  btn_Close.Enabled:=True;
end;

procedure TForm1_kirimOnline.FormShow(Sender: TObject);
begin
awal;
end;

function TForm1_kirimOnline.set_blobTeks(aFieldName: string): string;
var theText: string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    begin
    theText := dataMaster.uqbuka.FieldByName(aFieldName).AsString;
    result:=quotedStr(theText);
    end;
end;

function TForm1_kirimOnline.set_integer(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=IntToStr(dataMaster.uqbuka.FieldByName(aFieldName).AsInteger);
end;

procedure TForm1_kirimOnline.set_periode;
var th, bl, tg  : Word;
begin
   DecodeDate(Now, th, bl, tg);
   spinEdit1.Value := th;

   cbb1.Clear;
   with dataMaster do
   begin
     uqbuka.Close;
     uqbuka.SQL.Clear;
     uqbuka.SQL.Add('select bulan from simpus2.m_bulan order by bln_id');
     uqbuka.Open;

     while not uqbuka.Eof do
     begin
       cbb1.Items.Add(uqbuka.FieldByName('bulan').AsString);
       uqbuka.Next;
     end;
     uqbuka.Close;
   end;
   cbb1.ItemIndex := bl -1;
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);
end;

function TForm1_kirimOnline.set_tanggal(aFieldName, aFormat: string): string;
var TheDateStr: string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
  begin
    DateTimeToString(TheDateStr, aFormat, dataMaster.uqbuka.FieldByName(aFieldName).AsDateTime);
    result:=quotedStr(TheDateStr);
  end;
end;

function TForm1_kirimOnline.set_teks(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=QuotedStr(dataMaster.uqbuka.FieldByName(aFieldName).AsString);
end;

procedure TForm1_kirimOnline.spinEdit1Change(Sender: TObject);
begin
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);
end;

end.
