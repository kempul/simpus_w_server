unit obatAddU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  JvExControls, JvSpeedButton, StdCtrls, GridsEh, DBAxisGridsEh, DBGridEh,
  DBCtrls, JvDBControls, ComCtrls, JvExComCtrls, JvComCtrls, ExtCtrls, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, EhLibVCL;

type
  TForm1_obatAdd = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl3: TPanel;
    pnl4: TPanel;
    nav1: TJvDBNavigator;
    grid1: TDBGridEh;
    lbl1: TLabel;
    editObat: TEdit;
    btnObatCari: TJvSpeedButton;
    label2: TLabel;
    editSigna1: TJvCalcEdit;
    label3: TLabel;
    editSigna2: TJvCalcEdit;
    label4: TLabel;
    editHari: TJvCalcEdit;
    label5: TLabel;
    editJml: TJvCalcEdit;
    editSedia: TJvCalcEdit;
    btnSimpan: TButton;
    pnl5: TPanel;
    label10: TLabel;
    btn1: TJvSpeedButton;
    label11: TLabel;
    label12: TLabel;
    label13: TLabel;
    label14: TLabel;
    editObat1: TEdit;
    editSigna11: TJvCalcEdit;
    editSigna21: TJvCalcEdit;
    editHari1: TJvCalcEdit;
    editJml1: TJvCalcEdit;
    editSedia1: TJvCalcEdit;
    btnSimpan1: TButton;
    label6: TLabel;
    editRacikan: TEdit;
    btnRacikan: TButton;
    label7: TLabel;
    editPermintaan: TJvCalcEdit;
    label8: TLabel;
    editKekuatan: TJvCalcEdit;
    label9: TLabel;
    edit3: TJvCalcEdit;
    procedure editJmlChange(Sender: TObject);
    procedure editSigna1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnObatCariClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure editSigna11Change(Sender: TObject);
    procedure editJml1Change(Sender: TObject);
    procedure btnRacikanClick(Sender: TObject);
    procedure editPermintaanChange(Sender: TObject);
    procedure btnSimpan1Click(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : Boolean;
    procedure awal;
    procedure buka_data;
    procedure simpan_non_racikan;
    procedure simpan_racikan;
  public
    { Public declarations }
  end;

var
  Form1_obatAdd: TForm1_obatAdd;

implementation

uses aau111, obatCariU, dmpelayanan, StrUtils;

{$R *.dfm}

procedure TForm1_obatAdd.awal;
begin
boleh_buka := False;
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
editObat.Clear;
pageControl1.ActivePageIndex := 0;
editRacikan.Text := 'R.01';
end;

procedure TForm1_obatAdd.btn1Click(Sender: TObject);
begin
{
form1_obatCari.ShowModal;
if Form1_obatCari.ModalResult = mrOK then
begin
  editObat1.Text := dataPelayanan.uniQObatCari.FieldByName('nm_obat').AsString;
  editSedia1.AsInteger := dataPelayanan.uniQObatCari.FieldByName('sedia').AsInteger;
end;
}
end;

procedure TForm1_obatAdd.btnObatCariClick(Sender: TObject);
begin
{
form1_obatCari.ShowModal;
if Form1_obatCari.ModalResult = mrOK then
begin
  editObat.Text := dataPelayanan.uniQObatCari.FieldByName('nm_obat').AsString;
  editSedia.AsInteger := dataPelayanan.uniQObatCari.FieldByName('sedia').AsInteger;
end;
}
end;

procedure TForm1_obatAdd.btnRacikanClick(Sender: TObject);
var i : Integer;
begin
  i := StrToInt(rightStr(editRacikan.Text, 2));
  i := i + 1;
  editRacikan.Text := 'R.'+Format('%.*d',[2, i]);
  end;

procedure TForm1_obatAdd.btnSimpan1Click(Sender: TObject);
begin
try
  simpan_racikan;
finally
  buka_data;
end;
end;

procedure TForm1_obatAdd.btnSimpanClick(Sender: TObject);
begin
try
simpan_non_racikan;

finally
buka_data;
end;

end;

procedure TForm1_obatAdd.buka_data;
begin
{
with dataPelayanan do
begin
  uniQObatPasien.Close;
  uniQObatPasien.Open;
end;
}
end;

procedure TForm1_obatAdd.editPermintaanChange(Sender: TObject);
begin
if editSedia1.Value > 0 then
begin
editKekuatan.Value := editPermintaan.Value / editSedia1.Value;
edit3.Value := editKekuatan.Value * editJml1.Value;
end;
end;

procedure TForm1_obatAdd.editJml1Change(Sender: TObject);
begin
if editSigna11.AsInteger > 0 then editHari1.Value := editJml1.AsInteger / editSigna11.AsInteger;
end;

procedure TForm1_obatAdd.editJmlChange(Sender: TObject);
begin
if editSigna1.AsInteger > 0 then editHari.Value := editJml.AsInteger / editSigna1.AsInteger;

end;

procedure TForm1_obatAdd.editSigna11Change(Sender: TObject);
begin
if editSigna11.AsInteger > 0 then editHari1.Value := editJml1.AsInteger / editSigna11.AsInteger;
end;

procedure TForm1_obatAdd.editSigna1Change(Sender: TObject);
begin
if editSigna1.AsInteger > 0 then editHari.Value := editJml.AsInteger / editSigna1.AsInteger;
end;

procedure TForm1_obatAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
end;

procedure TForm1_obatAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_obatAdd.simpan_non_racikan;
var sql0, sql1 : string;
begin
{
sql0 := 'insert into simpus2.bpjs_obat(tgl, nomor, nm_obat, signa1, signa2, jml_obat) values(%s, %s, %s, %s, %s, %s);';

with dataPelayanan do
begin
  sql1 := Format(sql0, [
                        QuotedStr(FormatDateTime('YYYY-MM-DD', uqKunjungan1.FieldByName('tanggal').AsDateTime)),
                        uqKunjungan1.FieldByName('nomor').AsString,
                        QuotedStr(editObat.Text),
                        IntToStr(editSigna1.AsInteger),
                        IntToStr(editSigna2.AsInteger),
                        IntToStr(editJml.AsInteger)
                        ]);

  qproses.SQL.Clear;
  qproses.SQL.Add(sql1);
  qproses.Execute;
end;
}
end;


procedure TForm1_obatAdd.simpan_racikan;
var sql0, sql1 : string;
begin
{
sql0 := 'insert into simpus2.bpjs_obat(tgl, nomor, nm_obat, signa1, signa2, jml_obat, racikan, jenis, jml_permintaan) values(%s, %s, %s, %s, %s, %s, ''TRUE'', %s, %s);';

with dataPelayanan do
begin
  sql1 := Format(sql0, [
                        QuotedStr(FormatDateTime('YYYY-MM-DD', uqKunjungan1.FieldByName('tanggal').AsDateTime)),
                        uqKunjungan1.FieldByName('nomor').AsString,
                        QuotedStr(editObat1.Text),
                        IntToStr(editSigna11.AsInteger),
                        IntToStr(editSigna21.AsInteger),
                        IntToStr(editJml1.AsInteger),
                        QuotedStr(editRacikan.Text),
                        IntToStr(editPermintaan.AsInteger)
                        ]);

  qproses.SQL.Clear;
  qproses.SQL.Add(sql1);
  qproses.Execute;
end;
}
end;

end.
