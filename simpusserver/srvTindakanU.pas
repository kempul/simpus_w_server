unit srvTindakanU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvTindakan = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    public
    aScript : TStringList;

    function postTindakan(id : string): Boolean;
    function deleteTindakan(id : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostTindakan(id : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvTindakan }

function srvTindakan.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('tindakan', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.tindakan where id_tindakan = %s limit 1';
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

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd''T''hh:nn:ss', fdQuery.FieldByName('tanggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.idTindakan := id;
  V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
  V1.nomor := fdQuery.FieldByName('nomor').AsInteger;
  V1.tanggal := tanggalDiagnosaStr;
  V1.kdTindakan := fdQuery.FieldByName('kd_tindakan').AsString;
  V1.biaya := fdQuery.FieldByName('biaya').AsInteger;
  V1.keterangan := fdQuery.FieldByName('keterangan').AsString;
  V1.hasil := fdQuery.FieldByName('hasil').AsInteger;
  V1.kdTindakanSK := fdQuery.FieldByName('kd_tindakan_sk').AsInteger;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end;

constructor srvTindakan.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvTindakan.deleteTindakan(id: string): Boolean;
begin
parameter_bridging('tindakan', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{idtindakan}', id);
Result:= httpDelete(Uri);

if Result then jika_berhasil('simpus.tindakan', id) else
         jika_gagal('delete', Uri, '', 'simpus.tindakan', id);

FDConn.Close;
end;

destructor srvTindakan.destroy;
begin
aScript.Free;
inherited;
end;

function srvTindakan.postTindakan(id : string): Boolean;
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

if Result then masukkanpostTindakan(id);

end;
FDConn.Close;
end;



procedure srvTindakan.masukkanpostTindakan(id : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.tindakan set tanggal_server = %s where id_tindakan = %s;';
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
