unit brCapilU;

interface
     uses Forms, Dialogs, Classes, httpsend, flcHash, flcUtils, System.SysUtils,
     System.DateUtils, JclTimeZones,
     FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Phys.PG,
  FireDAC.Comp.Script, FireDAC.Comp.ScriptCommands;
type
  CapilCommon = class
     private
     const
     //uri_capil = 'http://36.78.128.52:8283/index.html?';
      uri_capil = 'http://36.78.128.52:8383/ws_server/';
     var
      SLConn : TStringList;
      FHalaman : Integer;
      FTotalHalaman : Integer;
      FHalAwal : Boolean;
      FHalAkhir : Boolean;
      FUri : string;
      FFormatJson : string;

      FFDQuery : TFDQuery;
      FFDConnection : TFDConnection;
      FFDCommand : TFDCommand;
      FFDScript : TFDScript;


     FkeyID : string;
     FconsId : string;
     FuserId : string;
     Fpasswd : string;

     Fpghost, Fpgport, Fpgdb, Fpguser, Fpgpasswd : string;

     FtsHeader : TStringList;
     FtsResponse : TStringList;
     FScriptSL : TStringList;

     function buat_kunci : string;
     procedure getparam;
     function httpGet(aurl : string) :Boolean;
     function ambilListProp : Boolean;
     function ambilListKab(no_prop : Integer) : Boolean;
     function ambilListKec(no_prop : Integer; no_kab : Integer) : Boolean;
     function ambilListKel(no_prop : Integer; no_kab : Integer; no_kec : Integer) : Boolean;
     function cek_nik(aNik: string): Boolean;
     function proses_insert_nik (myJson : Variant) : string;
     function proses_update_nik (myJson : Variant) : string;
     function ambil_json(aJS: Variant): string;
     function proses_capil_nama : Boolean;
     function proses_capil_nama_update : Boolean;

     public
     constructor Create;
     destructor destroy;

     property HalAwal: Boolean  read FHalAwal write FHalAwal;
     property HalAkhir: Boolean  read FHalAkhir write FHalAkhir;
     property Halaman : integer read FHalaman write FHalaman;
     property TotalHalaman: integer read FTotalHalaman write FTotalHalaman;

     property ScriptSL : TStringList  read FScriptSL write FScriptSL;
     property FDConn: TFDConnection read FFDConnection write FFDConnection;
     property Uri: string  read FUri write Furi;
     property pghost : string read fpghost write fpghost;
     property pgport : string read Fpgport write Fpgport;
     property pgdb : string read Fpgdb write Fpgdb;
     property pguser : string read Fpguser write Fpguser;
     property pgpasswd : string read Fpgpasswd write Fpgpasswd;
     property userid : string read FuserId write FuserId;

     property tsHeader : TStringList read FtsHeader write FtsHeader;
     property tsResponse : TStringList read FtsResponse write FtsResponse;
     property FormatJson : string  read FFormatJson write FFormatJson;

     property fdQuery: TFDQuery  read FFDQuery write FFDQuery;

     function getProp : Boolean;
     function getKab(no_prop : Integer) : Boolean;
     function getKec(no_prop : Integer; no_kab : integer) : Boolean;
     function getKel(no_prop : Integer; no_kab : integer; no_kec : integer) : Boolean;
     function getNama(no_prop, no_kab, no_kec, no_kel, nama, halaman: string) : boolean;
     function getNik( nik : string) : boolean;
     function getNikForUpdate( nik : string) : boolean;
     function getKk( kk : string) : boolean;

     procedure parameter_bridging(aTransaksi : string; aMetode : string);
     procedure jalankanScript(script : TStringList);
  end;

implementation
  uses SynCommons, aaaliCrypt;

{ CapilCommon }

function CapilCommon.ambilListKab(no_prop : Integer): Boolean;
var js : Variant;
    i, iCount : Integer;
    no_kab, nama_kab, sqlDel, sql0, sql1 : string;
    tSl : TStringList;
