unit srvMLabU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMLab = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function getMLab : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkangetMLab;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot;
{ srvMLab }

constructor srvMLab.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvMLab.destroy;
begin
aScript.Free;
inherited;
end;

function srvMLab.getMLab: Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('lab master', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkangetMLab;
FDConn.Close;
end;


function srvMLab.jsonToSql(table, json: string; update: Boolean;
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
     akhir := 'insert into %s %s;';
     awal := GetJSONObjectAsSQL(json, update,False);
     Result := format(akhir,[table, awal]);
   end;
end;

procedure srvMLab.masukkangetMLab;
var dataResp, dataList : Variant;
    i : Integer;
    jsonStr, sqlStr : string;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    dBiaya, dIdRpt : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');


   sqlDel0 := 'delete from lab.m_lab where idx > -1;';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);

// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
         dataList := dataResp.Value(i);
         _Unique(dataList);
         jsonStr := VariantSaveJSON(dataList);
         sqlStr := jsonToSql('lab.m_lab', jsonStr);
         sqlStr := ReplaceStr(sqlStr, 'jenisPemeriksaan', 'jenis_pemeriksaan');
         sqlStr := ReplaceStr(sqlStr, 'jasaSarana', 'jasa_sarana');
         sqlStr := ReplaceStr(sqlStr, 'jasaPelayanan', 'jasa_pelayanan');

       tSl.Add(sqlStr);
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
