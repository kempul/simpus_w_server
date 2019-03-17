unit brKunjunganU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils, synautil;
type

  brKunjungan = class(bridgeCommon)
    private
//    procedure masukkanGetPendaftaranUrut;
    is_post : Boolean;
    //no_kartu : string;
   // no_kunjungan : string;
    procedure masukkanPostKunjungan(idxstr : string);
    procedure masukkanPutKunjungan(idxstr : string);
    function masukkanGetRujukan(idxstr, noKunjungan : string) : Boolean;
    function cek_isPost(idxstr : string) : Boolean;
    function StrToPostgesDate (strDate : string) : string;

    public
    aScript : TStringList;
    function ambilJsonKunjungan(idxstr : string) : string;
    function postKunjungan(idxstr : string) : Boolean;
    function postKunjunganX(idxstr, dataStr : string) : Boolean;
    function getRujukan(idxstr : string) : Boolean;


    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;

implementation
     uses SynCommons;

{ brKunjungan }

function brKunjungan.ambilJsonKunjungan(idxstr : string): String;
var sql0, sql1 : string;
    tglStr, tglPulangStr, noKunjungan, noKartu : string;
    i : Integer;
    V1 : Variant;
begin
  Result := '';
  parameter_bridging('KUNJUNGAN', 'POST');
  V1 :=  _Json(FormatJson);

  sql0 := 'select * from jkn.kunjungan_view where idxstr = %s and kunj_sakit = true;';
  sql1 := Format(sql0,[QuotedStr(idxstr)]);
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.Add(sql1);
  fdQuery.Open;

  if not fdQuery.IsEmpty then
  begin
   // ShowMessage('not empty');
    DateTimeToString(tglStr, 'DD-MM-YYYY', fdQuery.FieldByName('tanggal').AsDateTime);
    DateTimeToString(tglPulangStr, 'DD-MM-YYYY', fdQuery.FieldByName('pulang_tanggal').AsDateTime);
    noKartu := fdQuery.FieldByName('no_kartu').AsString;
    if fdQuery.FieldByName('bpjs_kunjungan').IsNull then is_post := true else
       begin
          is_post := False;
          noKunjungan := fdQuery.FieldByName('bpjs_kunjungan').AsString;
          V1.noKunjungan := noKunjungan;
       end;

    V1.noKartu := noKartu;
    V1.tglDaftar := tglStr;
    V1.kdPoli := fdQuery.FieldByName('kd_poli').AsString;
    V1.keluhan := fdQuery.FieldByName('keluhan').AsString;
    V1.kdSadar := fdQuery.FieldByName('kd_sadar').AsString;
    V1.sistole := fdQuery.FieldByName('sistole').AsInteger;
     V1.diastole := fdQuery.FieldByName('diastole').AsInteger;
     V1.beratBadan := fdQuery.FieldByName('berat_badan').AsInteger;
     V1.tinggiBadan := fdQuery.FieldByName('tinggi_badan').AsInteger;
     V1.respRate := fdQuery.FieldByName('respiratory').AsInteger;
     V1.heartRate := fdQuery.FieldByName('heart').AsInteger;
     V1.terapi := fdQuery.FieldByName('tindakan').AsString;
{
     if not fdQuery.FieldByName('kd_provider').IsNull then
        V1.kdProviderRujukLanjut := fdQuery.FieldByName('kd_provider').AsString;
}
     V1.kdStatusPulang := fdQuery.FieldByName('kd_pulang').AsString;
     V1.tglPulang := tglPulangStr;
     V1.kdDokter := fdQuery.FieldByName('dokter').AsString;
     V1.kdDiag1 := fdQuery.FieldByName('kd_diag1').AsString;

     if not fdQuery.FieldByName('kd_diag2').IsNull then
        V1.kdDiag2 := fdQuery.FieldByName('kd_diag2').AsString;

     if not fdQuery.FieldByName('kd_diag3').IsNull then
        V1.kdDiag3 := fdQuery.FieldByName('kd_diag3').AsString;

     // rujukIntrnal masih kosong


     if (fdQuery.FieldByName('pulang_sebab').AsString = 'Rujuk Internal') then
        V1.kdPoliRujukInternal := fdQuery.FieldByName('poli_rujukan').AsString;

     V1.kdTacc := fdQuery.FieldByName('kd_tacc').AsInteger;

     if not fdQuery.FieldByName('alasan_tacc').IsNull then
        V1.alasanTacc := fdQuery.FieldByName('alasan_tacc').AsString;

    fdQuery.Close;
    Result := VariantSaveJSON(V1);
  end else fdQuery.Close;
  //FileFromString(Result, 'kunjunganxxx.json');
  //ShowMessage(Result);
