unit mybridgeClass;

interface
    uses Classes, SysUtils, DateUtils, JclTimeZones, cHash, cUtils, amyhttp, uLkJSON;

type
  ToolBridgingClass = class
   public

    function ambil_signature(akey, adata, xts : string) : string;
    procedure ambil_header(consid, keyid, userid, passwd : string ; myHeader : TStrings );
    function get_dummi(uri : string; header: TStrings; hasil : TStrings) : boolean;
    function get_peserta(uri_get_peserta, nokartu : string; header : TStrings; hasil : TStrings) : Boolean;
    function ambil_peserta(vprovider : string; vresponse : string; ts : TStrings) : Boolean;
    function post_dummi(uri_tujuan: string; header : TStrings; data_load: TStrings; hasil: TStrings) : boolean;
 end;

implementation

function ambil_signature(akey, adata, xts : string) : string;
var sig : T256BitDigest;
begin
   sig := CalcHMAC_SHA256(akey, adata + '&' + xts);
   Result := MIMEBase64Encode(SHA256DigestAsString(sig));
end;

procedure ambil_header(consid, keyid, userid, passwd : string; myHeader : TStrings);
   var xtimestamp, xsignature : string;
begin
xtimestamp := IntToStr(DateTimeToUnix(utcNow));
xsignature := ambil_signature(keyid, consid, xtimestamp);
myHeader.Clear;
myHeader.Add('x-cons-id:' + consid);
//memoHeader.Lines.Add('x-timestamp:' + IntToStr(DateTimeToUnix(now)));
myHeader.Add('x-timestamp:' + xtimestamp);
myHeader.Add('x-signature:' + xsignature);
myHeader.Add('x-authorization:Basic '+ MIMEBase64Encode(userid + ':' + passwd + ':095'));
end;

function get_dummi(uri : string; header : TStrings; hasil : TStrings) : Boolean;
var ts : TStringList;
    vlev : Integer;
  vJsonObj: TlkJsonObject;
  s0, s1, uri_jadi : String;
  vJsonTs : TDateTime;
begin
  hasil.Clear;
  Result:= httpGet(uri , header, hasil);

  vJsonObj := TlkJSON.ParseText(hasil.Text) as TlkJSONobject;
//  TlkJSONobject.ParseText(ts.Text);
  vlev := 1;
  s0 := GenerateReadableText(vJsonObj, vlev);
  hasil.Clear;
  hasil.Add(s0);
end;

function get_peserta(uri_get_peserta, nokartu : string; header : TStrings; hasil : TStrings) : Boolean;
begin
  Result := get_dummi(uri_get_peserta + nokartu, header, hasil);
end;

function ambil_peserta(vprovider : string; vresponse : string; ts : TStrings) : Boolean;
var js, Rsp, Pvd : TlkJSONobject;
    ketAktif, tes, str0, vkartu, vproviderPst : string;
    aktif, adl_aktif, adl_pstLayanan : boolean;
    Int0 : Integer;
begin
   ts.Clear;
   Result := True;
   js := TlkJSON.ParseText(vresponse) as TlkJSONobject;
   if (js.FieldByIndex[0] is TlkJSONnull) then
   begin
     Result := False;
     ts.Add('jsNull');
     Exit;
   end;
   Rsp := js.Field['response'] as TlkJSONobject;

   vkartu := Rsp.getString('noKartu');
   ts.Add('kartu_bpjs='+vkartu);

   ketAktif := Rsp.getString('ketAktif');
   ts.Add('ketAktif='+ketAktif);
   aktif := Rsp.getBoolean('aktif');

   Pvd := Rsp.Field['kdProviderPst'] as TlkJSONobject;
   vproviderPst := Pvd.getString('kdProvider');
   ts.Add('provider_peserta='+ vproviderPst);

   adl_pstLayanan := vproviderPst = vProvider;
   ts.Add('adl_pstPelayanan='+booltostr(adl_pstLayanan, True));

   adl_aktif := ((ketAktif = 'AKTIF') and (aktif));
   ts.Add('adl_aktif=' + BoolToStr(adl_aktif, True));

end;

function post_dummi(uri_tujuan: string; header : TStrings;  data_load: TStrings; hasil: TStrings) : boolean;
var ts : TStringList;
    myStream : TMemoryStream;
    vlev : Integer;
  vJsonObj: TlkJsonObject;
  s0, s1, uri_jadi : String;
  vJsonTs : TDateTime;
  adl_berhasil : Boolean;
begin
  ts := TStringList.Create;
  hasil.Clear;
//  memoData.Clear;

  myStream := TMemoryStream.Create;
  data_load.SaveToStream(myStream);

  adl_berhasil := httpPost(uri_tujuan , header, myStream , hasil);

  if adl_berhasil then
  begin
  vJsonObj := TlkJSON.ParseText(hasil.Text) as TlkJSONobject;
//  TlkJSONobject.ParseText(ts.Text);
  vlev := 0;
  s0 := GenerateReadableText(vJsonObj, vlev);
  hasil.Clear;
  hasil.Add(s0);
  end;
  myStream.Free;
  ts.Free;

  Result := adl_berhasil;
end;
end.
