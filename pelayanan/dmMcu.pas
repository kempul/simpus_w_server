unit dmMcu;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, JvDataSource;

type
  TdataMCU = class(TDataModule)
    FDConnection1: TFDConnection;
    fdCmd1: TFDCommand;
    fdQ1: TFDQuery;
    fdgxwtcrsr1: TFDGUIxWaitCursor;
    fdQMcu: TFDQuery;
    dsMcu: TJvDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    SLConn : TStringList;
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getDB;

  public
    { Public declarations }
  end;

var
  dataMCU: TdataMCU;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses kunciu;

{$R *.dfm}

{ TdataMCU }

procedure TdataMCU.DataModuleCreate(Sender: TObject);
begin
SLConn := TStringList.Create;
getDB;
end;

procedure TdataMCU.DataModuleDestroy(Sender: TObject);
begin
FDManager.Active := False;
SLConn.Free;

end;

procedure TdataMCU.getDB;
begin
FDConnection1.Params.Clear;
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
