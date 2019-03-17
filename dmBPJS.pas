unit dmBPJS;

interface

uses
  SysUtils, Classes, UniProvider, PostgreSQLUniProvider, DBAccess, Uni, DB,
  MemDS, JvDataSource;

type
  TdataBPJS = class(TDataModule)
    conn1: TUniConnection;
    uniTrans1: TUniTransaction;
    pgProvider1: TPostgreSQLUniProvider;
    uqbpjs1: TUniQuery;
    dsbpjs: TJvDataSource;
    unsqlProses: TUniSQL;
    uniQBuka: TUniQuery;
    uniQObat: TUniQuery;
    dsObat: TJvDataSource;
    uniQMCU: TUniQuery;
    dsMCU: TJvDataSource;
    uniQTindakan: TUniQuery;
    dsTindakan: TJvDataSource;
    unspDaftarHapus: TUniStoredProc;
    unspKunjunganHapus: TUniStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     pghost, pgport, pgdb, pguser, pgpasswd : string;
     procedure getpg;
  public
    { Public declarations }
  end;

var
  dataBPJS: TdataBPJS;

implementation

uses kunciu;

{$R *.dfm}

{ TDataModule1 }

procedure TdataBPJS.DataModuleCreate(Sender: TObject);
begin
getpg;
end;

procedure TdataBPJS.getpg;
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
