unit srvPuskesmasPelayananU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPkmPelayanan = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    public
    aScript : TStringList;
    function postPkmPelayanan(id : string) : Boolean;
    function getPkmPelayanan(puskesmas : integer) : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkangetPkmPelayanan;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvPkmPelayanan }

function srvPkmPelayanan.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalStr : string;
    V1 : Variant;
begin
parameter_bridging('puskesmas pelayanan', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.pelayanan_view where id = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin

  DateTimeToString(tanggalStr, 'yyyy-MM-dd', fdQuery.FieldByName('tanggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.id := id;
  V1.puskesmas := fdQuery.FieldByName('puskesmas').AsInteger;
  V1.tanggal := tanggalStr;
  V1.poliTujuan := fdQuery.FieldByName('poli_tujuan').AsString;
  V1.jumlah := fdQuery.FieldByName('jumlah').AsInteger;
  V1.dilayani := fdQuery.FieldByName('dilayani').AsInteger;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvPkmPelayanan.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;


destructor srvPkmPelayanan.destroy;
begin
aScript.Free;
inherited;
end;

function srvPkmPelayanan.getPkmPelayanan(puskesmas: integer): Boolean;
begin
Result := False;
parameter_bridging('puskesmas pelayanan', 'get');
//ShowMessage(uri);
//ShowMessage(uri);

Uri := ReplaceStr(Uri, '{puskesmas}', IntToStr(puskesmas));
Result:= httpGet(uri);

//if Result then masukkangetMLab;
FDConn.Close;

end;

function srvPkmPelayanan.postPkmPelayanan(id : string): Boolean;
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

if Result then jika_berhasil('simpus.pelayanan_view', id) else
         jika_gagal('post', Uri, js, 'simpus.pelayanan_view', id);

end;
FDConn.Close;
end;



procedure srvPkmPelayanan.masukkangetPkmPelayanan;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    jsonStr : string;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    dBiaya, dIdRpt : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from simpus.m_poned where idx is not null;';
   sql0 := 'insert into simpus.m_imunisasi(biaya, id_rpt) values(%s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
        dataList := dataResp.Value(i);
        _Unique(dataList);
        jsonStr := VariantSaveJSON(dataList);
        sql1 := jsonToSql('simpus.m_poned', jsonStr) + ';';
        sql1 := ReplaceStr(sql1, 'jenisPenyakit', 'jenis_penyakit');

      // dBiaya := dataResp.Value(i).biaya;
      // dIdRpt := dataResp.Value(i).idRpt;
//       ShowMessage('BooltoStr (nonSpesialis, True)');

//       sql1 := Format(sql0, [QuotedStr(dBiaya), QuotedStr(dIdRpt)]);
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
