unit dmBPJSMaster;

interface

uses
  SysUtils, Classes, JvDataSource, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Phys.PG, Data.DB,
  FireDAC.Comp.ScriptCommands, FireDAC.Comp.Script, FireDAC.Phys.PGDef,
  FireDAC.Stan.Util, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdataMasterBPJS = class(TDataModule)
    dsICDX: TJvDataSource;
    dsDokter: TJvDataSource;
    dsObat: TJvDataSource;
    dsPoli: TJvDataSource;
    dsPoliRujukan: TJvDataSource;
    dsProvider: TJvDataSource;
    dsTindakan: TJvDataSource;
    dsKesadaran: TJvDataSource;
    dsPulang: TJvDataSource;
    fdpgdriver1: TFDPhysPgDriverLink;
    fdCmd1: TFDCommand;
    fdScript1: TFDScript;
    fdQueryIcdx: TFDQuery;
    fdQueryKesadaran: TFDQuery;
    fdQueryMasterPulang: TFDQuery;
    FDConnection1: TFDConnection;
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
  dataMasterBPJS: TdataMasterBPJS;

implementation

uses kunciu;

{$R *.dfm}

{ TDataModule1 }

procedure TdataMasterBPJS.DataModuleCreate(Sender: TObject);
begin
SLConn := TStringList.Create;
getpg;
end;

procedure TdataMasterBPJS.DataModuleDestroy(Sender: TObject);
begin
FDManager.Close;
SLConn.Free;
end;

procedure TdataMasterBPJS.getpg;
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

  fdManager.AddConnectionDef('PGMASTER_CONN', 'PG', SLConn, False);
  fdManager.Active := True;
  FDConnection1.ConnectionDefName := 'PGMASTER_CONN';
  FDConnection1.Connected := True;

end;

end.
