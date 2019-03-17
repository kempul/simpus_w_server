unit srvPuskesmasU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPuskesmas = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.puskesmas'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function getPuskesmas(id : string) : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkangetPuskesmas(id : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot;
{ srvPuskesmas }

constructor srvPuskesmas.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvPuskesmas.destroy;
begin
aScript.Free;
inherited;
end;

function srvPuskesmas.getPuskesmas(id : string): Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('puskesmas', 'get');
uri := ReplaceStr(uri, '{puskesmas}', kodePkm);
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkangetPuskesmas(kodePkm);
FDConn.Close;
end;


function srvPuskesmas.jsonToSql(table, json: string; update: Boolean;
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

procedure srvPuskesmas.masukkangetPuskesmas(id : string);
var dataResp, dataPkm : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sql0, sql1 : string;
    kdDokter, nmDokter : string;
begin

   sqlDel0 := 'delete from simpus.puskesmas where kd_cabang is not null;';
//   sql0 := 'insert into simpus.puskesmas(kd_dokter, nama) values(%s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp._count - 1 do
     begin
       dataPkm := dataResp.Value(i);

       sql1 := jsonToSql('simpus.puskesmas', VariantSaveJSON(dataPkm)) + ';';
       sql1 := ReplaceStr(sql1, 'adlAktif', 'adl_aktif');
       sql1 := ReplaceStr(sql1, 'kdCabang', 'kd_cabang');
       sql1 := ReplaceStr(sql1, 'nmCabang', 'nm_cabang');
       sql1 := ReplaceStr(sql1, 'providerBpjs', 'provider_bpjs');


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
