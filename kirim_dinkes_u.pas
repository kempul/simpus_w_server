unit kirim_dinkes_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, JvTimer,
  JvExControls, JvSegmentedLEDDisplay, bantuUrlU;

type
  TForm1_kirim_dinkes = class(TForm)
    timer2: TJvTimer;
    timer1: TJvTimer;
    panel4: TPanel;
    jv7segment1: TJvSegmentedLEDDisplay;
    panel5: TPanel;
    panel2: TPanel;
    panel3: TPanel;
    pb1: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure timer2Timer(Sender: TObject);
    procedure timer1Timer(Sender: TObject);
  private
    { Private declarations }
    jml_data : Integer;
    vTgl : string;
    DateTimeAwal : TDateTime;
    function getDateForTest(strDate : string): TDate;

    procedure set_status(s0 : string; ke : integer);
    procedure prosesKirim(puskesmas: Integer; tanggal : TDate);
    procedure updateTanggalNik(puskesmas: Integer; tanggal : TDate);

    procedure kirimNik(puskesmas: Integer; tanggal: TDate);
    procedure kirimKunjungan(puskesmas: Integer; tanggal: TDate);
    procedure kirimFisik(puskesmas: Integer; tanggal: TDate);
    procedure kirimIcdx(tanggal: TDate);
    procedure kirimDiagnosa(tanggal: TDate);
    procedure kirimImunisasi(tanggal: TDate);
    procedure kirimPoned(tanggal: TDate);
    procedure kirimTindakan(tanggal: TDate);
    procedure kirimTindakangigi(tanggal: TDate);
    procedure kirimPulang(tanggal: TDate);
    procedure kirimMeninggal(tanggal: TDate);
    procedure kirimRawatinap(tanggal: TDate);
    procedure kirimKamarLog(tanggal: TDate);

  public
    { Public declarations }
  end;

var
  Form1_kirim_dinkes: TForm1_kirim_dinkes;

implementation

{$R *.dfm}
         uses SynCommons, dm_kirim_dinkes, srvCommonsU, srvPasienU, srvKunjunganU, srvFisikU, srvIcdxU
         , srvDiagnosaU, srvImunisasiU, srvPonedU, srvTindakanU, srvTindakangigiU
         , srvPulangU, srvMeninggalU, srvRawatinapU, srvKamarU
         ;
{ TForm1_kirim_dinkes }

procedure TForm1_kirim_dinkes.FormShow(Sender: TObject);
begin
timer1.Enabled := True;
end;

function TForm1_kirim_dinkes.getDateForTest(strDate: string): TDate;
begin
Result := StrToDateDef(strDate, now);
end;

procedure TForm1_kirim_dinkes.kirimDiagnosa(tanggal: TDate);
var
    srv : srvDiagnosa;
    id_diag : string;
    ke : Integer;
begin
 //  dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQDiagnosaCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQDiagnosaCount.ParamByName('tanggal').AsDate := tanggal;
     fdQDiagnosaCount.Open();

     jml_data := fdQDiagnosaCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Diagnosa ... ', 0);


     fdQDiagnosa.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQDiagnosa.ParamByName('tanggal').AsDate := tanggal;
     fdQDiagnosa.Open();

     while not fdQDiagnosa.Eof do
     begin
       srv := srvDiagnosa.Create;
     try
       id_diag := fdQDiagnosa.FieldByName('id_diag').AsString;
       srv.postDiagnosa(id_diag);
       inc(ke);
       set_status('Mengirim data Diagnosa', ke);
       finally
       srv.Free;
     end;
       fdQDiagnosa.Next;
     end;


     fdQDiagnosa.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimFisik(puskesmas: Integer; tanggal: TDate);
 var
    srv : srvFisik;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
//   updateTanggalNik(puskesmas, tanggal);
   pb1.Position:= 0;
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQFisikCount.Close;
     fdQFisikCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQFisikCount.ParamByName('tanggal').AsDate := tanggal;
     fdQFisikCount.Open();

     jml_data := fdQFisikCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data pemeriksaan fisik ... ', 0);


     fdQFisik.Close;
     fdQFisik.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQFisik.ParamByName('tanggal').AsDate := tanggal;
     fdQFisik.Open();

     while not fdQFisik.Eof do
     begin
       srv := srvFisik.Create;
     try
       idxstr := fdQFisik.FieldByName('idxstr').AsString;
       srv.postFisik(idxstr);

       inc(ke);
       set_status('Mengirim data fisik', ke);
       finally
       srv.Free;
       end;
       fdQFisik.Next;
     end;
     fdQFisik.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimIcdx(tanggal: TDate);
