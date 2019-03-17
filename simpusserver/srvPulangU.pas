unit srvPulangU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPulang = class(srvCommon)
    private
    function ambilJsonPost(idxstr : string) : string;
    public
    aScript : TStringList;
    function postPulang(idxstr : string): Boolean;
    function deleteKunjungan(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostPulang(idxstr : string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvPulang }

function srvPulang.ambilJsonPost(idxstr: string): string;
var sql0, sql1, tanggalPulangStr, tglRujukStr : string;
    V1 : Variant;
begin
parameter_bridging('pulang', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.pulang where idxstr = %s limit 1';
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

   DateTimeToString(tanggalPulangStr, 'yyyy-MM-dd''T''hh:mm:ss', fdQuery.FieldByName('pulang_tanggal').AsDateTime);
//ShowMessage(VariantSaveJSON(V1));
  V1.idxstr := idxstr;
  V1.pulangTanggal := tanggalPulangStr;
  V1.pulangSebab := fdQuery.FieldByName('pulang_sebab').AsString;
  V1.kontrolHarus := fdQuery.FieldByName('kontrol_harus').AsInteger;
  if (not fdQuery.FieldByName('provider_rujuk').IsNull) then
        V1.providerRujuk := fdQuery.FieldByName('provider_rujuk').AsString;
  if (not fdQuery.FieldByName('poli_rujuk').IsNull) then
        V1.poliRujuk := fdQuery.FieldByName('poli_rujuk').AsString;
  V1.kdTacc := fdQuery.FieldByName('kd_tacc').AsInteger;
  if (not fdQuery.FieldByName('alasan_tacc').IsNull) then
        V1.alasanTacc := fdQuery.FieldByName('alasan_tacc').AsString;
  if (not fdQuery.FieldByName('nm_tacc').IsNull) then
        V1.nmTacc := fdQuery.FieldByName('nm_tacc').AsString;

  V1.jenis := fdQuery.FieldByName('jenis').AsInteger;

  if (not fdQuery.FieldByName('tanggal_rujuk').IsNull) then
    begin
        DateTimeToString(tglRujukStr, 'yyyy-MM-dd', fdQuery.FieldByName('tanggal_rujuk').AsDateTime);
        V1.tanggalRujuk := tglRujukStr;
    end;
  if (not fdQuery.FieldByName('khusus').IsNull) then
        V1.khusus := fdQuery.FieldByName('khusus').AsString;

  if (not fdQuery.FieldByName('catatan').IsNull) then
        V1.catatan := fdQuery.FieldByName('catatan').AsString;

  if (not fdQuery.FieldByName('subspesialis').IsNull) then
        V1.subspesialis := fdQuery.FieldByName('subspesialis').AsString;

  if (not fdQuery.FieldByName('sarana').IsNull) then
        V1.sarana := fdQuery.FieldByName('sarana').AsString;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
   //ShowMessage(Result);

end;

constructor srvPulang.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvPulang.deleteKunjungan(idxstr: string): Boolean;
begin
Result := False;
parameter_bridging('kunjungan', 'delete');

Uri := ReplaceStr(Uri, '{idxstr}', idxstr);
Result:= httpDelete(Uri);
//if Result then masukkanpostPulang;
FDConn.Close;
end;

destructor srvPulang.destroy;
begin
aScript.Free;
inherited;
end;

function srvPulang.postPulang(idxstr : string): Boolean;
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

if Result then masukkanpostPulang(idxstr);

end;
FDConn.Close;
end;



procedure srvPulang.masukkanpostPulang(idxstr : string);
var
    tSl : TStringList;
    sqlDel0, sqlDel1 : string;
    tglStr : string;
    v1 : Variant;
begin
//       ShowMessage('awal masukkan get');

   v1 := _Json(tsResponse.Text);
//   DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal);
   sqlDel0 := 'update simpus.pulang set tanggal_server = %s where idxstr = %s;';
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
