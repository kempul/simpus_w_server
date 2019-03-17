unit srvPonedU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPoned = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function postPoned(idxstr : string) : Boolean;
    function deletePoned(idxstr : string) : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanPostPoned(idxstr : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvPoned }

function srvPoned.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('poned', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.pasien_poned where idxstr = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if fdQuery.IsEmpty then
begin
fdQuery.Close;
Exit;
end;

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd''T''hh:nn:ss', fdQuery.FieldByName('tanggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.idxstr := id;
  V1.poned := fdQuery.FieldByName('poned').AsInteger;
  V1.tanggal := tanggalDiagnosaStr;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end;


constructor srvPoned.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvPoned.deletePoned(idxstr: string): Boolean;
begin
parameter_bridging('poned', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{id}', idxstr);
Result:= httpDelete(Uri);

if Result then jika_berhasil('simpus.pasien_poned', idxstr) else
         jika_gagal('delete', Uri, '', 'simpus.pasien_poned', idxstr);
FDConn.Close;
end;

destructor srvPoned.destroy;
begin
aScript.Free;
inherited;
end;

function srvPoned.postPoned(idxstr : string): Boolean;
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

if Result then masukkanPostPoned(idxstr);

end;
FDConn.Close;
end;


function srvPoned.jsonToSql(table, json: string; update: Boolean;
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

procedure srvPoned.masukkanPostPoned(idxstr : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.pasien_poned set tanggal_server = %s where idxstr = %s;';
//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   try
   tglStr := v1.tanggalServer;
   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(idxstr)]);

    tSl.Add(sqlDel1);
    aScript.Assign(tSl);
    jalankanScript(tSl);
   finally
    FreeAndNil(tSl);
   end;
end;

end.