var
    srv : srvIcdx;
    kd_diag : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQIcdxCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQIcdxCount.ParamByName('tanggal').AsDate := tanggal;
     fdQIcdxCount.Open();

     jml_data := fdQIcdxCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data icd-x ... ', 0);

     fdQIcdx.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQIcdx.ParamByName('tanggal').AsDate := tanggal;
     fdQIcdx.Open();

     while not fdQIcdx.Eof do
     begin
     srv := srvIcdx.Create;
     try
       kd_diag := fdQIcdx.FieldByName('kd_diag').AsString;
       srv.postIcdx(kd_diag);
       inc(ke);
       set_status('Mengirim data icd-x', ke);
     finally
       srv.Free;
     end;

       fdQIcdx.Next;
     end;

     fdQIcdx.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimImunisasi(tanggal: TDate);
var
    srv : srvImunisasi;
    id : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQImunisasiCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQImunisasiCount.ParamByName('tanggal').AsDate := tanggal;
     fdQImunisasiCount.Open();

     jml_data := fdQImunisasiCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Imunisasi ... ', 0);

     fdQImunisasi.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQImunisasi.ParamByName('tanggal').AsDate := tanggal;
     fdQImunisasi.Open();

     while not fdQImunisasi.Eof do
     begin
     srv := srvImunisasi.Create;
     try
       id := fdQImunisasi.FieldByName('id').AsString;
       srv.postImunisasi(id);
       inc(ke);
       set_status('Mengirim data Imunisasi', ke);
     finally
       srv.Free;
     end;

       fdQImunisasi.Next;
     end;

     fdQImunisasi.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimKamarLog(tanggal: TDate);
var
    srv : srvKamar;
    id : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQKamarlogCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     //fdQMeninggalCount.ParamByName('tanggal').AsDate := tanggal;
     fdQKamarlogCount.Open();

     jml_data := fdQKamarlogCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Kamar Rawat Inap ... ', 0);

     fdQKamarlog.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
    // fdQPulang.ParamByName('tanggal').AsDate := tanggal;
     fdQKamarlog.Open();

     while not fdQKamarlog.Eof do
     begin
     srv := srvKamar.Create;
     try
       id := fdQKamarlog.FieldByName('id').AsString;
       srv.postKamarlog(id);
       inc(ke);
       set_status('Mengirim data Kamar Rawat Inap', ke);
     finally
       srv.Free;
     end;

       fdQKamarlog.Next;
     end;

     fdQKamarlog.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimKunjungan(puskesmas: Integer;
  tanggal: TDate);
var
    srv : srvKunjungan;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
//   updateTanggalNik(puskesmas, tanggal);
   pb1.Position:= 0;
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQKunjunganCount.Close;
     fdQKunjunganCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQKunjunganCount.ParamByName('tanggal').AsDate := tanggal;
     fdQKunjunganCount.Open();

     jml_data := fdQKunjunganCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data kunjungan ... ', 0);

     fdQKunjungan.Close;
     fdQKunjungan.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQKunjungan.ParamByName('tanggal').AsDate := tanggal;
     fdQKunjungan.Open();

     while not fdQKunjungan.Eof do
     begin
     srv := srvKunjungan.Create;
     try
       idxstr := fdQKunjungan.FieldByName('idxstr').AsString;
       srv.postKunjungan(idxstr);

       inc(ke);
       set_status('Mengirim data kunjungan', ke);
     finally
       srv.Free;
     end;

       fdQKunjungan.Next;
     end;

     fdQKunjungan.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimMeninggal(tanggal: TDate);
var
    srv : srvMeninggal;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQMeninggalCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     //fdQMeninggalCount.ParamByName('tanggal').AsDate := tanggal;
     fdQMeninggalCount.Open();

     jml_data := fdQMeninggalCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Pasien Meninggal... ', 0);

     fdQMeninggal.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
    // fdQPulang.ParamByName('tanggal').AsDate := tanggal;
     fdQMeninggal.Open();

     while not fdQMeninggal.Eof do
     begin
     srv := srvMeninggal.Create;
     try
       idxstr := fdQMeninggal.FieldByName('idxstr').AsString;
       srv.postMeninggal(idxstr);
       inc(ke);
       set_status('Mengirim data Pasien Meninggal', ke);
     finally
       srv.Free;
     end;

       fdQMeninggal.Next;
     end;

     fdQMeninggal.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimNik(puskesmas: Integer; tanggal: TDate);
