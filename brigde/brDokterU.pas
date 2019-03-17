unit brDokterU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brDokter = class(bridgeCommon)
    private
    procedure masukkanGetDokter;
    public
    function getDokter (mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons;
{ brDokter }

constructor brDokter.Create;
begin
  inherited Create;

end;

destructor brDokter.destroy;
begin

inherited;
end;

function brDokter.getDokter(mulaiDari : string; jumlahData : string): Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('DOKTER', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetDokter;
FDConn.Close;
end;


procedure brDokter.masukkanGetDokter;
var dataDokter, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDokter, nmDokter : string;
begin

   if logRest('GET', 'DOKTER', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from simpus.dokter where kd_dokter = %s;';
   sql0 := 'insert into simpus.dokter(kd_dokter, nama) values(%s, %s);';
   tsL := TStringList.Create;
//   tSl.Add(sqlDel0);

   try
   dataDokter := _jsonFast(tsResponse.Text);
   dataList := _JsonFast(dataDokter.response.list);
   for I := 0 to dataDokter.response.list._count - 1 do
     begin
       kdDokter := dataList.Value(i).kdDokter;
       nmDokter := dataList.Value(i).nmDokter;
//       ShowMessage(nmDokter);
       sqlDel1 := Format(sqlDel0,[QuotedStr(kdDokter)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdDokter), quotedStr(nmDokter)]);
       tSl.Add(sql1);
//       showMessage(sqlDel1);
//       showMessage(sql1);
     end;
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
end;
end;

end.
