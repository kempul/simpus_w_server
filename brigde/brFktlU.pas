unit brFktlU;

interface
   uses Dialogs, Classes, brCommonsU, System.SysUtils, System.StrUtils;
type

  brFktl = class(bridgeCommon)

    private

    procedure masukkanGetSpesialis;
    procedure masukkanGetSarana;
    procedure masukkanGetKhusus;
    procedure masukkanGetSubSpesialis(spesialis : string);
    procedure masukkanGetDiagnosa;
    procedure masukkanGetFaskesSub(subspesialis, sarana : string; tanggal : TDate);
    procedure masukkanGetFaskesKhusus1(khusus : string; tanggal : TDate);
    procedure masukkanGetFaskesKhusus2(khusus, subspesialis : string; tanggal : TDate);

    public
    function getSpesialis : Boolean;
    function getDiagnosa (kataKunci : string; mulaiDari : string = '0' ; jumlahData : string = '10') : Boolean;
    function getSubSpesialis (spesialis : string) : Boolean;
    function getSarana : Boolean;
    function getkhusus1 : Boolean;
    function getFaskesSub(subspesialis : string; sarana : string; tanggal : TDate) : Boolean;
    function getFaskesKhusus1(khusus, no_kartu : string; tanggal : TDate) : Boolean;
    function getFaskesKhusus2(khusus, subspesialis, no_kartu : string; tanggal : TDate ) : Boolean;

    constructor Create;
    destructor destroy;
//    property Uri : string;
  end;

implementation
     uses SynCommons;
{ brDiagnosa }

constructor brFktl.Create;
begin
inherited Create;
end;

destructor brFktl.destroy;
begin
inherited;
end;

function brFktl.getDiagnosa(kataKunci, mulaiDari,
  jumlahData: string): Boolean;
