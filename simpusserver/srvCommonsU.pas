unit srvCommonsU;

interface
uses Forms, Dialogs, Classes, httpsend, flcHash, flcUtils, System.SysUtils,
  System.DateUtils, JclTimeZones, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Phys.PG,
  FireDAC.Comp.Script, FireDAC.Comp.ScriptCommands;
type
  srvCommon = class
     private
      SLConn : TStringList;
      FUribase : string;
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
     FkodePkm : string;

     Fpghost, Fpgport, Fpgdb, Fpguser, Fpgpasswd : string;

     FResultCode : Integer;
     FtsHeader : TStringList;
     FtsResponse : TStringList;

     function buatSignature : string;
     procedure buatHeader;
     procedure jika_lagi_berhasil(id: string);

     public
     constructor Create;
     destructor destroy;

     property FDConn : TFDConnection read FFDConnection write FFDConnection;

     property Uribase : string read FUribase write FUribase;
     property pghost : string read fpghost write fpghost;
     property pgport : string read Fpgport write Fpgport;
     property pgdb : string read Fpgdb write Fpgdb;
     property pguser : string read Fpguser write Fpguser;
     property pgpasswd : string read Fpgpasswd write Fpgpasswd;
     property userid : string read FuserId write FuserId;
     property kodePkm : string read FkodePkm write FkodePkm;

     property tsHeader : TStringList read FtsHeader write FtsHeader;
     property ResultCode : Integer read FResultCode write FResultCode;
     property tsResponse : TStringList read FtsResponse write FtsResponse;
     property FormatJson : string  read FFormatJson write FFormatJson;
     property Uri: string read FUri write Furi;
     property fdQuery: TFDQuery  read FFDQuery write FFDQuery;

     function httpGet(aurl : string) :Boolean;
     function httpPost(aurl : string; aData : TStream) :Boolean;
     function httpPut(aurl : string; aData : TStream) :Boolean;
     function httpDelete(aurl : string) :Boolean;

     function postString(aUrl : string; js : string) : Boolean;

     procedure parameter_bridging(aTransaksi : string; aMetode : string);
     procedure jalankanScript(script : TStringList);
     function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
     procedure jika_gagal(metode , vUri,  formatJson, tabel, pkey : string);
     procedure jika_berhasil(tabel, pkey : string);
     procedure kirim_lagi(id : string);

     function getTanggalFromKunjungan(idxstr : string) : string;
     function checkUri(url: String) : Boolean;
  end;

implementation
  uses System.Types, wininet, SynCommons, mORMot, aaaliCrypt, synautil, System.StrUtils;

{ bridge }

procedure srvCommon.buatHeader;
var unixTs : string;
begin
   unixTS := IntToStr(DateTimeToUnix(utcNow));

FtsHeader.Clear;
FtsHeader.Add('x-cons-id:' + FconsID);
//memoHeader.Lines.Add('x-timestamp:' + IntToStr(DateTimeToUnix(now)));
FtsHeader.Add('x-timestamp:' + unixTs);
FtsHeader.Add('x-signature:' + buatSignature);
FtsHeader.Add('x-authorization:Basic '+ MIMEBase64Encode(FUserID + ':' + FPasswd + ':095'));

end;

function srvCommon.buatSignature: string;
var sig : T256BitDigest;
    unixTS : string;
begin
   unixTS := IntToStr(DateTimeToUnix(utcNow));

   sig := CalcHMAC_SHA256(FkeyID, FConsID + '&' + unixTS);
   Result := MIMEBase64Encode(SHA256DigestToStrA(sig));
end;


function srvCommon.checkUri(url: String): Boolean;
var
hSession, hfile, hRequest: hInternet;
dwindex,dwcodelen : dword;
dwcode:array[1..20] of char;
res : pchar;
begin
if pos('http://',AnsiLowerCase(url))=0 then
url := 'http://'+url;
Result := false;
hSession := InternetOpen('InetURL:/1.0',
INTERNET_OPEN_TYPE_PRECONFIG,nil, nil, 0);
if assigned(hsession) then
begin
hfile := InternetOpenUrl(
hsession,
pchar(url),
nil,
0,
INTERNET_FLAG_RELOAD,
0);
dwIndex := 0;
dwCodeLen := 10;
HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE,
@dwcode, dwcodeLen, dwIndex);
res := pchar(@dwcode);
result:= (res ='200') or (res ='302');
if assigned(hfile) then
InternetCloseHandle(hfile);
InternetCloseHandle(hsession);
end;


end;

constructor srvCommon.Create;
var myConf : Variant;
    rootDir : string;
begin
  SLConn := TStringList.Create;
  FtsHeader := TStringList.Create;
  FtsResponse := TStringList.Create;

