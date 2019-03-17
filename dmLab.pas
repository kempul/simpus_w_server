unit dmLab;

interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, UniProvider, PostgreSQLUniProvider,
  JvDataSource, MemDS;

type
  TDataLab = class(TDataModule)
    pgProvider1: TPostgreSQLUniProvider;
    uniTrans1: TUniTransaction;
    conn1: TUniConnection;
    uqKunjungan1: TUniQuery;
    dsKunjungan1: TJvDataSource;
    uqPasienLab: TUniQuery;
    dsPasienLab: TJvDataSource;
    qbuka: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getpg;

  public
    { Public declarations }
  end;

var
  DataLab: TDataLab;

implementation

uses kunciu;

{$R *.dfm}

{ TDataModule1 }

procedure TDataLab.DataModuleCreate(Sender: TObject);
begin
getpg;
end;

procedure TDataLab.getpg;
begin
if conn1.Connected then conn1.Connected := false;

//conn1.AutoReconnect := False;
pghost:=form1_kunci.pghost;
pgport := Form1_kunci.pgport;
pgdb:=form1_kunci.pgdb;
pguser:=form1_kunci.pguser;
pgpasswd:=form1_kunci.pgpasswd;


conn1.Server := pghost;
conn1.Port := StrToInt(pgport);
conn1.Database := pgdb;
conn1.Username := pguser;
conn1.Password := pgpasswd;

end;

end.
