unit capilCariU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  JvBaseDlg, JvProgressDialog, JvComponentBase, JvFormPlacement, ComCtrls;

type

  TForm1_cariDiDukcapil = class(TForm)
    panel2: TPanel;
    btn2: TBitBtn;
    btn1: TBitBtn;
    btn3: TButton;
    pb1: TJvProgressDialog;
    formStorage1: TJvFormStorage;
    pageControl1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    panel3: TPanel;
    label2: TLabel;
    label3: TLabel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    cbbKec: TComboBox;
    cbbKel: TComboBox;
    editNama: TEdit;
    btnCari: TButton;
    cbbProp: TComboBox;
    cbbKab: TComboBox;
    panel4: TPanel;
    Panel1: TPanel;
    memoResponse: TMemo;
    memoSQL: TMemo;
    memoKel: TMemo;
    panel5: TPanel;
    memoProp: TMemo;
    memoKab: TMemo;
    ts3: TTabSheet;
    panel7: TPanel;
    ts4: TTabSheet;
    panel8: TPanel;
    labelEditNIK: TLabeledEdit;
    btn1NIKCari: TButton;
    labelEditKK: TLabeledEdit;
    btn1KKCari: TButton;
    memoKec: TMemo;
    procedure cbbKecChange(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure cbbPropChange(Sender: TObject);
    procedure cbbKabChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1NIKCariClick(Sender: TObject);
    procedure btn1KKCariClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    procedure isi_memo_prop;
    procedure isi_memo_kab(no_prop : string);
    procedure isi_memo_kec(no_prop, no_kab : string);
    procedure isi_memo_kel(no_prop, no_kab, no_kec : string);
    procedure eksekusi_script(aScript : TStrings);
  public
    { Public declarations }
  end;

var
  Form1_cariDiDukcapil: TForm1_cariDiDukcapil;

implementation

uses dmKunjungan, brCapilU;

{$R *.dfm}

{ TForm1_cariDiDukcapil }

procedure TForm1_cariDiDukcapil.btn1KKCariClick(Sender: TObject);
var aCapil : capilCommon;
begin

try
pb1.Show;

ACapil := CapilCommon.create;
if ACapil.getKk(labelEditKK.Text) then
      begin
        // memoResponse.Lines.Add(aCapil.Uri);
        // memoResponse.Lines.Add(aCapil.tsResponse.Text);
         ShowMessage('OK');
      end else ShowMessage('Data Tidak Ditemukan');
ACapil.Free;
pb1.Hide;
finally
  btn1.Click;
end;

end;

procedure TForm1_cariDiDukcapil.btn1NIKCariClick(Sender: TObject);
var aCapil : CapilCommon;
begin

try
pb1.Show;

aCapil := CapilCommon.create;
if ACapil.getNik(labelEditNIK.Text) then
begin
memoKel.Lines.Add(aCapil.Uri);
memoResponse.Lines.Add(aCapil.tsResponse.Text);
ShowMessage('OK');
end else ShowMessage('Data Tidak Ditemukan');
ACapil.Free;
pb1.Hide;
finally
  btn1.Click;
end;

end;

procedure TForm1_cariDiDukcapil.btn3Click(Sender: TObject);
var aCapil : CapilCommon;
begin
   aCapil:= CapilCommon.Create;
   try
   aCapil.getProp;
   finally
     aCapil.Free;
   end;

end;

procedure TForm1_cariDiDukcapil.btnCariClick(Sender: TObject);
var no_prop, no_kab, no_kec, no_kel : string;
aCapil : CapilCommon;
hal, halTotal : Integer;
begin
if Length(editNama.Text) < 4 then
begin
  ShowMessage('Salah Panjang pencarian nama minimal 4 karakter');
  Exit;
end;
showMessage('Pencarian berdasarkan nama, oleh dukcapil dibagi dalam beberapa halaman. Mohon Bersabar');
halTotal := 1;
hal := 1;
try
repeat

pb1.Show;
no_prop := memoProp.Lines.Names[cbbProp.ItemIndex];
no_kab := memoKab.Lines.Names[cbbKab.ItemIndex];
no_kec := memoKec.Lines.Names[cbbKec.ItemIndex];
no_kel := memoKel.Lines.Names[cbbKel.ItemIndex];
aCapil := CapilCommon.create;
if aCapil.getNama(no_prop, no_kab, no_kec, no_kel, editNama.Text, IntToStr(hal)) then
begin
        hal := aCapil.Halaman;
        halTotal := aCapil.TotalHalaman;
        // memoResponse.Lines.Add(aCapil.Uri);
        // memoResponse.Lines.Add(aCapil.tsResponse.Text);
         ShowMessage('OK');
end else ShowMessage('Data Tidak Ditemukan');

ACapil.Free;

pb1.Hide;
until hal = halTotal;

finally
  btn1.Click;
end;
end;

procedure TForm1_cariDiDukcapil.cbbKabChange(Sender: TObject);
begin

if cbbKab.ItemIndex >= 0 then
  isi_memo_kec(memoProp.Lines.Names[cbbProp.ItemIndex], memoKab.Lines.Names[cbbKab.ItemIndex]);

end;

procedure TForm1_cariDiDukcapil.cbbKecChange(Sender: TObject);
var no_prop, no_kab, no_kec : string;
begin
if cbbKec.ItemIndex >= 0 then
begin
no_prop := memoProp.Lines.Names[cbbProp.ItemIndex];
no_kab := memoKab.Lines.Names[cbbKab.ItemIndex];
no_kec := memoKec.Lines.Names[cbbKec.ItemIndex];
isi_memo_kel(no_prop, no_kab, no_kec);
if cbbKel.Items.Count > 0 then
    cbbKel.ItemIndex := cbbKel.Items.IndexOf(formStorage1.StoredValue['KEL']);
end;
end;

procedure TForm1_cariDiDukcapil.cbbPropChange(Sender: TObject);
begin
if cbbProp.ItemIndex >= 0 then isi_memo_kab(memoProp.Lines.Names[cbbProp.ItemIndex]);
end;

procedure TForm1_cariDiDukcapil.eksekusi_script(aScript: TStrings);
begin
with dataKunjungan do
begin
  with FDScript2 do begin
  SQLScripts.Clear;
  SQLScripts.Add;
  SQLScripts[0].SQL.Assign(aScript);
  ValidateAll;
  ExecuteAll;
end;

end;
end;

procedure TForm1_cariDiDukcapil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
formStorage1.StoredValue['KEC']:= cbbKec.Items[cbbKec.ItemIndex];
formStorage1.StoredValue['KEL']:= cbbKel.Items[cbbKel.ItemIndex];
end;

procedure TForm1_cariDiDukcapil.FormShow(Sender: TObject);
begin

isi_memo_prop;

end;

procedure TForm1_cariDiDukcapil.isi_memo_kab(no_prop: string);
var sql0, sql1 : string;
i : Integer;
aCapilCommon : CapilCommon;
begin
// isi prop
pb1.Show;
sql0 := 'select no_kab ||''='' || nama_kab as kab from capil.capil_kab where no_prop = %s';
sql1 := Format(sql0, [no_prop]);
with dataKunjungan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(sql1);
  fdQueryBuka.Open;

  if fdQueryBuka.IsEmpty then
  begin
  // isi dulu capil_kec
  aCapilCommon := CapilCommon.Create;
  aCapilCommon.getKab(StrToInt(no_prop));
  aCapilCommon.Free;
   // DURUNG RAMPUNG
  fdQueryBuka.Close;
  fdQueryBuka.Open;
  end;

    memoKab.Clear;
    fdQueryBuka.First;
    while not fdQueryBuka.eof do
    begin
       memoKab.Lines.Add(fdQueryBuka.FieldByName('kab').asString);
       fdQueryBuka.Next;
    end;
    fdQueryBuka.Close;
end;
cbbKab.Clear;
for I := 0 to memoKab.Lines.Count - 1 do
  begin
    cbbKab.Items.Add(memoKab.Lines.ValueFromIndex[i]);
  end;

  if cbbKab.Items.Count > 0 then
  begin
  cbbKab.ItemIndex := cbbKab.Items.IndexOf('REMBANG');
  cbbKabChange(cbbKab);
  end;
pb1.Hide;
end;

procedure TForm1_cariDiDukcapil.isi_memo_kec(no_prop, no_kab : string);
var sql0, sql1 : string;
i : Integer;
aCapilCommon : CapilCommon;
begin
// isi prop
pb1.Show;
sql0 := 'select no_kec ||''='' || nama_kec as kec from capil.capil_kec where no_prop = %s and no_kab = %s';
sql1 := Format(sql0, [no_prop, no_kab]);
with dataKunjungan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(sql1);
  fdQueryBuka.Open;

  if fdQueryBuka.IsEmpty then
  begin
  // isi dulu capil_kec
  aCapilCommon := CapilCommon.Create;
  aCapilCommon.getKec(StrToInt(no_prop), StrToInt(no_kab));
  aCapilCommon.Free;
   // DURUNG RAMPUNG
  fdQueryBuka.Close;
  fdQueryBuka.Open;
  end;

    memoKec.Clear;
    fdQueryBuka.First;
    while not fdQueryBuka.eof do
    begin
       memoKec.Lines.Add(fdQueryBuka.FieldByName('kec').asString);
       fdQueryBuka.Next;
    end;
    fdQueryBuka.Close;
end;
cbbKec.Clear;
for I := 0 to memoKec.Lines.Count - 1 do
  begin
    cbbKec.Items.Add(memoKec.Lines.ValueFromIndex[i]);
  end;

if cbbKec.Items.Count > 0 then
    begin
    cbbKec.ItemIndex := cbbKec.Items.IndexOf(formStorage1.StoredValue['KEC']);
    cbbKecChange(cbbKec);
    end;
pb1.Hide;
end;

procedure TForm1_cariDiDukcapil.isi_memo_kel(no_prop, no_kab, no_kec : string);
var sql0, sql1 : string;
i : Integer;
aCapilCommon : CapilCommon;
begin
// isi prop
pb1.Show;
sql0 := 'select no_kel ||''='' || nama_kel as kel from capil.capil_kel where no_prop = %s and no_kab = %s and no_kec = %s';
sql1 := Format(sql0, [no_prop, no_kab, no_kec]);
with dataKunjungan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(sql1);
  fdQueryBuka.Open;

  if fdQueryBuka.IsEmpty then
  begin
  // isi dulu capil_kec
  aCapilCommon := CapilCommon.Create;
  aCapilCommon.getKel(StrToInt(no_prop), StrToInt(no_kab), StrToInt(no_kec));
  aCapilCommon.Free;
   // DURUNG RAMPUNG
  fdQueryBuka.Close;
  fdQueryBuka.Open;
  end;

    memoKel.Clear;
    fdQueryBuka.First;
    while not fdQueryBuka.eof do
    begin
       memoKel.Lines.Add(fdQueryBuka.FieldByName('kel').asString);
       fdQueryBuka.Next;
    end;
    fdQueryBuka.Close;
end;
cbbKel.Clear;
for I := 0 to memoKel.Lines.Count - 1 do
  begin
    cbbKel.Items.Add(memoKel.Lines.ValueFromIndex[i]);
  end;
pb1.Hide;
end;

procedure TForm1_cariDiDukcapil.isi_memo_prop;
var sql0, sql1 : string;
i : Integer;
  aCapilCommon : CapilCommon;
begin
pb1.Show;
// isi prop
sql0 := 'select no_prop ||''='' || nama_prop as prop from capil.capil_prop';
sql1 := sql0;
with dataKunjungan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(sql1);
  fdQueryBuka.Open;

  if fdQueryBuka.IsEmpty then
  begin
  // isi dulu capil_kec
  aCapilCommon := CapilCommon.Create;
  aCapilCommon.getProp;
  aCapilCommon.Free;
  fdQueryBuka.Close;
  fdQueryBuka.Open;
  end;

    memoProp.Clear;
    fdQueryBuka.First;
    while not fdQueryBuka.eof do
    begin
       memoProp.Lines.Add(fdQueryBuka.FieldByName('prop').asString);
       fdQueryBuka.Next;
    end;
    fdQueryBuka.Close;
end;
cbbProp.Clear;
for I := 0 to memoProp.Lines.Count - 1 do
  begin
    cbbProp.Items.Add(memoProp.Lines.ValueFromIndex[i]);
  end;

if cbbProp.Items.Count > 0 then
begin
cbbProp.ItemIndex := cbbProp.Items.IndexOf('JAWA TENGAH');
cbbPropChange(cbbProp);
end;

pb1.Hide;
end;

end.
