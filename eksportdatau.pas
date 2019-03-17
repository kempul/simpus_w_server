unit eksportdatau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  JvToolEdit, Spin, JvCipher, JvZlibMultiple, JvSpecialProgress;

type
  TForm1_eksportData = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    formStorage1: TJvFormStorage;
    cipher1: TJvVigenereCipher;
    spinEdit1: TSpinEdit;
    cbb1: TJvComboBox;
    dirEdit1: TJvDirectoryEdit;
    btnEkport: TButton;
    lblFolder: TLabel;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spinEdit1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btnEkportClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    strPuskesmas : string;
    strTahun, strBln : string;
    procedure set_periode;
    procedure awal;
    procedure buka_data;
    procedure buat_sql;

    function set_teks(aFieldName : string) : string;
    function set_integer(aFieldName : string) : string;
    function set_tanggal(aFieldName, aFormat : string): string;
    function set_blobTeks(aFieldName : string): string;

  public
    { Public declarations }
  end;

var
  Form1_eksportData: TForm1_eksportData;

implementation

uses dmMaster, aau, aau111;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_eksportData.awal;
begin
strPuskesmas := Form111.storageUmum.StoredValue['puskesmas'];
set_periode;
end;

procedure TForm1_eksportData.btnEkportClick(Sender: TObject);
begin
buat_sql;
end;

procedure TForm1_eksportData.btn_closeClick(Sender: TObject);
begin
//Form111.storageUmum.StoredValue['folder ekspor'] := dirEdit1.Directory;
{
dataMaster.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
}
end;


procedure TForm1_eksportData.buat_sql;
var fName, fzName : string;
    sl : TStringList;
begin
 {
   if Length(strBln)= 1 then strBln := '0'+ strBln;
    fname := strTahun + strBln + '-' + strPuskesmas + '.zpus';
    try
     sl:=TStringList.Create;
//     Memo1.Clear;
     with dataMaster do
     begin
       conn1.Connected := false;
       conn1.Connected := True;
       uqEksportLaporan.Close;
       uqEksportLaporan.ParamByName('ip_tahun').AsInteger := spinEdit1.Value;
       uqEksportLaporan.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
       uqEksportLaporan.Open;

       uqEksportLaporan.First;
//       progressBar1.Maximum := q
        while not uqEksportLaporan.Eof do
        begin
          sl.Add(uqEksportLaporan.FieldByName('op_sql').AsString);
        //  memo1.Lines.Add(qEksportLaporan.FieldByName('op_sql').AsString);
          uqEksportLaporan.Next;
        end;
       conn1.Connected := False;
     end;
     fzName := dirEdit1.Directory + '\' + fName;
     sl.SaveToFile(fzName);
   finally
     sl.Free;
     showMessage('Data disimpan dg nama : '+ extractFileName(fzname)+ ' pada folder : '+ dirEdit1.Directory);
     cipher1.EncodeFile('15754', fzName);
   end;
   }
end;

procedure TForm1_eksportData.buka_data;
begin
{
with dataMaster do
begin
  conn1.Connected := false;
  uqPuskesmas.Open;
end;
}
end;

procedure TForm1_eksportData.cbb1Change(Sender: TObject);
begin
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);

end;

procedure TForm1_eksportData.FormShow(Sender: TObject);
begin
awal;
end;

function TForm1_eksportData.set_blobTeks(aFieldName: string): string;
var theText: string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    begin
    theText := dataMaster.uqbuka.FieldByName(aFieldName).AsString;
    result:=quotedStr(theText);
    end;
end;

function TForm1_eksportData.set_integer(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=IntToStr(dataMaster.uqbuka.FieldByName(aFieldName).AsInteger);
end;

procedure TForm1_eksportData.set_periode;
var th, bl, tg  : Word;
begin
   DecodeDate(Now, th, bl, tg);
   spinEdit1.Value := th;

   cbb1.Clear;
   with dataMaster do
   begin
     uqbuka.Close;
     uqbuka.SQL.Clear;
     uqbuka.SQL.Add('select bulan from m_bulan order by bln_id');
     uqbuka.Open;

     while not uqbuka.Eof do
     begin
       cbb1.Items.Add(uqbuka.FieldByName('bulan').AsString);
       uqbuka.Next;
     end;
     uqbuka.Close;
   end;
   cbb1.ItemIndex := bl -1;
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);
end;

function TForm1_eksportData.set_tanggal(aFieldName, aFormat: string): string;
var TheDateStr: string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
  begin
    DateTimeToString(TheDateStr, aFormat, dataMaster.uqbuka.FieldByName(aFieldName).AsDateTime);
    result:=quotedStr(TheDateStr);
  end;
end;

function TForm1_eksportData.set_teks(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=QuotedStr(dataMaster.uqbuka.FieldByName(aFieldName).AsString);
end;

procedure TForm1_eksportData.spinEdit1Change(Sender: TObject);
begin
   strTahun := IntToStr(spinEdit1.Value);
   strBln := IntToStr(cbb1.ItemIndex + 1);
end;

end.