var sql0, sql1 : string;
begin
Result := False;
parameter_bridging('DIAGNOSA', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetDiagnosa;
FDConn.Close;
end;


function brFktl.getFaskesSub(subspesialis, sarana: string; tanggal : TDate): Boolean;
var
  tglStr : string;
begin
DateTimeToString(tglStr, 'DD-MM-YYYY', tanggal);
Result := False;
parameter_bridging('FASKES SUB', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{kdSubSpesialis}', subspesialis,  []);
Uri := StringReplace( Uri, '{kdSarana}', sarana,  []);
Uri := StringReplace(Uri, '{tglEstRujuk}', tglStr, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetFaskesSub(subspesialis, sarana, tanggal);
FDConn.Close;

end;

function brFktl.getkhusus1: Boolean;

begin
Result := False;
parameter_bridging('KHUSUS', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetKhusus;
FDConn.Close;

end;

function brFktl.getFaskesKhusus1(khusus, no_kartu : string; tanggal : TDate): Boolean;
var
  tglStr : string;
begin
DateTimeToString(tglStr, 'DD-MM-YYYY', tanggal);
Result := False;
parameter_bridging('FASKES KHUSUS1', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{kdKhusus}', khusus,  []);
Uri := StringReplace( Uri, '{noKartu}', no_kartu,  []);
Uri := StringReplace(Uri, '{tglEstRujuk}', tglStr, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetFaskesKhusus1(khusus, tanggal);
FDConn.Close;
end;

function brFktl.getFaskesKhusus2(khusus, subspesialis, no_kartu: string; tanggal : TDate): Boolean;
var
  tglStr : string;
begin
DateTimeToString(tglStr, 'DD-MM-YYYY', tanggal);
Result := False;
parameter_bridging('FASKES KHUSUS2', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{kdSubSpesialis}', subspesialis,  []);
Uri := StringReplace( Uri, '{kdKhusus}', khusus,  []);
Uri := StringReplace(Uri, '{noKartu}', no_kartu, []);
Uri := StringReplace(Uri, '{tglEstRujuk}', tglStr, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetFaskesKhusus2(khusus, subspesialis, tanggal);
FDConn.Close;

end;

function brFktl.getSarana: Boolean;
begin
Result := False;
parameter_bridging('SARANA', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetSarana;
FDConn.Close;

end;

function brFktl.getSpesialis: Boolean;
begin
Result := False;
parameter_bridging('SPESIALIS', 'GET');
//ShowMessage(uri);
//Uri := StringReplace( Uri, '{keyword}', kataKunci,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetSpesialis;
FDConn.Close;

end;

function brFktl.getSubSpesialis(spesialis: string): Boolean;
begin
Result := False;
parameter_bridging('SUBSPESIALIS', 'GET');
//ShowMessage(uri);
Uri := StringReplace( Uri, '{kdSpesialis}', spesialis,  []);
//Uri := StringReplace( Uri, '{start}', mulaiDari,  []);
//Uri := StringReplace(Uri, '{limit}', jumlahData, []);
//ShowMessage(uri);

 Result:= httpGet(uri);

if Result then masukkanGetSubSpesialis(spesialis);
FDConn.Close;
end;

procedure brFktl.masukkanGetDiagnosa;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdDiag, nmDiag : string;
    nonSpesialis : Boolean;
begin
//       ShowMessage('awal masukkan get');


   if logRest('GET', 'DIAGNOSA', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_diagnosis where kd_diag = %s;';
   sql0 := 'insert into jkn.m_diagnosis(kd_diag, nm_diag, non_spesialis) values(%s, %s, %s);';
   tsL := TStringList.Create;

   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdDiag := dataResp.response.list.Value(i).kdDiag;
       nmDiag := dataResp.response.list.Value(i).nmDiag;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
       sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdDiag), quotedStr(nmDiag), BoolToStr(nonSpesialis, True)]);
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


procedure brFktl.masukkanGetFaskesKhusus1(khusus: string; tanggal : TDate);
var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdppk, nmppk, alamatPpk, telpPpk, kelas, nmkc, jadwal : string;
  jmlRujuk, kapasitas : integer;
  distance : Double;
  tSl : TStringList;
  tglStr : string;
begin
    //   ShowMessage('awal masukkan get');
   DateTimeToString(tglStr, 'DD-MM-YYYY', tanggal);

   if logRest('GET', 'FASKES KHUSUS1', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.faskes where kdppk = %s and kd_khusus = %s and tanggal = %s;';
   sql0 := 'INSERT INTO jkn.faskes ("kdppk", "nmppk", "alamat_ppk", "telp_ppk", "kelas", "nmkc", "distance", "jadwal", "jml_rujuk", "kapasitas", "kd_khusus", "tanggal") ' +
            'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);';

   //ShowMessage(sql0);
   tsL := TStringList.Create;

   tSl.Add('delete from jkn.faskes where tanggal < current_date;');


   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdppk := dataResp.response.list.Value(i).kdppk;
       nmppk := dataResp.response.list.Value(i).nmppk;
       alamatPpk := dataResp.response.list.Value(i).alamatPpk;
       telpPpk := dataResp.response.list.Value(i).telpPpk;
       kelas := dataResp.response.list.Value(i).kelas;
       nmkc := dataResp.response.list.Value(i).nmkc;
       if VarIsEmptyOrNull(dataResp.response.list.Value(i).jadwal) then
                  jadwal := '-' else jadwal := dataResp.response.list.Value(i).jadwal;
       jmlRujuk := dataResp.response.list.Value(i).jmlRujuk;
       kapasitas := dataResp.response.list.Value(i).kapasitas;
       distance := dataResp.response.list.Value(i).distance;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;

   sqlDelX := Format(sqlDel0,[QuotedStr(kdppk), QuotedStr(khusus), QuotedStr(tglStr)]);
   tSl.Add(sqlDelx);


       sql1 := Format(sql0,
                    [
                    QuotedStr(kdppk),
                    quotedStr(nmppk),
                    QuotedStr(alamatPpk),
                    QuotedStr(telpPpk),
                    QuotedStr(kelas),
                    QuotedStr(nmkc),
                    StringReplace(FloatToStr(distance), ',', '.', []),
                    QuotedStr(jadwal),
                    IntToStr(jmlRujuk),
                    IntToStr(kapasitas),
                    QuotedStr(khusus),
                    QuotedStr(tglStr)
                    ]);

       tSl.Add(sql1);
//       showMessage(sqlDel1);
       //showMessage(sql1);
     end;
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;

end;

procedure brFktl.masukkanGetFaskesKhusus2(khusus, subspesialis: string; tanggal : TDate);
var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdppk, nmppk, alamatPpk, telpPpk, kelas, nmkc, jadwal : string;
  jmlRujuk, kapasitas : integer;
  distance : Double;
  tSl : TStringList;
  tglStr : string;
begin
 //      ShowMessage('awal masukkan get');
   DateTimeToString(tglStr, 'DD-MM-YYYY', tanggal);

   if logRest('GET', 'FASKES KHUSUS2', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.faskes where kdppk = %s and kd_sub_spesialis = %s and kd_khusus = %s and tanggal = %s;';
   sql0 := 'INSERT INTO jkn.faskes ("kdppk", "nmppk", "alamat_ppk", "telp_ppk", "kelas", "nmkc", "distance", "jadwal", "jml_rujuk", "kapasitas", "kd_sub_spesialis", "kd_khusus", "tanggal") ' +
            'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);';

   //ShowMessage(sql0);
   tsL := TStringList.Create;

   tSl.Add('delete from jkn.faskes where tanggal < current_date;');



   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdppk := dataResp.response.list.Value(i).kdppk;
       nmppk := dataResp.response.list.Value(i).nmppk;
       alamatPpk := dataResp.response.list.Value(i).alamatPpk;
       telpPpk := dataResp.response.list.Value(i).telpPpk;
       kelas := dataResp.response.list.Value(i).kelas;
       nmkc := dataResp.response.list.Value(i).nmkc;
       if VarIsEmptyOrNull(dataResp.response.list.Value(i).jadwal) then
                  jadwal := '-' else jadwal := dataResp.response.list.Value(i).jadwal;
       jmlRujuk := dataResp.response.list.Value(i).jmlRujuk;
       kapasitas := dataResp.response.list.Value(i).kapasitas;
       distance := dataResp.response.list.Value(i).distance;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;

   sqlDelX := Format(sqlDel0,[QuotedStr(kdppk), QuotedStr(subspesialis), QuotedStr(khusus), QuotedStr(tglStr)]);
   tSl.Add(sqlDelx);


       sql1 := Format(sql0,
                    [
                    QuotedStr(kdppk),
                    quotedStr(nmppk),
                    QuotedStr(alamatPpk),
                    QuotedStr(telpPpk),
                    QuotedStr(kelas),
                    QuotedStr(nmkc),
                    StringReplace(FloatToStr(distance), ',', '.', []),
                    QuotedStr(jadwal),
                    IntToStr(jmlRujuk),
                    IntToStr(kapasitas),
                    QuotedStr(subspesialis),
                    QuotedStr(khusus),
                    QuotedStr(tglStr)
                    ]);

       tSl.Add(sql1);
//       showMessage(sqlDel1);
       //showMessage(sql1);
     end;
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;

end;

procedure brFktl.masukkanGetFaskesSub(subspesialis, sarana: string; tanggal : TDate);
var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdppk, nmppk, alamatPpk, telpPpk, kelas, nmkc, jadwal : string;
  jmlRujuk, kapasitas : integer;
  distance : Double;
  tSl : TStringList;
  tglStr : string;

begin

  DateTimeToString(tglStr, 'YYYY-MM-DD', tanggal);
 //      ShowMessage('awal masukkan get');


   if logRest('GET', 'FASKES SUB', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.faskes where kdppk = %s and kd_sub_spesialis = %s and kd_sarana = %s and tanggal = %s;';
   sql0 := 'INSERT INTO jkn.faskes ("kdppk", "nmppk", "alamat_ppk", "telp_ppk", "kelas", "nmkc", "distance", "jadwal", "jml_rujuk", "kapasitas", "kd_sub_spesialis", "kd_sarana", "tanggal") ' +
            'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);';

   //ShowMessage(sql0);
   tsL := TStringList.Create;

   tSl.Add('delete from jkn.faskes where tanggal < current_date;');


   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdppk := dataResp.response.list.Value(i).kdppk;
       nmppk := dataResp.response.list.Value(i).nmppk;
       alamatPpk := dataResp.response.list.Value(i).alamatPpk;
       telpPpk := dataResp.response.list.Value(i).telpPpk;
       kelas := dataResp.response.list.Value(i).kelas;
       nmkc := dataResp.response.list.Value(i).nmkc;
       if VarIsEmptyOrNull(dataResp.response.list.Value(i).jadwal) then
                  jadwal := '-' else jadwal := dataResp.response.list.Value(i).jadwal;
       jmlRujuk := dataResp.response.list.Value(i).jmlRujuk;
       kapasitas := dataResp.response.list.Value(i).kapasitas;
       distance := dataResp.response.list.Value(i).distance;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;

   sqlDelX := Format(sqlDel0,[QuotedStr(kdppk), QuotedStr(subspesialis), QuotedStr(sarana), QuotedStr(tglStr)]);
   tSl.Add(sqlDelx);


       sql1 := Format(sql0,
                    [
                    QuotedStr(kdppk),
                    quotedStr(nmppk),
                    QuotedStr(alamatPpk),
                    QuotedStr(telpPpk),
                    QuotedStr(kelas),
                    QuotedStr(nmkc),
                    StringReplace(FloatToStr(distance), ',', '.', []),
                    QuotedStr(jadwal),
                    IntToStr(jmlRujuk),
                    IntToStr(kapasitas),
                    QuotedStr(subspesialis),
                    QuotedStr(sarana),
                    QuotedStr(tglStr)
                    ]);

       tSl.Add(sql1);
//       showMessage(sqlDel1);
       //showMessage(sql1);
     end;
   finally
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
   end;

end;

procedure brFktl.masukkanGetKhusus;
var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdKhusus, nmKhusus : string;
  tSl : TStringList;

begin
//       ShowMessage('awal masukkan get');


   if logRest('GET', 'KHUSUS', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_khusus where kd_khusus is not null;';
   sql0 := 'insert into jkn.m_khusus(kd_khusus, nm_khusus) values(%s, %s);';
   tsL := TStringList.Create;

    tSl.Add(sqlDel0);

   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdKhusus := dataResp.response.list.Value(i).kdKhusus;
       nmKhusus := dataResp.response.list.Value(i).nmKhusus;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
       //sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);


       sql1 := Format(sql0, [QuotedStr(kdKhusus), quotedStr(nmKhusus)]);
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

procedure brFktl.masukkanGetSarana;

var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdSarana, nmSarana : string;
  tSl : TStringList;

begin
//       ShowMessage('awal masukkan get');


   if logRest('GET', 'SARANA', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_sarana where kd_sarana is not null;';
   sql0 := 'insert into jkn.m_sarana(kd_sarana, nm_sarana) values(%s, %s);';
   tsL := TStringList.Create;

    tSl.Add(sqlDel0);

   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdSarana := dataResp.response.list.Value(i).kdSarana;
       nmSarana := dataResp.response.list.Value(i).nmSarana;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
       //sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);


       sql1 := Format(sql0, [QuotedStr(kdSarana), quotedStr(nmSarana)]);
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

procedure brFktl.masukkanGetSpesialis;

var
  sqlDelx, sqlDel0, sql0, sql1 : string;
  dataResp : Variant;
  i : Integer;
  kdSpesialis, nmSpesialis : string;
  tSl : TStringList;

begin
 //      ShowMessage('awal masukkan get');


   if logRest('GET', 'SPESIALIS', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_spesialis where kd_spesialis is not null;';
   sql0 := 'insert into jkn.m_spesialis(kd_spesialis, nm_spesialis) values(%s, %s);';
   tsL := TStringList.Create;

    tSl.Add(sqlDel0);

   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdSpesialis := dataResp.response.list.Value(i).kdSpesialis;
       nmSpesialis := dataResp.response.list.Value(i).nmSpesialis;
//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
       //sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);


       sql1 := Format(sql0, [QuotedStr(kdSpesialis), quotedStr(nmSpesialis)]);
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

procedure brFktl.masukkanGetSubSpesialis(spesialis : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdSubSpesialis, nmSubSpesialis, kdPoliRujuk : string;
    nonSpesialis : Boolean;
begin
//       ShowMessage('awal masukkan get');

//   ShowMessage(tsResponse.Text);

   if logRest('GET', 'SUBSPESIALIS', tsResponse.Text) then
   begin
   sqlDel0 := 'delete from jkn.m_subspesialis where kd_spesialis = ' + QuotedStr(spesialis) + ';';
   sql0 := 'insert into jkn.m_subspesialis(kd_sub_spesialis, nm_sub_spesialis, kd_poli_rujuk, kd_spesialis) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   tSL.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);

   for I := 0 to dataResp.response.list._count - 1 do
     begin
       kdSubSpesialis := dataResp.response.list.Value(i).kdSubSpesialis;
       nmSubSpesialis := dataResp.response.list.Value(i).nmSubSpesialis;
       kdPoliRujuk := dataResp.response.list.Value(i).kdPoliRujuk;

//       ShowMessage('BooltoStr (nonSpesialis, True)');
       //nonSpesialis := dataResp.response.list.Value(i).nonSpesialis;
//       sqlDel1 := Format(sqlDel0,[QuotedStr(kdDiag)]);
//       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [QuotedStr(kdSubSpesialis), quotedStr(nmSubSpesialis), QuotedStr(kdPoliRujuk), QuotedStr(spesialis)]);
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

end.