end;

function brKunjungan.cek_isPost(idxstr: string): Boolean;
var
  sql0, sql1 : string;
begin
  parameter_bridging('KUNJUNGAN', 'POST');

  sql0 := 'select * from jkn.kunjungan_view where idxstr = %s;';
  sql1 := Format(sql0,[QuotedStr(idxstr)]);
  fdQuery.Close;
  fdQuery.SQL.Clear;
  fdQuery.SQL.Add(sql1);
  fdQuery.Open;

  Result := True;
  if not fdQuery.IsEmpty then
  begin
    //ShowMessage('not empty');
    if fdQuery.FieldByName('bpjs_kunjungan').IsNull then Result := true else
       begin
          Result := False;
       end;
    end;
    fdQuery.Close;
end;

constructor brKunjungan.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
  //no_kunjungan := '';
end;

destructor brKunjungan.destroy;
begin
  aScript.Free;
  inherited;
end;


function brKunjungan.getRujukan(idxstr: string): Boolean;
var sql0, sql1 : string;
    no_kunjungan : string;
begin
Result := False;
parameter_bridging('RUJUKAN', 'GET');
sql0 := 'select bpjs_kunjungan from jkn.kunjungan_view where idxstr = %s;';
sql1 := Format(sql0, [QuotedStr(idxstr)]);

fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open();

if not fdQuery.IsEmpty then
begin
no_kunjungan := fdQuery.FieldByName('bpjs_kunjungan').AsString;
fdQuery.Close;
//ShowMessage(uri);
Uri := StringReplace( Uri, '{noKunjungan}', no_kunjungan,  []);
//ShowMessage(uri);

Result:= httpGet(uri);
if Result then
begin
  Result := masukkanGetRujukan(idxstr, no_kunjungan);
end;
end else fdQuery.Close;

FDConn.Close;
end;

function brKunjungan.masukkanGetRujukan(idxstr, noKunjungan: string) : Boolean;
var
    tSL : TStringList;
    dataResp, ppk : Variant;
    sqlDel0, sqlDel1, sql0, sql1 : string;

    noRujukan, tglKunjungan, nokaPst, nmPst, tglLahir, sex, pisa, ketPisa, kdPPK, nmPPK, kdKC, nmKC, nmDati, kdDati, kdKR, nmKR,
    kdPoli, nmPoli, kdDiag1, nmDiag1, kdDiag2, nmDiag2, kdDiag3, nmDiag3, kdDokter, nmDokter, nmTacc, alasanTacc,
    catatan, infoDenda, catatanRujuk, tglEstRujuk, tglAkhirRujuk, jadwal : string;
