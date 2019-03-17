unit pulangBantuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, ComCtrls, JvEdit,
  JvExComCtrls, JvDateTimePicker, JvCheckBox, JvComCtrls, ExtCtrls;

type
  TForm1_pulangBantu = class(TForm)
    grp1: TGroupBox;
    Label1: TLabel;
    cbbSebabPulang: TJvComboBox;
    pgc1: TJvPageControl;
    ts2: TTabSheet;
    grpPulangDirujuk: TGroupBox;
    ts5: TTabSheet;
    grpPulangMeninggal: TGroupBox;
    lbl19: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    editMeninggalSebab: TJvEdit;
    dtpMeninggalJam: TJvDateTimePicker;
    editMeninggalOtopsi: TJvEdit;
    dtpMeninggal: TJvDateTimePicker;
    cbb1: TComboBox;
    lblRS: TLabel;
    lblPoli: TLabel;
    cbbPoli: TComboBox;
    panel2: TPanel;
    btn2: TBitBtn;
    btn1: TBitBtn;
    lblPulang: TLabel;
    dtpPulang: TJvDateTimePicker;
    check1Inap: TCheckBox;
    check1BPJS: TCheckBox;
    grpTacc: TGroupBox;
    cbbTacc: TJvComboBox;
    labelAlasan: TLabel;
    editTacc: TEdit;
    label3: TLabel;
    dtpPulangJam: TJvDateTimePicker;
    ts1: TTabSheet;
    label4: TLabel;
    cbbPoliRujukInternal: TComboBox;
    labelIdxstr: TLabel;
    procedure cbbSebabPulangChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : Boolean;
    jsConfig : string;
    strTglPulang : string;
    idxstr : string;
    procedure ambil_konfig;
    procedure awal;
    procedure tampakkan_tab(indek : Integer);
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_pulang;

    procedure update_dirujuk(aStr : string);
    procedure update_internal(aStr : string);
    procedure update_meninggal(aStr : string);

    procedure simpan_pulang(statusPulang : string);
    procedure simpan_pulang_rawat_inap;
    procedure pulang_detil;
    procedure hapus_pulang;
    procedure simpan_pulang_all;
    procedure kirim_meninggal;


  public
    { Public declarations }

  end;

var
  Form1_pulangBantu: TForm1_pulangBantu;

implementation

uses dmpelayanan;//, SrvParallelU;

{$R *.dfm}

procedure TForm1_pulangBantu.ambil_konfig;
begin
end;

procedure TForm1_pulangBantu.awal;
begin
idxstr := labelIdxstr.Caption;
//dtpPulang.DateTime := Now;
dtpPulangJam.Time := Now;
boleh_buka := False;

//grideh1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);


kosongkan_pulang;
pgc1.ActivePageIndex := 0;
tampakkan_tab(0);

//buka_data;
end;

procedure TForm1_pulangBantu.btn1Click(Sender: TObject);
begin
simpan_pulang_all;
end;

procedure TForm1_pulangBantu.btn3Click(Sender: TObject);
var strPulang : string;
begin
dtpPulang.Time := dtpPulangJam.Time;
DateTimeToString(strPulang, 'dd/MM/yyyy hh:nn:ss', dtpPulang.DateTime);
ShowMessage(strPulang);
end;

procedure TForm1_pulangBantu.cbbSebabPulangChange(Sender: TObject);
begin
tampakkan_tab(cbbSebabPulang.ItemIndex);
end;

procedure TForm1_pulangBantu.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pulangBantu.hapus_pulang;
var sql0, sql1 : string;
begin
sql0 := 'delete from simpus.pulang where idxstr = %s;';
with dataPelayanan do
begin
  sql1 := format(sql0,[ QuotedStr(idxstr)]);
  fdCmd1.Execute(sql1);
end;
end;

procedure TForm1_pulangBantu.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataPelayanan do
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

procedure TForm1_pulangBantu.kirim_meninggal;
//var srv : SrvParallel;
begin
  {
   srv := SrvParallel.Create;
   try
     srv.meninggalPost(idxstr);
   finally
   srv.Free;
   end;
   }
end;

procedure TForm1_pulangBantu.kosongkan_pulang;
begin


if check1Inap.Checked then
      isi_combo(TComboBox(cbbSebabPulang), 'select nm_pulang from simpus.m_pulang where rawat_inap = true and nm_simpus != ''DIRUJUK'' order by kd_pulang', 'nm_pulang') else
      isi_combo(TComboBox(cbbSebabPulang), 'select nm_pulang from simpus.m_pulang where rawat_jalan = true and nm_simpus != ''DIRUJUK'' order by kd_pulang', 'nm_pulang');

cbbSebabPulang.ItemIndex := 0;
// dipulangkan

// dirujuk
isi_combo(TComboBox(cbb1), 'select nm_provider from simpus.provider order by upper(nm_provider)', 'nm_provider' );
isi_combo(TComboBox(cbbPoli), 'select nmpoli from simpus.poli_rujukan  order by upper(nmpoli)', 'nmpoli' );
isi_combo(TComboBox(cbbPoliRujukInternal), 'select poli from simpus.m_poli  order by upper(poli)', 'poli' );

//editDirujukKe.Clear;

//pulang paksa

// pulang pindah

