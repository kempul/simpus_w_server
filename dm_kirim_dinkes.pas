unit dm_kirim_dinkes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TdataKirimDinkes = class(TDataModule)
    FDConnection1: TFDConnection;
    fdQNik: TFDQuery;
    fdQPuskesmas: TFDQuery;
    fdCmd1: TFDCommand;
    fdQNikCount: TFDQuery;
    fdQKunjunganCount: TFDQuery;
    fdQKunjungan: TFDQuery;
    fdQFisikCount: TFDQuery;
    fdQFisik: TFDQuery;
    fdQIcdxCount: TFDQuery;
    fdQIcdx: TFDQuery;
    fdQDiagnosaCount: TFDQuery;
    fdQDiagnosa: TFDQuery;
    fdQImunisasiCount: TFDQuery;
    fdQImunisasi: TFDQuery;
    fdQPonedCount: TFDQuery;
    fdQPoned: TFDQuery;
    fdQTindakanCount: TFDQuery;
    fdQTindakan: TFDQuery;
    fdQTindakangigiCount: TFDQuery;
    fdQTindakangigi: TFDQuery;
    fdQPulangCount: TFDQuery;
    fdQPulang: TFDQuery;
    fdQMeninggalCount: TFDQuery;
    fdQMeninggal: TFDQuery;
    fdQRawatinapCount: TFDQuery;
    fdQRawatinap: TFDQuery;
    fdQKamarlogCount: TFDQuery;
    fdQKamarlog: TFDQuery;
    fdgxwtcrsr1: TFDGUIxWaitCursor;
    fdQTanggal: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
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
  dataKirimDinkes: TdataKirimDinkes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses kunciu;

{$R *.dfm}

{ TdataKirimDinkes }

procedure TdataKirimDinkes.DataModuleCreate(Sender: TObject);
begin
SLConn := TStringList.Create;

getpg;
end;

procedure TdataKirimDinkes.DataModuleDestroy(Sender: TObject);
begin
SLConn.Free;
FDManager.Close;

end;

procedure TdataKirimDinkes.getpg;
begin
  //if FDConnection1.Connected then FDConnection1.Connected := false;

//FDConnection1.AutoReconnect := False;
//FDConnection1.Close();
FDConnection1.Params.Clear;

pghost:=form1_kunci.pghost;
pgport := Form1_kunci.pgport;
pgdb:=form1_kunci.pgdb;
pguser:=form1_kunci.pguser;
pgpasswd:=form1_kunci.pgpasswd;


  SLConn.Add('DriverID=PG');
  SLConn.Add('Server=' + pghost);
  SLConn.Add('Port=' +  pgport);
  SLConn.Add('Database= ' + pgdb);
  SLConn.Add('User_name=' + pguser);
  SLConn.Add('Password=' + pgpasswd);
  SLConn.Add('Pooled=False');

  fdManager.AddConnectionDef('PGSRV_CONN', 'PG', SLConn, False);
  fdManager.Active := True;
  FDConnection1.ConnectionDefName := 'PGSRV_CONN';
  FDConnection1.Connected := True;

end;

end.
