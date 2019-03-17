unit KegiatanAddU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvExStdCtrls, JvCheckBox, Vcl.Buttons, JvExButtons, JvBitBtn,
  JvCombobox, Vcl.ExtCtrls;

type
  TForm1_prolanisKegiatanAdd = class(TForm)
    labelTanggal: TLabel;
    labelKelompok: TLabel;
    labelJnsKegiatan: TLabel;
    labelMateri: TLabel;
    labelPembicara: TLabel;
    labelLokasi: TLabel;
    labelKeterangan: TLabel;
    labelBiaya: TLabel;
    dtPicker1: TJvDateTimePicker;
    editMateri: TEdit;
    editPembicara: TEdit;
    editLokasi: TEdit;
    editKeterangan: TEdit;
    editBiaya: TJvCalcEdit;
    button1: TJvBitBtn;
    button2: TJvBitBtn;
    cbbJnsKegiatan: TJvComboBox;
    cbbKelompok: TJvComboBox;
    dbedit1club_id: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbKelompokChange(Sender: TObject);
    procedure cbbJnsKegiatanChange(Sender: TObject);
    procedure cbbKelompokKeyPress(Sender: TObject; var Key: Char);
    procedure dtPicker1KeyPress(Sender: TObject; var Key: Char);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    adaYangBelum : Integer;
    idKegiatan : string;
    boleh_buka : Boolean;
    procedure awal;
    procedure bersihkan_form;
    procedure buka_data;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure insert_kegiatan;
    procedure kirim_bpjs;
    procedure ambil_kegiatan_terakhir;


  public
    { Public declarations }
  end;

var
  Form1_prolanisKegiatanAdd: TForm1_prolanisKegiatanAdd;

implementation

{$R *.dfm}
     uses dmProlanis, brProlanisU;
{ TForm1 }

procedure TForm1_prolanisKegiatanAdd.ambil_kegiatan_terakhir;
begin
adaYangBelum := 0;
idKegiatan := '';
with dataProlanis do
begin
  fdQKegiatanTerakhir.Close;
  //fdQKegiatanTerakhir.ParamByName('kegiatan').AsString := labelKegiatan.Caption;
  fdQKegiatanTerakhir.Open();
  if not fdQKegiatanTerakhir.IsEmpty then
  begin
  adaYangBelum := fdQKegiatanTerakhir.FieldByName('jml').AsInteger;
  idKegiatan := fdQKegiatanTerakhir.FieldByName('id').AsString;
  end;

  fdQKegiatanTerakhir.Close;
end;

end;

procedure TForm1_prolanisKegiatanAdd.awal;
begin
boleh_buka := False;
with dataProlanis do
begin
  FDConnection1.Connected := False;
  fdQLUKelompok.Open();
  fdQLUJnsKegiatan.Open();
end;

  isi_combo(TComboBox(cbbKelompok), dataProlanis.fdQLUKelompok.SQL.Text, 'nm_program');
  isi_combo(TComboBox(cbbJnsKegiatan), dataProlanis.fdQLUJnsKegiatan.SQL.Text, 'nm_kegiatan');

  Caption := 'Tambah Kegiatan';
  bersihkan_form;

  boleh_buka := True;

  cbbKelompokChange(self);
  cbbJnsKegiatanChange(Self);
end;

procedure TForm1_prolanisKegiatanAdd.bersihkan_form;
begin
dtPicker1.DateTime := Now;
editMateri.Clear;
editBiaya.AsInteger := 0;
editLokasi.Clear;
editPembicara.Clear;
editKeterangan.Clear;
cbbKelompok.ItemIndex := 0;
cbbJnsKegiatan.ItemIndex := 0;

end;

procedure TForm1_prolanisKegiatanAdd.buka_data;
begin
end;

procedure TForm1_prolanisKegiatanAdd.button1Click(Sender: TObject);
begin
try
  insert_kegiatan;
  ShowMessage('insert');
finally
  kirim_bpjs;
end;
end;

procedure TForm1_prolanisKegiatanAdd.cbbJnsKegiatanChange(Sender: TObject);
begin
if boleh_buka then dataProlanis.fdQLUJnsKegiatan.Locate('nm_kegiatan', cbbJnsKegiatan.Items[cbbJnsKegiatan.ItemIndex]);
end;

procedure TForm1_prolanisKegiatanAdd.cbbKelompokChange(Sender: TObject);
begin
if boleh_buka then dataProlanis.fdQLUKelompok.Locate('nm_program', cbbKelompok.Items[cbbKelompok.ItemIndex]);

end;

procedure TForm1_prolanisKegiatanAdd.cbbKelompokKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = Char(13) then SelectNext(TWinControl(Sender), True, True );

end;

procedure TForm1_prolanisKegiatanAdd.dtPicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = Char(13) then SelectNext(TWinControl(Sender), True, True );
end;

procedure TForm1_prolanisKegiatanAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_prolanisKegiatanAdd.insert_kegiatan;
var
    sql0, sql1, tglStr : string;
begin
    with dataProlanis do
    begin
    DateTimeToString(tglStr, 'dd-MM-yyyy', dtPicker1.date);
    sql0 := 'INSERT INTO kelompok.kegiatan ("club_prol", "tgl_pelayanan", "kegiatan", "kelompok", "materi", "pembicara", "lokasi", "keterangan", "biaya", puskesmas) ' +
            'VALUES ( %s, %s, %s, %s, %s, %s, %s, %s, %s, 0);';

    sql1 := Format(sql0, [
              dbedit1club_id.Field.AsString,
              QuotedStr(tglStr),
              QuotedStr(fdQLUJnsKegiatan.FieldByName('nm_kegiatan').AsString),
              QuotedStr(fdQLUKelompok.FieldByName('nm_program').AsString),
              QuotedStr(editMateri.Text),
              QuotedStr(editPembicara.Text),
              QuotedStr(editLokasi.Text),
              QuotedStr(editKeterangan.Text),
              intToStr(editBiaya.AsInteger)
            ]);
    fdCmd1.Execute(sql1);
    end;

end;

procedure TForm1_prolanisKegiatanAdd.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataProlanis do
begin
  fdQBuka.Close;
  fdQBuka.SQL.Clear;
  fdQBuka.SQL.Add(aQuery);
  fdQBuka.Open;

  while not fdQBuka.Eof do
  begin
    aCombo.Items.Add(fdQBuka.FieldByName(aField).AsString);
    fdQBuka.Next;
  end;
  fdQBuka.Close;
  aCombo.ItemIndex := 0;

end;
end;

procedure TForm1_prolanisKegiatanAdd.kirim_bpjs;
var
    br0 : brProlanis;
begin
  ambil_kegiatan_terakhir;
  if (adaYangBelum > 0) and (Length(idKegiatan) > 0) then
  begin
  br0 := brProlanis.Create;
try
  br0.postKegiatan(idKegiatan);
finally
  br0.Free;
end;
  end;
end;

end.
