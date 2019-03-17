unit brProlanisU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brProlanis = class(bridgeCommon)
    private
    kd_obat_sk : Integer;
    procedure masukkanDelPeserta(id : string);
    procedure masukkanDelKegiatan(id : string);
    procedure masukkanGetProlanisKelompok(jenis_kelompok : string);
    procedure masukkanGetProlanisKegiatan(bulan: TDate);
    procedure masukkanGetProlanisPeserta(kegiatan, edu_id: string);
    procedure masukkanPostKegiatan(id : string);
    procedure masukkanPostPeserta(id : string);
    public
    function ambilJsonPostObat(idxstr : string) : string;
    function ambilJsonPostKegiatan(id : string) : string;
    function ambilJsonPostPesertaTunggal(id : string) : string;
    function getProlanisKelompok (jenis_kelompok : string) : Boolean;
    function getProlanisKegiatan (bulan : TDate) : Boolean;
    function getProlanisPeserta (kegiatan, edu_id : string) : Boolean;
    function postPeserta (idxstr : string) : Boolean;
    function postPesertaTunggal (id : string) : Boolean;
    function postKegiatan (id : string) : Boolean;
    function delPeserta (id : string) : Boolean;
    function delKegiatan (id : string) : Boolean;
    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;


implementation
     uses SynCommons, synautil;

{ brObat }

function brProlanis.ambilJsonPostObat(idxstr : string): string;
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

function brProlanis.ambilJsonPostPesertaTunggal(id: string): string;
var sql0, sql1 : string;
    tglStr : string;
    i, panjang_edu : Integer;
    V1 : Variant;
begin
  Result := '';
  parameter_bridging('PROLANIS PESERTA', 'POST');
//  DateTimeToString(tglSqlStr, 'YYYY-MM-DD', tgl);
  sql0 := 'select * from kelompok.peserta_view where id = %s and status = ''belum terkirim'';';
  sql1 := Format(sql0,[QuotedStr(id)]);

 // ShowMessage(idxstr);
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.Add(sql1);
  fdQuery.Open();

  panjang_edu := Length(fdQuery.FieldByName('edu_id').AsString);

  V1 := _Json(FormatJson);
//  ShowMessage(FormatJson);
  if (not fdQuery.IsEmpty) and (panjang_edu > 0) then
  begin
    // ShowMessage('not empty');
     jejakIdxstr := fdQuery.FieldByName('id').AsString;
     V1.eduId := fdQuery.FieldByName('edu_id').AsString;
     V1.noKartu := fdQuery.FieldByName('no_kartu').AsString;
     fdQuery.Close;

     Result := VariantSaveJSON(V1);
    // FileFromString(Result, 'pendaftaran.json');

  end else ShowMessage('data kosong');
  //ShowMessage(Result);
end;

function brProlanis.ambilJsonPostKegiatan(id: string): string;
var sql0, sql1 : string;
    tglStr : string;
    i : Integer;
    V1 : Variant;
begin
  Result := '';
  parameter_bridging('PROLANIS KEGIATAN', 'POST');
//  DateTimeToString(tglSqlStr, 'YYYY-MM-DD', tgl);
  sql0 := 'select * from kelompok.kegiatan_view where id = %s and edu_id is null;';
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
     jejakIdxstr := fdQuery.FieldByName('id').AsString;
//     V1.eduId := fdQuery.FieldByName('edu_id').AsString;
     V1.clubId := fdQuery.FieldByName('club_id').AsInteger;
     DateTimeToString(tglStr, 'dd-MM-yyyy', fdQuery.FieldByName('tgl_pelayanan').AsDateTime);
     V1.tglPelayanan := tglStr;
     V1.kdKegiatan := fdQuery.FieldByName('kd_kegiatan').AsString;
     V1.kdKelompok := fdQuery.FieldByName('kd_program').AsString;
     V1.materi := fdQuery.FieldByName('materi').AsString;
     V1.pembicara := fdQuery.FieldByName('pembicara').AsString;
     V1.lokasi := fdQuery.FieldByName('lokasi').AsString;
     V1.keterangan := fdQuery.FieldByName('keterangan').AsString;
     V1.biaya := fdQuery.FieldByName('biaya').AsInteger;

     fdQuery.Close;

     Result := VariantSaveJSON(V1);
    // FileFromString(Result, 'pendaftaran.json');

  end else ShowMessage('data kosong - semua data sudah dikirimkan?');
  //ShowMessage(Result);
end;

constructor brProlanis.Create;
begin
inherited Create;
end;

function brProlanis.delKegiatan(id: string): Boolean;
var sql0, sql1 : string;
    tglStr : string;
    edu_id, no_kartu : string;
    jml : Integer;
    ts : TMemoryStream;
