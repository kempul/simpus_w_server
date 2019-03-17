unit srvMkelasU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMkelas = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function getMkelas : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkangetMkelas;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot;
{ srvMkelas }

constructor srvMkelas.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvMkelas.destroy;
begin
aScript.Free;
inherited;
end;

function srvMkelas.getMkelas: Boolean;
var sql0, sql1 : string;

begin
Result := False;
parameter_bridging('masterkelas', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkangetMkelas;
FDConn.Close;
end;


function srvMkelas.jsonToSql(table, json: string; update: Boolean;
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

procedure srvMkelas.masukkangetMkelas;
var dataResp, dataList : Variant;
    i, idx : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    kelas : string;

begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from simpus.m_kelas where idx is not null;';
   sql0 := 'insert into simpus.m_kelas(idx, kelas) values(%s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
       idx := dataResp.Value(i).idx;
       kelas := dataResp.Value(i).kelas;
//       ShowMessage('BooltoStr (nonSpesialis, True)');

       sql1 := Format(sql0, [IntToStr(idx), QuotedStr(kelas)]);
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
