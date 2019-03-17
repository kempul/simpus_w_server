unit diagnosaAddU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExStdCtrls, JvEdit, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvCombobox, JvMemo, Vcl.Buttons, JvCheckBox;

type
  TForm1_diagnosaAdd = class(TForm)
    grp2: TGroupBox;
    labellbl2: TLabel;
    labellbl3: TLabel;
    labellbl4: TLabel;
    btn1ICDXCari: TSpeedButton;
    labellbl1: TLabel;
    memoTindakan: TJvMemo;
    cbbDokter: TJvComboBox;
    txt1: TStaticText;
    editICDX: TEdit;
    dtpTindakan: TJvDateTimePicker;
    dtpTindakanJam: TJvDateTimePicker;
    checkKasusBaru: TCheckBox;
    panel2: TPanel;
    btn1Batal: TButton;
    btn1Simpan: TButton;
    labelIdxstr: TLabel;
    chk1NonSpesialis: TJvCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btn1FisikBatalClick(Sender: TObject);
    procedure edit1KeluhanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
    procedure editTBKeyPress(Sender: TObject; var Key: Char);
    procedure editBBKeyPress(Sender: TObject; var Key: Char);
    procedure editSistolKeyPress(Sender: TObject; var Key: Char);
    procedure editDiastolKeyPress(Sender: TObject; var Key: Char);
    procedure editNafasKeyPress(Sender: TObject; var Key: Char);
    procedure editHatiKeyPress(Sender: TObject; var Key: Char);
    procedure btn1SimpanClick(Sender: TObject);
    procedure editICDXExit(Sender: TObject);
    procedure btn1ICDXCariClick(Sender: TObject);
    procedure editICDXChange(Sender: TObject);
    procedure btn1BatalClick(Sender: TObject);
    procedure editICDXKeyPress(Sender: TObject; var Key: Char);
  private
   iDummi : Integer;

    { Private declarations }
    procedure kosongkan_form;
    procedure awal;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure simpan_diagnosa;
    function cekIcdx(kode : string) : Boolean;
//    function cekIcdx(kode : string) : Boolean;


  public
    { Public declarations }
  end;

var
  Form1_diagnosaAdd: TForm1_diagnosaAdd;

implementation

{$R *.dfm}

uses dmRI, ICDXCariu, pulangBantuU;

{ TForm1_fisikAdd }

procedure TForm1_diagnosaAdd.awal;
begin
kosongkan_form;
end;

procedure TForm1_diagnosaAdd.btn1BatalClick(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TForm1_diagnosaAdd.btn1FisikBatalClick(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TForm1_diagnosaAdd.btn1ICDXCariClick(Sender: TObject);
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

procedure TForm1_diagnosaAdd.btn1SimpanClick(Sender: TObject);
var vIdx : string;
    vIcdx : string;
begin

  vIdx := labelIdxstr.Caption;
  vIcdx := editICDX.Text;

  try

  simpan_diagnosa;

  finally
  ShowMessage('data disimpan');
  ModalResult := mrOk;
  end;


end;

procedure TForm1_diagnosaAdd.cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

function TForm1_diagnosaAdd.cekIcdx(kode: string): Boolean;
begin
Result := False;
with dataRI do
begin
  fdQueryIcdxCek.Active := False;
  fdQueryIcdxCek.Prepare;
  fdQueryIcdxCek.ParamByName('kd_diag').AsString := kode;
  fdQueryIcdxCek.Active := True;
  txt1.Caption := fdQueryIcdxCek.FieldByName('nm_diag').AsString;
  chk1NonSpesialis.Checked := fdQueryIcdxCek.FieldByName('non_spesialis').AsBoolean;

  Result := fdQueryIcdxCek.FieldByName('jumlah').AsInteger > 0;
  fdQueryIcdxCek.Active := False;
end;
end;

procedure TForm1_diagnosaAdd.edit1KeluhanKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editBBKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editDiastolKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editHatiKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editICDXChange(Sender: TObject);
begin
btn1Simpan.Enabled := cekIcdx(editICDX.Text);
end;

procedure TForm1_diagnosaAdd.editICDXExit(Sender: TObject);
begin
btn1Simpan.Enabled := cekIcdx(editICDX.Text);
end;

procedure TForm1_diagnosaAdd.editICDXKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
   if btn1Simpan.Enabled then SelectNext(TWinControl(sender), True, true)
    else
    begin
    Form1_ICDXCari.edit2.Text := editICDX.Text;
    btn1ICDXCari.Click;
    end;
end;

procedure TForm1_diagnosaAdd.editNafasKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editSistolKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.editTBKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_diagnosaAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_diagnosaAdd.isi_combo(aCombo: TComboBox; aQuery, aField: string);
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

procedure TForm1_diagnosaAdd.kosongkan_form;
begin
dtpTindakan.DateTime := Now;
dtpTindakanJam.DateTime := Now;
editICDX.Clear;
txt1.Caption := '';
memoTindakan.Clear;
isi_combo(TComboBox(cbbDokter), 'select nama from simpus.dokter order by upper(nama)', 'nama');
dtpTindakan.SetFocus;
end;

procedure TForm1_diagnosaAdd.simpan_diagnosa;
var adlBaru : Integer;
     sql0, sql1, tglStr : string;
     tesDt : TDateTime;
     myHour, myMin, mySec, myMilli : Word;
begin

adlBaru := 0;
if checkKasusBaru.Checked then adlBaru := 1;

with dataRI do
begin
  sql0 := 'insert into simpus.rekam_medis(idxstr, tanggal_diagnosa, dokter, penyakit, anamnese, tindakan, adl_baru) ' +
          'values(%s, %s, %s, %s, %s, %s, %s);';

   dtpTindakan.Time := dtpTindakanJam.Time;
   DateTimeToString(tglStr, 'yyyy-MM-dd''T''hh:mm:ss', dtpTindakan.DateTime);
   sql1 := Format(sql0, [
            QuotedStr(labelIdxstr.Caption),
            QuotedStr(tglStr),
            QuotedStr(cbbDokter.Items[cbbDokter.ItemIndex]),
            QuotedStr(editICDX.Text),
            QuotedStr(''),
            QuotedStr(memoTindakan.Lines.Text),
            intTostr(adlBaru)
            ]);

            fdCmd1.Execute(sql1);
end;

end;

end.
