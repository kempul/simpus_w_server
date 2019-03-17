unit dmMaster;

interface

uses
  Dialogs, SysUtils, Classes, DB, JvDataSource, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.Client, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script;

type
  TdataMaster = class(TDataModule)
    dspemakai: TJvDataSource;
    dsPuskesmas: TJvDataSource;
    dsDokter: TJvDataSource;
    dsMasterPoli: TJvDataSource;
    dsMasterBeaya: TJvDataSource;
    dsICDX: TJvDataSource;
    dsKelasTempatTidur: TJvDataSource;
    dsMasterPONED: TJvDataSource;
    fdpgdriver1: TFDPhysPgDriverLink;
    fdCmd1: TFDCommand;
    fdQueryPemakai: TFDQuery;
    fdQueryPuskesmas: TFDQuery;
    fdQueryDokter: TFDQuery;
    fdQueryMasterPoli: TFDQuery;
    fdQueryMasterBiaya: TFDQuery;
    fdQueryBuka: TFDQuery;
    fdQueryMasterIcdx: TFDQuery;
    fdQueryKelasTt: TFDQuery;
    fdScript2: TFDScript;
    fdQueryInstalasi: TFDQuery;
    dsInstalasi: TJvDataSource;
    fdQueryPuskesmasUnique: TFDQuery;
    fdQueryMasterImunisasi: TFDQuery;
    dsMasterImunisasi: TJvDataSource;
    fdQueryMasterPoned: TFDQuery;
    fdQueryKamar: TFDQuery;
    dsKamar: TJvDataSource;
    fdQueryKamarTerakhir: TFDQuery;
    fdQueryRsRujukan: TFDQuery;
    dsRsRujukan: TJvDataSource;
    fdQueryPoliRujukan: TFDQuery;
    dsPoliRujukan: TJvDataSource;
    fdQueryMasterTindakan: TFDQuery;
    dsMasterTindakan: TJvDataSource;
    fdQueryMasterObat: TFDQuery;
    dsMasterObat: TJvDataSource;
    fdQueryMasterLab: TFDQuery;
    dsMasterLab: TJvDataSource;
    FDConnection1: TFDConnection;
    fdQMasterPoliAntrian: TFDQuery;
    dsMasterPoliAntrian: TJvDataSource;
    procedure qsatuanNewRecord(DataSet: TDataSet);
    procedure qrelasiNewRecord(DataSet: TDataSet);
    procedure qdokterNewRecord(DataSet: TDataSet);
    procedure qitemsNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qapotekerNewRecord(DataSet: TDataSet);
    procedure qnotaNewRecord(DataSet: TDataSet);
    procedure qservisNewRecord(DataSet: TDataSet);
    procedure qpemakaiNewRecord(DataSet: TDataSet);
    procedure qprodusenNewRecord(DataSet: TDataSet);
    procedure qpenjualNewRecord(DataSet: TDataSet);
    procedure qpembeliNewRecord(DataSet: TDataSet);
    procedure qrawatNewRecord(DataSet: TDataSet);
    procedure qkelompokNewRecord(DataSet: TDataSet);
    procedure uniQMasterImunisasiNewRecord(DataSet: TDataSet);
    procedure uqMasterPoliNewRecord(DataSet: TDataSet);
    procedure uqMasterPustuNewRecord(DataSet: TDataSet);
    procedure uqMasterBidanNewRecord(DataSet: TDataSet);
    procedure uniQTTNewRecord(DataSet: TDataSet);
    procedure fdQueryKamarBeforeDelete(DataSet: TDataSet);
    procedure fdQueryKamarNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
     SLConn : TStringList;
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getpg;

  public
    { Public declarations }
  end;

var
  dataMaster: TdataMaster;

implementation

uses kunciu, aau;
//, SrvParallelU;

{$R *.dfm}

procedure TdataMaster.DataModuleCreate(Sender: TObject);
begin
SLConn := TStringList.Create;
getpg;
end;

procedure TdataMaster.DataModuleDestroy(Sender: TObject);
begin
FDManager.Active := False;
SLConn.Free;
end;

procedure TdataMaster.fdQueryKamarBeforeDelete(DataSet: TDataSet);
//var aParallel : SrvParallel;
//    id : string;
begin
{
  id := DataSet.FieldByName('id').AsString;
//  ShowMessage(id);
  aParallel := SrvParallel.Create;
  try
    aParallel.kamarDelete(id);
  finally
    aParallel.Free;
  end;
}
end;