begin
Result := False;
parameter_bridging('PROLANIS KEGIATAN', 'DELETE');
// mencari parameter pendaftaran
sql0 := 'select edu_id from kelompok.kegiatan_view where id = %s and edu_id is not null;';
sql1 := Format(sql0, [quotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open;
//jml := fdQuery.FieldByName('jml').AsInteger;
edu_id := fdQuery.FieldByName('edu_id').AsString;

if not fdQuery.IsEmpty then
begin
Uri := StringReplace( Uri, '{eduId}', edu_id,  []);
//Uri := StringReplace( Uri, '{noKartu}', no_kartu,  []);
//Uri := StringReplace(Uri, '{noUrut}', noUrut, []);

  Result := httpDelete(Uri);
  jejakIdxstr := id;
  if Result then masukkanDelKegiatan(id);
end else adl_berhasil := True;
  fdQuery.Close;
  FDConn.Close;
end;

function brProlanis.delPeserta(id : string): Boolean;
var sql0, sql1 : string;
    tglStr : string;
    edu_id, no_kartu : string;
    ts : TMemoryStream;
begin
Result := False;
parameter_bridging('PROLANIS PESERTA', 'DELETE');
// mencari parameter pendaftaran
sql0 := 'select edu_id, no_kartu from kelompok.peserta_view where id = %s and lower(status) = ''ok'';';
sql1 := Format(sql0, [quotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open;
if not fdQuery.IsEmpty then
begin
edu_id := fdQuery.FieldByName('edu_id').AsString;
no_kartu := fdQuery.FieldByName('no_kartu').AsString;


Uri := StringReplace( Uri, '{eduId}', edu_id,  []);
Uri := StringReplace( Uri, '{noKartu}', no_kartu,  []);
//Uri := StringReplace(Uri, '{noUrut}', noUrut, []);

  Result := httpDelete(Uri);
  jejakIdxstr := id;
  if Result then masukkanDelPeserta(id);
end else adl_berhasil := True;
  fdQuery.Close;
  FDConn.Close;
end;

destructor brProlanis.destroy;
begin
inherited;
end;

function brProlanis.getProlanisKelompok(jenis_kelompok : string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('PROLANIS KELOMPOK', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{kdJnsKelompok}', jenis_kelompok,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetProlanisKelompok(jenis_kelompok);
FDConn.Close;
end;

function brProlanis.getProlanisPeserta(kegiatan, edu_id: string): Boolean;
var sql0, sql1, tglStr : string;
begin
Result := False;
//DateTimeToString(tglStr, 'dd-MM-yyyy', bulan);
parameter_bridging('PROLANIS PESERTA', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{eduId}', edu_id,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetProlanisPeserta(kegiatan, edu_id);
FDConn.Close;
end;

function brProlanis.getProlanisKegiatan(bulan: TDate): Boolean;
var sql0, sql1, tglStr : string;
begin
Result := False;
DateTimeToString(tglStr, 'dd-MM-yyyy', bulan);
parameter_bridging('PROLANIS KEGIATAN', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{bulan}', tglStr,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetProlanisKegiatan(bulan);
FDConn.Close;
end;

procedure brProlanis.masukkanDelKegiatan(id: string);
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
   if logRest('DEL', 'PROLANIS KEGIATAN', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

     sqlDel0 := 'update kelompok.kegiatan set edu_id = null where id = %s;';
     sqlDel1 := Format(sqlDel0, [quotedStr(id)]);

    tSl.Add(sqlDel1);

   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

procedure brProlanis.masukkanDelPeserta(id : string);
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
   if logRest('DEL', 'PROLANIS PESERTA', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

     sqlDel0 := 'update kelompok.kegiatan_peserta set status = ''belum terkirim'' where id = %s;';
     sqlDel1 := Format(sqlDel0, [quotedStr(id)]);

    tSl.Add(sqlDel1);

   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

procedure brProlanis.masukkanGetProlanisKelompok(jenis_kelompok : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    club_id, kd_program, tgl_mulai, tgl_akhir, alamat, nama, ketua_no_hp, ketua_nama : string;
    //sedia : integer;
begin
//       ShowMessage('awal masukkan get');
   if logRest('GET', 'PROLANIS KELOMPOK', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from kelompok.club where club_id = %s;';
   sql0 := 'insert into kelompok.club(puskesmas, club_id, kd_program, tgl_mulai, tgl_akhir, alamat, nama, ketua_no_hp, ketua_nama) ' +
           'values(0, %s, %s, %s, %s, %s, %s, %s, %s);';
   tsL := TStringList.Create;
   try

   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       club_id := dataResp.response.list.Value(i).clubId;
       kd_program := dataResp.response.list.Value(i).jnsKelompok.kdProgram;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       tgl_mulai := dataResp.response.list.Value(i).tglMulai;
       if VarIsEmptyOrNull(dataResp.response.list.Value(i).tglAkhir) then
             tgl_akhir := 'null' else QuotedStr(dataResp.response.list.Value(i).tglAkhir);
       alamat := dataResp.response.list.Value(i).alamat;
       nama := dataResp.response.list.Value(i).nama;
       ketua_no_hp := dataResp.response.list.Value(i).ketua_noHP;
       ketua_nama := dataResp.response.list.Value(i).ketua_nama;


       sqlDel1 := Format(sqlDel0,[QuotedStr(club_id)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [
                  club_id,
                  QuotedStr(kd_program),
                  QuotedStr(tgl_mulai),
                  tgl_akhir,
                  QuotedStr(alamat),
                  QuotedStr(nama),
                  QuotedStr(ketua_no_hp),
                  QuotedStr(ketua_nama)
                  ]);
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

procedure brProlanis.masukkanGetProlanisPeserta(kegiatan, edu_id: string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    no_kartu : string;

begin
//       ShowMessage('awal masukkan get');
   if logRest('GET', 'PROLANIS PESERTA', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from kelompok.kegiatan_peserta where kegiatan = %s and edu_id = %s and no_kartu = %s;';
   sql0 := 'insert into kelompok.kegiatan_peserta(status, kegiatan, edu_id, no_kartu) ' +
           'values(''OK'', %s, %s, %s);';
   tsL := TStringList.Create;
   try

   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       edu_id := dataResp.response.list.Value(i).eduId;
       no_kartu := dataResp.response.list.Value(i).peserta.noKartu;

       sqlDel1 := Format(sqlDel0,[QuotedStr(kegiatan), QuotedStr(edu_id), QuotedStr(no_kartu)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [
                  QuotedStr(kegiatan),
                  QuotedStr(edu_id),
                  QuotedStr(no_kartu)
                  ]);
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

procedure brProlanis.masukkanGetProlanisKegiatan(bulan: TDate);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    edu_id, tgl_pelayanan, kegiatan, kelompok, materi, pembicara, lokasi, keterangan : string;
    club_prol, biaya : integer;
begin
//       ShowMessage('awal masukkan get');
   if logRest('GET', 'PROLANIS KEGIATAN', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from kelompok.kegiatan where edu_id = %s;';
   sql0 := 'insert into kelompok.kegiatan(puskesmas, edu_id, club_prol, tgl_pelayanan, kegiatan, kelompok, materi, pembicara, lokasi, keterangan, biaya) ' +
           'values(0, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s );';
   tsL := TStringList.Create;
   try

   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

//       ShowMessage(IntToStr(dataResp.response.list._Count));

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       edu_id := dataResp.response.list.Value(i).eduId;
       club_prol := dataResp.response.list.Value(i).clubProl.clubId;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       tgl_pelayanan := dataResp.response.list.Value(i).tglPelayanan;
       kegiatan := dataResp.response.list.Value(i).kegiatan.nama;
       kelompok := dataResp.response.list.Value(i).kelompok.nama;
       materi := dataResp.response.list.Value(i).materi;
       pembicara := dataResp.response.list.Value(i).pembicara;
       lokasi := dataResp.response.list.Value(i).lokasi;
       keterangan := dataResp.response.list.Value(i).keterangan;
       biaya := dataResp.response.list.Value(i).biaya;

       sqlDel1 := Format(sqlDel0,[QuotedStr(edu_id)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [
                  QuotedStr(edu_id),
                  IntToStr(club_prol),
                  QuotedStr(tgl_pelayanan),
                  QuotedStr(kegiatan),
                  QuotedStr(kelompok),
                  QuotedStr(materi),
                  QuotedStr(pembicara),
                  QuotedStr(lokasi),
                  QuotedStr(keterangan),
                  IntToStr(biaya)
                  ]);
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

procedure brProlanis.masukkanPostKegiatan(id : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    tglStr : string;
    nonSpesialis : Boolean;
    edu_id : string;
    kdRacikan : string;
begin
//       ShowMessage('awal masukkan get');
   if logRest('POST', 'PROLANIS KEGIATAN', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

    edu_id := dataResp.response.message;

     sqlDel0 := 'update kelompok.kegiatan set edu_id = %s where id = %s;';
     sqlDel1 := Format(sqlDel0, [QuotedStr(edu_id), QuotedStr(id)]);

    tSl.Add(sqlDel1);
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

procedure brProlanis.masukkanPostPeserta(id: string);
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
   if logRest('POST', 'PROLANIS PESERTA', tsResponse.Text) then
   begin
   tsL := TStringList.Create;
   try
   dataResp := _jsonFast(tsResponse.Text);
// ShowMessage(tsResponse.Text);

     sqlDel0 := 'update kelompok.kegiatan_peserta set status = ''ok'' where id = %s;';
     sqlDel1 := Format(sqlDel0, [quotedStr(id)]);

    tSl.Add(sqlDel1);

   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;
end;

function brProlanis.postKegiatan(id: string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin

mStream := TMemoryStream.Create;
Result := False;
//ShowMessage('awal pendaftaran');
js := ambilJsonPostKegiatan(id);
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
if Result then masukkanPostKegiatan(id);


FDConn.Close;
end;

function brProlanis.postPeserta(idxstr : string): Boolean;
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
        if Result then masukkanPostKegiatan(id);
        //FileFromString(dataStr, 'tes_obat'+ IntToStr(i)+'.json');
      end;
   finally

      ts.Free;
   end;
end;
end;
FDConn.Close;
end;


function brProlanis.postPesertaTunggal(id: string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin

mStream := TMemoryStream.Create;
Result := False;
//ShowMessage('awal pendaftaran');
js := ambilJsonPostPesertaTunggal(id);
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
if Result then masukkanPostPeserta(id);


FDConn.Close;
end;

end.
