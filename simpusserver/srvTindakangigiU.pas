unit srvTindakangigiU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvTindakangigi = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    public
    aScript : TStringList;

    function postTindakangigi(id : string): Boolean;
    function deleteTindakangigi(id : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostTindakangigi(id : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvTindakangigi }

function srvTindakangigi.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('tindakangigi', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.tindakangigi where id_tindakangigi = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if fdQuery.IsEmpty then
begin
fdQuery.Close;
Exit;
end;

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd', fdQuery.FieldByName('tgl_tindakan').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.idTindakangigi := id;
  V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
  V1.idx := fdQuery.FieldByName('idx').AsInteger;
  V1.tglTindakan := tanggalDiagnosaStr;
  V1.tindakan := fdQuery.FieldByName('tindakan').AsInteger;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end;

constructor srvTindakangigi.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvTindakangigi.deleteTindakangigi(id: string): Boolean;
begin
parameter_bridging('tindakangigi', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{idtindakangigi}', id);
Result:= httpDelete(Uri);

if Result then jika_berhasil('simpus.tindakangigi', id) else
         jika_gagal('delete', Uri, '', 'simpus.tindakangigi', id);

FDConn.Close;
end;

destructor srvTindakangigi.destroy;
begin
aScript.Free;
inherited;
end;

function srvTindakangigi.postTindakangigi(id : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(id);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;

if Result then masukkanpostTindakangigi(id);

end;
FDConn.Close;
end;



procedure srvTindakangigi.masukkanpostTindakangigi;
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.tindakangigi set tanggal_server = %s where id_tindakangigi = %s;';
//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   try
   tglStr := v1.tanggalServer;
   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(id)]);

    tSl.Add(sqlDel1);
    aScript.Assign(tSl);
    jalankanScript(tSl);
   finally
    FreeAndNil(tSl);
   end;
end;

end.
