unit aau111;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, JvSerialMaker, JvComponentBase, JvCipher, JvAppStorage,
  JvAppXMLStorage, DB, JvFormPlacement, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TForm111 = class(TForm)
    JvVigenereCipher1: TJvVigenereCipher;
    storageUmum: TJvFormStorage;
    Ini1: TJvAppIniFileStorage;
    FDConnection1: TFDConnection;
    fdTransaction1: TFDTransaction;
    fdpgdriver1: TFDPhysPgDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    procedure getDB;

    function bandingkan : boolean;
    procedure setRegisterX(nama, alamat, serial: string; khuliq : TDateTime);

    procedure setRegisterR(nama, alamat, serial : string ; khuliq : TDateTime);
    procedure getRegisterR;


  public
    { Public declarations }
        isCorrect : Boolean;
        institusiR, alamatR, serialR, serialX : string;
        MyIni : string;


        var
        khuliqDR, alanDR : TDateTime;
        muddaR : Integer;
        pghost, pgport, pgdb, pguser, pgpasswd : string;

      const
      keyTo = 'wsL3RStCVOgXh06x';

        procedure setRegister(nama , alamat, serial : string);
        procedure resetRegister;
        procedure getRegister;
        procedure cobaRegister(nama, alamat, serial : string);
  end;

var
  Form111: TForm111;

implementation

uses aaULogin, aaaliCrypt, kunciu, versionInfoUnit;


{$R *.DFM}

procedure TForm111.getDB;
begin
if FDConnection1.Connected then FDConnection1.Connected := false;

//FDConnection1.AutoReconnect := False;
pghost:=form1_kunci.pghost;
pgport := Form1_kunci.pgport;
pgdb:=form1_kunci.pgdb;
pguser:=form1_kunci.pguser;
pgpasswd:=form1_kunci.pgpasswd;


FDConnection1.Params.Clear;
FDConnection1.Params.Add('Server=' + pghost);
FDConnection1.Params.Add('Port=' +  pgport);
FDConnection1.Params.Add('Database= ' + pgdb);
FDConnection1.Params.Add('User_name=' + pguser);
FDConnection1.Params.Add('Password=' + pgpasswd);
FDConnection1.Params.Add('Port=' + pgport);
FDConnection1.Params.Add('DriverID=PG');

end;

function TForm111.bandingkan: boolean;
begin
{
          result :=(
          (decodeData(serialR, keyTo) = jvVigenereCipher1.DecodeString(keyTo, serialX)) and
          (khuliqDR <= alanDR) and
          (alanDR <= now) and
          (institusiR <> 'Trial Version')
          );
}          
          Result := True;
end;

procedure TForm111.cobaRegister(nama, alamat, serial: string);
var serialNYA : string;
begin
serialNYA := generateSerialNumber(nama);
isCorrect:= serial=serialNYA;
if isCorrect then
  try

  setRegister(nama, alamat, serial);

  finally
  getRegister;
 end;
end;

procedure TForm111.FormCreate(Sender: TObject);
begin
getDB;
getRegister;
storageUmum.StoredValue['versi']:= getAppVersion;
Ini1.FileName := 'simpus.ini';
MyIni := ExtractFilePath(Ini1.FullFileName) + 'simpus.ini';
end;

procedure TForm111.getRegister;
begin
//getRegisterR;
isCorrect:=bandingkan;
end;

procedure TForm111.getRegisterR;
begin
end;

procedure TForm111.resetRegister;
begin
try
isCorrect := False;
setRegisterR('Trial Version', 'Trial Version', 'Trial Version', now);
setRegisterX('Trial Version', 'Trial Version', 'Trial Version', now);
finally
  getRegister;
end;
end;



procedure TForm111.setRegister(nama, alamat, serial: string);
var khuliq : TdateTime;
begin
khuliq := date;
setRegisterX(nama, alamat, serial, khuliq);
setRegisterR(nama, alamat, serial, khuliq);
end;

procedure TForm111.setRegisterR(nama, alamat, serial : string; khuliq : TDateTime);
begin
end;

procedure TForm111.setRegisterX(nama, alamat, serial : string; khuliq : TDateTime);
begin
{
serialX:=jvVigenereCipher1.EncodeString(keyTo,serial);
form1_kunci.XML.WriteString('key', jvVigenereCipher1.EncodeString(keyTo, serial));
form1_kunci.xml.Flush;
form1_kunci.xml.Reload;
}
end;

end.
