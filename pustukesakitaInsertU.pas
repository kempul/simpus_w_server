unit pustukesakitaInsertU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvExStdCtrls, JvEdit, Buttons, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm1_pustuKesakitan0 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    cbbBiaya: TComboBox;
    lbl2: TLabel;
    cbbKat: TComboBox;
    lbl3: TLabel;
    cbbKelamin: TComboBox;
    lbl4: TLabel;
    cbbUmur: TComboBox;
    lbl5: TLabel;
    btnICDX: TSpeedButton;
    editICDX: TJvEdit;
    lbl6: TLabel;
    editJml: TJvCalcEdit;
    btnSimpan: TButton;
    lblPenyakit: TLabel;
    pnl2: TPanel;
    grid2: TDBGridEh;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnICDXClick(Sender: TObject);
    procedure editICDXExit(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbBiayaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKelaminKeyPress(Sender: TObject; var Key: Char);
    procedure cbbUmurKeyPress(Sender: TObject; var Key: Char);
    procedure editICDXKeyPress(Sender: TObject; var Key: Char);
    procedure editJmlKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    procedure awal;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure simpan_data;

  public
    { Public declarations }
    tahun, bulan : Integer;
    bulanStr, pustu : string;
  end;

var
  Form1_pustuKesakitan0: TForm1_pustuKesakitan0;

implementation

uses
  dmpustu, ICDXCari0u, aau111;

{$R *.dfm}

{ TForm1_pustuKesakitan0 }

procedure TForm1_pustuKesakitan0.awal;
begin
Caption := 'Entri Data Kesakitan Pustu : ' + pustu + ' ' + bulanStr + ' ' + IntToStr(tahun);
lblPenyakit.Caption := '';
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
isi_combo(cbbBiaya, 'select biaya from simpus2.m_pasien_biaya where adl_aktif = 1 order by upper(biaya)', 'biaya');
//cbbBiaya.SetFocus;
cbbKat.SetFocus;
end;

procedure TForm1_pustuKesakitan0.btn1Click(Sender: TObject);
begin
grid2.SaveColumnsLayoutIni(form111.MyIni, name, true);
Close;
end;

procedure TForm1_pustuKesakitan0.btnICDXClick(Sender: TObject);
begin
form1_icdxCari0.ShowModal;
if Form1_ICDXCari0.ModalResult = mrOk then
begin
  editICDX.Text := Form1_ICDXCari0.lblICDX.Caption;
  lblPenyakit.Caption := Form1_ICDXCari0.lblPenyakit.Caption;
end;
end;

procedure TForm1_pustuKesakitan0.btnSimpanClick(Sender: TObject);
begin
if ((Length(lblPenyakit.Caption) < 1) or (editJml.AsInteger = 0)) then
ShowMessage('ICD-X masih belum betul / Jumlah Kesakitan 0 ') else simpan_data;
cbbKat.SetFocus;
end;

procedure TForm1_pustuKesakitan0.cbbBiayaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.cbbKatKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.cbbKelaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.cbbUmurKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.editICDXExit(Sender: TObject);
var sql0, sql1 : string;
begin
  with dataPustu do
  begin
     sql0 := 'select description from simpus2.alt_diagnosis where code2 = %s';
     sql1 := Format(sql0, [QuotedStr(editICDX.Text)]);
    qbuka.Close;
    qbuka.SQL.Clear;
    qbuka.SQL.Add(sql1);
    qbuka.Open;
    if qbuka.IsEmpty then
    ShowMessage('Peringatan ! ... Data ICD-X tidak ditemukan') else
    lblPenyakit.Caption := qbuka.FieldByName('description').AsString;
  end;
end;

procedure TForm1_pustuKesakitan0.editICDXKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.editJmlKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pustuKesakitan0.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
grid2.SaveColumnsLayoutIni(form111.MyIni, name, True);
end;

procedure TForm1_pustuKesakitan0.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pustuKesakitan0.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataPustu do
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

procedure TForm1_pustuKesakitan0.simpan_data;
var sql0, sql1 : string;
begin
with dataPustu do
begin
   sql0 := 'insert into simpus2.pustu_kesakitan(tahun, bulan, pustu, biaya, kat, jenis_kelamin, kelompok_umur, kelompok, kode, penyakit, jml) ' +
           'values(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);';
   sql1 := Format(sql0, [
                        IntToStr(tahun),
                        IntToStr(bulan),
                        QuotedStr(pustu),
                        QuotedStr(cbbBiaya.Items[cbbBiaya.ItemIndex]),
                        QuotedStr(cbbKat.Items[cbbKat.ItemIndex]),
                        QuotedStr(cbbKelamin.Items[cbbKelamin.ItemIndex]),
                        IntToStr(cbbUmur.ItemIndex),
                        QuotedStr(cbbUmur.Items[cbbUmur.ItemIndex]),
                        QuotedStr(editICDX.Text),
                        QuotedStr(lblPenyakit.Caption),
                        IntToStr(editJml.AsInteger)
                        ]);
   try
   qproses.SQL.Clear;
   qproses.SQL.Add(sql1);
   qproses.Execute;
   finally
   q_pustuKesakitan.Close;
   q_pustuKesakitan.Open;
   end;

end;
//lblPenyakit.Caption := '';
end;

end.
