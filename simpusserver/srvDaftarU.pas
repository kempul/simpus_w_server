unit srvDaftarU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvDaftar = class(srvCommon)
    private
//    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    function ambilJsonDaftarGagalFcmPost(puskesmas : integer; tanggal : TDateTime) : string;
    function ambilJsonDaftarAndroPost(puskesmas : integer; tanggal : TDateTime) : string;
    function ambilJsonDaftarPost(puskesmas : Integer; tanggal : TDate) : string;
    function ambilJsonDaftarFcmPost(id : string) : string;
    function ambilJsonDaftarTopikFcmPost(id : string) : string;
    procedure masukkanGetDaftarAndro(puskesmas : integer; tanggal : TDateTime);
    procedure masukkanPostDaftar(idxstr : string);
    procedure masukkanPostDaftarAndro(id : string);
    procedure masukkanPostDaftarFcm(id : string);
    procedure masukkanPostDaftarGagalFcm(id : string);

    public
    aScript : TStringList;
    constructor Create;
    destructor destroy;
    function getDaftarAndro(puskesmas : integer; tanggal : TDateTime) : Boolean;
    function postDaftar(puskesmas: Integer; tanggal : TDate) : Boolean;
    function postDaftarAndro(puskesmas : Integer; tanggal : TDateTime) : Boolean;
    function postDaftarFcm(id : string; logOnly : Boolean) : Boolean;
    function postDaftarGagalFcm(puskesmas : integer; tanggal : TDateTime; logOnly : Boolean) : Boolean;

//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvDaftarAndro }

function srvDaftar.ambilJsonDaftarFcmPost(id: string): string;
var sql0, sql1, tanggalStr : string;
    V1 : Variant;
begin
parameter_bridging('daftar fcm', 'post');

V1 := _Json(FormatJson);

Result := '';

sql0 := 'select * from andro.daftar_fcm_view where id = %s and token is not null and fcm = false;';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;
if not fdQuery.IsEmpty then
begin
//  DateTimeToString(tanggalStr, 'yyyy-MM-dd', fdQuery.FieldByName('tanggal').AsDateTime);
//ShowMessage(VariantSaveJSON(V1));
  V1.id := id;
  V1.rm := fdQuery.FieldByName('rm').AsString;
  V1.poli := fdQuery.FieldByName('poli').AsString;
  V1.nomor := fdQuery.FieldByName('nomor').AsInteger;
  V1.token := fdQuery.FieldByName('token').AsString;

  fdQuery.Close;

   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

function srvDaftar.ambilJsonDaftarGagalFcmPost(puskesmas : integer; tanggal : TDateTime): string;
var sql0, sql1, tanggalStr : string;
    V0, V1, V2 : Variant;
begin
DateTimeToString(tanggalStr, 'YYYY-MM-DD', tanggal);
parameter_bridging('daftar fcm gagal', 'post');

V0 := _Arr([]);
V2 := _Json(FormatJson);

Result := '';