//  rootDir := ExtractFilePath(Application.ExeName) + 'param.json';
  myConf :=  _JSonFast(StringFromFile('param.json'));

  FUribase := myConf.uridinkes;
  FkodePkm := myConf.puskesmas;
  FuserId := myConf.bpjs.userId;
  Fpasswd := decodeData(myConf.bpjs.passwd, keyTototo);
  FkeyID := decodeData(myConf.bpjs.key, keyTototo);
  FconsId := decodeData(myConf.bpjs.consId, keyTotoTo);

  Fpghost := myConf.pg.pghost;
  Fpgport := myConf.pg.pgport;
  Fpgdb := myConf.pg.pgdb;
  Fpguser := decodeData( myConf.pg.pguser, keyTototo);
  Fpgpasswd := DecodeData( myConf.pg.pgpasswd , keyTototo);

    FFDConnection := TFDConnection.Create(nil);
  SLConn.Add('Server=' + pghost);
  SLConn.Add('Port=' +  pgport);
  SLConn.Add('Database= ' + pgdb);
  SLConn.Add('User_name=' + pguser);
  SLConn.Add('Password=' + pgpasswd);
  SLConn.Add('Pooled=True');

  fdManager.AddConnectionDef('PGSRV_CONNECTION', 'PG', SLConn, False);
  fdManager.Active := True;

  FFDConnection.ConnectionDefName := 'PGSRV_CONNECTION';
  FFDConnection.Connected := True;

    FFDQuery := TFDQuery.Create(nil);
    FFDQuery.Connection := FFDConnection;

    FFDCommand := TFDCommand.Create(nil);
    FFDCommand.Connection := FFDConnection;

    FFDScript := TFDScript.Create(nil);
    FFDScript.Connection := FFDConnection;


  buatHeader;
end;

destructor srvCommon.destroy;
begin
  FFDConnection.Close;
  FDManager.Close;

if Assigned(FtsResponse) then FreeAndNil(FtsResponse);
if Assigned(FtsHeader) then FreeAndNil(FtsHeader);

  FFDScript.Free;
  FFDCommand.Free;
  FFDQuery.Free;
  FFDConnection.Free;

  SLConn.Free;

inherited;
end;


function srvCommon.getTanggalFromKunjungan(idxstr: string): string;
var
  iPos : Integer;
  hasil : string;
begin
// 27@tanggal@
  iPos := AnsiPos('@', idxstr);
  hasil := AnsiMidStr(idxstr, iPos + 1, 10);
  Result := hasil;
end;

function srvCommon.httpDelete(aurl: string): Boolean;
var http : THTTPSend;
    berhasil : Boolean;
begin
   Result := False;
   FtsResponse.Clear;
   http := THTTPSend.Create;
   http.Headers.Clear;
   http.Headers.AddStrings(FtsHeader);
   try
     berhasil := http.HTTPMethod('DELETE', aurl);
     if berhasil then
     begin
      FResultCode := http.ResultCode;
      FtsResponse.LoadFromStream(http.Document);
      Result := (FResultCode >= 200) and (FResultCode < 300);
     end;

   finally
      http.Free;
   end;
end;

function srvCommon.httpGet(aurl: string): Boolean;
var http : THTTPSend;
    berhasil : Boolean;
begin
Result := False;
   FtsResponse.Clear;
   http := THTTPSend.Create;
   http.Headers.Clear;
 //  http.Headers.AddStrings(FtsHeader);
   try
     berhasil := http.HTTPMethod('GET', aurl);
     if berhasil then
     begin
        FResultCode := http.ResultCode;
        //ShowMessage(IntToStr(FResultCode));
        FtsResponse.LoadFromStream(http.Document);
        Result := ((FResultCode >= 200) and (FResultCode < 300)) or (FResultCode = 0);
        Result := ResultCode < 300;
     end;
   finally
      http.Free;
   end;
end;

function srvCommon.httpPost(aurl: string; aData: TStream): Boolean;
var http : THTTPSend;
    berhasil : Boolean;
begin
   Result := False;
   FtsResponse.Clear;
   http := THTTPSend.Create;
   http.MimeType := 'application/json';
 //  http.Headers.Clear;
 //  http.Headers.AddStrings(FtsHeader);
   http.Document.Clear;
   http.Document.CopyFrom(aData, 0);
   try
     berhasil := http.HTTPMethod('POST', aurl);
     if berhasil then
     begin
      FResultCode := http.ResultCode;
      FtsResponse.LoadFromStream(http.Document);
      Result := (FResultCode >= 200) and (FResultCode < 300);
     end;
   finally
      http.Free;
   end;
end;

function srvCommon.httpPut(aurl: string; aData: TStream): Boolean;
var http : THTTPSend;
    berhasil : Boolean;