begin
   sqlDel := 'delete from capil.capil_kab where no_prop = %s and no_kab = %s;';
   sql0 := 'insert into capil.capil_kab(no_prop, no_kab, nama_kab) values(%s, %s, %s);';

   tSl := TStringList.Create;
   js := _JsonFast(FtsResponse.Text);
   try
      for I := 0 to js.data._count-1 do
        begin
          no_kab := js.data.Value(i).no_kab;
          nama_kab := js.data.Value(i).nama_kab;
          tSl.Add(Format(sqlDel, [IntToStr(no_prop), no_kab]));
          tSl.Add(format(sql0, [IntToStr(no_prop), no_kab, quotedStr(nama_kab)]));

        end;
      jalankanScript(tSl);
   finally
     tSl.Free;
   end;

end;

function CapilCommon.ambilListKec(no_prop, no_kab: Integer): Boolean;
var js : Variant;
    i, iCount : Integer;
    no_kec, nama_kec, sqlDel, sql0, sql1 : string;
    tSl : TStringList;
begin
   sqlDel := 'delete from capil.capil_kec where no_prop = %s and no_kab = %s and no_kec = %s;';
   sql0 := 'insert into capil.capil_kec(no_prop, no_kab, no_kec, nama_kec) values(%s, %s, %s, %s);';

   tSl := TStringList.Create;
   js := _JsonFast(FtsResponse.Text);
   try
      for I := 0 to js.data._count-1 do
        begin
          no_kec := js.data.Value(i).no_kec;
          nama_kec := js.data.Value(i).nama_kec;
          tSl.Add(Format(sqlDel, [IntToStr(no_prop), IntToStr(no_kab), no_kec]));
          tSl.Add(format(sql0, [IntToStr(no_prop), intToStr(no_kab), no_kec, quotedStr(nama_kec)]));

        end;
      jalankanScript(tSl);
   finally
     tSl.Free;
   end;

end;

function CapilCommon.ambilListKel(no_prop, no_kab, no_kec: Integer): Boolean;
var js : Variant;
    i, iCount : Integer;
    no_kel, nama_kel, sqlDel, sql0, sql1 : string;
    tSl : TStringList;
begin
   sqlDel := 'delete from capil.capil_kel where no_prop = %s and no_kab = %s and no_kec = %s and no_kel = %s;';
   sql0 := 'insert into capil.capil_kel(no_prop, no_kab, no_kec, no_kel, nama_kel) values(%s, %s, %s, %s, %s);';

   tSl := TStringList.Create;
   js := _JsonFast(FtsResponse.Text);
   try
      for I := 0 to js.data._count-1 do
        begin
          no_kel := js.data.Value(i).no_kel;
          nama_kel := js.data.Value(i).nama_kel;
          tSl.Add(Format(sqlDel, [IntToStr(no_prop), IntToStr(no_kab), IntToStr(no_kec), no_kel]));
          tSl.Add(format(sql0, [IntToStr(no_prop), intToStr(no_kab), IntToStr(no_kec), no_kel, quotedStr(nama_kel)]));

        end;
      jalankanScript(tSl);
   finally
     tSl.Free;
   end;

end;

function CapilCommon.ambilListProp: Boolean;
var js : Variant;
    i, iCount : Integer;
    no_prop, nama_prop, sqlDel, sql0, sql1 : string;
    tSl : TStringList;
begin
   sqlDel := 'delete from capil.capil_prop where no_prop = %s;';
   sql0 := 'insert into capil.capil_prop(no_prop, nama_prop) values(%s, %s);';

   tSl := TStringList.Create;
   js := _JsonFast(FtsResponse.Text);
   try
      for I := 0 to js.data._count-1 do
        begin
          no_prop := js.data.Value(i).no_prop;
          nama_prop := js.data.Value(i).nama_prop;
          tSl.Add(Format(sqlDel, [no_prop]));
          tSl.Add(format(sql0, [no_prop, quotedStr(nama_prop)]));

        end;

      jalankanScript(tSl);
   finally
     tSl.Free;
   end;

end;

function CapilCommon.ambil_json(aJS: Variant): string;
begin
if VarIsEmptyOrNull(aJs) then
begin
//ShowMessage('NULL');
Result := '';
end else Result := aJS;