var
    srv : srvPasien;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQNikCount.Close;
    // fdQNikCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQNikCount.ParamByName('tanggal').AsDate := tanggal;
     fdQNikCount.Open();

     jml_data := fdQNikCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data pasien ... ', 0);

     fdQNik.Close;
     //fdQNik.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQNik.ParamByName('tanggal').AsDate := tanggal;
     fdQNik.Open();

     while not fdQNik.Eof do
     begin
     srv := srvPasien.Create;
     try
       idxstr := fdQNik.FieldByName('idxstr').AsString;
       srv.postPasienTunggal(idxstr);
       inc(ke);
       set_status('Mengirim data pasien', ke);
     finally
       srv.Free;
     end;

       fdQNik.Next;
     end;

     fdQNik.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimPoned(tanggal: TDate);
var
    srv : srvPoned;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQPonedCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQPonedCount.ParamByName('tanggal').AsDate := tanggal;
     fdQPonedCount.Open();

     jml_data := fdQPonedCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Poned ... ', 0);

     fdQPoned.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQPoned.ParamByName('tanggal').AsDate := tanggal;
     fdQPoned.Open();

     while not fdQPoned.Eof do
     begin
     srv := srvPoned.Create;
     try
       idxstr := fdQPoned.FieldByName('idxstr').AsString;
       srv.postPoned(idxstr);
       inc(ke);
       set_status('Mengirim data Poned', ke);
     finally
       srv.Free;
     end;

       fdQPoned.Next;
     end;

     fdQPoned.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimPulang(tanggal: TDate);
var
    srv : srvPulang;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQPulangCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQPulangCount.ParamByName('tanggal').AsDate := tanggal;
     fdQPulangCount.Open();

     jml_data := fdQPulangCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Kepulangan Pasien... ', 0);

     fdQPulang.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQPulang.ParamByName('tanggal').AsDate := tanggal;
     fdQPulang.Open();

     while not fdQPulang.Eof do
     begin
     srv := srvPulang.Create;
     try
       idxstr := fdQPulang.FieldByName('idxstr').AsString;
       srv.postPulang(idxstr);
       inc(ke);
       set_status('Mengirim data Kepulangan Pasien', ke);
     finally
       srv.Free;
     end;

       fdQPulang.Next;
     end;

     fdQPulang.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimRawatinap(tanggal: TDate);
var
    srv : srvRawatinap;
    idxstr : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQRawatinapCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQRawatinapCount.ParamByName('tanggal').AsDate := tanggal;
     fdQRawatinapCount.Open();

     jml_data := fdQRawatinapCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Rawat Inap / PONED ... ', 0);

     fdQRawatinap.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQRawatinap.ParamByName('tanggal').AsDate := tanggal;
     fdQRawatinap.Open();

     while not fdQRawatinap.Eof do
     begin
     srv := srvRawatinap.Create;
     try
       idxstr := fdQRawatinap.FieldByName('idxstr').AsString;
       srv.postRawatinap(idxstr);
       inc(ke);
       set_status('Mengirim data Rawatinap / PONED', ke);
     finally
       srv.Free;
     end;

       fdQRawatinap.Next;
     end;

     fdQRawatinap.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimTindakan(tanggal: TDate);
var
    srv : srvTindakan;
    id_tindakan : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQTindakanCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQTindakanCount.ParamByName('tanggal').AsDate := tanggal;
     fdQTindakanCount.Open();

     jml_data := fdQTindakanCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Tindakan ... ', 0);

     fdQTindakan.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQTindakan.ParamByName('tanggal').AsDate := tanggal;
     fdQTindakan.Open();

     while not fdQTindakan.Eof do
     begin
     srv := srvTindakan.Create;
     try
       id_tindakan := fdQTindakan.FieldByName('id_tindakan').AsString;
       srv.postTindakan(id_tindakan);
       inc(ke);
       set_status('Mengirim data Tindakan', ke);
     finally
       srv.Free;
     end;

       fdQTindakan.Next;
     end;

     fdQTindakan.Close;
   end;
end;

procedure TForm1_kirim_dinkes.kirimTindakangigi(tanggal: TDate);
var
    srv : srvTindakangigi;
    id_tindakangigi : string;
    ke : Integer;
begin
//dataKirimDinkes.FDConnection1.Close;
   pb1.Position:= 0;