begin
  sql0 := 'INSERT INTO jkn.rujukan ("idxstr", "noRujukan", "tglKunjungan", "nokaPst", "nmPst", "tglLahir", "sex", "pisa", "ketPisa", "kdPPK", "nmPPK", "kdKC", "nmKC", "nmDati", "kdDati", "kdKR", "nmKR", ' +
          '"kdPoli", "nmPoli", "kdDiag1", "nmDiag1", "kdDiag2", "nmDiag2", "kdDiag3", "nmDiag3", "kdDokter", "nmDokter", "nmTacc", "alasanTacc", "catatan", "infoDenda", "catatanRujuk", "tglEstRujuk", "tglAkhirRujuk", "jadwal") ' +
          'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);';

  Result := logRest('GET', 'RUJUKAN', tsResponse.Text);
  if Result then
  begin
  tsL := TStringList.Create;

   try
   dataResp := _jsonFast(tsResponse.Text);
   //ShowMessage(tsResponse.Text);
 //   NoKunjungan := dataResp.response.message;
    sqlDel0 := 'delete from jkn.rujukan where "idxstr" = %s;';
    sqlDel1 := Format(sqlDel0, [QuotedStr(idxstr)]);
    tSl.Add(sqlDel1);

    noRujukan := dataResp.response.noRujukan;
    tglKunjungan := StrToPostgesDate(dataResp.response.tglKunjungan);
    nokaPst := dataResp.response.nokaPst;
    nmPst := dataResp.response.nmPst;

    tglLahir := StrToPostgesDate(dataResp.response.tglLahir);
    pisa := dataResp.response.pisa;
    ketPisa := dataResp.response.ketPisa;
    sex := dataResp.response.sex;

    if VarIsEmptyOrNull(dataResp.response.catatan) then catatan := '-' else
           catatan := dataResp.response.catatan;

    if VarIsEmptyOrNull(dataResp.response.infoDenda) then infoDenda := '-' else
           infoDenda := dataResp.response.infoDenda;

    if VarIsEmptyOrNull(dataResp.response.catatanRujuk) then catatanRujuk := '-' else
           catatanRujuk := dataResp.response.catatanRujuk;

    tglEstRujuk := StrToPostgesDate(dataResp.response.tglEstRujuk);
    tglAkhirRujuk := StrToPostgesDate(dataResp.response.tglAkhirRujuk);

    if VarIsEmptyOrNull(dataResp.response.jadwal) then jadwal := '-' else
           jadwal := dataResp.response.jadwal;

    kdPoli := dataResp.response.poli.kdPoli;
    nmPoli := dataResp.response.poli.nmPoli;

    if VarIsEmptyOrNull(dataResp.response.diag1) then
    begin
      kdDiag1 := 'null';
      nmDiag1 := 'null';
    end else
    begin
      kdDiag1 := QuotedStr(dataResp.response.diag1.kdDiag);
      nmDiag1 := QuotedStr(dataResp.response.diag1.nmDiag);
    end;

    if VarIsEmptyOrNull(dataResp.response.diag2) then
    begin
      kdDiag2 := 'null';
      nmDiag2 := 'null';
    end else
    begin
      kdDiag2 := QuotedStr(dataResp.response.diag2.kdDiag);
      nmDiag2 := QuotedStr(dataResp.response.diag2.nmDiag);
    end;

    if VarIsEmptyOrNull(dataResp.response.diag3) then
    begin
      kdDiag3 := 'null';
      nmDiag3 := 'null';
    end else
    begin
      kdDiag3 := QuotedStr(dataResp.response.diag3.kdDiag);
      nmDiag3 := QuotedStr(dataResp.response.diag3.nmDiag);
    end;

    if VarIsEmptyOrNull(dataResp.response.dokter) then
    begin
      kdDokter := 'null';
      nmDokter := 'null';
    end else
    begin
      kdDokter := QuotedStr(dataResp.response.dokter.kdDokter);
      nmDokter := QuotedStr(dataResp.response.dokter.nmDokter);
    end;

    if VarIsEmptyOrNull(dataResp.response.tacc) then
    begin
      nmTacc := 'null';
      alasanTacc := 'null';
    end else
    begin
      if VarIsEmptyOrNull(dataResp.response.tacc.nmTacc) then nmTacc := 'null' else
            nmTacc := QuotedStr(dataResp.response.tacc.nmTacc);
      if VarIsEmptyOrNull(dataResp.response.tacc.alasanTacc) then alasanTacc := 'null'
            else  alasanTacc := QuotedStr(dataResp.response.tacc.alasanTacc);
    end;

    ppk := dataResp.response.ppk;
    _Unique(ppk);

    kdPPK := ppk.kdPPK;
    nmPPK := ppk.nmPPK;
    kdKC := ppk.kc.kdKC;
    nmKC := ppk.kc.nmKC;
    nmDati := ppk.kc.dati.nmDati;
    kdDati := ppk.kc.dati.kdDati;
    kdKR := ppk.kc.kdKR.kdKR;
    nmKR := ppk.kc.kdKR.nmKR;

    sql1 := Format(sql0, [
            QuotedStr(idxstr),
            QuotedStr(noRujukan),
            QuotedStr(tglKunjungan),
            QuotedStr(nokaPst),
            QuotedStr(nmPst),
            QuotedStr(tglLahir),
            QuotedStr(sex),
            QuotedStr(pisa),
            QuotedStr(ketPisa),
            QuotedStr(kdPPK),
            QuotedStr(nmPPK),
            QuotedStr(kdKC),
            QuotedStr(nmKC),
            QuotedStr(nmDati),
            QuotedStr(kdDati),
            QuotedStr(kdKR),
            QuotedStr(nmKR),
            QuotedStr(kdPoli),
            QuotedStr(nmPoli),
            kdDiag1,
            nmDiag1,
            kdDiag2,
            nmDiag2,
            kdDiag3,
            nmDiag3,
            kdDokter,
            nmDokter,
            nmTacc,
            alasanTacc,
            QuotedStr(catatan),
            QuotedStr(infoDenda),
            QuotedStr(catatanRujuk),
            QuotedStr(tglEstRujuk),
            QuotedStr(tglAkhirRujuk),
            QuotedStr(jadwal)
            ]);

    tSL.Add(sql1);
    aScript.Assign(tSL);
    jalankanScript(tSl);

   finally
     FreeAndNil(tSl);
  end;

  end;
