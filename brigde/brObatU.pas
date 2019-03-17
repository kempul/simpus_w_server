unit brObatU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brObat = class(bridgeCommon)
    private
    kd_obat_sk : Integer;
    procedure masukkanDelObat(id : string);
    procedure masukkanGetObatRef;
    procedure masukkanPostObat(id : string);
    public
    function ambilJsonPostObat(idxstr : string) : string;
    function ambilJsonPostObatTunggal(id : string) : string;
    function getObatRef (kataKunci : string; mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    function postObat (idxstr : string) : Boolean;
    function postObatTunggal (id : string) : Boolean;
    function delObat (id : string) : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons, synautil;

{ brObat }

function brObat.ambilJsonPostObat(idxstr : string): string;
var sql0, sql1 : string;
    tes : string;
    i : Integer;
    V0 , V1, V2, list : Variant;

begin
  Result := '{"i": 0 }';
  parameter_bridging('OBAT', 'POST');


  sql0 := 'select * from jkn.obat_view where idxstr = %s and kd_obat_sk = 0 and bpjs_kunjungan is not null;';
  sql1 := Format(sql0,[QuotedStr(idxstr)]);
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.Add(sql1);
  fdQuery.Open();

if fdQuery.IsEmpty then
begin
  fdQuery.Close;
  Exit;
end;

  fdQuery.First;
  list := _Arr([]);
  V1 := _Json(FormatJson);
//  myJson := _ObjFast([list]);
  // tambahi id untuk merubah database jika respon sukses
  V1.Add('id', '');
  while not fdQuery.Eof do
  begin
      V1.id := fdQuery.FieldByName('id').AsString;
      V1.noKunjungan := fdQuery.FieldByName('bpjs_kunjungan').AsString;
      V1.racikan := fdQuery.FieldByName('racikan').AsBoolean;
  {/*
      if not fdQuery.FieldByName('kd_racikan').IsNull then
          V1.kdRacikan := fdQuery.FieldByName('kd_racikan').AsString;
  */}
      V1.obatDPHO := fdQuery.FieldByName('obat_dpho').AsBoolean;
      V1.kdObat := fdQuery.FieldByName('kd_obat').AsString;
      V1.signa1 := fdQuery.FieldByName('signa1').AsInteger;
      V1.signa2 := fdQuery.FieldByName('signa2').AsInteger;
      V1.jmlObat := fdQuery.FieldByName('jml_obat').AsInteger;
      V1.jmlPermintaan := fdQuery.FieldByName('jml_permintaan').AsInteger;
      if not fdQuery.FieldByName('nm_obat_non_dpho').IsNull then
            V1.nmObatNonDPHO := fdQuery.FieldByName('nm_obat_non_dpho').AsString;
      list.Add(V1);
      fdQuery.Next;
  end;
      V0 := _Obj(['list', list]);
      Result := VariantSaveJSON(V0);
      //FileFromString(Result, 'tes_obat.json');
      fdQuery.Close;
end;

function brObat.ambilJsonPostObatTunggal(id: string): string;
var sql0, sql1 : string;
    tglStr : string;
    i : Integer;
    V1 : Variant;
begin
  Result := '';
  parameter_bridging('OBAT', 'POST');
//  DateTimeToString(tglSqlStr, 'YYYY-MM-DD', tgl);
  sql0 := 'select * from jkn.obat_view where id = %s and kd_obat_sk = 0  and bpjs_kunjungan is not null;';
  sql1 := Format(sql0,[QuotedStr(id)]);

 // ShowMessage(idxstr);
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.Add(sql1);
  fdQuery.Open();

  V1 := _Json(FormatJson);
//  ShowMessage(FormatJson);
  if not fdQuery.IsEmpty then
  begin
    // ShowMessage('not empty');
     jejakIdxstr := fdQuery.FieldByName('idxstr').AsString;
     V1.kdObatSK := fdQuery.FieldByName('kd_obat_sk').AsInteger;
     V1.noKunjungan := fdQuery.FieldByName('bpjs_kunjungan').AsString;
     V1.racikan := fdQuery.FieldByName('racikan').AsBoolean;
     if not fdQuery.FieldByName('kd_racikan').IsNull then
      V1.kdRacikan := fdQuery.FieldByName('kd_racikan').AsString;
     V1.obatDPHO := fdQuery.FieldByName('obat_dpho').AsBoolean;
     V1.kdObat := fdQuery.FieldByName('kd_obat').AsString;
     V1.signa1 := fdQuery.FieldByName('signa1').AsInteger;
     V1.signa2 := fdQuery.FieldByName('signa2').AsInteger;
     V1.jmlObat := fdQuery.FieldByName('jml_obat').AsInteger;
     V1.jmlPermintaan := fdQuery.FieldByName('jml_permintaan').AsInteger;
     if not fdQuery.FieldByName('nm_obat_non_dpho').IsNull then
     V1.nmObatNonDPHO := fdQuery.FieldByName('nm_obat_non_dpho').AsString;

     fdQuery.Close;

     Result := VariantSaveJSON(V1);
    // FileFromString(Result, 'pendaftaran.json');

  end else ShowMessage('data kosong');
  //ShowMessage(Result);
end;

constructor brObat.Create;
begin
inherited Create;
end;

function brObat.delObat(id : string): Boolean;
var sql0, sql1 : string;
    tglStr : string;
    kdObatSk, noKunjungan : string;
    ts : TMemoryStream;
begin
Result := False;
parameter_bridging('OBAT', 'DELETE');
// mencari parameter pendaftaran
sql0 := 'select kd_obat_sk, bpjs_kunjungan from jkn.obat_view where id = %s;';
sql1 := Format(sql0, [quotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open;
kdObatSk := fdQuery.FieldByName('kd_obat_sk').AsString;
noKunjungan := fdQuery.FieldByName('bpjs_kunjungan').AsString;
fdQuery.Close;

Uri := StringReplace( Uri, '{kdObatSK}', kdObatSk,  []);
Uri := StringReplace( Uri, '{noKunjungan}', noKunjungan,  []);
//Uri := StringReplace(Uri, '{noUrut}', noUrut, []);

if StrToIntDef(kdObatSk, 0) > 0 then
begin
  Result := httpDelete(Uri);
  jejakIdxstr := id;
  if Result then masukkanDelObat(id);
end;
FDConn.Close;
end;

destructor brObat.destroy;
begin
inherited;
end;

function brObat.getObatRef(kataKunci, mulaiDari, jumlahData: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('OBAT REFERENSI', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetObatRef;
FDConn.Close;
end;

procedure brObat.masukkanDelObat(id : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    tglStr : string;
    nonSpesialis : Boolean;
    kdObatSk : integer;
    kdRacikan : string;
begin
//       ShowMessage('awal masukkan get');
   if logRest('DEL', 'OBAT', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

     sqlDel0 := 'update farmasi.pasien_obat set kd_obat_sk = 0, kd_racikan = null where id = %s;';
     sqlDel1 := Format(sqlDel0, [quotedStr(id)]);

    tSl.Add(sqlDel1);

   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

procedure brObat.masukkanGetObatRef;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdObat, nmObat : string;
    sedia : integer;
begin
//       ShowMessage('awal masukkan get');
   if logRest('GET', 'OBAT REFERENSI', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from farmasi.m_obat where kd_obat = %s;';
   sql0 := 'insert into farmasi.m_obat(kd_obat, nm_obat, sedia) values(%s, %s, %s);';
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdObat := dataResp.response.list.Value(i).kdObat;
       nmObat := dataResp.response.list.Value(i).nmObat;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       sedia := dataResp.response.list.Value(i).sedia;
       sqlDel1 := Format(sqlDel0,[QuotedStr(kdObat)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdObat), quotedStr(nmObat), IntToStr(sedia)]);
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

procedure brObat.masukkanPostObat(id : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    tglStr : string;
    nonSpesialis : Boolean;
    kdObatSk : integer;
    kdRacikan : string;
begin
//       ShowMessage('awal masukkan get');
   if logRest('POST', 'OBAT', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

    kdObatSk := dataResp.response.Value(0).message;
    if VarIsEmptyOrNull(dataResp.response.Value(1).message) then
          kdRacikan := '' else kdRacikan := dataResp.response.Value(1).message;

   if kdRacikan = '' then
   begin
     sqlDel0 := 'update farmasi.pasien_obat set kd_obat_sk = %s where id = %s;';
     sqlDel1 := Format(sqlDel0, [IntToStr(kdObatSk), quotedStr(id)]);
   end else
   begin
     sqlDel0 := 'update farmasi.pasien_obat set kd_obat_sk = %s, kd_racikan = %s where id = %s;';
     sqlDel1 := Format(sqlDel0, [IntToStr(kdObatSk), quotedStr(kdRacikan), quotedStr(id)]);
   end;

    tSl.Add(sqlDel1);
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

function brObat.postObat(idxstr : string): Boolean;
var sql0, sql1 : string;
    tglStr : string;
    no_urut : Integer;
    ts : TMemoryStream;
    V1, V2 : Variant;
    I: Integer;
    dataStr : string;
    js : string;
    id : string;
begin

Result := False;
//parameter_bridging('OBAT', 'POST');
js := ambilJsonPostObat(idxstr);
if Length(js) > 20 then
begin
V1 := _Json(js);
ts := TMemoryStream.Create;
if V1.list._count > 0 then
begin
   try
      for I := 0 to V1.list._count - 1 do
      begin
        VarClear(V2);
        V2:= V1.List.Value(i);
        _Unique(V2);
        id := V2.id;
        //ShowMessage(id);
        V2.delete('id');
        dataStr := VariantSaveJSON(V2);
        FormatJson := dataStr;
        ts.Clear;
        WriteStrToStream(ts, FormatJson);
        //ts.Write(dataStr[1], Length(dataStr));

        Result := httpPost(Uri, ts);
        jejakIdxstr := idxstr;
        if Result then masukkanPostObat(id);
        //FileFromString(dataStr, 'tes_obat'+ IntToStr(i)+'.json');
      end;
   finally

      ts.Free;
   end;
end;
end;
FDConn.Close;
end;


function brObat.postObatTunggal(id: string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin

mStream := TMemoryStream.Create;
Result := False;
//ShowMessage('awal pendaftaran');
js := ambilJsonPostObatTunggal(id);
//ShowMessage('akhir ambil json pendaftaran');
if Length(js) > 20 then
begin
WriteStrToStream(mStream, js);
FormatJson := js;
//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
//ShowMessage('awal post pendaftaran');
Result:= httpPost(Uri, mStream);
jejakIdxstr := id;
//ShowMessage('setelah post pendaftaran');
end;

mStream.Free;
if Result then masukkanPostObat(id);


FDConn.Close;
end;

end.