sql0 := 'select * from andro.daftar_andro where puskesmas = %s and tanggal = %s and fcm = false and length(alasan) > 5;';
sql1 := Format(sql0, [IntToStr(puskesmas), QuotedStr(tanggalStr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;
if not fdQuery.IsEmpty then
begin
  fdQuery.First;
  while not fdQuery.Eof do
  begin
  VarClear(V1);
  V1 := V2;
  V1.id := fdQuery.FieldByName('id').AsString;;
  V1.rm := fdQuery.FieldByName('rm').AsString;
  V1.poli := fdQuery.FieldByName('poli').AsString;
  V1.token := fdQuery.FieldByName('token').AsString;
  V1.nomor := 0;
  V1.alasan := fdQuery.FieldByName('alasan').AsString;

  V0.add(V1);
  fdQuery.Next;
  end;
//ShowMessage(VariantSaveJSON(V1));

  fdQuery.Close;

   Result := VariantSaveJSON(V0);
end else fdQuery.Close;
end;

function srvDaftar.ambilJsonDaftarPost(puskesmas : Integer; tanggal: TDate): string;
var sql0, sql1, tanggalStr : string;
    V0,V1, V2 : Variant;
begin
DateTimeToString(tanggalStr, 'yyyy-MM-dd', tanggal);

parameter_bridging('daftar', 'post');
V0 := _Arr([]);
V2 := _Json(FormatJson);

Result := '';

sql0 := 'select * from simpus.daftar where puskesmas = %s and tanggal = %s and dari_server is null;';
sql1 := Format(sql0, [intToStr(puskesmas), QuotedStr(tanggalStr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;
//ShowMessage('tes');
if not fdQuery.IsEmpty then
begin
//  ShowMessage(VariantSaveJSON(V2));
  fdQuery.First;
  while not fdQuery.Eof do
  begin
    VarClear(V1);
    V1 := V2;
    V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
    V1.puskesmas := fdQuery.FieldByName('puskesmas').AsInteger;
    V1.tanggal := tanggalStr;
    V1.nomor := fdQuery.FieldByName('nomor').AsInteger;
    V1.antri := fdQuery.FieldByName('antri').AsInteger;
    V1.poliTujuan := fdQuery.FieldByName('poli_tujuan').AsString;

    if not fdQuery.FieldByName('andro').IsNull then
           V1.andro := fdQuery.FieldByName('andro').AsString;
{
    if not fdQuery.FieldByName('token').IsNull then
           V1.token := fdQuery.FieldByName('token').AsString;
 }
    if not fdQuery.FieldByName('dari_server').IsNull then
           V1.dariServer := fdQuery.FieldByName('dari_server').AsString;

    V0.Add(V1);
    fdQuery.Next;
  end;

  fdQuery.Close;

   Result := VariantSaveJSON(V0);
end else fdQuery.Close;
end;

function srvDaftar.ambilJsonDaftarTopikFcmPost(id: string): string;
begin

end;

function srvDaftar.ambilJsonDaftarAndroPost(puskesmas : integer; tanggal : TDateTime): string;
var sql0, sql1, tanggalStr : string;
    V2, V1, V0 : Variant;
begin
DateTimeToString(tanggalStr, 'yyyy-MM-dd', tanggal);

parameter_bridging('daftar andro', 'post');
V0 := _Arr([]);
V2 := _Json(FormatJson);

Result := '';

sql0 := 'select * from andro.daftar_andro where puskesmas = %s and tanggal = %s and dari_server is null;';
sql1 := Format(sql0, [IntToStr(puskesmas), QuotedStr(tanggalStr)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin
fdQuery.First;
while not fdQuery.Eof do
begin
  VarClear(V1);
  V1 := V2;
  V1.id := fdQuery.FieldByName('id').AsString;
  V1.puskesmas := fdQuery.FieldByName('puskesmas').AsInteger;
  V1.tanggal := tanggalStr;
  V1.idx := fdQuery.FieldByName('idx').AsInteger;
  V1.diambil := 1;

  V1.rm := fdQuery.FieldByName('rm').AsString;
  V1.biaya := fdQuery.FieldByName('biaya').AsString;
  V1.poli := fdQuery.FieldByName('poli').AsString;

  if not fdQuery.FieldByName('token').IsNull then
         V1.token := fdQuery.FieldByName('token').AsString;
  if not fdQuery.FieldByName('alasan').IsNull then
         V1.alasan := fdQuery.FieldByName('alasan').AsString;
  if not fdQuery.FieldByName('idxstr').IsNull then
         V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
  V0.Add(V1);
fdQuery.Next;
end;
  fdQuery.Close;

   Result := VariantSaveJSON(V0);
end else fdQuery.Close;
end;

constructor srvDaftar.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvDaftar.destroy;
begin
aScript.Free;
inherited;
end;

function srvDaftar.getDaftarAndro(puskesmas : integer; tanggal : TDateTime): Boolean;
var sql0, sql1, strTgl : string;
begin
parameter_bridging('daftar andro', 'get');

DateTimeToString(strTgl, 'YYYY-MM-DD', tanggal);
Result := False;
//ShowMessage(uri);
Uri := ReplaceStr(Uri, '{puskesmas}', IntToStr(puskesmas));
Uri := ReplaceStr(Uri, '{tanggal}', strTgl);

//ShowMessage(uri);

Result:= httpGet(uri);

if Result then masukkanGetDaftarAndro(puskesmas, tanggal);
FDConn.Close;
end;



procedure srvDaftar.masukkanGetDaftarAndro(puskesmas : integer; tanggal : TDateTime);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sql0, sql1 : string;
    dId, dRm, dBiaya, dPoli, dToken, strTgl : string;
    dIdx : Integer;
    adlAktif : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sql0 := 'insert into andro.daftar_andro(id, puskesmas, tanggal, idx, rm, biaya, poli, token) ' +
            'values(%s, %s, %s, %s, %s, %s, %s, %s) on conflict (id) do nothing;';
   tsL := TStringList.Create;
   DateTimeToString(strTgl, 'YYYY-MM-DD', tanggal);
//   ShowMessage(tsResponse.Text);

   dataResp := _jsonFast(tsResponse.Text);

   if dataResp._count > 0 then
   begin
   try
   for I := 0 to dataResp._count - 1 do
     begin
       dId := dataResp.Value(i).id;
//       ShowMessage('id : ' + dId);
       dIdx := dataResp.Value(i).idx;
//       ShowMessage('nik : ' + dNik);

      dRm := dataResp.Value(i).rm;
      dBiaya := dataResp.Value(i).biaya;
      dPoli := dataResp.Value(i).poli;

       dToken := dataResp.Value(i).token;
//       ShowMessage('token : ' + dToken);

       sql1 := Format(sql0, [
            QuotedStr(dId),
            IntToStr(puskesmas),
            QuotedStr(strTgl),
            IntTostr(dIdx),
            QuotedStr(dRm),
            QuotedStr(dBiaya),
            QuotedStr(dPoli),
            QuotedStr(dToken)
            ]);
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
end;

procedure srvDaftar.masukkanPostDaftar(idxstr: string);
var
  V1 : Variant;
  dariServer : string;
  sql0, sql1 : string;
  tSL : TStringList;
begin
  //ShowMessage(tsResponse.Text);
  V1 := _Json(tsResponse.Text);

  dariServer := V1.dariServer;
  sql0 := 'update simpus.daftar set dari_server = %s where idxstr = %s;';
  sql1 := Format(sql0,[
            QuotedStr(dariServer),
            QuotedStr(idxstr)
            ]);
  tSL := TStringList.Create;
  try
    tSL.Add(sql1);
    jalankanScript(tSL);
  finally
    tSL.Free;
  end;

end;

procedure srvDaftar.masukkanPostDaftarAndro(id: string);
var
  V1 : Variant;
  dariServer : string;
  sql0, sql1 : string;
  tSL : TStringList;
begin
  //ShowMessage(tsResponse.Text);
  V1 := _Json(tsResponse.Text);
  dariServer := V1.dariServer;

  sql0 := 'update andro.daftar_andro set diambil = 1 and dari_server = %s where id = %s;';
  sql1 := Format(sql0,[
            QuotedStr(dariServer),
            QuotedStr(id)
            ]);
  tSL := TStringList.Create;
  try
    tSL.Add(sql1);
    jalankanScript(tSL);
  finally
    tSL.Free;
  end;

end;

procedure srvDaftar.masukkanPostDaftarFcm(id: string);
var
  V1 : Variant;
  dariServer : string;
  sql0, sql1 : string;
  tSL : TStringList;
begin
  //ShowMessage(tsResponse.Text);
//  V1 := _Json(tsResponse.Text);

  sql0 := 'update andro.daftar_andro set fcm = true where id = %s;';
  sql1 := Format(sql0,[
            QuotedStr(id)
            ]);
  tSL := TStringList.Create;
  try
    tSL.Add(sql1);
    jalankanScript(tSL);
  finally
    tSL.Free;
  end;

end;

procedure srvDaftar.masukkanPostDaftarGagalFcm(id : string);
var
  V1 : Variant;
  dariServer : string;
  sql0, sql1 : string;
  tSL : TStringList;
begin
  //ShowMessage(tsResponse.Text);
//  V1 := _Json(tsResponse.Text);

  sql0 := 'update andro.daftar_andro set fcm = true where id = %s;';
  sql1 := Format(sql0,[
            QuotedStr(id)
            ]);
  tSL := TStringList.Create;
  try
    tSL.Add(sql1);
    jalankanScript(tSL);
  finally
    tSL.Free;
  end;

end;

function srvDaftar.postDaftar(puskesmas : Integer; tanggal : TDate): Boolean;
var
    mStream : TMemoryStream;
    js, jsX, idxstr, Uri0 : string;
    V0, V1 : Variant;
    i : Integer;
begin
Result := False;

js := ambilJsonDaftarPost(puskesmas, tanggal);
if Length(js) > 20 then
begin
  V0 := _Json(js);
  if V0._count > 0 then
  begin
    for I := 0 to V0._count - 1 do
      begin
        Result := False;
        VarClear(V1);
        V1 := V0.Value(i);
        _Unique(V1);
        idxstr := V1.idxstr;
        Uri0 := ReplaceStr(Uri, '{idxsr}', idxstr);
        //V1.token := Uri0;
        jsX := VariantSaveJSON(V1);
        mStream := TMemoryStream.Create;
        WriteStrToStream(mStream, jsX);

        Result:= httpPost(Uri0, mStream);
       // FileFromString(jsX, 'jsX' + IntToStr(i) + '.json');
        mStream.Free;

        if Result then jika_berhasil('simpus.daftar', idxstr) else
                 jika_gagal('post', Uri0, jsX, 'simpus.daftar', idxstr);

        if Result then masukkanPostDaftar(idxstr);

      end;
  end;
end;
FDConn.Close;
end;

function srvDaftar.postDaftarAndro(puskesmas : Integer; tanggal : TDateTime): Boolean;
var
    mStream : TMemoryStream;
    V1, V2 : Variant;
    js, jsX, id, Uri0 : string;
    i : Integer;
begin
Result := False;

js := ambilJsonDaftarAndroPost(puskesmas, tanggal);
if Length(js) > 10 then
begin
  V1 := _Json(js);
  if V1._count > 0 then
  begin
    for I := 0 to V1._count - 1 do
      begin
      Result := False;
      VarClear(V2);
      V2 := V1.Value(i);
      _Unique(V2);
      id := V2.id;
      Uri0 := ReplaceStr(Uri, '{id}', id);

      jsX := VariantSaveJSON(V2);
      mStream := TMemoryStream.Create;
      WriteStrToStream(mStream, jsX);

      Result:= httpPost(Uri0, mStream);
      mStream.Free;

      //FileFromString(jsX, 'jsX' + IntToStr(i)+'.json');

      if Result then jika_berhasil('andro.daftar_andro', id) else
               jika_gagal('post', Uri, js, 'andro.daftar_andro', id);

      if Result then masukkanPostDaftarAndro(id);

      end;
  end;
end;
FDConn.Close;
end;

function srvDaftar.postDaftarFcm(id: string; logOnly : Boolean): Boolean;
var
    mStream : TMemoryStream;
    js : string;
begin
Result := False;

js := ambilJsonDaftarFcmPost(id);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{id}', id);
if not logOnly then  Result:= httpPost(Uri, mStream);

FormatJson := js;
mStream.Free;

if Result then jika_berhasil('andro.daftar_fcm_view', id) else
         jika_gagal('post', Uri, js, 'andro.daftar_fcm_view', id);

if Result then masukkanPostDaftarFcm(id);

end;
FDConn.Close;
end;

function srvDaftar.postDaftarGagalFcm(puskesmas : integer; tanggal : TDateTime; logOnly: Boolean): Boolean;
var
    mStream : TMemoryStream;
    js, jsX, id : string;
    V0, V1 : Variant;
  I: Integer;
begin
Result := False;

js := ambilJsonDaftarGagalFcmPost(puskesmas, tanggal);

if Length(js) > 10 then
begin
V0 := _Json(js);
if V0._count > 0 then
begin
  for I := 0 to V0._count - 1 do
  begin
    Result := False;
    VarClear(V1);
    V1 := V0.Value(i);
    _Unique(V1);
    id := V1.id;
    jsX := VariantSaveJSON(V1);
    mStream := TMemoryStream.Create;
    WriteStrToStream(mStream, jsX);

    //Uri := ReplaceStr(Uri, '{id}', id);
    if not logOnly then  Result:= httpPost(Uri, mStream);
    FormatJson := jsX;
    FileFromString(FormatJson, 'jsX'+ IntToStr(i)+ '.json');
    mStream.Free;

    if Result then jika_berhasil('andro.daftar_andro', id) else
             jika_gagal('post', Uri, jsX, 'andro.daftar_andro', id);

    if Result then masukkanPostDaftarGagalFcm(id);
  end;


end;

end;
FDConn.Close;
end;

end.
