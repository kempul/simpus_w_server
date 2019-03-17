unit amyhttp;

interface
     uses Classes, httpsend;

     function httpGet(aurl : string; aheader : TStrings; aResponse : TStrings) :Boolean;
     function httpPost(aurl : string; aheader : TStrings; aData : TStream; aResponse : TStrings) :Boolean;
     function httpPut(aurl : string; aheader : TStrings; aData : TStream; aResponse : TStrings) :Boolean;
     function httpDelete(aurl : string; aheader : TStrings; aResponse : TStrings) :Boolean;

implementation

function httpGet(aurl : string; aheader : TStrings; aResponse : TStrings) :Boolean;
var http : THTTPSend;
begin
   http := THTTPSend.Create;
   http.Headers.Clear;
   http.Headers.AddStrings(aheader);
   try
     Result := http.HTTPMethod('GET', aurl);
     if Result then
        aResponse.LoadFromStream(http.Document);
   finally
      http.Free;
   end;
end;

function httpPost(aurl : string; aheader : TStrings; aData : TStream; aResponse : TStrings) :Boolean;
var http : THTTPSend;
begin
   http := THTTPSend.Create;
   http.MimeType := 'application/json';
   http.Headers.Clear;
   http.Headers.AddStrings(aheader);
//   http.Headers.Add('Content-Type:application/json');
   http.Document.Clear;
   http.Document.CopyFrom(aData, 0);
   try
     Result := http.HTTPMethod('POST', aurl);
     if Result then
      aResponse.LoadFromStream(http.Document);
   finally
      http.Free;
   end;
end;

function httpPut(aurl : string; aheader : TStrings; aData : TStream; aResponse : TStrings) :Boolean;
var http : THTTPSend;
begin
   http := THTTPSend.Create;
   http.MimeType := 'application/json';
   http.Headers.Clear;
   http.Headers.AddStrings(aheader);

   http.Document.Clear;
   http.Document.CopyFrom(aData, 0);

   try
     Result := http.HTTPMethod('PUT', aurl);
     if Result then
      aResponse.LoadFromStream(http.Document);

   finally
      http.Free;
   end;
end;

function httpDelete(aurl : string; aheader : TStrings; aResponse : TStrings) :Boolean;
var http : THTTPSend;
begin
   http := THTTPSend.Create;
   http.Headers.Clear;
   http.Headers.AddStrings(aheader);
   try
     Result := http.HTTPMethod('DELETE', aurl);
     if Result then
      aResponse.LoadFromStream(http.Document);

   finally
      http.Free;
   end;
end;
end.
