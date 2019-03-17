unit srvMobatU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvMobat = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    public
    aScript : TStringList;

    function postMobat(id : string): Boolean;
    function getMobat(nama : string): Boolean;

    constructor Create;
    destructor destroy;
    procedure masukkanGetMobat;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvMobat }

function srvMobat.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('obat', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from farmasi.m_obat where kd_obat = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin

  //DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd''T''hh:nn:ss', fdQuery.FieldByName('tanggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.kdObat := id;
  V1.nmObat := fdQuery.FieldByName('nm_obat').AsString;
  V1.sedia := fdQuery.FieldByName('sedia').AsInteger;
  V1.adlDpho := fdQuery.FieldByName('adl_dpho').AsBoolean;
  V1.sumber := fdQuery.FieldByName('sumber').AsString;
  V1.idx := fdQuery.FieldByName('idx').AsInteger;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvMobat.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvMobat.getMobat(nama: string): Boolean;
begin
parameter_bridging('obat by nama', 'get');
Result := False;


Uri := ReplaceStr(Uri, '{nama}', nama);
Result:= httpGet(Uri);
if Result then masukkanGetMobat;
FDConn.Close;
end;

destructor srvMobat.destroy;
begin
aScript.Free;
inherited;
end;

function srvMobat.postMobat(id : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
mStream := TMemoryStream.Create;
Result := False;

js := ambilJsonPost(id);
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
//if Result then masukkanpostMobat;
FDConn.Close;
end;



procedure srvMobat.masukkanGetMobat;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sqlDel1, sql0, sql1 : string;
    kdObat, nmObat, sumber : string;
    sedia, idx : Integer;
    adlDpho : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from farmasi.m_obat where kd_obat = %s;';
   sql0 := 'insert into farmasi.m_obat(kd_obat, nm_obat, sedia, adl_dpho, sumber, idx) values(%s, %s, %s, %s, %s, %s);';
   tsL := TStringList.Create;
//   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
   {
   sql1 := jsonToSql('simpus.tt', dataResp);
   sql1 := ReplaceStr(sql1, 'tanggalUbah', 'tanggal_ubah');
   tSl.Add(sql1);
   }
// ShowMessage(tsResponse.Text);


   for I := 0 to dataResp._count - 1 do
     begin
       kdObat := dataResp.Value(i).kdObat;
       nmObat := dataResp.Value(i).nmObat;
       sedia := dataResp.Value(i).sedia;
       adlDpho := dataResp.Value(i).adlDpho;
       sumber := dataResp.Value(i).sumber;
       idx := dataResp.Value(i).idx;

//       ShowMessage('BooltoStr (nonSpesialis, True)');
       sqlDel1 := Format(sqlDel0, [QuotedStr(kdObat)]);
       tSl.Add(sqlDel1);

       sql1 := Format(sql0, [
                QuotedStr(kdObat),
                QuotedStr(nmObat),
                IntTostr(sedia),
                BoolToStr(adlDpho, True),
                QuotedStr(sumber),
                IntToStr(idx)
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
end.
