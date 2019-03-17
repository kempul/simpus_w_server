unit brPulangU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brPulang = class(bridgeCommon)
    private
    procedure masukkanGetPulangRi;
    procedure masukkanGetPulangRiNon;
    public
    function getPulangRi : Boolean;
    function getPulangRiNon : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons;

{ brPulang }

constructor brPulang.Create;
begin
inherited Create;
end;

destructor brPulang.destroy;
begin
   inherited;
end;

function brPulang.getPulangRi: Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('PULANG RI', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetPulangRi;
FDConn.Close;
end;

function brPulang.getPulangRiNon: Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('PULANG RI NON', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetPulangRiNon;
FDConn.Close;
end;

procedure brPulang.masukkanGetPulangRi;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdPulang, nmPulang : string;
//    sedia : integer;
begin
//       ShowMessage('awal masukkan get');
if logRest('GET', 'PULANG RI', tsResponse.Text) then
begin
//   sqlDel0 := 'delete from simpus2.m_obat where kd_obat = %s;';
   sql0 := 'update simpus.m_pulang set nm_pulang = %s, rawat_inap = true where kd_pulang = %s;';
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
//   ShowMessage(tsResponse.Text);
//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdPulang := dataResp.response.list.Value(i).kdStatusPulang;
       nmPulang := dataResp.response.list.Value(i).nmStatusPulang;
  //     ShowMessage(kdPulang);
//       ShowMessage('BooltoStr (nonSpesialis, True)');
//       sedia := dataResp.response.list.Value(i).sedia;
//       sqlDel1 := Format(sqlDel0,[QuotedStr(kdObat)]);
//       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(nmPulang), quotedStr(kdPulang)]);
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

procedure brPulang.masukkanGetPulangRiNon;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdPulang, nmPulang : string;
//    sedia : integer;
begin
//       ShowMessage('awal masukkan get');
if logRest('GET', 'PULANG RI NON', tsResponse.Text) then
begin
//   sqlDel0 := 'delete from simpus2.m_obat where kd_obat = %s;';
   sql0 := 'update simpus.m_pulang set nm_pulang = %s, rawat_jalan = true where kd_pulang = %s;';
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
//   ShowMessage(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin

       kdPulang := dataResp.response.list.Value(i).kdStatusPulang;
       nmPulang := dataResp.response.list.Value(i).nmStatusPulang;
  //     ShowMessage(kdPulang);
//       sedia := dataResp.response.list.Value(i).sedia;
//       sqlDel1 := Format(sqlDel0,[QuotedStr(kdObat)]);
//       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(nmPulang), quotedStr(kdPulang)]);
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