begin
   Result := False;
   FtsResponse.Clear;
   http := THTTPSend.Create;
   http.MimeType := 'application/json';
   http.Headers.Clear;
   http.Headers.AddStrings(FtsHeader);

   http.Document.Clear;
   http.Document.CopyFrom(aData, 0);

   try
     berhasil := http.HTTPMethod('PUT', aurl);
     if berhasil then
     begin
      FResultCode := http.ResultCode;
      FtsResponse.LoadFromStream(http.Document);
      Result := (FResultCode >= 200) and (FResultCode < 300);
     end;

   finally
      http.Free;
   end;
end;

procedure srvCommon.jalankanScript(script: TStringList);
begin
//FFDScript.ExecuteScript .SQL.Clear;
with FFDScript do begin
  SQLScripts.Clear;
  SQLScripts.Add;
  SQLScripts[0].SQL.Assign(script);
  ValidateAll;
  ExecuteAll;
end;
end;

procedure srvCommon.jika_berhasil(tabel, pkey: string);
var sql0, sql1 : string;
    tSL : TStringList;
begin
  sql0 := 'delete from simpus.a_json_gagal where tabel = %s and pkey = %s;';
  sql1 := Format(sql0, [
          quotedStr(tabel),
          quotedStr(pkey)
          ]);
  tSL := TStringList.Create;
  try
  tSL.Add(sql1);
  jalankanScript(tSL);
  finally
      tSL.Free;
  end;


end;

procedure srvCommon.jika_gagal(metode, vUri, formatJson, tabel, pkey: string);
var sql0, sql1 : string;
    tSL : TStringList;
begin
  sql0 := 'insert into simpus.a_json_gagal(metode, uri, format_json, tabel, pkey) ' +
          'values(%s, %s, %s, %s, %s);';
  sql1 := Format(sql0, [
          quotedStr(metode),
          quotedStr(vUri),
          quotedStr(FormatJson),
          quotedStr(tabel),
          quotedStr(pkey)
          ]);
  tSL := TStringList.Create;
  try
  tSL.Add(sql1);
  jalankanScript(tSL);
  finally
      tSL.Free;
  end;


end;

procedure srvCommon.jika_lagi_berhasil(id: string);
var sql0, sql1 : string;
    tSL : TStringList;
begin
  sql0 := 'delete from simpus.a_json_gagal where id = %s;';
  sql1 := Format(sql0, [
          quotedStr(id)
          ]);
  tSL := TStringList.Create;
  try
  tSL.Add(sql1);
  jalankanScript(tSL);
  finally
      tSL.Free;
  end;


end;

function srvCommon.jsonToSql(table, json: string; update: Boolean;
  pkey: string): string;
var awal, akhir : string;
begin
   if update then
   begin
     akhir := 'update %s set %s where ';
     awal := GetJSONObjectAsSQL(json, update, False);
     Result := awal;
   end else
   begin
     akhir := 'insert into %s %s';
     awal := GetJSONObjectAsSQL(json, update,False);
     Result := format(akhir,[table, awal]);
   end;
end;

procedure srvCommon.kirim_lagi(id: string);
var sql0, sql1 : string;
    metode, js, vuri : string;
    berhasil : Boolean;
begin
   sql0 := 'select * from simpus.a_json_gagal where id = %s;';
   sql1 := Format(sql0, [quotedstr(id)]);

   fdQuery.Close;
   fdQuery.SQL.Clear;
   fdQuery.SQL.Add(sql1);
   fdQuery.Open();
   metode := fdQuery.FieldByName('metode').AsString;
   js := fdQuery.FieldByName('format_json').AsString;
   vuri := fdQuery.FieldByName('uri').AsString;
   fdQuery.Close;
   berhasil := False;
   if metode = 'post' then   berhasil := postString(vuri, js);
   if metode = 'delete' then   berhasil := httpDelete(vUri);

   if berhasil then jika_lagi_berhasil(id);
end;

procedure srvCommon.parameter_bridging(aTransaksi, aMetode: string);
    var sql0, sql1 : string;

begin
sql0 := 'select format_json::TEXT as format_json, uri_tujuan from simpus.a_json where kelompok = ''simpus'' and transaksi = %s and metode = %s;';
sql1 := Format(sql0, [
          quotedStr(aTransaksi),
          quotedStr(aMetode)
          ]);

FFDQuery.SQL.Clear;
FFDQuery.SQL.Add(sql1);
FFDQuery.Open;
Furi := FUribase + FFDQuery.FieldByName('uri_tujuan').AsString;
FFormatJson := FFDQuery.FieldByName('format_json').AsString;
//ShowMessage(FFormatJson);
FFDQuery.Close;

end;

function srvCommon.postString(aUrl, js: string): Boolean;
var
    mStream : TMemoryStream;
begin
mStream := TMemoryStream.Create;
Result := False;

WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(aUrl, mStream);
mStream.Free;
end;

end.
