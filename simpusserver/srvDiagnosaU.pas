unit srvDiagnosaU;

interface
   uses Dialogs, Classes, srvCommonsU, System.SysUtils, System.StrUtils;
type

  srvDiagnosa = class(srvCommon)
    private
    FPenyakit : string;
    function ambilJsonPost(id_diag : string) : string;
    public
    aScript : TStringList;

    property penyakit : string read FPenyakit write FPenyakit;

    function postDiagnosa(id_diag : string): Boolean;
    function deleteDiagnosa(id_diag : string): Boolean;
    constructor Create;
    destructor destroy;
    procedure masukkanpostDiagnosa(id_diag: string);
//    property Uri : string;
  end;


implementation
     uses SynCommons, mORMot, synautil;
{ srvDiagnosa }

function srvDiagnosa.ambilJsonPost(id_diag: string): string;
var sql0, sql1, tanggalDiagnosaStr : string;
    V1 : Variant;
begin
parameter_bridging('diagnosa', 'post');

V1 := _Json(FormatJson);

Result := '';
sql0 := 'select * from simpus.rekam_medis where id_diag = %s limit 1';
sql1 := Format(sql0, [QuotedStr(id_diag)]);
fdQuery.Close;
fdQuery.SQL.Clear;
fdQuery.SQL.Add(sql1);
fdQuery.Active := true;

if not fdQuery.IsEmpty then
begin

  DateTimeToString(tanggalDiagnosaStr, 'yyyy-MM-dd''T''hh:mm:ss', fdQuery.FieldByName('tanggal_diagnosa').AsDateTime);

//ShowMessage(VariantSaveJSON(V1));
  V1.idDiag := id_diag;
  V1.idxstr := fdQuery.FieldByName('idxstr').AsString;
  V1.idx := fdQuery.FieldByName('idx').AsInteger;
  V1.tanggalDiagnosa := tanggalDiagnosaStr;
  V1.dokter := fdQuery.FieldByName('dokter').AsString;
  V1.penyakit := fdQuery.FieldByName('penyakit').AsString;
  V1.anamnese := fdQuery.FieldByName('anamnese').AsString;
  V1.tindakan := fdQuery.FieldByName('tindakan').AsString;
  V1.adlBaru := fdQuery.FieldByName('adl_baru').AsInteger;
  V1.nonSpesialis := fdQuery.FieldByName('non_spesialis').AsBoolean;

  FPenyakit := fdQuery.FieldByName('penyakit').AsString;
  fdQuery.Close;
   Result := VariantSaveJSON(V1);
end else fdQuery.Close;
end;

constructor srvDiagnosa.Create;
begin
  inherited Create;
  aScript := TStringList.Create;
end;

function srvDiagnosa.deleteDiagnosa(id_diag: string): Boolean;
begin
parameter_bridging('diagnosa', 'delete');
Result := False;


Uri := ReplaceStr(Uri, '{iddiag}', id_diag);
Result:= httpDelete(Uri);
  if Result then jika_berhasil('simpus.rekam_medis', id_diag) else
      jika_gagal('delete', Uri, FormatJson, 'simpus.rekam_medis', id_diag);

FDConn.Close;
end;

destructor srvDiagnosa.destroy;
begin
aScript.Free;
inherited;
end;

function srvDiagnosa.postDiagnosa(id_diag : string): Boolean;
var
    mStream : TMemoryStream;
    js : string;

begin
Result := False;

js := ambilJsonPost(id_diag);
if Length(js) > 10 then
begin
mStream := TMemoryStream.Create;
WriteStrToStream(mStream, js);

//Uri := ReplaceStr(Uri, '{puskesmas}', puskesmas);
Result:= httpPost(Uri, mStream);
mStream.Free;
  if Result then masukkanpostDiagnosa(id_diag);
end;
FDConn.Close;
end;



procedure srvDiagnosa.masukkanpostDiagnosa(id_diag : string);
var dataResp, dataList : Variant;
    i : Integer;
    tSl : TStringList;
    sqlDel0, sqlDel1, tglStr : string;
begin
//       ShowMessage('awal masukkan get');

   sqlDel0 := 'update simpus.rekam_medis set tanggal_server = %s where id_diag = %s;';

//   sql0 := 'insert into simpus.tt(id, puskesmas, jml, tanggal_ubah) values(%s, %s, %s, %s);';
   tsL := TStringList.Create;
   //tSl.Add(sqlDel0);
   try
   dataResp := _jsonFast(tsResponse.Text);
   tglStr := dataResp.tanggalServer;
   sqlDel1 := Format(sqlDel0, [QuotedStr(tglStr), QuotedStr(id_diag)]);
   tSl.Add(sqlDel1);
   aScript.Assign(tSl);
   jalankanScript(tSl);
   finally
     FreeAndNil(tSl);
   end;
end;

end.
