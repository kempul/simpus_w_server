unit ponedBantuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  ExtCtrls, DBCtrls, JvDBControls, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker,
  EhLibVCL;

type
  TForm1_ponedBantu = class(TForm)
    grp2: TGroupBox;
    lbl25: TLabel;
    cbbPonedKlp: TJvComboBox;
    lbl26: TLabel;
    cbbPonedPenyakit: TJvComboBox;
    panel2: TPanel;
    labelTgl: TLabel;
    dtp1: TJvDateTimePicker;
    btnSimpan: TButton;
    panel4: TPanel;
    nav1: TJvDBNavigator;
    grid1: TDBGridEh;
    labelIdxstr: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbbPonedKlpChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : Boolean;
    procedure awal;
    procedure buka_data;
    function ambilIdxPoned : Integer;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);

    procedure simpanPoned;
    function kirimPoned: Boolean;
  public
    { Public declarations }
  end;

var
  Form1_ponedBantu: TForm1_ponedBantu;

implementation

uses dmpelayanan, aau111; //, SrvParallelU;

{$R *.dfm}

{ TForm1_ponedBantu }

function TForm1_ponedBantu.ambilIdxPoned: Integer;
begin
with dataPelayanan do
begin
  fdQueryIdxPoned.Close;
  fdQueryIdxPoned.ParamByName('kelompok').AsString := cbbPonedKlp.Items[cbbPonedKlp.ItemIndex];
  fdQueryIdxPoned.ParamByName('jenis_penyakit').AsString := cbbPonedPenyakit.Items[cbbPonedPenyakit.ItemIndex];
  fdQueryIdxPoned.Active := True;

  Result := fdQueryIdxPoned.FieldByName('idx').AsInteger;
  fdQueryIdxPoned.Close;
end;
end;

procedure TForm1_ponedBantu.awal;
begin

boleh_buka := False;
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
dtp1.DateTime := Now;
isi_combo(TComboBox(cbbPonedKlp), 'select distinct kelompok from simpus.m_poned', 'kelompok');
cbbPonedKlp.ItemIndex := 0;
cbbPonedKlpChange(cbbPonedKlp);
{
str0 := 'select jenis_penyakit from simpus2.m_poned where kelompok = %s';
str1 := Format(str0, [QuotedStr(cbbPonedKlp.Items[cbbPonedKlp.ItemIndex])]);
isi_combo(TComboBox(cbbPonedPenyakit), str1, 'jenis_penyakit');
}
cbbPonedPenyakit.ItemIndex := 0;
buka_data;
end;

procedure TForm1_ponedBantu.btnSimpanClick(Sender: TObject);
begin
simpanPoned;
try
  buka_data;
finally
  kirimPoned;
end;
end;

procedure TForm1_ponedBantu.buka_data;
begin
with dataPelayanan do
begin
  fdQueryPoned.Close;
  fdQueryPoned.Prepare;
  fdQueryPoned.ParamByName('idxstr').AsString := labelIdxstr.Caption;
  fdQueryPoned.Active := True;

  btnSimpan.Enabled := fdQueryPoned.IsEmpty;
end;
end;

procedure TForm1_ponedBantu.cbbPonedKlpChange(Sender: TObject);
var str0, str1 : string;
begin
str0 := 'select jenis_penyakit from simpus.m_poned where kelompok = %s';
str1 := Format(str0, [QuotedStr(cbbPonedKlp.Items[cbbPonedKlp.ItemIndex])]);
isi_combo(TComboBox(cbbPonedPenyakit), str1, 'jenis_penyakit');
cbbPonedPenyakit.ItemIndex := 0;
end;

procedure TForm1_ponedBantu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
dataPelayanan.fdQueryPoned.Close;
end;

procedure TForm1_ponedBantu.FormShow(Sender: TObject);
begin
//gridEh1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
awal;
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

function TForm1_ponedBantu.kirimPoned: Boolean;
//var srv : SrvParallel;
begin
  {
   srv := SrvParallel.Create;
   try
     srv.ponedPost(labelIdxstr.Caption);
   finally
     srv.Free;
   end;
   }
end;


procedure TForm1_ponedBantu.simpanPoned;
var sql0, sql1, strTgl : string;
begin
dtp1.Time:= Time;
DateTimeToString(strTgl, 'YYYY-MM-DD HH:NN:SS', dtp1.DateTime);
sql0 := 'insert into simpus.pasien_poned(idxstr, poned, tanggal) values(%s, %s, %s);';
with dataPelayanan do
begin
   sql1 := Format(sql0,[
          QuotedStr(labelIdxstr.Caption),
          IntToStr(ambilIdxPoned),
          QuotedStr(strTgl)
          ]);
   fdCmd1.Execute(sql1);
end;
end;

end.
