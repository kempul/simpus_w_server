unit brDiagnosaU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brDiagnosa = class(bridgeCommon)
    private
    procedure masukkanGetDiagnosa;
    public
    function getDiagnosa (kataKunci : string; mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;

implementation
     uses SynCommons;
{ brDiagnosa }

constructor brDiagnosa.Create;
begin

inherited Create;
end;

destructor brDiagnosa.destroy;
begin
inherited;
end;

function brDiagnosa.getDiagnosa(kataKunci, mulaiDari,
  jumlahData: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('DIAGNOSA', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetDiagnosa;
FDConn.Close;
end;


procedure brDiagnosa.masukkanGetDiagnosa;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    nonSpesialis : Boolean;
begin
//       ShowMessage('awal masukkan get');


   if logRest('GET', 'DIAGNOSA', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_diagnosis where kd_diag = %s;';
   sql0 := 'insert into jkn.m_diagnosis(kd_diag, nm_diag, non_spesialis) values(%s, %s, %s);';
   tsL := TStringList.Create;

   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdDiag := dataResp.response.list.Value(i).kdDiag;
       nmDiag := dataResp.response.list.Value(i).nmDiag;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
       sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdDiag), quotedStr(nmDiag), BoolToStr(nonSpesialis, True)]);
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