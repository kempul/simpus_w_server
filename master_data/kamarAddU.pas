unit kamarAddU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1_kamarAdd = class(TForm)
    labelNama: TLabel;
    labelJml: TLabel;
    editNama: TEdit;
    editJml: TJvCalcEdit;
    panel2: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    labelKelas: TLabel;
    labelTarif: TLabel;
    editTarif: TJvCalcEdit;
    procedure editNamaKeyPress(Sender: TObject; var Key: Char);
    procedure editJmlKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure editTarifKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
    procedure simpan_kamar;
  public
    { Public declarations }
  end;

var
  Form1_kamarAdd: TForm1_kamarAdd;

implementation
        uses dmMaster;
{$R *.dfm}

{ TForm1_kamarAdd }

procedure TForm1_kamarAdd.awal;
begin
editNama.Clear;
editJml.AsInteger := 0;
editTarif.AsInteger := 0;
editNama.SetFocus;
end;

procedure TForm1_kamarAdd.btnOkClick(Sender: TObject);
begin
simpan_kamar;
end;

procedure TForm1_kamarAdd.editJmlKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarAdd.editNamaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarAdd.editTarifKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_kamarAdd.simpan_kamar;
var sql0, sql1 : string;
begin
sql0 := 'insert into simpus.kamar_ri(kelas, nama_kamar, jml_tt, tarif) values(%s, %s, %s, %s);';
with dataMaster do
begin
sql1 := Format(sql0, [
      QuotedStr(labelKelas.Caption),
      QuotedStr(editNama.Text),
      IntToStr(editJml.AsInteger),
      IntToStr(editTarif.AsInteger)
      ]);
fdCmd1.Execute(sql1);
end;
end;

end.
