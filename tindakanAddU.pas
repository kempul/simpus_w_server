unit tindakanAddU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, ComCtrls,
  JvExComCtrls, JvDateTimePicker, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Buttons, JvDBControls;

type
  TForm1_tindakanAdd = class(TForm)
    lblTgl: TLabel;
    dtp1: TJvDateTimePicker;
    lbl1: TLabel;
    cbb1: TJvDBSearchComboBox;
    lblBiaya: TLabel;
    lblKet: TLabel;
    edit1Ket: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    edit1: TJvCalcEdit;
    editBiaya: TJvCalcEdit;
    label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dtp1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    iDummi : Integer;
    procedure berikutnya(Sender: TObject; var Key: Char);
    procedure awal;

    procedure simpan_tindakan;
  public
    { Public declarations }
  end;

var
  Form1_tindakanAdd: TForm1_tindakanAdd;

implementation

uses
  dmpelayanan;

{$R *.dfm}

{ TForm1_tindakanAdd }

procedure TForm1_tindakanAdd.awal;
begin
{
with dataPelayanan do
begin

  uniQTindakanLU.Close;
  uniQTindakanLU.Open;
end;
dtp1.DateTime := Now;
editBiaya.Value := 0;
edit1Ket.Clear;

dtp1.SetFocus;
}
end;

procedure TForm1_tindakanAdd.berikutnya(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_tindakanAdd.btn1Click(Sender: TObject);
begin
if edit1.Value = 0 then ShowMessage('hasil tidak boleh 0') else

try
  simpan_tindakan;
finally
//  dataPelayanan.uniQTindakanLU.Close;
end;
end;

procedure TForm1_tindakanAdd.cbb1Change(Sender: TObject);
begin
{
if dataPelayanan.uniQTindakanLU.Active then
    editBiaya.Value := dataPelayanan.uniQTindakanLU.FieldByName('max_tarif').AsInteger;
}
end;

procedure TForm1_tindakanAdd.dtp1KeyPress(Sender: TObject; var Key: Char);
begin
berikutnya(Sender, key);
end;

procedure TForm1_tindakanAdd.edit1KeyPress(Sender: TObject; var Key: Char);
begin
berikutnya(Sender, key);
end;

procedure TForm1_tindakanAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_tindakanAdd.simpan_tindakan;
var sql0, sql1 : string;
begin
{
sql0 := 'insert into simpus2.bpjs_tindakan(tgl, nomor, tgl_tindakan, nm_tindakan, biaya, keterangan, hasil) values(%s, %s, %s, %s, %s, %s, %s)';

with dataPelayanan do
begin
sql1 := Format(sql0, [
                      QuotedStr(FormatDateTime('YYYY-MM-DD', uqKunjungan1.FieldByName('tanggal').AsDateTime)),
                      uqKunjungan1.FieldByName('nomor').AsString,
                      QuotedStr(FormatDateTime('YYYY-MM-DD', dtp1.DateTime)),
                      QuotedStr(uniQTindakanLU.FieldByName('nm_tindakan').AsString),
                      IntToStr(editBiaya.AsInteger),
                      QuotedStr(edit1Ket.Text),
                      intTostr(edit1.AsInteger)
                      ]);

  qproses.SQL.Clear;
  qproses.SQL.Add(sql1);
  qproses.Execute;
end;
}
end;

end.
