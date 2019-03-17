unit srvTempatTidurU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvTempatTidur = class(srvCommon)
    private
    function jsonToSql(table : string = 'simpus.m_instalasi'; json : string = ''; update : Boolean = False; pkey : string = '') : string;
    public
    aScript : TStringList;
    function postTempatTidur(puskesmas: integer; jml: Integer; tanggal_ubah: TDate ) : Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostTempatTidur;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvTempatTidur }

constructor srvTempatTidur.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

destructor srvTempatTidur.destroy;
begin
aScript.Free;
inherited;
end;

function srvTempatTidur.postTempatTidur(puskesmas: integer; jml: Integer; tanggal_ubah: TDate ): Boolean;
var V1 : Variant;
    tglStr : string;
    mStream : TMemoryStream;
    js : string;

begin

mStream := TMemoryStream.Create;
Result := False;
parameter_bridging('tempattidur', 'post');
//ShowMessage(uri);
//ShowMessage(FormatJson);
//ShowMessage(uri);
//ShowMessage(uri);
DateTimeToString(tglStr, 'yyyy-MM-dd', tanggal_ubah);
V1 := _Json(FormatJson);
//ShowMessage(VariantSaveJSON(V1));
V1.puskesmas := puskesmas;
//ShowMessage(puskesmas);
V1.jml := jml;
V1.tanggalUbah := tglStr;
js := VariantSaveJSON(V1);
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
if Result then masukkanpostTempatTidur;
FDConn.Close;
end;


function srvTempatTidur.jsonToSql(table, json: string; update: Boolean;
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

procedure srvTempatTidur.masukkanpostTempatTidur;
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlx0, sqlx1 : string;
    sqlDel0, sql0, sql1 : string;
    dId, dPuskesmas, dJml, dTgl : string;
    poliSakit : Boolean;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'delete from simpus.tt where id = 0;';
//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
   sql1 := jsonToSql('simpus.tt', dataResp);
   sql1 := ReplaceStr(sql1, 'tanggalUbah', 'tanggal_ubah');
   tSl.Add(sql1);
// ShowMessage(tsResponse.Text);

 {
   for I := 0 to dataResp._count - 1 do
     begin
       dBiaya := dataResp.Value(i).biaya;
       dIdRpt := dataResp.Value(i).idRpt;
//       ShowMessage('BooltoStr (nonSpesialis, True)');

       sql1 := Format(sql0, [QuotedStr(dBiaya), QuotedStr(dIdRpt)]);
       tSl.Add(sql1);
//       showMessage(sqlDel1);
//       showMessage(sql1);
     end;
  }
   finally
     aScript.Assign(tSl);
     jalankanScript(tSl);
     FreeAndNil(tSl);
   end;
end;

end.