// pulang meninggal
dtpMeninggal.Date := Now;
dtpMeninggalJam.Time := Now;
editMeninggalSebab.Clear;
editMeninggalOtopsi.Clear;


end;

procedure TForm1_pulangBantu.pulang_detil;
begin
if cbbSebabPulang.Text = 'Meninggal' then update_meninggal('');
if cbbSebabPulang.Text = 'Rujuk Lanjut' then update_dirujuk('');
if cbbSebabPulang.Text = 'Rujuk Internal' then update_internal('');

end;

procedure TForm1_pulangBantu.simpan_pulang(statusPulang: string);
var strPulang, sql0, sql1 : string;
   intKontrol : Integer;
begin
dtpPulang.Time := dtpPulangJam.Time;

DateTimeToString(strPulang, 'YYYY-MM-DD HH:NN:SS', dtpPulang.DateTime);
intKontrol := 0;
sql0 := 'insert into simpus.pulang(idxstr, pulang_tanggal, pulang_sebab) ' +
        'values(%s, %s, %s);';

with dataPelayanan do
begin
  sql1 := Format(sql0, [
    QuotedStr(labelIdxstr.Caption),
    QuotedStr(strPulang),
    QuotedStr(cbbSebabPulang.Items[cbbSebabPulang.ItemIndex])
    ]);
  fdCmd1.Execute(sql1);
end;

end;

procedure TForm1_pulangBantu.simpan_pulang_all;
begin
  try
    hapus_pulang;
//    ShowMessage('hapus pulang');
    simpan_pulang(cbbSebabPulang.Items[cbbSebabPulang.ItemIndex]);
//    ShowMessage('simpan');

    simpan_pulang_rawat_inap;
  finally
    pulang_detil;
//    ShowMessage('simpan detail');

  end;

end;

procedure TForm1_pulangBantu.simpan_pulang_rawat_inap;
begin
end;


procedure TForm1_pulangBantu.tampakkan_tab(indek: Integer);
var i : Integer;
begin
    pgc1.Visible := (
                    (cbbSebabPulang.Text = 'Meninggal') or
                    (cbbSebabPulang.Text = 'Rujuk Lanjut') or
                    (cbbSebabPulang.Text = 'Rujuk Internal'));
    pgc1.HideAllTabs := True;

    if cbbSebabPulang.Text = 'Meninggal' then pgc1.ActivePageIndex := 1;
    if cbbSebabPulang.Text = 'Rujuk Lanjut' then pgc1.ActivePageIndex := 0;
    if cbbSebabPulang.Text = 'Rujuk Internal' then pgc1.ActivePageIndex := 2;

    if ((cbbSebabPulang.Text = 'Rujuk Lanjut') and (grpTacc.Visible)) then ShowMessage('PERHATIAN, DIAGNOSA termasuk NON SPESIALIS');


end;


procedure TForm1_pulangBantu.update_dirujuk(aStr: string);
var sql0, sql1 : string;
begin
if grpTacc.Visible then
begin
sql0 := 'update simpus.pulang set provider_rujuk = %s, poli_rujuk = %s,  kd_tacc = %s, alasan_tacc = %s where idxstr = %s;';
sql1 := Format(sql0, [
        QuotedStr(cbb1.Items[cbb1.ItemIndex]),
        QuotedStr(cbbPoli.Items[cbbPoli.ItemIndex]),
        intTostr(cbbTacc.ItemIndex + 1),
        QuotedStr(editTacc.Text),
        QuotedStr(idxstr)
        ]);

end else
begin
sql0 := 'update simpus.pulang set provider_rujuk = %s, poli_rujuk = %s where idxstr = %s;';
sql1 := Format(sql0, [
        QuotedStr(cbb1.Items[cbb1.ItemIndex]),
        QuotedStr(cbbPoli.Items[cbbPoli.ItemIndex]),
        QuotedStr(idxstr)
        ]);
end;

dataPelayanan.fdCmd1.Execute(sql1);
end;

procedure TForm1_pulangBantu.update_meninggal(aStr: string);
var sql0, sql1, strTanggal : string;
begin
try
dtpMeninggal.Time := dtpMeninggalJam.Time;
DateTimeToString(strTanggal, 'YYYY-MM-DD HH:NN:SS', dtpMeninggal.DateTime);
sql0 := 'insert into simpus.pulang_meninggal(idxstr, tanggal_meninggal, sebab_meninggal, otopsi) '+
        'values(%s, %s, %s, %s);';
sql1 := Format(sql0, [
        QuotedStr(idxstr),
        QuotedStr(strTanggal),
        QuotedStr(editMeninggalSebab.Text),
        QuotedStr(editMeninggalOtopsi.Text)
        ]);
dataPelayanan.fdCmd1.Execute(sql1);
finally
  kirim_meninggal;
end;
end;


procedure TForm1_pulangBantu.update_internal(aStr: string);
var sql0, sql1 : string;
begin
sql0 := 'update simpus.pulang set pulang_sebab = ''Rujuk Internal'', poli_rujuk = %s where idxstr = %s;';
sql1 := Format(sql0, [
        QuotedStr(cbbPoliRujukInternal.Items[cbbPoliRujukInternal.ItemIndex]),
        QuotedStr(idxstr)
        ]);
dataPelayanan.fdCmd1.Execute(sql1);
end;

end.