procedure TdataMaster.fdQueryKamarNewRecord(DataSet: TDataSet);
begin
fdQueryPuskesmasUnique.Close;
fdQueryPuskesmasUnique.Open();

DataSet.FieldByName('puskesmas').AsInteger := fdQueryPuskesmasUnique.FieldByName('kd_cabang').AsInteger;
DataSet.FieldByName('id').AsInteger := 0;
DataSet.FieldByName('tanggal_ubah').AsDateTime := now;

fdQueryPuskesmasUnique.Close;

end;

procedure TdataMaster.getpg;
begin
//if FDConnection1.Connected then FDConnection1.Connected := false;

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

  fdManager.AddConnectionDef('PGMASTER_CONN', 'PG', SLConn, False);
  fdManager.Active := True;
  FDConnection1.ConnectionDefName := 'PGMASTER_CONN';
  FDConnection1.Connected := True;
end;

procedure TdataMaster.qitemsNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('kode').AsInteger:=0;
dataset.FieldByName('adl_aktif').AsInteger:=1;
end;

procedure TdataMaster.qkelompokNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
end;

procedure TdataMaster.qnotaNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
end;

procedure TdataMaster.qpemakaiNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('kode').AsInteger := 0;
dataset.FieldByName('master').AsInteger := 0;
dataset.FieldByName('beli').AsInteger := 0;
dataset.FieldByName('adm').AsInteger := 0;
dataset.FieldByName('barang').AsInteger := 0;
dataset.FieldByName('pembelian').AsInteger := 0;
dataset.FieldByName('penjualan').AsInteger := 0;
dataset.FieldByName('manajer').AsInteger := 0;
dataset.FieldByName('keuangan').AsInteger := 0;
dataset.FieldByName('laporan').AsInteger := 0;
dataset.FieldByName('setting').AsInteger := 0;
dataset.FieldByName('box').AsInteger := 0;

end;

procedure TdataMaster.qpembeliNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger := 0;
dataset.FieldByName('penjual').AsInteger := 0;
dataset.FieldByName('pembeli').AsInteger := 1;
end;

procedure TdataMaster.qpenjualNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger := 0;
dataset.FieldByName('penjual').AsInteger := 1;
dataset.FieldByName('pembeli').AsInteger := 0;
end;

procedure TdataMaster.qprodusenNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
end;

procedure TdataMaster.qrawatNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('dipake').AsInteger := 0;
end;

procedure TdataMaster.qrelasiNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
end;

procedure TdataMaster.qsatuanNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
end;

procedure TdataMaster.qservisNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('servis').AsInteger:=0;
dataset.FieldByName('embalase').AsInteger:=0;
dataset.FieldByName('puyer').AsInteger:=0;
end;

procedure TdataMaster.uniQMasterImunisasiNewRecord(DataSet: TDataSet);
begin
//DataSet.FieldByName('idx').AsInteger := 0;
DataSet.FieldByName('idx_sasaran').AsInteger := 0;
DataSet.FieldByName('adl_aktif').AsInteger := 1;

end;

procedure TdataMaster.uniQTTNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('puskesmas').AsString := 'tes';
DataSet.FieldByName('tanggal_ubah').AsDateTime := date;

end;

procedure TdataMaster.uqMasterBidanNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('idx').AsInteger := 0;
end;

procedure TdataMaster.uqMasterPoliNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('id_poli').AsInteger := 0;
DataSet.FieldByName('adl_internal').AsInteger := 1;
DataSet.FieldByName('poli_sakit').AsBoolean := True;
DataSet.FieldByName('adl_aktif').AsBoolean := True;
DataSet.FieldByName('adl_bpjs').AsBoolean := False;
end;

procedure TdataMaster.uqMasterPustuNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('idx').AsInteger := 0;
end;

procedure TdataMaster.qapotekerNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
dataset.FieldByName('aktif').AsInteger:=1;
dataset.FieldByName('fee').AsInteger:=0;
dataset.FieldByName('Profesi').AsString := 'Apoteker';
end;

procedure TdataMaster.qdokterNewRecord(DataSet: TDataSet);
begin
dataset.FieldByName('idx').AsInteger:=0;
dataset.FieldByName('aktif').AsInteger:=1;
dataset.FieldByName('fee').AsInteger:=0;
dataset.FieldByName('Profesi').AsString := 'Dokter';
end;

end.
