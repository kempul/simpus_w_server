unit dmBidan;

interface

uses
  SysUtils, Classes, UniProvider, PostgreSQLUniProvider, DBAccess, Uni, DB,
  JvDataSource, MemDS;

type
  TdataBidan = class(TDataModule)
    conn1: TUniConnection;
    uniTrans1: TUniTransaction;
    pgProvider1: TPostgreSQLUniProvider;
    qKK: TUniQuery;
    dsKK: TJvDataSource;
    qPasien: TUniQuery;
    dsPasien: TJvDataSource;
    qbuka: TUniQuery;
    qPasien0: TUniQuery;
    dsPasien0: TJvDataSource;
    qMR: TUniQuery;
    dsMR: TJvDataSource;
    uspThblDummi: TUniStoredProc;
    dsBidanPoned: TJvDataSource;
    qBidanPoned: TUniQuery;
    qPoned_pv: TUniQuery;
    dsBidan: TJvDataSource;
    qBidan: TUniQuery;
    q_bidanPonedCetak: TUniQuery;
    uspBidanPoned: TUniStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getpg;
    
  public
    { Public declarations }
  end;

var
  dataBidan: TdataBidan;

implementation

uses kunciu;

{$R *.dfm}

{ TdataPasien }

procedure TdataBidan.DataModuleCreate(Sender: TObject);
begin
getpg;
end;

procedure TdataBidan.getpg;
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
