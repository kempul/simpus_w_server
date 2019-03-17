
unit fisikAddU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExStdCtrls, JvEdit, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker;

type
  TForm1_fisikAdd = class(TForm)
    grpFisik: TGroupBox;
    labellbl111: TLabel;
    labellbl112: TLabel;
    labellbl113: TLabel;
    labellbl114: TLabel;
    labellbl115: TLabel;
    labellbl116: TLabel;
    labellbl117: TLabel;
    labellbl118: TLabel;
    labellbl121: TLabel;
    labellbl122: TLabel;
    labellbl123: TLabel;
    labellbl124: TLabel;
    labellbl125: TLabel;
    labellbl127: TLabel;
    labellbl6: TLabel;
    editTB: TJvCalcEdit;
    editBB: TJvCalcEdit;
    editSistol: TJvCalcEdit;
    editDiastol: TJvCalcEdit;
    editNafas: TJvCalcEdit;
    editHati: TJvCalcEdit;
    panel6: TPanel;
    btn1FisikBatal: TButton;
    btn1FisikSimpan: TButton;
    cbbKesadaran: TComboBox;
    edit1Keluhan: TJvEdit;
    labelIdxstr: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn1FisikBatalClick(Sender: TObject);
    procedure btn1FisikSimpanClick(Sender: TObject);
    procedure edit1KeluhanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
    procedure editTBKeyPress(Sender: TObject; var Key: Char);
    procedure editBBKeyPress(Sender: TObject; var Key: Char);
    procedure editSistolKeyPress(Sender: TObject; var Key: Char);
    procedure editDiastolKeyPress(Sender: TObject; var Key: Char);
    procedure editNafasKeyPress(Sender: TObject; var Key: Char);
    procedure editHatiKeyPress(Sender: TObject; var Key: Char);
  private
   iDummi : Integer;

    { Private declarations }
    procedure kosongkan_form;
    procedure awal;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure simpan_fisik;
  public
    { Public declarations }
  end;

var
  Form1_fisikAdd: TForm1_fisikAdd;

implementation

{$R *.dfm}

uses dmRI, SrvBpjsParallelU;

{ TForm1_fisikAdd }

procedure TForm1_fisikAdd.awal;
begin
kosongkan_form;
end;

procedure TForm1_fisikAdd.btn1FisikBatalClick(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure TForm1_fisikAdd.btn1FisikSimpanClick(Sender: TObject);
begin
try
  simpan_fisik;
finally
  ModalResult := mrOk;
end;
end;

procedure TForm1_fisikAdd.cbbKesadaranKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.edit1KeluhanKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editBBKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editDiastolKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editHatiKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editNafasKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editSistolKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.editTBKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then SelectNext(TWinControl(sender), True, True);

end;

procedure TForm1_fisikAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_fisikAdd.isi_combo(aCombo: TComboBox; aQuery, aField: string);
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

procedure TForm1_fisikAdd.kosongkan_form;
begin
edit1Keluhan.Clear;
//cbbKesadaran.ItemIndex := 0;
editTB.AsInteger := 0;
editBB.AsInteger := 0;
editSistol.AsInteger := 0;
editDiastol.AsInteger := 0;
editNafas.AsInteger := 0;
editHati.AsInteger := 0;
isi_combo(TComboBox(cbbKesadaran), 'select kesadaran_str from simpus.m_kesadaran order by idx', 'kesadaran_str' );
edit1Keluhan.SetFocus;
end;


procedure TForm1_fisikAdd.simpan_fisik;
var sql0, sql1, strTgl : string;
begin
   sql0 := 'insert into simpus.pemeriksaan_fisik(idxstr, tinggi_badan, berat_badan, sistole, diastole, respiratory, heart, kesadaran, keluhan) ' +
            'values(%s, %s, %s, %s, %s, %s, %s, %s, %s);';
   with dataRI do
   begin
     sql1 := Format(sql0, [
              QuotedStr(labelIdxstr.Caption),
              IntToStr(editTB.AsInteger),
              IntToStr(editBB.AsInteger),
              IntToStr(editSistol.AsInteger),
              IntToStr(editDiastol.AsInteger),
              IntToStr(editNafas.AsInteger),
              inttoStr(editHati.AsInteger),
              QuotedStr(cbbKesadaran.Items[cbbKesadaran.ItemIndex]),
              QuotedStr(edit1Keluhan.Text)
              ]);
     fdCmd1.Execute(sql1);
   end;
end;

end.
