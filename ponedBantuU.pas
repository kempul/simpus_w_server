unit ponedBantuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  ExtCtrls, DBCtrls, JvDBControls;

type
  TForm1_ponedBantu = class(TForm)
    grp2: TGroupBox;
    lbl25: TLabel;
    cbbPonedKlp: TJvComboBox;
    lbl26: TLabel;
    cbbPonedPenyakit: TJvComboBox;
    panel2: TPanel;
    btn2: TBitBtn;
    btn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cbbPonedKlpChange(Sender: TObject);
  private
    { Private declarations }
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_poned;
  public
    { Public declarations }
  end;

var
  Form1_ponedBantu: TForm1_ponedBantu;

implementation

uses dmpelayanan, aau111;

{$R *.dfm}

{ TForm1_ponedBantu }

procedure TForm1_ponedBantu.cbbPonedKlpChange(Sender: TObject);
var str0, str1 : string;
begin
str0 := 'select jenis_penyakit from simpus2.m_poned where kelompok = %s';
str1 := Format(str0, [QuotedStr(cbbPonedKlp.Items[cbbPonedKlp.ItemIndex])]);
isi_combo(TComboBox(cbbPonedPenyakit), str1, 'jenis_penyakit');
cbbPonedPenyakit.ItemIndex := 0;
end;

procedure TForm1_ponedBantu.FormShow(Sender: TObject);
begin
//gridEh1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
kosongkan_poned;
end;

procedure TForm1_ponedBantu.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
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

procedure TForm1_ponedBantu.kosongkan_poned;
var str0, str1 : string;
begin
isi_combo(TComboBox(cbbPonedKlp), 'select distinct kelompok from simpus2.m_poned', 'kelompok');
cbbPonedKlp.ItemIndex := 0;
cbbPonedKlpChange(cbbPonedKlp);
{
str0 := 'select jenis_penyakit from simpus2.m_poned where kelompok = %s';
str1 := Format(str0, [QuotedStr(cbbPonedKlp.Items[cbbPonedKlp.ItemIndex])]);
isi_combo(TComboBox(cbbPonedPenyakit), str1, 'jenis_penyakit');
}
cbbPonedPenyakit.ItemIndex := 0;
end;

end.
