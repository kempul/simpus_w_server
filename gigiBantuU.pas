unit gigiBantuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox;

type
  TForm1_gigiBantu = class(TForm)
    grp1: TGroupBox;
    lbl13: TLabel;
    cbbTindakanGigi0: TJvComboBox;
    lbl14: TLabel;
    cbbTindakanGigi1: TJvComboBox;
    btn1: TBitBtn;
    btn2: TBitBtn;
    lblJenis: TLabel;
    lblJenisDetil: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbTindakanGigi0Change(Sender: TObject);
  private
    { Private declarations }
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_gigi;
  public
    { Public declarations }
  end;

var
  Form1_gigiBantu: TForm1_gigiBantu;

implementation

uses dmpelayanan;

{$R *.dfm}

{ TForm1_gigiBantu }

procedure TForm1_gigiBantu.btn1Click(Sender: TObject);
begin
lblJenis.Caption := cbbTindakanGigi0.Items[cbbTindakanGigi0.ItemIndex];
lblJenisDetil.Caption := cbbTindakanGigi1.Items[cbbTindakanGigi1.ItemIndex];
end;

procedure TForm1_gigiBantu.cbbTindakanGigi0Change(Sender: TObject);
var str0 : string;
begin
str0 := 'select ket from simpus2.m_gigi where jenis = %s';

isi_combo(TComboBox(cbbTindakanGigi1), Format(str0,[QuotedStr(cbbTindakanGigi0.Items[cbbTindakanGigi0.ItemIndex])]), 'ket');
cbbTindakanGigi1.ItemIndex := 0;

end;

procedure TForm1_gigiBantu.FormShow(Sender: TObject);
begin
kosongkan_gigi;
end;

procedure TForm1_gigiBantu.isi_combo(aCombo: TComboBox; aQuery, aField: string);
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

procedure TForm1_gigiBantu.kosongkan_gigi;
var str0 : string;
begin
isi_combo(TComboBox(cbbTindakanGigi0), 'select distinct jenis from simpus2.m_gigi', 'jenis');
cbbTindakanGigi0.ItemIndex := 0;
str0 := 'select ket from simpus2.m_gigi where jenis = %s';

isi_combo(TComboBox(cbbTindakanGigi1), Format(str0,[QuotedStr(cbbTindakanGigi0.Items[cbbTindakanGigi0.ItemIndex])]), 'ket');
end;


end.
