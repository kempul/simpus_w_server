unit bpjsToolU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, JvSplit, JvCtrls, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, DB, JvRadioGroup,
  GridsEh, DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DBAxisGridsEh, DynVarsEh, ComCtrls, JvgPage, uLkJSON, MemDS, DBAccess, Uni,
  ImgList, ActnList, JvExComCtrls, JvComCtrls, bridgeClassU, JvBaseDlg,
  JvProgressDialog, JvDateTimePicker, JvFullColorSpaces, JvFullColorCtrls,
  JvColorBox, JvColorButton, JvExButtons, JvButtons, CheckLst, JvExCheckLst,
  JvCheckListBox, JvMemo;

type
  TBridge = BridgeTool;

  TForm1_bpjsTool = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
    JvFormStorage1: TJvFormStorage;
    JvTimer1: TJvTimer;
    uniQ1: TUniQuery;
    actlst1: TActionList;
    actCariPasien: TAction;
    actNew: TAction;
    actPrint: TAction;
    actClose: TAction;
    actLab: TAction;
    actDel: TAction;
    actProsesAll: TAction;
    actRefresh: TAction;
    images1: TImageList;
    JvPanel2: TJvPanel;
    JvBevel1: TJvBevel;
    btnProsesBPJS: TJvTransparentButton;
    JvTransparentButton1: TJvTransparentButton;
    btnPrint: TJvTransparentButton;
    btnKunjunganDel: TJvTransparentButton;
    btnEditBpjs: TJvTransparentButton;
    btnRefresh: TJvTransparentButton;
    btn2: TButton;
    pnl2: TPanel;
    pageControl2: TJvPageControl;
    tsObat: TTabSheet;
    tsTindakan: TTabSheet;
    tsDiagnostikPlus: TTabSheet;
    pnlParam: TPanel;
    pageControl3: TJvPageControl;
    tsData: TTabSheet;
    tsResponse: TTabSheet;
    memoResponse: TMemo;
    memoData: TMemo;
    pb1: TJvProgressDialog;
    pnl3: TPanel;
    dtp1: TJvDateTimePicker;
    pnl4: TPanel;
    gridKontrol: TDBGridEh;
    gridObat: TDBGridEh;
    gridMCU: TDBGridEh;
    gridTindakan: TDBGridEh;
    dbDTtanggal: TJvDBDateEdit;
    dbeditNomor: TDBEdit;
    tsKeterangan: TTabSheet;
    memoKeterangan: TJvMemo;
    pnl1: TPanel;
    btn1ObatHapus: TButton;
    pnl5: TPanel;
    pnl6: TPanel;
    btn1TindakanHapus: TButton;
    btn1MCUHapus: TButton;
    btnUpdate: TJvTransparentButton;
    actUpdate: TAction;
    btnMCUupdate: TButton;
    btnTindakanUpdate: TButton;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure JvSpinEdit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure pageControl1Change(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure btnProsesBPJSClick(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
    procedure actDelExecute(Sender: TObject);
    procedure actProsesAllExecute(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1ObatHapusClick(Sender: TObject);
    procedure btn1TindakanHapusClick(Sender: TObject);
    procedure btn1MCUHapusClick(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure btnMCUupdateClick(Sender: TObject);
    procedure btnTindakanUpdateClick(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : boolean;

    ABridge : TBridge;
    vNoUrut, vNoKunjungan, vKdObatSK, vkdRacikan, vkdTindakanSK, vKdMCU : string;
    vidx_obat, vidx_mcu, vidx_tindakan : Integer;

    procedure proses_pendaftaran;
    procedure proses_obat;
    procedure proses_tindakan;
    procedure proses_mcu;
    procedure proses_bpjs;
    function hapus_daftar : boolean;
    function hapus_kunjungan : Boolean;

    procedure hapus_daftarSQL;
    procedure hapus_kunjunganSQL;

    function ambil_response : Boolean;

   procedure awal;
    procedure buka_data;
    procedure update_obat_sk;
    procedure update_tindakan_sk;
  public
    { Public declarations }
  end;

var
  Form1_bpjsTool: TForm1_bpjsTool;


implementation

uses aau111, frxu, dmBPJS, aau, mybridge;

{$R *.dfm}

{ TForm1_satuan }



procedure TForm1_bpjsTool.actCloseExecute(Sender: TObject);
begin
gridKontrol.SaveColumnsLayoutIni(form111.MyIni, name, True);

gridObat.SaveColumnsLayoutIni(form111.MyIni, name, False);
gridTindakan.SaveColumnsLayoutIni(form111.MyIni, name, false);
gridMCU.SaveColumnsLayoutIni(form111.MyIni, name, false);
//gridKU.SaveColumnsLayoutIni(form111.MyIni, name, false);

databpjs.conn1.Connected:=False;

//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

end;

procedure TForm1_bpjsTool.actDelExecute(Sender: TObject);
begin

if MessageDlg('Data pada Aplikasi PCARE akan dihapus. Yakin?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
try
pb1.Max := 100;
pb1.Interval := 10;
pb1.Text := 'memulai negosiasi dengan pcare';
pb1.Show;
pb1.Position := pb1.Position + pb1.Interval;

if hapus_kunjungan then
begin
pb1.Text := 'menghapus data pelayanan';
pb1.Position := pb1.Position + pb1.Interval;

   if ambil_response then hapus_kunjunganSQL;
end else
if hapus_daftar then
begin
pb1.Text := 'menghapus data pendaftaran';
pb1.Position := pb1.Position + pb1.Interval;

   if ambil_response then hapus_daftarSQL;
end;
pb1.Hide;
finally
buka_data;
end;

end;
end;

procedure TForm1_bpjsTool.actNewExecute(Sender: TObject);
begin
if MessageDlg('Pastikan Pelayanan Terhadap Pasien Sudah Dientri. Proses BPJS?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
  try
  proses_bpjs;
  finally
    buka_data;
  end;
end;
end;

procedure TForm1_bpjsTool.actProsesAllExecute(Sender: TObject);
begin
try
with dataBPJS do
begin
  uqbpjs1.First;
  while not uqbpjs1.Eof do
  begin
  proses_bpjs;
  uqbpjs1.Next;
  end;
end;
finally
  buka_data;
end;
end;

procedure TForm1_bpjsTool.actRefreshExecute(Sender: TObject);
begin
buka_data;
ShowMessage('refresh');
end;


procedure TForm1_bpjsTool.actUpdateExecute(Sender: TObject);
begin
ABridge := TBridge.create;
try
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.buat_json_kunjungan_update(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);
  if memoData.Lines.Count > 0 then
     ABridge.put_kunjungan(memoData.Lines, memoResponse.Lines);
//    vNoUrut := ABridge.noUrut;

//  pb1.Text := 'Mendapatkan nomor urut = ' + vNoUrut;
  pb1.Position := pb1.Position + pb1.Interval;
finally
ABridge.Free;
end;
pb1.Hide;
end;

function TForm1_bpjsTool.ambil_response: Boolean;
var js, jsMeta : TlkJSONobject;
    strOK : string;
begin
   Result := False;
   try
   js := TlkJSON.ParseText(memoResponse.Text) as TlkJSONobject;
   jsMeta := js.FieldByIndex[1] as TlkJSONobject;
   strOK := jsMeta.getString('message');
   Result := strOK = 'OK';
   finally
     js.Free;
   end;
end;

procedure TForm1_bpjsTool.awal;
begin
dtp1.DateTime := Now;

gridKontrol.RestoreColumnsLayoutIni(form111.MyIni, Name, [crpColWidthsEh]);
gridObat.RestoreColumnsLayoutIni(form111.MyIni, Name, [crpColWidthsEh]);
gridTindakan.RestoreColumnsLayoutIni(form111.MyIni, Name, [crpColWidthsEh]);
gridMCU.RestoreColumnsLayoutIni(form111.MyIni, Name, [crpColWidthsEh]);
boleh_buka := false;
//set_periode;
buka_data;
end;

procedure TForm1_bpjsTool.btn1MCUHapusClick(Sender: TObject);
var vMCU, vKunjungan : string;
begin
if MessageDlg('Data Penunjang Diagnostik pada PCARE akan dihapus. Yakin?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

with dataBPJS do
begin
vMCU := uniQMCU.FieldByName('kd_mcu').AsString;
vKunjungan := uniQMCU.FieldByName('no_kunjungan').AsString;
pb1.Position := pb1.Position + pb1.Interval;
ABridge := TBridge.create;
if ABridge.delete_mcu(vMCU, vKunjungan, memoResponse.Lines) then
begin
  pb1.Position := pb1.Position + pb1.Interval;

  uniQMCU.Close;
  uniQMCU.Open;
pb1.Position := pb1.Position + pb1.Interval;

end else ShowMessage('koneksi gagal');
ABridge.Free;
end;
end;
pb1.Hide;
end;

procedure TForm1_bpjsTool.btn1ObatHapusClick(Sender: TObject);
var vObat, vKunjungan : string;
begin
if MessageDlg('Data Obat pada PCARE akan dihapus. Yakin?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

with dataBPJS do
begin
  pb1.Position := pb1.Position + pb1.Interval;

vObat := uniQObat.FieldByName('kd_obat_sk').AsString;
vKunjungan := uniQObat.FieldByName('no_kunjungan').AsString;
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
if ABridge.delete_obat(vObat, vKunjungan, memoResponse.Lines) then
begin
  pb1.Position := pb1.Position + pb1.Interval;
  uniQObat.Close;
  uniQObat.Open;
  pb1.Position := pb1.Position + pb1.Interval;
end else ShowMessage('koneksi gagal');
ABridge.Free;
end;
end;
pb1.Hide;
end;

procedure TForm1_bpjsTool.btn1TindakanHapusClick(Sender: TObject);
var vTindakan, vKunjungan : string;
begin
if MessageDlg('Data Tindakan pada PCARE akan dihapus. Yakin?', mtConfirmation, mbYesNo, 0, mbYes)= mrYes then
begin
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

with dataBPJS do
begin
vTindakan := uniQTindakan.FieldByName('kd_tindakan_sk').AsString;
vKunjungan := uniQTindakan.FieldByName('no_kunjungan').AsString;
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
if ABridge.delete_tindakan(vTindakan, vKunjungan, memoResponse.Lines) then
begin
  pb1.Position := pb1.Position + pb1.Interval;
  uniQTindakan.Close;
  uniQTindakan.Open;
  pb1.Position := pb1.Position + pb1.Interval;

end else ShowMessage('koneksi gagal');
ABridge.Free;
end;
end;
  pb1.Hide;
end;

procedure TForm1_bpjsTool.btn2Click(Sender: TObject);
begin
ABridge := TBridge.create;
  ABridge.buat_json_mcu(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);

  if ABridge.post_mcu(memoData.Lines, memoResponse.Lines) then
  begin
  ShowMessage('ok');
  ShowMessage(IntToStr(memoResponse.Lines.Count));
  end else ShowMessage('tidak true');
ABridge.Free;
end;

procedure TForm1_bpjsTool.btn3Click(Sender: TObject);
begin
{
  memoData.Lines.Clear;
  memoData.Lines.LoadFromFile('rujukan.json');
  memoOlah.Clear;
  js := TlkJSON.ParseText(memoData.Lines.Text) as TlkJSONobject;
    Rsp := js.Field['response']  as TlkJSONobject;
    str0 := Rsp.getString('noRujukan');
    memoOlah.Lines.Add('noRujukan='+ str0);
    str0 := Rsp.getString('nmPst');
    memoOlah.Lines.Add('nmPst=' + str0);
    str0 := Rsp.getString('nokaPst');
    memoOlah.Lines.Add('nokaPst=' + str0);
    str0 := Rsp.getString('tglLahir');
     dt := ubah_ke_datetime(str0);

    memoOlah.Lines.Add('tglLahir=' + str0);
    str0 := Rsp.getString('pisa');
    memoOlah.Lines.Add('pisa=' + str0);
    str0 := Rsp.getString('ketPisa');
    memoOlah.Lines.Add('ketPisa=' + str0);
    str0 := Rsp.getString('sex');
    memoOlah.Lines.Add('sex=' + str0);




      jsPPK := Rsp.Field['ppk'] as TlkJSONobject;
      str0 := jsPPK.getString('kdPPK');
      memoOlah.Lines.Add('kdPPK=' + str0);
      str0 := jsPPK.getString('nmPPK');
      memoOlah.Lines.Add('nmPPK=' + str0);

        jskc := jsPPK.Field['kc'] as TlkJSONobject;
        str0 := jskc.getString('nmKC');
        memoOlah.Lines.Add('nmKC=' + str0);
          jsdati := jskc.Field['dati'] as TlkJSONobject;
          str0 := jsdati.getString('kdDati');
          memoOlah.Lines.Add('kdDati=' + str0);
          str0 := jsdati.getString('nmDati');
          memoOlah.Lines.Add('nmDati=' + str0);

          jskr := jskc.Field['kdKR'] as TlkJSONobject;
          str0 := jskr.getString('nmKR');
          memoOlah.Lines.Add('nmKR=' + str0);
}
end;

procedure TForm1_bpjsTool.btnMCUupdateClick(Sender: TObject);
var vkd_mcu : Integer;
begin
vkd_mcu := dataBPJS.uniQMCU.FieldByName('kd_mcu').AsInteger;
if vkd_mcu > 0 then
begin
ABridge := TBridge.create;
try
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.buat_json_mcu_update(dbDTtanggal.Date, StrToInt(dbeditNomor.Text), vkd_mcu);
  memoData.Lines.Assign(ABridge.JsonSL);
  if memoData.Lines.Count > 0 then
     ABridge.put_mcu(memoData.Lines, memoResponse.Lines);
//    vNoUrut := ABridge.noUrut;

//  pb1.Text := 'Mendapatkan nomor urut = ' + vNoUrut;
  pb1.Position := pb1.Position + pb1.Interval;
finally
ABridge.Free;
end;
pb1.Hide;
end else ShowMessage('Data Lab belum pernah dikirim ke BPJS !');

end;

procedure TForm1_bpjsTool.btnProsesBPJSClick(Sender: TObject);
begin
ShowMessage('tes');
end;

procedure TForm1_bpjsTool.btnTindakanUpdateClick(Sender: TObject);
var vidx : Integer;
begin
ABridge := TBridge.create;
try
  pb1.Text := 'Mulai negosiasi dengan PCARE';
  pb1.Show;
  pb1.Position := 10;
  pb1.Position := pb1.Position + pb1.Interval;

  vidx := dataBPJS.uniQTindakan.FieldByName('idx').AsInteger;
  ABridge.buat_json_tindakan_update(dbDTtanggal.Date, StrToInt(dbeditNomor.Text), vidx);
  memoData.Lines.Assign(ABridge.JsonSL);
  if memoData.Lines.Count > 0 then
     ABridge.put_tindakan(memoData.Lines, memoResponse.Lines);
//    vNoUrut := ABridge.noUrut;

//  pb1.Text := 'Mendapatkan nomor urut = ' + vNoUrut;
  pb1.Position := pb1.Position + pb1.Interval;
finally
ABridge.Free;
end;
pb1.Hide;

end;

procedure TForm1_bpjsTool.btn_closeClick(Sender: TObject);
begin
gridKontrol.SaveColumnsLayoutIni(form111.MyIni, name, true);
gridObat.SaveColumnsLayoutIni(form111.MyIni, name, false);
gridTindakan.SaveColumnsLayoutIni(form111.MyIni, name, false);
gridMCU.SaveColumnsLayoutIni(form111.MyIni, name, false);
//grid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

databpjs.conn1.Connected:=False;

//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

end;


procedure TForm1_bpjsTool.buka_data;
begin
with dataBPJS do
begin
  uqbpjs1.Close;
  uqbpjs1.Prepare;
  uqbpjs1.ParamByName('vtgl').AsDate := dtp1.Date;
  uqbpjs1.Open;

  uniQObat.Close;
  uniQObat.Open;

  uniQMCU.Close;
  uniQMCU.Open;

  uniQTindakan.Close;
  uniQTindakan.Open;

end;
boleh_buka := True;
end;


procedure TForm1_bpjsTool.dtp1Change(Sender: TObject);
begin
if boleh_buka then  buka_data;

end;

procedure TForm1_bpjsTool.FormShow(Sender: TObject);
begin
awal;
end;


function TForm1_bpjsTool.hapus_daftar : Boolean;
var vKartu, vUrut : string;
begin
Result := False;
vKartu := dataBPJS.uqbpjs1.FieldByName('no_kartu').AsString;
vUrut := dataBPJS.uqbpjs1.FieldByName('no_urut').AsString;
if vUrut <> '0' then
begin
ABridge := TBridge.create;
try
Result := ABridge.delete_pendaftaran(vKartu, dbDTtanggal.Date, vUrut, memoResponse.Lines);
finally
  ABridge.Free;
end;
end;
end;

procedure TForm1_bpjsTool.hapus_daftarSQL;
begin
with dataBPJS do
begin
  unspDaftarHapus.Prepare;
  unspDaftarHapus.ParamByName('ip_tanggal').AsDate := dbDTtanggal.Date;
  unspDaftarHapus.ParamByName('ip_nomor').AsInteger := dbeditNomor.Field.AsInteger;
  unspDaftarHapus.ExecProc;
end;
end;

function TForm1_bpjsTool.hapus_kunjungan : Boolean;
var vKunjungan : string;
begin
Result := False;
vKunjungan := dataBPJS.uqbpjs1.FieldByName('no_kunjungan').AsString;
if Length(vKunjungan) > 0 then
begin
ABridge := TBridge.create;
try
Result := ABridge.delete_kunjungan(vKunjungan, memoResponse.Lines);
finally
  ABridge.Free;
end;
end;
end;

procedure TForm1_bpjsTool.hapus_kunjunganSQL;
begin
with dataBPJS do
begin
  unspKunjunganHapus.Prepare;
  unspKunjunganHapus.ParamByName('ip_tanggal').AsDate := dbDTtanggal.Date;
  unspKunjunganHapus.ParamByName('ip_nomor').AsInteger := dbeditNomor.Field.AsInteger;
  unspKunjunganHapus.ExecProc;
end;
end;

procedure TForm1_bpjsTool.JvComboBox1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_bpjsTool.JvSpinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;


procedure TForm1_bpjsTool.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin
{
if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.qsatuan.FieldByName('satuan').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataMaster.qsatuan.Locate('satuan', apv,[]);
end;
}

end;

procedure TForm1_bpjsTool.pageControl1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;



procedure TForm1_bpjsTool.pb1Progress(Sender: TObject; var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

procedure TForm1_bpjsTool.proses_bpjs;
begin

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

procedure TForm1_bpjsTool.proses_mcu;
begin
  pb1.Text := 'Mendaftarkan Penunjang Diagnostik';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try
  vidx_mcu := -1;
  repeat
  vidx_mcu := ABridge.buat_json_mcu(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);

  if vidx_mcu > 0 then
  begin
  pb1.Text := 'Meminta Kode Penunjang Diagnostik';
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.post_mcu(memoData.Lines, memoResponse.Lines);
  vkdMCU := ABridge.kdMCU;
  end;

  pb1.Text := 'Penunjang Diagnostik Selesai';
  pb1.Position := pb1.Position + pb1.Interval;
  until  vidx_mcu <= 0;

finally
  ABridge.Free;
end;


end;

procedure TForm1_bpjsTool.proses_obat;
begin
  pb1.Text := 'Mendaftarkan pemakaian obat';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try
  vidx_obat := -1;
  repeat
  vidx_obat := ABridge.buat_json_obat(dbDTtanggal.Date, dbeditNomor.Field.AsInteger);
  memoData.Lines.Assign(ABridge.JsonSL);
  if vidx_obat > 0 then
   begin
     ABridge.post_obat(memoData.Lines, memoResponse.Lines);
     vKdObatSK := ABridge.kdObatSK;
     pb1.Text := 'Mendapatkan nomor obat sk = ' + vKdObatSK;
     pb1.Position := pb1.Position + pb1.Interval;
     vkdRacikan := ABridge.kdRacikan;
   end;
  until vidx_obat <= 0;

finally
  ABridge.Free;
end;


end;

procedure TForm1_bpjsTool.proses_pendaftaran;
begin
ABridge := TBridge.create;
try
  pb1.Text := 'Meminta nomor urut pendaftaran';
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.buat_json_daftar(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);
  if memoData.Lines.Count > 0 then
     ABridge.post_pendaftaran(memoData.Lines, memoResponse.Lines);
    vNoUrut := ABridge.noUrut;

  pb1.Text := 'Mendapatkan nomor urut = ' + vNoUrut;
  pb1.Position := pb1.Position + pb1.Interval;

  pb1.Text := 'Meminta nomor kunjungan';;
  pb1.Position := pb1.Position + pb1.Interval;

  ABridge.buat_json_kunjungan(dbDTtanggal.Date, StrToInt(dbeditNomor.Text));
  memoData.Lines.Assign(ABridge.JsonSL);
  if memoData.Lines.Count > 0 then
           ABridge.post_kunjungan(memoData.Lines, memoResponse.Lines);

  vNoKunjungan := ABridge.noKunjungan;
  pb1.Text := 'Mendapatkan nomor kunjungan = ' + vNoKunjungan;
  pb1.Position := pb1.Position + pb1.Interval;

finally
ABridge.Free;
end;

end;

procedure TForm1_bpjsTool.proses_tindakan;
begin
  pb1.Text := 'Medaftarkan tindakan ';
  pb1.Position := pb1.Position + pb1.Interval;

ABridge := TBridge.create;
try

  vidx_tindakan := -1;
  repeat
  vidx_tindakan := ABridge.buat_json_tindakan(dbDTtanggal.Date, dbeditNomor.Field.AsInteger);
  memoData.Lines.Assign(ABridge.JsonSL);
  if vidx_tindakan > 0 then
  begin
  ABridge.post_tindakan(memoData.Lines, memoResponse.Lines);
  vkdTindakanSK := ABridge.kdTindakanSK;

  pb1.Text := 'Mendapatkan nomor tindakan = ' + vkdTindakanSK;
  pb1.Position := pb1.Position + pb1.Interval;
  end;
  until vidx_tindakan <= 0 ;

finally
  ABridge.Free;
end;


end;

procedure TForm1_bpjsTool.update_obat_sk;
begin

end;

procedure TForm1_bpjsTool.update_tindakan_sk;
begin

end;

end.


