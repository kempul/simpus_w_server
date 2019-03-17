unit srvPasienLabU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvPasienLab = class(srvCommon)
    private
    function ambilJsonPost(id : string) : string;
    public
    aScript : TStringList;

    function postPasienLab(id : string): Boolean;
    function deletePasienLab(id : string): Boolean;
    function getPasienLabByKunjungan(idxstr : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostPasienLab;
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvPasienLab }

function srvPasienLab.ambilJsonPost(id: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('lab pasien', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from lab.pasien_lab where id = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd', fdQuery.FieldByName('tanggal').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.id := id;
  V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
  V1.idx := fdQuery.FieldByName('idx').AsInteger;
  V1.tanggal := tanggalDiagnosaStr;
  V1.jenis := fdQuery.FieldByName('jenis').AsString;
  V1.hasil := fdQuery.FieldByName('hasil').AsFloat;

  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvPasienLab.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvPasienLab.deletePasienLab(id: string): Boolean;
begin
parameter_bridging('lab pasien', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{id}', id);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('lab.pasien_lab', id) else
         jika_gagal('delete', Uri, '', 'lab.pasien_lab', id);

FDConn.Close;
end;

destructor srvPasienLab.destroy;
begin
aScript.Free;
inherited;
end;

function srvPasienLab.getPasienLabByKunjungan(idxstr: string): Boolean;
begin

end;

function srvPasienLab.postPasienLab(id : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(id);
if Length(js)> 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
  if Result then jika_berhasil('lab.pasien_lab', id) else
         jika_gagal('post', Uri, js, 'lab.pasien_lab', id);

end;
FDConn.Close;
end;



procedure srvPasienLab.masukkanpostPasienLab;
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