end;

procedure brKunjungan.masukkanPostKunjungan(idxstr : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    tglStr : string;
    nonSpesialis : Boolean;
    noUrut : integer;
    noKunjungan : string;
begin
//       ShowMessage(tsResponse.Text);
   if logRest('POST', 'KUNJUNGAN', tsResponse.Text) then
   begin
  tsL := TStringList.Create;

   try
   dataResp := _jsonFast(tsResponse.Text);
  // ShowMessage(tsResponse.Text);
    NoKunjungan := dataResp.response.message;
    sqlDel0 := 'update simpus.pasien_kunjungan set bpjs_kunjungan = %s where idxstr = %s;';
    sqlDel1 := Format(sqlDel0, [QuotedStr(NoKunjungan), quotedStr(idxstr)]);
    tSl.Add(sqlDel1);
    jalankanScript(tSl);

   finally
     FreeAndNil(tSl);
  end;
   end;

end;

procedure brKunjungan.masukkanPutKunjungan(idxstr : string);
begin
  logRest('PUT', 'KUNJUNGAN', tsResponse.Text);
end;

function brKunjungan.postKunjungan(idxstr : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin

js := ambilJsonKunjungan(idxstr);

if Length(js) > 10 then
begin

mStream := TMemoryStream.Create;
try
Result := False;
WriteStrToStream(mStream, js);
if  is_post then
begin
   //Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
  Result:= httpPost(Uri, mStream);
  jejakIdxstr := idxstr;
  FormatJson := js;
  if Result then masukkanPostKunjungan(idxstr);
end else
begin
  //Uri := ReplaceStr(Uri, '{nokartu}', no_kartu);
  Result := httpPut(Uri, mStream);
  FormatJson := js;
  if Result then masukkanPutKunjungan(idxstr);
end;

finally
  mStream.Free;
end;

end;
FDConn.Close;
end;



function brKunjungan.postKunjunganX(idxstr, dataStr: string): Boolean;
var
    mStream : TMemoryStream;

begin
//js := ambilJsonKunjungan(idxstr);

is_post := cek_isPost(idxstr);

if Length(dataStr) > 10 then
begin

mStream := TMemoryStream.Create;
try
Result := False;
WriteStrToStream(mStream, dataStr);
if  is_post then
begin
   //Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
  Result:= httpPost(Uri, mStream);
  jejakIdxstr := idxstr;
  FormatJson := dataStr;
  if Result then masukkanPostKunjungan(idxstr);
end else
begin
  //Uri := ReplaceStr(Uri, '{nokartu}', no_kartu);
  Result := httpPut(Uri, mStream);
  jejakIdxstr := idxstr;
  FormatJson := dataStr;
  if Result then masukkanPutKunjungan(idxstr);
end;

finally
  mStream.Free;
end;

end;
FDConn.Close;
end;

function brKunjungan.StrToPostgesDate(strDate: string): string;
var
  formatAsli : Char;
  myDate : TDateTime;
  myDateStr : string;
begin
  formatAsli := FormatSettings.DateSeparator;
  FormatSettings.DateSeparator := '-';
  myDate := StrToDate(strDate);
  DateTimeToString(myDateStr, 'YYYY-MM-DD', myDate);
  FormatSettings.DateSeparator := formatAsli;
  Result := myDateStr;

end;

end.
