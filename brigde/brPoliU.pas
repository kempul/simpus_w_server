unit brPoliU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brPoli = class(bridgeCommon)
    private
    procedure masukkanGetPoliFktp;
    procedure masukkanGetPoliFktl;
    public
    aScript : TStringList;
    function getPoliFktp(mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    function getPoliFktl(mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons;

{ brPoli }

constructor brPoli.Create;
begin
inherited Create;
aScript := TStringList.Create;
end;

destructor brPoli.destroy;
begin
  aScript.Free;
  inherited;
end;

function brPoli.getPoliFktl(mulaiDari, jumlahData: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('POLI FKTL', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetPoliFktl;
FDConn.Close;
end;

function brPoli.getPoliFktp(mulaiDari, jumlahData: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('POLI FKTP', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetPoliFktp;
FDConn.Close;
end;

procedure brPoli.masukkanGetPoliFktl;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sql0, sql1 : string;
    kdPoli, nmPoli : string;
   // poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');
if logRest('GET', 'POLI FKTL', tsResponse.Text) then
begin
   sqlDel0 := 'delete from simpus.poli_rujukan where kdpoli is not null;';
   sql0 := 'insert into simpus.poli_rujukan(kdpoli, nmpoli) values(%s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdPoli := dataResp.response.list.Value(i).kdPoli;
       nmPoli := dataResp.response.list.Value(i).nmPoli;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
//       poliSakit := dataResp.response.list.Value(i).poliSakit;

       sql1 := Format(sql0, [QuotedStr(kdPoli), quotedStr(nmPoli)]);
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

procedure brPoli.masukkanGetPoliFktp;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sql0, sql1 : string;
    kdPoli, nmPoli : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');
if logRest('GET', 'POLI FKTP', tsResponse.Text) then
begin
   sqlDel0 := 'delete from simpus.m_poli where adl_bpjs = true;';
   sql0 := 'insert into simpus.m_poli(kode, poli, poli_sakit, adl_bpjs) values(%s, %s, %s, true);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdPoli := dataResp.response.list.Value(i).kdPoli;
       nmPoli := dataResp.response.list.Value(i).nmPoli;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       poliSakit := dataResp.response.list.Value(i).poliSakit;

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
end;

end.