end;

function CapilCommon.buat_kunci: string;
var str0 : string;
    tglStr : string;
begin
DateTimeToString(tglStr, 'ddmmyyyy', now);
str0 := 'dinkes123.'+tglStr;
result :=  MD5DigestToHexA(CalcMD5(str0));
end;


function CapilCommon.cek_nik(aNik: string): Boolean;
var sql0, sql1 : string;
begin
sql0 := 'select nik from capil.capil_nik_pv where nik = %s';
sql1 := Format(sql0, [QuotedStr(aNik)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Open;

Result := fdQuery.IsEmpty;
fdQuery.Close;

end;

constructor CapilCommon.Create;
begin
    FHalaman := 0;
    FHalAwal := True;
    FHalAkhir := True;
    SLConn := TStringList.Create;
    getparam;
    FScriptSL := TStringList.Create;
    FtsResponse := TStringList.Create;
    FtsHeader := TStringList.Create;

    FFDConnection := TFDConnection.Create(nil);
  SLConn.Add('Server=' + pghost);
  SLConn.Add('Port=' +  pgport);
  SLConn.Add('Database= ' + pgdb);
  SLConn.Add('User_name=' + pguser);
  SLConn.Add('Password=' + pgpasswd);
  SLConn.Add('Pooled=True');

  fdManager.AddConnectionDef('PGCAPIL_CONNECTION', 'PG', SLConn, False);
  fdManager.Active := True;

  FFDConnection.ConnectionDefName := 'PGCAPIL_CONNECTION';
  FFDConnection.Connected := True;

    FFDQuery := TFDQuery.Create(nil);
    FFDQuery.Connection := FFDConnection;

    FFDCommand := TFDCommand.Create(nil);
    FFDCommand.Connection := FFDConnection;

    FFDScript := TFDScript.Create(nil);
    FFDScript.Connection := FFDConnection;

end;

destructor CapilCommon.destroy;
begin
FFDConnection.Close;
FDManager.Close;
FFDScript.Free;
FFDCommand.Free;
FFDQuery.Free;
ffdConnection.Free;

FtsResponse.Free;
FtsHeader.Free;
FScriptSL.Free;
SLConn.Free;
  inherited;

end;

function CapilCommon.getKab(no_prop : Integer): Boolean;
begin
  Result := httpGet( uri_capil + 'wilayah?akses=kab&nomor_prop=' + IntToStr(no_prop));
  if Result then ambilListKab(no_prop);
  FDConn.Close;
end;

function CapilCommon.getKec(no_prop, no_kab: integer): Boolean;
var aurl0, aurl : string;
begin
  aurl0 := uri_capil + 'wilayah?akses=kec&nomor_prop=%s&nomor_kab=%s';
  aurl := Format(aurl0, [intToStr(no_prop), intToStr(no_kab)]);
  Result := httpGet(aurl);
  if Result then ambilListKec(no_prop, no_kab);
  FDConn.Close;
end;

function CapilCommon.getKel(no_prop, no_kab, no_kec: integer): Boolean;
var aurl0, aurl : string;
begin
  aurl0 := uri_capil + 'wilayah?akses=kel&nomor_prop=%s&nomor_kab=%s&nomor_kec=%s';
  aurl := Format(aurl0, [intToStr(no_prop), intToStr(no_kab), intToStr(no_kec)]);
  Result := httpGet(aurl);
  if Result then ambilListKel(no_prop, no_kab, no_kec);
  FDConn.Close;
end;

function CapilCommon.getKk(kk: string): boolean;
var aurl0, aurl : string;
begin
  //aurl0 := 'user=dkk_rembang&kunci=' + buat_kunci + '&akses=kk&nomor_kk=' + kk;
  aurl0 := 'get_json/dinkes/getkk?USER_ID=DINKES&PASSWORD=' + buat_kunci + '&NO_KK=' + kk;
  aurl := uri_capil + aurl0;
  FUri := aurl;
  Result := httpGet(aurl);
  if Result then proses_capil_nama;
  FDConn.Close;
end;

function CapilCommon.getNama(no_prop, no_kab, no_kec, no_kel,
  nama, halaman: string): boolean;
var aurl0, aurl, kunci, urlNama : string;
begin
  urlNama := UrlEncode(nama);
  kunci := buat_kunci;
//  aurl0 := 'user=dkk_rembang&kunci=' + buat_kunci + '&akses=biodata&no_prop=' + no_prop + '&no_kab=' + no_kab + '&no_kec=' + no_kec + '&no_kel=' + no_kel + '&nama=' + urlNama;
  aurl0 := 'get_json/dinkes/getnama?%20USER_ID=DINKES&PASSWORD=' + buat_kunci + '&NO_PROP=' + no_prop + '&NO_KAB=' + no_kab + '&NO_KEC=' +
            no_kec + '&NO_KEL=' + no_kel + '&NAMA_LGKP=' + urlNama + '&Page=' + halaman;

  aurl := uri_capil + aurl0;
  FUri := aurl;
  Result := httpGet(aurl);
  FHalaman := StrToInt(halaman);
  if Result then proses_capil_nama;
  FDConn.Close;
end;

function CapilCommon.getNik(nik: string): boolean;
var aurl0, aurl : string;
begin
  aurl0 := 'get_json/dinkes/getnik?USER_ID=DINKES&PASSWORD=' + buat_kunci + '&NIK=' + nik;

  aurl := uri_capil + aurl0;
  FUri := aurl;
  Result := httpGet(aurl);
  if Result then proses_capil_nama;
  FDConn.Close;
end;

function CapilCommon.getNikForUpdate(nik: string): boolean;
var aurl0, aurl : string;
begin
  aurl0 := 'get_json/dinkes/getnik?USER_ID=DINKES&PASSWORD=' + buat_kunci + '&NIK=' + nik;

  aurl := uri_capil + aurl0;
  FUri := aurl;
  Result := httpGet(aurl);
  if Result then proses_capil_nama_update;
  FDConn.Close;
end;

procedure CapilCommon.getparam;
var js : Variant;
begin
js := _JsonFast( StringFromFile('param.json'));
//serialX := Cipher1.DecodeString('15754', js.getString('serial'));

Fpghost := js.pg.pghost;
Fpgdb := js.pg.pgdb;
Fpgport := js.pg.pgport;
Fpguser:= DecodeData(js.pg.pguser, keyTototo);
Fpgpasswd := DecodeData(js.pg.pgpasswd, keyTototo);

end;

function CapilCommon.getProp : Boolean;
begin
  Result := httpGet( uri_capil + 'wilayah?akses=prop');
  if Result then ambilListProp;
  FDConn.Close;
end;

function CapilCommon.httpGet(aurl: string): Boolean;
var http : THTTPSend;
    berhasil : Boolean;
begin
   Result := False;
   FtsResponse.Clear;
   http := THTTPSend.Create;
   http.Headers.Clear;
//   http.Headers.AddStrings(FtsHeader);
   try
     berhasil := http.HTTPMethod('GET', aurl);
     if berhasil then
        begin
          FtsResponse.LoadFromStream(http.Document);
          Result := (http.ResultCode >= 200) and (http.ResultCode < 300 )
        end;
   finally
      http.Free;
   end;
end;


procedure CapilCommon.jalankanScript(script: TStringList);
begin

with FFDScript do begin
  SQLScripts.Clear;
  SQLScripts.Add;
  SQLScripts[0].SQL.Assign(script);
  ValidateAll;
  ExecuteAll;
end;

//FScriptSL.Assign(script);
end;

procedure CapilCommon.parameter_bridging(aTransaksi, aMetode: string);
begin

end;

function CapilCommon.proses_capil_nama: Boolean;
var vjs, V1 : Variant;
    jmlData, i, iCount, hasilDiv, hasilMod : Integer;
    aNik, sql0 : string;
    SQL : TStringList;

begin
   SQL:= TStringList.Create;
//   ShowMessage(FtsResponse.text);
   vJs := _Json(FtsResponse.Text);

   if VarIsEmptyOrNull(vjs.content) then
   begin
      Result := False;
   end else
   begin
      Result := True;
      //FHalaman := 0;
      FHalAwal := vjs.firstPage;
      FHalAkhir := vjs.lastPage;

      if HalAkhir then FTotalHalaman := FHalaman else
      begin
      hasilDiv := vjs.totalElements div vjs.size;
      hasilMod := vjs.totalElements mod vjs.size;
      if hasilMod > 0 then FTotalHalaman := hasilDiv + 1 else FTotalHalaman := hasilDiv;
      end;

      V1 := vjs.content;
      iCount := V1._Count;
      //ShowMessage(IntToStr(iCount));

      if V1._Kind = 1 then
      begin
         Result := False;
         ShowMessage(V1.name(0) + ' : ' + V1.value(0));
         Exit;
      end;

      if iCount = 2 then
      begin
        if V1.Value(1).Exists('RESPON') then
          begin
            Result := False;
            ShowMessage(V1.Value(1));
            Exit;
          end;
      end;




      for I := 0 to iCount - 1 do
        begin

           aNik := V1.Value(i).NIK;
           //ShowMessage(aNik);
           sql0 := 'delete from capil.capil_nik_pv where nik = ' + QuotedStr(aNik) + ';';
           SQL.Add(sql0);

           sql0 := proses_insert_nik(V1.Value(i));
           SQL.Add(sql0);
        end;
       jalankanScript(SQL);
    end;
   SQL.Free;
end;

function CapilCommon.proses_capil_nama_update: Boolean;
var vjs, V1 : Variant;
    i, iCount : Integer;
    aNik, sql0 : string;
    SQL : TStringList;
begin
   SQL:= TStringList.Create;
 //  ShowMessage(FtsResponse.text);
   vJs := _Json(FtsResponse.Text);

   if VarIsEmptyOrNull(vjs.content) then
   begin
      Result := False;
   end else
   begin
      Result := True;
      V1 := vjs.content;
      iCount := V1._Count;
      {
      if iCount = 1 then
      begin
        if V1.Value(0).Exists('hasil') then
        Exit;
      end;
      }

      for I := 0 to iCount - 1 do
        begin

           aNik := V1.Value(i).nik;
           //ShowMessage(aNik);
           sql0 := proses_update_nik(V1.Value(i));
           SQL.Add(sql0);
        end;
       jalankanScript(SQL);
    end;
   SQL.Free;
end;

function CapilCommon.proses_insert_nik(myJson : Variant): string;
var
  vJsonStr, str0, str1, str2, str3, sql0, sql01, sql1, sql11, sqlDel, aScript0, aScript: String;
  Bool0 : Boolean;
  vJsonTs : TDateTime;
  i, iCount : Integer;

begin

   Result := '';
   sql0 := 'INSERT INTO capil.capil_nik_pv (no_prop, no_kab, no_kec, no_kel, nik, nama_lengkap, nama_prop, nama_kab, nama_kec, nama_kel, tmpt_lahir, tgl_lahir, ';
   sql01 := 'jenis_kelamin, gol_drh, alamat, rt, rw, agama, pekerjaan, nama_ibu, nama_ayah, hubungan_keluarga, pendidikan, nomor_kk, status_kawin, no_akta_lahir, nama_kepala_keluarga) ' ;
   sql1 := 'VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ';
   sql11 := '%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s );';
   aScript0 := sql0 + sql01 + sql1 + sql11;


   aScript := Format(aScript0, [
                  myJson.no_prop,
                  myjson.no_kab,
                  myJson.no_kec,
                  myJson.no_kel,
                  QuotedStr(ambil_json(myJson.nik)),
                  QuotedStr(ambil_json(myJson.nama_lgkp)),
                  QuotedStr(ambil_json(myJson.nama_prop)),
                  QuotedStr(ambil_json(myJson.nama_kab)),
                  QuotedStr(ambil_json(myJson.nama_kec)),
                  QuotedStr(ambil_json(myJson.nama_kel)),
                  QuotedStr(ambil_json(myJson.tmpt_lhr)),
                  QuotedStr(ambil_json(myJson.tgl_lhr)),
                  QuotedStr(ambil_json(myJson.jenis_klmin)),
                  QuotedStr(ambil_json(myJson.gol_drh)),
                  QuotedStr(ambil_json(myJson.alamat)),
                  QuotedStr(ambil_json(myJson.no_rt)),
                  QuotedStr(ambil_json(myJson.no_rw)),
                  QuotedStr(ambil_json(myJson.agama)),
                  QuotedStr(ambil_json(myJson.jenis_pkrjn)),
                  QuotedStr(ambil_json(myJson.nama_lgkp_ibu)),
                  QuotedStr(ambil_json(myJson.nama_lgkp_ayah)),
                  QuotedStr(myJson.stat_hbkel),
                  QuotedStr(ambil_json(myJson.pddk_akh)),
                  QuotedStr(ambil_json(myJson.no_kk)),
                  QuotedStr(ambil_json(myJson.stat_kwn)),
                  QuotedStr(ambil_json(myJson.no_akta_lahir)),
                  QuotedStr(ambil_json(myJson.nama_kepala_keluarga))
                  ]);


result := aScript;
end;

function CapilCommon.proses_update_nik(myJson: Variant): string;
var
  vJsonStr, str0, str1, str2, str3, sql0, sql01, sql02, sql1, sql11, sqlDel, aScript0, aScript: String;
  Bool0 : Boolean;
  vJsonTs : TDateTime;
  i, iCount : Integer;

begin

   Result := '';
   sql0 := 'UPDATE capil.capil_nik set no_prop = %s, no_kab = %s, no_kec = %s, no_kel = %s, nik = %s, nama_lengkap = %s, nama_prop = %s, nama_kab = %s, nama_kec = %s, nama_kel = %s, tmpt_lahir = %s, tgl_lahir = %s, ';
   sql01 := 'jenis_kelamin = %s, gol_drh = %s, alamat = %s, rt = %s, rw = %s, agama = %s, pekerjaan = %s, nama_ibu = %s, nama_ayah = %s, hubungan_keluarga = %s, pendidikan = %s, nomor_kk = %s, status_kawin = %s, no_akta_lahir = %s, nama_kepala_keluarga = %s ' ;
   sql02 := 'WHERE nik = %s;';

   aScript0 := sql0 + sql01 + sql02;


   aScript := Format(aScript0, [
                  myJson.no_prop,
                  myjson.no_kab,
                  myJson.no_kec,
                  myJson.no_kel,
                  QuotedStr(ambil_json(myJson.nik)),
                  QuotedStr(ambil_json(myJson.nama_lgkp)),
                  QuotedStr(ambil_json(myJson.nama_prop)),
                  QuotedStr(ambil_json(myJson.nama_kab)),
                  QuotedStr(ambil_json(myJson.nama_kec)),
                  QuotedStr(ambil_json(myJson.nama_kel)),
                  QuotedStr(ambil_json(myJson.tmpt_lhr)),
                  QuotedStr(ambil_json(myJson.tgl_lhr)),
                  QuotedStr(ambil_json(myJson.jenis_klmin)),
                  QuotedStr(ambil_json(myJson.gol_drh)),
                  QuotedStr(ambil_json(myJson.alamat)),
                  QuotedStr(ambil_json(myJson.no_rt)),
                  QuotedStr(ambil_json(myJson.no_rw)),
                  QuotedStr(ambil_json(myJson.agama)),
                  QuotedStr(ambil_json(myJson.jenis_pkrjn)),
                  QuotedStr(ambil_json(myJson.nama_lgkp_ibu)),
                  QuotedStr(ambil_json(myJson.nama_lgkp_ayah)),
                  QuotedStr(myJson.stat_hbkel),
                  QuotedStr(ambil_json(myJson.pddk_akh)),
                  QuotedStr(ambil_json(myJson.no_kk)),
                  QuotedStr(ambil_json(myJson.stat_kwn)),
                  QuotedStr(ambil_json(myJson.no_akta_lahir)),
                  QuotedStr(ambil_json(myJson.nama_kepala_keluarga)),
                  QuotedStr(ambil_json(myJson.nik))
                  ]);


result := aScript;
ShowMessage(Result);
end;

end.
