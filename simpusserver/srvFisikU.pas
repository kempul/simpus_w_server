unit srvFisikU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvFisik = class(srvCommon)
    private

    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    function ambilJsonPost(idxstr : string) : string;
    public
    aScript : TStringList;
    function postFisik(idxstr : string): Boolean;
    function deleteFisik(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostFisik(idxstr : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil, JclStrings;
{ srvFisik }

function srvFisik.ambilJsonPost(idxstr: string): string;
var sql0, sql1 : string;
    V1 : Variant;
    pvTgl : string;
begin

parameter_bridging('fisik', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.pemeriksaan_fisik where idxstr = %s limit 1';
sql1 := Format(sql0, [QuotedStr(idxstr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if fdQuery.IsEmpty then
begin
  fdQuery.Close;
  Exit;
end;
//ShowMessage(VariantSaveJSON(V1));
  pvTgl := getTanggalFromKunjungan(idxstr);
//  pvTgl := StrToDateTime(tglStr, )

  V1.idxstr := idxstr;
  V1.tinggiBadan := fdQuery.FieldByName('tinggi_badan').AsInteger;
  V1.beratBadan := fdQuery.FieldByName('berat_badan').AsInteger;
  V1.sistole := fdQuery.FieldByName('sistole').AsInteger;
  V1.diastole := fdQuery.FieldByName('diastole').AsInteger;
  V1.respiratory := fdQuery.FieldByName('respiratory').AsInteger;
  V1.heart := fdQuery.FieldByName('heart').AsInteger;
  V1.kesadaran := fdQuery.FieldByName('kesadaran').AsString;
  V1.keluhan := fdQuery.FieldByName('keluhan').AsString;
  V1.tanggalServer := pvTgl;

  fdQuery.Close;
  Result := VariantSaveJSON(V1);
end;

constructor srvFisik.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvFisik.deleteFisik(idxstr: string): Boolean;
begin
parameter_bridging('fisik', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{id}', idxstr);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('simpus.pemeriksaan_fisik', idxstr) else
         jika_gagal('delete', Uri, FormatJson, 'simpus.pemeriksaan_fisik', idxstr);

FDConn.Close;
end;

destructor srvFisik.destroy;
begin
aScript.Free;
inherited;
end;

function srvFisik.postFisik(idxstr : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(idxstr);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
  if Result then masukkanpostFisik(idxstr);
end;
FDConn.Close;
end;


function srvFisik.jsonToSql(table, json: string; update: Boolean;
  pkey: string): string;
var awal, akhir : string;
begin
   if update then
   begin
     akhir := 'update %s set %s where ';
     awal := GetJSONObjectAsSQL(json, update, False);
     Result := awal;
   end else
   begin
     akhir := 'insert into %s %s';
     awal := GetJSONObjectAsSQL(json, update,False);
     Result := format(akhir,[table, awal]);
   end;
end;

procedure srvFisik.masukkanpostFisik(idxstr : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, tglStr : string;
begin
//       ShowMessage('awal masukkan get');
   dataResp := _Json(tsResponse.Text);
   tglStr := dataResp.tanggalServer;
   sqlDel0 := 'update simpus.pemeriksaan_fisik set tanggal_server = %s where idxstr = %s;';
   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(idxstr)]);
   //   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   try
   tSl.Add(sqlDel1);
   aScript.Assign(tSl);
   jalankanScript(tSl);

   finally
     FreeAndNil(tSl);
   end;
end;

end.
