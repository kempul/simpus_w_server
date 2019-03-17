unit kamarEditU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1_kamarEdit = class(TForm)
    labelNama: TLabel;
    labelJml: TLabel;
    editNama: TEdit;
    editJml: TJvCalcEdit;
    panel2: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    labelId: TLabel;
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
  Form1_kamarEdit: TForm1_kamarEdit;

implementation
        uses dmMaster;
{$R *.dfm}

{ TForm1_kamarAdd }

procedure TForm1_kamarEdit.awal;
begin
editNama.SetFocus;
end;

procedure TForm1_kamarEdit.btnOkClick(Sender: TObject);
begin
simpan_kamar;
end;

procedure TForm1_kamarEdit.editJmlKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarEdit.editNamaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarEdit.editTarifKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_kamarEdit.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_kamarEdit.simpan_kamar;
var sql0, sql1 : string;
begin
sql0 := 'update simpus.kamar_ri set jml_tt = %s, tarif = %s where id = %s;';
with dataMaster do
begin
sql1 := Format(sql0, [
      IntToStr(editJml.AsInteger),
      IntToStr(editTarif.AsInteger),
      QuotedStr(labelId.Caption)
      ]);
fdCmd1.Execute(sql1);
end;
end;

end.
