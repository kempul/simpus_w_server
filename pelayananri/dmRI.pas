unit dmRI;

interface

uses
  SysUtils, Classes, JvDataSource, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Comp.Client, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdataRI = class(TDataModule)
    fdpgdriver1: TFDPhysPgDriverLink;
    fdCmd1: TFDCommand;
    fdScript2: TFDScript;
    fdQueryBuka: TFDQuery;
    fdQueryRI: TFDQuery;
    dsRI: TJvDataSource;
    fdQueryBed: TFDQuery;
    dsBed: TJvDataSource;
    fdQueryFisik: TFDQuery;
    dsFisik: TJvDataSource;
    fdQueryRm: TFDQuery;
    dsRm: TJvDataSource;
    fdQueryIcdxCek: TFDQuery;
    fdQueryDiagnosaTerakhir: TFDQuery;
    fdQueryCheckSpesialis: TFDQuery;
    fdQueryRujukanMaster: TFDQuery;
    dsRujukanMaster: TJvDataSource;
    fdQueryRujukanRm: TFDQuery;
    dsRujukanRm: TJvDataSource;
    fdQueryCariMr: TFDQuery;
    fdQueryPesertaBpjs: TFDQuery;
    FDConnection1: TFDConnection;
    fdQ1Cetak: TFDQuery;
    fdQ1CetakNon: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qPasienKunjunganAfterScroll(DataSet: TDataSet);
    procedure qKKNewRecord(DataSet: TDataSet);
    procedure fdQueryRmBeforeDelete(DataSet: TDataSet);
    procedure fdQueryFisikBeforeDelete(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
     SLConn : TStringList;
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getDB;
     function hapusDiagnosa(id : string) : Boolean;
     function hapusFisik(id : string) : Boolean;
     function hapusImunisasi(id : string) : Boolean;
     function hapusTindakanGigi(id : string) : Boolean;
     function hapusTindakan(id : string) : Boolean;
     function hapusPoned(id : string) : Boolean;


  public
    { Public declarations }
  end;

var
  dataRI: TdataRI;

implementation

uses kunciu, aau111, aau; //, SrvParallelU;

{$R *.dfm}

procedure TdataRI.DataModuleCreate(Sender: TObject);
begin
SLConn := TStringList.Create;
getDB;
end;

procedure TdataRI.DataModuleDestroy(Sender: TObject);
begin
FDManager.Active := False;
SLConn.Free;
end;

procedure TdataRI.fdQueryFisikBeforeDelete(DataSet: TDataSet);
var id : string;
begin
id := DataSet.FieldByName('idxstr').OldValue;
hapusFisik(id);
end;

procedure TdataRI.fdQueryRmBeforeDelete(DataSet: TDataSet);
var id : string;
begin
id := DataSet.FieldByName('id_diag').OldValue;
hapusDiagnosa(id);
end;

procedure TdataRI.getDB;
begin

//FDConnection1.AutoReconnect := False;
pghost:=form1_kunci.pghost;
pgport := Form1_kunci.pgport;
pgdb:=form1_kunci.pgdb;
pguser:=form1_kunci.pguser;
pgpasswd:=form1_kunci.pgpasswd;


  SLConn.Add('Server=' + pghost);
  SLConn.Add('Port=' +  pgport);
  SLConn.Add('Database= ' + pgdb);
  SLConn.Add('User_name=' + pguser);
  SLConn.Add('Password=' + pgpasswd);
  SLConn.Add('Pooled=True');

  fdManager.AddConnectionDef('PGRI_CONNECTION', 'PG', SLConn, False);
  fdManager.Active := True;

  FDConnection1.ConnectionDefName := 'PGRI_CONNECTION';
  FDConnection1.Connected := True;
end;

function TdataRI.hapusDiagnosa(id: string): Boolean;
//var srv : SrvParallel;
begin
  {
   srv := SrvParallel.Create;
   try
     srv.diagnosaDelete(id);
   finally
     srv.Free;
   end;
   }
end;

function TdataRI.hapusFisik(id: string): Boolean;
//var srv : SrvParallel;
begin
  {
   srv := SrvParallel.Create;
   try
     srv.fisikDelete(id);
   finally
     srv.Free;
   end;
   }
end;

function TdataRI.hapusImunisasi(id: string): Boolean;
begin

end;

function TdataRI.hapusPoned(id: string): Boolean;
begin

end;

function TdataRI.hapusTindakan(id: string): Boolean;
begin

end;

function TdataRI.hapusTindakanGigi(id: string): Boolean;
begin

end;

procedure TdataRI.qKKNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('last_update').AsDateTime := Now;
DataSet.FieldByName('kota').AsString := 'REMBANG';
DataSet.FieldByName('prop').AsString := 'JAWA TENGAH';
end;

procedure TdataRI.qPasienKunjunganAfterScroll(DataSet: TDataSet);
begin
//form1_aa.PipeClient1.SendMesssage('1001');
end;

end.

