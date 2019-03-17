unit srvKamarU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvKamar = class(srvCommon)
    private
    function ambilJsonPost(idxstr : string) : string;
    function ambilJsonPostLog(id : string) : string;

    public
    aScript : TStringList;
    function postKamar(idxstr : string): Boolean;
    function postKamarlog(id : string): Boolean;
    function deleteKamar(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostKamar(idxstr : string);
    procedure masukkanpostKamarLog(id : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil, System.DateUtils;
{ srvKamar }

function srvKamar.ambilJsonPost(idxstr: string): string;
var sql0, sql1, terakhir : string;
    V1 : Variant;

begin
parameter_bridging('kamar', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.kamar_ri where id = %s limit 1';
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
  terakhir := DateTimeToIso8601Text(fdQuery.FieldByName('terakhir').AsDateTime);
  V1.id := idxstr;
  V1.puskesmas := fdQuery.FieldByName('puskesmas').AsInteger;
  V1.namaKamar := fdQuery.FieldByName('nama_kamar').AsString;
  V1.kelas := fdQuery.FieldByName('kelas').AsString;
  V1.jmlTt := fdQuery.FieldByName('jml_tt').AsInteger;
  V1.isi := fdQuery.FieldByName('isi').AsInteger;
  V1.sisa := fdQuery.FieldByName('sisa').AsInteger;
  V1.tarif := fdQuery.FieldByName('tarif').AsInteger;
  V1.terakhir := terakhir;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
 //ShowMessage(VariantSaveJSON(V1));
end;

function srvKamar.ambilJsonPostLog(id: string): string;
var sql0, sql1, tglStr, tanggalMasukStr, tanggalPulangStr : string;
    V1 : Variant;

begin
parameter_bridging('kamar-log', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.kamar_ri_log where id = %s limit 1';
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
//ShowMessage(VariantSaveJSON(V1));
  tglStr := DateTimeToIso8601Text(fdQuery.FieldByName('tanggal').AsDateTime);

  V1.id := fdQuery.FieldByName('id').AsString;
  V1.kamar := fdQuery.FieldByName('kamar').AsString;
  V1.jmlTt := fdQuery.FieldByName('jml_tt').AsInteger;
  V1.tanggal := tglStr;
  fdQuery.Close;
   Result := VariantSaveJSON(V1);

end;

constructor srvKamar.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvKamar.deleteKamar(idxstr: string): Boolean;
begin
Result := False;
parameter_bridging('kamar', 'delete');

Uri := ReplaceStr(Uri, '{id}', idxstr);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('simpus.kamar_ri', idxstr) else
         jika_gagal('delete', Uri, FormatJson, 'simpus.kamar_ri', idxstr);
FDConn.Close;
end;

destructor srvKamar.destroy;
begin
aScript.Free;
inherited;
end;

function srvKamar.postKamar(idxstr : string): Boolean;
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
  if Result then masukkanpostKamar(idxstr);
end;
FDConn.Close;
end;



function srvKamar.postKamarlog(id : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPostLog(id);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
  if Result then masukkanpostKamarLog(id);
end;
FDConn.Close;
end;

procedure srvKamar.masukkanpostKamar(idxstr : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.kamar_ri set dari_server = %s where id = %s;';
//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   try
   tglStr := ReplaceStr(v1.dariServer, 'T', ' ');

   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(idxstr)]);

    tSl.Add(sqlDel1);
    aScript.Assign(tSl);
    jalankanScript(tSl);
   finally
    FreeAndNil(tSl);
   end;
end;
procedure srvKamar.masukkanpostKamarLog(id: string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.kamar_ri_log set tanggal_server = %s where id = %s;';
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
