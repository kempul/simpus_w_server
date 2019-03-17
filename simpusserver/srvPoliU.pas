unit srvPoliU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPoli = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    function jsonToSql(table : string = 'simpus.m_poli'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    procedure masukkangetPoli;
    public
    aScript : TStringList;
    function getPoli : Boolean;
    function postPoli(id : string) : Boolean;
    function deletePoli(id : string) : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvPoli }

function srvPoli.ambilJsonPost(id: string): string;
var sql0, sql1, tglStr : string;
    V1 : Variant;
begin
parameter_bridging('poli puskesmas', 'post');
V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.m_poli where id = %s';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin
//ShowMessage(VariantSaveJSON(V1));
  V1.id := id;
  V1.puskesmas := fdQuery.FieldByName('puskesmas').AsInteger;
  V1.poli := fdQuery.FieldByName('poli').AsString;
 V1.poliSakit := fdQuery.FieldByName('poli_sakit').AsBoolean;
 V1.adlAktif := fdQuery.FieldByName('adl_aktif').AsBoolean;
 V1.adlBpjs := fdQuery.FieldByName('adl_bpjs').AsBoolean;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvPoli.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvPoli.deletePoli(id: string): Boolean;
begin
parameter_bridging('poli puskesmas', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{id}', id);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('simpus.m_poli', id) else
         jika_gagal('delete', Uri, '', 'simpus.m_poli', id);

FDConn.Close;
end;

destructor srvPoli.destroy;
begin
aScript.Free;
inherited;
end;

function srvPoli.getPoli: Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('poli', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkangetPoli;
FDConn.Close;
end;


function srvPoli.jsonToSql(table, json: string; update: Boolean;
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

procedure srvPoli.masukkangetPoli;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0 : string;
    sql0, sql1 : string;
    kdPoli, nmPoli : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');
   sqlDel0 := 'delete from simpus.m_poli where adl_bpjs = false;';
   sql0 := 'insert into simpus.m_poli(kode, poli, poli_sakit, adl_bpjs) values(%s, %s, %s, false);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
       kdPoli := dataResp.Value(i).kode;
       nmPoli := dataResp.Value(i).poli;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       poliSakit := dataResp.Value(i).poliSakit;

       sql1 := Format(sql0, [QuotedStr(kdPoli), quotedStr(nmPoli), BoolToStr(poliSakit, True)]);
       tSl.Add(sql1);
//       showMessage(sqlDel1);
//       showMessage(sql1);
     end;
   finally
      aScript.Assign(tSl);
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
end;

function srvPoli.postPoli(id : string) : Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
mStream := TMemoryStream.Create;
Result := False;

js := ambilJsonPost(id);
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;

if Result then jika_berhasil('simpus.m_poli', id) else
         jika_gagal('post', Uri, js, 'simpus.m_poli', id);

//ShowMessage(tsResponse.Text);

FDConn.Close;
end;

end.