//   updateTanggalNik(puskesmas, tanggal);
   with dataKirimDinkes do
   begin
     ke := 0;
     fdQTindakangigiCount.Close;
    // fdQIcdxCount.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQTindakangigiCount.ParamByName('tanggal').AsDate := tanggal;
     fdQTindakangigiCount.Open();

     jml_data := fdQTindakangigiCount.FieldByName('jml').AsInteger;
     pb1.Max := jml_data + 3;

     set_status('Mengirim data Tindakan Gigi... ', 0);

     fdQTindakangigi.Close;
   //  fdQIcdx.ParamByName('puskesmas').AsInteger := puskesmas;
     fdQTindakangigi.ParamByName('tanggal').AsDate := tanggal;
     fdQTindakangigi.Open();

     while not fdQTindakangigi.Eof do
     begin
     srv := srvTindakangigi.Create;
     try
       id_tindakangigi := fdQTindakangigi.FieldByName('id_tindakangigi').AsString;
       srv.postTindakangigi(id_tindakangigi);
       inc(ke);
       set_status('Mengirim data Tindakan Gigi', ke);
     finally
       srv.Free;
     end;

       fdQTindakangigi.Next;
     end;

     fdQTindakangigi.Close;
   end;
end;

procedure TForm1_kirim_dinkes.prosesKirim(puskesmas: Integer; tanggal : TDate);
begin

kirimNik( puskesmas, tanggal);

kirimKunjungan(puskesmas, tanggal);
kirimFisik(puskesmas, tanggal);
kirimIcdx(tanggal);
kirimDiagnosa(tanggal);
kirimImunisasi(tanggal);
kirimPoned(tanggal);
kirimTindakan(tanggal);
kirimTindakangigi(tanggal);
kirimPulang(tanggal);
kirimMeninggal(tanggal);
kirimRawatinap(tanggal);
kirimKamarLog(tanggal);

Application.ProcessMessages;

end;

procedure TForm1_kirim_dinkes.set_status(s0: string; ke : integer);
begin
Caption := 'Mengirim Data tanggal : ' + vTgl;
panel2.Caption := 'status : ' + s0;
pb1.StepIt;
//Application.ProcessMessages;
panel3.Caption := 'data : ' + IntToStr(ke) + ' / ' + IntToStr(jml_data);
jv7segment1.Text := FormatDateTime('hh:nn:ss', Now - DateTimeAwal);

Application.ProcessMessages;
end;

procedure TForm1_kirim_dinkes.timer1Timer(Sender: TObject);
var
  vPkm, i : Integer;
  vDate : TDate;
  v1 : Variant;
  tglStr : string;
  srv : srvCommon;

begin
timer1.Enabled := False;

srv := srvCommon.Create;
try
if srv.checkUri(srv.Uribase) then
begin

DateTimeAwal := Now;

v1 := _Arr([]);
jml_data := 0;
with dataKirimDinkes do
begin
  fdQPuskesmas.Close;
  fdQPuskesmas.Open();
  vPkm := fdQPuskesmas.FieldByName('kd_cabang').AsInteger;
  fdQPuskesmas.Close;
  vTgl := DateToStr(now);
  prosesKirim(vPkm, now);

  fdQTanggal.Close;
  fdQTanggal.Open();
  while not fdQTanggal.Eof do
  begin
  vDate := fdQTanggal.FieldByName('tanggal').AsDateTime;
  v1.Add(DateToStr(vDate));
  fdQTanggal.Next;
  end;

  fdQTanggal.Close;

  for I := 0 to v1._count - 1 do
    begin
      vTgl := v1.value(i);
      vDate := StrToDate(vTgl);
      prosesKirim(vPkm, vDate);
    end;


end;
end else ShowMessage('Server Dinkes Tidak Aktif');
finally
  srv.Free;
end;
timer2.Enabled := True;

end;

procedure TForm1_kirim_dinkes.timer2Timer(Sender: TObject);
begin
timer2.Enabled := False;
Close;
end;

procedure TForm1_kirim_dinkes.updateTanggalNik(puskesmas: Integer;
  tanggal: TDate);
  var
    sql0, sql1, tglStr : string;
begin
{
dataKirimDinkes.FDConnection1.Close;
DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
with dataKirimDinkes do
begin
   sql0 := 'select capil.sentuh_capil_nik(%s, %s);';
   sql1 := Format(sql0, [intToStr(puskesmas), QuotedStr(tglStr)]);
   fdCmd1.CommandText.Clear;
   fdCmd1.CommandText.Add(sql1);
   fdCmd1.Open();
   fdCmd1.Close;
end;
}
end;

end.
