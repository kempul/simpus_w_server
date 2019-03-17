unit srvMPonedU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMPoned = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function getMPoned : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanGetMPoned;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot;
{ srvMPoned }

constructor srvMPoned.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvMPoned.destroy;
begin
aScript.Free;
inherited;
end;

function srvMPoned.getMPoned: Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('masterponed', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetMPoned;
FDConn.Close;
end;


function srvMPoned.jsonToSql(table, json: string; update: Boolean;
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

procedure srvMPoned.masukkanGetMPoned;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    jsonStr : string;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    dBiaya, dIdRpt : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from simpus.m_poned where idx is not null;';
   sql0 := 'insert into simpus.m_imunisasi(biaya, id_rpt) values(%s, %s);';
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
        sql1 := jsonToSql('simpus.m_poned', jsonStr) + ';';
        sql1 := ReplaceStr(sql1, 'jenisPenyakit', 'jenis_penyakit');

      // dBiaya := dataResp.Value(i).biaya;
      // dIdRpt := dataResp.Value(i).idRpt;
//       ShowMessage('BooltoStr (nonSpesialis, True)');

//       sql1 := Format(sql0, [QuotedStr(dBiaya), QuotedStr(dIdRpt)]);
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
