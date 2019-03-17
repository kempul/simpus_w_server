unit brKesadaranU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brKesadaran = class(bridgeCommon)
    private
    public
    function getKesadaran : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanGetKesadaran;
//    property Uri : string;
  end;


implementation
     uses SynCommons;

{ brKesadaran }

constructor brKesadaran.Create;
begin
inherited Create;
end;

destructor brKesadaran.destroy;
begin
inherited;
end;

function brKesadaran.getKesadaran: Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('KESADARAN', 'GET');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetKesadaran;
FDConn.Close;
end;


procedure brKesadaran.masukkanGetKesadaran;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdSadar, nmSadar : string;
begin
//       ShowMessage('awal masukkan get');
   if logRest('GET', 'KESADARAN', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from simpus.m_kesadaran where idx = %s;';
   sql0 := 'insert into simpus.m_kesadaran(idx, kesadaran_str) values(%s, %s);';
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdSadar := dataResp.response.list.Value(i).kdSadar;
       nmSadar := dataResp.response.list.Value(i).nmSadar;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       sqlDel1 := Format(sqlDel0,[QuotedStr(kdSadar)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdSadar), quotedStr(nmSadar)]);
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