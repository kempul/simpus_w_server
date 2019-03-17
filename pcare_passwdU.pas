unit pcare_passwdU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1_passwdPcare = class(TForm)
    labelEdit1: TLabeledEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ambil;
    procedure simpan;
  public
    { Public declarations }
  end;

var
  Form1_passwdPcare: TForm1_passwdPcare;

implementation

{$R *.dfm}
uses SynCommons, aaaliCrypt;
{ TForm1_passwdPcare }

procedure TForm1_passwdPcare.ambil;
var js : Variant;
  jsPasswd, passwdx : string;
begin
js := _JsonFast(StringFromFile('param.json'));
//serialX := Cipher1.DecodeString('15754', js.getString('serial'));
passwdx := js.bpjs.passwd;
jsPasswd := DecodeData(passwdx, keyTototo);


labelEdit1.Text := jsPasswd;
end;

procedure TForm1_passwdPcare.btn1Click(Sender: TObject);
begin
simpan;
end;

procedure TForm1_passwdPcare.FormShow(Sender: TObject);
begin
ambil;
end;

procedure TForm1_passwdPcare.simpan;
var js : Variant;
    vPasswd, xPasswd : string;
begin
vPasswd := labelEdit1.Text;

js := _JsonFast(StringFromFile('param.json'));
xPasswd := EncodeData(vPasswd, keyTototo);
js.bpjs.passwd := xPasswd;
FileFromString(js, 'param.json');
end;

end.
