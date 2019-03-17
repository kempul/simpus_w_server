unit srvMTindakanU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMTindakan = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    function ambilJsonPost(kdTindakan : string) : string;
    public
    aScript : TStringList;
    function postMTindakan(kdTindakan : string): Boolean;
    function deleteMTindakan(kdTindakan : string): Boolean;
    function getMTindakan: Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanGetMTindakan;

//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvMTindakan }

function srvMTindakan.ambilJsonPost(kdTindakan: string): string;
var sql0, sql1, tglStr, tanggalMasukStr, tanggalPulangStr : string;
    V1 : Variant;
begin
parameter_bridging('mastertindakan', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.m_tindakan where kd_tindakan = %s limit 1';
sql1 := Format(sql0, [QuotedStr(kdTindakan)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin
//ShowMessage(VariantSaveJSON(V1));
  V1.kdTindakan := kdTindakan;
  V1.nmTindakan := fdQuery.FieldByName('nm_tindakan').asString;
  V1.maxTarif := fdQuery.FieldByName('max_tarif').AsInteger;
  V1.withValue := fdQuery.FieldByName('with_value').AsBoolean;
  V1.adlBpjs := fdQuery.FieldByName('adl_bpjs').AsInteger;

  fdQuery.Close;
  Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvMTindakan.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvMTindakan.deleteMTindakan(kdTindakan: string): Boolean;
begin
Result := False;
parameter_bridging('mastertindakan', 'delete');

Uri := ReplaceStr(Uri, '{kdtindakan}', kdTindakan);
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);
FDConn.Close;
end;

destructor srvMTindakan.destroy;
begin
aScript.Free;
inherited;
end;

function srvMTindakan.getMTindakan: Boolean;
begin
Result := False;
parameter_bridging('mastertindakan', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetMTindakan;
FDConn.Close;
end;

function srvMTindakan.postMTindakan(kdTindakan : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(kdTindakan);
if Length(js)> 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
//if Result then masukkanpostMTindakan;
end;
FDConn.Close;
end;


function srvMTindakan.jsonToSql(table, json: string; update: Boolean;
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

procedure srvMTindakan.masukkanGetMTindakan;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    kdTindakan, nmTindakan : string;
    maxTarif, adlBpjs : Integer;
    withValue : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from simpus.m_tindakan where adl_bpjs = 0;';
   sql0 := 'insert into simpus.m_tindakan(kd_tindakan, nm_tindakan, max_tarif, with_value, adl_bpjs) values(%s, %s, %s, %s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
       kdTindakan := dataResp.Value(i).kdTindakan;
       nmTindakan := dataResp.Value(i).nmTindakan;
       maxTarif := dataResp.Value(i).maxTarif;
       withValue := dataResp.Value(i).withValue;
       adlBpjs := dataResp.Value(i).adlBpjs;
//       ShowMessage('BooltoStr (nonSpesialis, True)');

       sql1 := Format(sql0, [
                          QuotedStr(kdTindakan),
                          QuotedStr(nmTindakan),
                          IntToStr(maxTarif),
                          BoolToStr(withValue, True),
                          IntToStr(adlBpjs)
                          ]);
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
end.
