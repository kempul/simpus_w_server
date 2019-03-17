unit srvMeninggalU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMeninggal = class(srvCommon)
    private
    function ambilJsonPost(idxstr : string) : string;
    public
    aScript : TStringList;

    function postMeninggal(idxstr : string): Boolean;
    function deleteMeninggal(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostMeninggal(idxstr : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvMeninggal }

function srvMeninggal.ambilJsonPost(idxstr: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('meninggal', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.pulang_meninggal where idxstr = %s limit 1';
sql1 := Format(sql0, [QuotedStr(idxstr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open();

if fdQuery.IsEmpty then
begin
fdQuery.Close;
Exit;
end;

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd''T''hh:mm:ss', fdQuery.FieldByName('tanggal_meninggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.idxstr := idxstr;
  V1.tanggalMeninggal := tanggalDiagnosaStr;
  V1.sebabMeninggal := fdQuery.FieldByName('sebab_meninggal').AsString;
  V1.otopsi := fdQuery.FieldByName('otopsi').AsString;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);

end;

constructor srvMeninggal.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvMeninggal.deleteMeninggal(idxstr: string): Boolean;
begin
parameter_bridging('meninggal', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{idxstr}', idxstr);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('simpus.pulang_meninggal', idxstr) else
         jika_gagal('delete', Uri, '', 'simpus.pulang_meninggal', idxstr);

FDConn.Close;
end;

destructor srvMeninggal.destroy;
begin
aScript.Free;
inherited;
end;

function srvMeninggal.postMeninggal(idxstr : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(idxstr);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
  if Result then masukkanpostMeninggal(idxstr);


end;
FDConn.Close;
end;



procedure srvMeninggal.masukkanpostMeninggal(idxstr : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.pulang_meninggal set tanggal_server = %s where idxstr = %s;';
//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   try
   tglStr := v1.tanggalServer;
   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(idxstr)]);

    tSl.Add(sqlDel1);
    aScript.Assign(tSl);
    jalankanScript(tSl);
   finally
    FreeAndNil(tSl);
   end;
end;


end.
