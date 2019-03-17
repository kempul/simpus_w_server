unit kunciu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvAppStorage, JvAppXMLStorage, JvComponentBase, JvCipher,
  JvFormPlacement, StdCtrls, ExtCtrls;

type
  TForm1_kunci = class(TForm)
    labelEditUser: TLabeledEdit;
    labelEditPasswd: TLabeledEdit;
    labelEditCons: TLabeledEdit;
    labelEditKey: TLabeledEdit;
    labelEditHost: TLabeledEdit;
    labelEditDB: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure simpan;
    procedure ambil;
  public
    { Public declarations }
    dbhost, dbname, dbuser, dbpasswd, serialX : WideString;
    pghost, pgport, pgdb, pguser, pgpasswd : WideString;

  end;

var
  Form1_kunci: TForm1_kunci;

implementation
     uses SynCommons, aaaliCrypt;
{$R *.dfm}

{ TForm1_kunci }

procedure TForm1_kunci.ambil;
var myJson : Variant;
  FUri, jsConsID, jsKeyID, jsUserid, jsPasswd : WideString;
begin
myJson := _JsonFast(StringFromFile('param.json'));
pghost := myJson.pg.pghost;
pgport := myJson.pg.pgport;
//ShowMessage('pghost = ' + pghost);
pgdb := myJson.pg.pgdb;
pgport := myJson.pg.pgport;
pguser := decodeData( myJson.pg.pguser, keyTototo);
pgpasswd := DecodeData( myJson.pg.pgpasswd , keyTototo);


  FUri := myJson.bpjs.base_uri;
  jsConsID := DecodeData( myJson.bpjs.consid, keyTototo);
  jsKeyID := DecodeData( myJson.bpjs.key, keyTototo);
  jsUserID := myJson.bpjs.userid;
  jsPasswd := DecodeData( myJson.bpjs.passwd, keyTototo);


//xml.Reload;
{
dbhost:=xml.ReadString('dbhost');
dbname:=xml.ReadString('dbname');
dbuser:=cipher1.DecodeString('15754', xml.ReadString('dbuser'));
dbpasswd:=cipher1.DecodeString('15754', xml.ReadString('dbpasswd'));
serialX:=cipher1.DecodeString('15754', xml.ReadString('key'));
}
{
pghost:=xml.ReadString('pghost');
pgdb:=xml.ReadString('pgdb');
pgport:=xml.ReadString('pgport');
pguser:=cipher1.DecodeString('15754', xml.ReadString('pguser'));
pgpasswd:=cipher1.DecodeString('15754', xml.ReadString('pgpasswd'));
serialX:=cipher1.DecodeString('15754', xml.ReadString('key'));
}
end;

procedure TForm1_kunci.FormCreate(Sender: TObject);
begin
try
//simpan;
finally
  ambil;
end;
end;

procedure TForm1_kunci.simpan;
var myJson : Variant;

vUser, vPasswd, vCons, vKey, userbaru : WideString;
str0 : String;
begin

vUser := labelEditUser.Text;
vPasswd := labelEditPasswd.Text;
vCons := labelEditCons.Text;
vKey := labelEditKey.Text;


myJson := _JsonFast(StringFromFile('param.json'));

myJson.serial := 'tes serial';

//pghost :='127.0.0.1';
pghost := labelEditHost.Text;
pgport := '5432';
pgdb:= labelEditDB.Text;
pguser:='dkkuser';
userbaru := EncodeData(pguser, keyTototo);
pgpasswd:='nganggodkk';


myJson.pg.pghost := pghost;

myJson.pg.port := pgport;
myJson.pg.pgdb := pgdb;

myJson.pg.pguser := userbaru;

myJson.pg.pgpasswd := encodeData(pgpasswd, keytototo);


myJson.bpjs.base_uri := 'http://api.bpjs-kesehatan.go.id/pcare-rest';

myJson.bpjs.consid := EncodeData(vCons, keyTototo);
myJson.bpjs.key := EncodeData(vKey, keyTototo);
myJson.bpjs.userid := vUser;
myJson.bpjs.passwd := encodeData(vPasswd, keyTototo);


//str0 := myJson.result;


FileFromString(myJson, 'param.json')
end;

end.
