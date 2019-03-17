unit pasienLamau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, JvSplit,
  DynVarsEh, ImgList, ActnList, JvBaseDlg, JvProgressDialog;

type
  TForm1_pasienLama = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    panelUtama1: TJvPanel;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    panel02: TPanel;
    grid2: TDBGridEh;
    nav2: TJvDBNavigator;
    formStorage1: TJvFormStorage;
    actlst1: TActionList;
    actCariPasien: TAction;
    actTampilkan: TAction;
    actPrint: TAction;
    actClose: TAction;
    actLab: TAction;
    actDel: TAction;
    actLihatIndek: TAction;
    actRefresh: TAction;
    ilimages1: TImageList;
    JvPanel2: TJvPanel;
    JvBevel1: TJvBevel;
    btn_pasienAdd: TJvTransparentButton;
    btnClose: TJvTransparentButton;
    btnPrint: TJvTransparentButton;
    btnKunjunganDel: TJvTransparentButton;
    btnEditBpjs: TJvTransparentButton;
    btnRefresh: TJvTransparentButton;
    panel2: TPanel;
    dbtxt1: TDBText;
    label2: TLabel;
    editCari: TEdit;
    btnCari: TButton;
    labelEditNIK: TLabeledEdit;
    rg1: TRadioGroup;
    btnProsesSinkron: TButton;
    edit2: TEdit;
    dbeditMR: TDBEdit;
    memo2: TMemo;
    pb1: TJvProgressDialog;
    procedure FormShow(Sender: TObject);
    procedure nav2Click(Sender: TObject; Button: TNavigateBtn);
    procedure grid1Exit(Sender: TObject);
    procedure grid2Exit(Sender: TObject);
    procedure btn_jaminanClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actTampilkanExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actLihatIndekExecute(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure editCariKeyPress(Sender: TObject; var Key: Char);
    procedure rg1Click(Sender: TObject);
    procedure dbeditMRChange(Sender: TObject);
    procedure btnProsesSinkronClick(Sender: TObject);
  private
    { Private declarations }
    id_terakhir : string;
    procedure awal;
    procedure isi_pickList(aGrid : TDBGridEh; aKolom : Integer; aQuery : string; aField : String);
    procedure buka_data;
    procedure terakhir_dibuka;
    procedure update_penduduk;
    procedure eksekusi_sql(aSQL : string);
    procedure insert_capil_nik;
    procedure update_capil_nik;

    procedure update_capil_nik_mr(diproses : Boolean);
    function cek_capil_nik(aNik : string) : Boolean;
    procedure samakan_mr_penduduk_dg_capil(AutoMR : boolean);
  public
    { Public declarations }
  end;

var
  Form1_pasienLama: TForm1_pasienLama;

implementation

uses dmPasien, aau, aau111, cetakKartuBerobatU, pasien_sentuh_u;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pasienLama.actCloseExecute(Sender: TObject);
begin
grid2.SaveColumnsLayoutIni(form111.MyIni, name, True);

dataPasien.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

end;

procedure TForm1_pasienLama.actLihatIndekExecute(Sender: TObject);
var sql0, sql1, id_kk : string;
begin
try
    sql0 := 'update simpus2.kk set last_update = current_timestamp where idx = (select max(idx) from simpus2.kk)';
    sql1 := 'select id_kk from simpus2.kk where idx = (select max(idx) from simpus2.kk)';
with dataPasien do
begin
  unsqlProses.SQL.Clear;
  unsqlProses.SQL.Add(sql0);
  unsqlProses.Execute;

  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(sql1);
  qbuka.Open;

  id_kk := qbuka.FieldByName('id_kk').AsString;
  qbuka.Close;
end;
finally
  buka_data;
  dataPasien.qKK.Locate('id_kk', id_kk, []);
end;
end;

procedure TForm1_pasienLama.actPrintExecute(Sender: TObject);
begin
Form1_cetakKartuBerobat.ShowModal;
end;

procedure TForm1_pasienLama.actTampilkanExecute(Sender: TObject);
var sql0, sql1, dites : string;
begin
Form1_sentuhPasien.ShowModal;
if Form1_sentuhPasien.ModalResult = mrOk then
begin
    dites := '%'+UpperCase(Form1_sentuhPasien.labelEdit1.Text)+'%';
    sql0 := 'update simpus2.capil_nik set last_updated = current_timestamp where upper(nama_lengkap) like %s or upper(nama_ayah) like %s or upper(nama_kepala_keluarga) like %s';

    sql1 := Format(sql0, [QuotedStr(dites), QuotedStr(dites), QuotedStr(dites)]);

    with dataPasien do
    begin
      unsqlProses.SQL.Clear;
      unsqlProses.SQL.Add(sql1);
      unsqlProses.Execute;
    end;
    buka_data;
end;
end;

procedure TForm1_pasienLama.awal;
begin

grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
rg1.ItemIndex := 0;
edit2.Clear;
edit2.Visible := False;
editCari.Clear;
editCari.SetFocus;
dataPasien.uniQPasienLama.Close;
//buka_data;
end;

procedure TForm1_pasienLama.btnCariClick(Sender: TObject);
begin
buka_data;
end;

procedure TForm1_pasienLama.btnProsesSinkronClick(Sender: TObject);
begin
if dataPasien.uniQPasienLama.IsEmpty then
begin
  ShowMessage('Tidak ada Data Pasien Yang Dipilih');
  Exit;
end;

if Length(labelEditNIK.Text) < 6 then
begin
  ShowMessage('NIK Salah?');
  Exit;
end;
update_penduduk;
if cek_capil_nik(labelEditNIK.Text) then
        update_capil_nik else insert_capil_nik; 
ShowMessage('OK');
awal;
end;

procedure TForm1_pasienLama.btn_jaminanClick(Sender: TObject);
var sql0, sql1, dites : string;
begin
Form1_sentuhPasien.ShowModal;
if Form1_sentuhPasien.ModalResult = mrOk then
begin
    dites := '%'+UpperCase(Form1_sentuhPasien.labelEdit1.Text)+'%';
    sql0 := 'update simpus2.kk set last_update = current_timestamp where upper(id_kk) like %s or upper(kk) like %s';
    sql1 := Format(sql0, [QuotedStr(dites), QuotedStr(dites)]);

    with dataPasien do
    begin
      unsqlProses.SQL.Clear;
      unsqlProses.SQL.Add(sql1);
      unsqlProses.Execute;
    end;
    buka_data;
end;
end;

procedure TForm1_pasienLama.buka_data;
var StrCari : string;
begin
with dataPasien do
begin
  conn1.Connected := false;
  StrCari := '%'+ UpperCase(editCari.Text) + '%';
  uniQPasienLama.Close;
  uniQPasienLama.ParamByName('paramku').AsString := StrCari;
  uniQPasienLama.Open;

end;
//isi_pickList(grid2, 7, 'select status from simpus.m_kk_status', 'status');
end;

function TForm1_pasienLama.cek_capil_nik(aNik: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
sql0 := 'select nik from simpus2.capil_nik where nik = %s';
sql1 := Format(sql0, [QuotedStr(aNik)]);

with dataPasien do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(sql1);
  qbuka.Open;

  Result := not qbuka.IsEmpty;
  qbuka.Close;

end;
end;

procedure TForm1_pasienLama.dbeditMRChange(Sender: TObject);
begin
labelEditNIK.Text := dataPasien.uniQPasienLama.FieldByName('nik').AsString;
edit2.Text := dataPasien.uniQPasienLama.FieldByName('mr').AsString;
end;

procedure TForm1_pasienLama.editCariKeyPress(Sender: TObject; var Key: Char);
begin
if Key = Chr(13) then btnCari.Click;

end;

procedure TForm1_pasienLama.eksekusi_sql(aSQL: string);
begin
with dataPasien do
begin
  unsqlProses.SQL.Clear;
  unsqlProses.SQL.Add(aSQL);
  unsqlProses.Execute;
end;
end;

procedure TForm1_pasienLama.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pasienLama.grid1Exit(Sender: TObject);
begin
//if dataPasien.qKK.Active then nav1.BtnClick(nbRefresh);
end;

procedure TForm1_pasienLama.grid2Exit(Sender: TObject);
begin
//if dataPasien.qPasien.Active then nav2.BtnClick(nbRefresh);
end;

procedure TForm1_pasienLama.insert_capil_nik;
var strX : string;
    AutoMR : Boolean;
begin
{
pb1.Show;
  if capil_akses_nik(labelEditNIK.Text, memo2.Lines ) then
  begin
   strX := capil_insert_nik(memo2.Lines);
   if Length(strX) > 1 then
   begin
      eksekusi_sql(strX);
      AutoMR := rg1.ItemIndex = 0;
      update_capil_nik_mr(not AutoMR);
      samakan_mr_penduduk_dg_capil(AutoMR);
   end else ShowMessage('Data NIK Tidak Ditemukan !');

  end else ShowMessage('Koneksi ke Server CAPIL gagal');
pb1.Hide;
}
end;

procedure TForm1_pasienLama.isi_pickList(aGrid: TDBGridEh; aKolom: Integer; aQuery,
  aField: String);
begin
with dataPasien do
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

procedure TForm1_pasienLama.nav2Click(Sender: TObject; Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid2.Options := grid2.Options + [dgEditing] - [dgRowSelect];
  grid2.SetFocus;
//  ShowMessage('tes');
end;

if Button = nbRefresh then
begin
  apv := dataPasien.qKK.FieldByName('id_kk').AsString;
  pv := dataPasien.qPasien.FieldByName('mr').AsString;
  grid2.Options := grid2.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataPasien.qKK.Locate('id_kk', apv, []);
  dataPasien.qPasien.Locate('mr', pv, []);
//  ShowMessage('e');
end;

end;

procedure TForm1_pasienLama.rg1Click(Sender: TObject);
begin
edit2.Visible := rg1.ItemIndex = 1;
end;

procedure TForm1_pasienLama.samakan_mr_penduduk_dg_capil(AutoMR : Boolean);
var sql0, sql1, strMR : string;
begin
// ini untuk auto;
if autoMR then
begin
sql0 := 'select mr from simpus2.capil_nik where nik = %s';
sql1 := Format(sql0, [QuotedStr(labelEditNIK.Text)]);

with dataPasien do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(sql1);
  qbuka.Open;

  strMR := qbuka.FieldByName('mr').AsString;
  qbuka.Close;

//  ShowMessage(strMR);
sql0 := 'update simpus2.penduduk set mr = %s where nik = %s';
sql1 := Format(sql0, [QuotedStr(strMR), QuotedStr(labelEditNIK.Text)]);

//ShowMessage(sql1);
unsqlProses.SQL.Clear;
unsqlProses.SQL.Add(sql1);
unsqlProses.Execute;

// menghapus data penduduk yang nik dan mr sama dengan capil_nik
sql0 := 'delete from simpus2.penduduk where mr = %s and nik = %s';
sql1 := Format(sql0, [QuotedStr(strMR), QuotedStr(labelEditNIK.Text)]);

//ShowMessage(sql1);
unsqlProses.SQL.Clear;
unsqlProses.SQL.Add(sql1);
unsqlProses.Execute;

end;
end;

end;

procedure TForm1_pasienLama.terakhir_dibuka;
var sql0 : string;
begin
{
sql0 := 'select id_kk from simpus2.kk where last_update = (select max(last_update) from simpus2.kk limit 1)';
with dataPasien do
begin
   qbuka.Close;
   qbuka.SQL.Clear;
   qbuka.SQL.Add(sql0);
   qbuka.Open;

   id_terakhir := qbuka.FieldByName('id_kk').AsString;
   qbuka.Close;

   qKK.Locate('id_kk', id_terakhir, []);
end;
}
end;

procedure TForm1_pasienLama.update_capil_nik;
var str0, strNIK, strMR, strX : string;
begin
{
strNIK := labelEditNIK.Text;
strMR := dbeditMR.Text;

update_capil_nik_mr(rg1.ItemIndex = 1);

pb1.Show;
  if capil_akses_nik(strNIK, memo2.Lines ) then
  begin
   strX := capil_update_nik(strMR, memo2.Lines);
   if Length(strX) > 1 then
   begin
     //  memo2.Lines.Add(strX);
       eksekusi_sql(strX);
   end else ShowMessage('Data NIK Tidak Ditemukan !');

  end else ShowMessage('Koneksi ke Server CAPIL gagal');

  pb1.Hide;
}  
end;


procedure TForm1_pasienLama.update_capil_nik_mr(diproses : Boolean);
var sql0, sql1 : string;
begin
   if diproses then
   begin
   sql0 := 'update simpus2.capil_nik set mr = %s where nik = %s';
   sql1 := Format(sql0,[QuotedStr(edit2.Text), QuotedStr(labelEditNIK.Text)]);
   eksekusi_sql(sql1);
   end;
end;

procedure TForm1_pasienLama.update_penduduk;
var strMR, sql0, sql1 : string;
begin
strMR := dbeditMR.Text;
sql0 := 'update simpus2.penduduk set mr = %s, nik = %s where mr = %s';
sql1 := Format(sql0, [QuotedStr(edit2.Text), QuotedStr(labelEditNIK.Text), QuotedStr(strMR)]);
with dataPasien do
begin
  unsqlProses.SQL.Clear;
  unsqlProses.SQL.Add(sql1);
  unsqlProses.Execute;
end;
end;

end.
