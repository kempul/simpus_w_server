unit srvRawatinapU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvRawatinap = class(srvCommon)
    private
    function ambilJsonPost(idxstr : string) : string;
    public
    aScript : TStringList;
    function postRawatinap(idxstr : string): Boolean;
    function deleteRawatinap(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostRawatinap(idxstr : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvRawatinap }

function srvRawatinap.ambilJsonPost(idxstr: string): string;
var sql0, sql1, tglStr, tanggalMasukStr, tanggalPulangStr : string;
    V1 : Variant;
begin
parameter_bridging('rawatinap', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.rawat_inap where idxstr = %s limit 1';
sql1 := Format(sql0, [QuotedStr(idxstr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if fdQuery.IsEmpty then
begin
fdQuery.Close;
Exit;
end;
//ShowMessage(VariantSaveJSON(V1));
  V1.idxstr := idxstr;
  V1.kamar := fdQuery.FieldByName('kamar').AsString;
  V1.sdhPulang := fdQuery.FieldByName('sdh_pulang').AsInteger;
  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end;

constructor srvRawatinap.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvRawatinap.deleteRawatinap(idxstr: string): Boolean;
begin
Result := False;
parameter_bridging('rawatinap', 'delete');

Uri := ReplaceStr(Uri, '{id}', idxstr);
Result:= httpDelete(Uri);

if Result then jika_berhasil('simpus.rawat_inap', idxstr) else
         jika_gagal('delete', Uri, '', 'simpus.rawat_inap', idxstr);

FDConn.Close;
end;

destructor srvRawatinap.destroy;
begin
aScript.Free;
inherited;
end;

function srvRawatinap.postRawatinap(idxstr : string): Boolean;
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

if Result then jika_berhasil('simpus.rawat_inap', idxstr) else
         jika_gagal('post', Uri, js, 'simpus.rawat_inap', idxstr);

end;
FDConn.Close;
end;



procedure srvRawatinap.masukkanpostRawatinap(idxstr : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.rawat_inap set tanggal_server = %s where idxstr = %s;';
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
