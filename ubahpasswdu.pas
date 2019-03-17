unit ubahpasswdu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvBevel, JvExControls, JvLabel, StdCtrls,
  JvExStdCtrls, JvEdit, JvButton, JvCtrls, JvTimer, JvCheckBox;

type
  TForm1_ubahPasswd = class(TForm)
    JvEdit1: TJvEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvEdit2: TJvEdit;
    JvLabel3: TJvLabel;
    JvEdit3: TJvEdit;
    JvBevel1: TJvBevel;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    labelPemakai: TJvLabel;
    JvTimer1: TJvTimer;
    JvCheckBox1: TJvCheckBox;
    procedure JvImgBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvTimer1Timer(Sender: TObject);
    procedure JvCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_ubahPasswd: TForm1_ubahPasswd;

implementation

uses dmmaster;

{$R *.dfm}

procedure TForm1_ubahPasswd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
jvTimer1.Enabled := False;
end;

procedure TForm1_ubahPasswd.FormShow(Sender: TObject);
begin
jvEdit1.Clear;
jvEdit2.Clear;
jvEdit3.Clear;

jvTimer1.Enabled:=True;
caption := 'Ubah Password @'+labelPemakai.Caption;
jvEdit1.SetFocus;
end;

procedure TForm1_ubahPasswd.JvCheckBox1Click(Sender: TObject);
begin
if jvCheckBox1.Checked then
begin
  jvEdit1.PasswordChar:=#0;
  jvEdit2.PasswordChar:=#0;
  jvEdit3.PasswordChar:=#0;
end else
begin
  jvEdit1.PasswordChar:='@';
  jvEdit2.PasswordChar:='@';
  jvEdit3.PasswordChar:='@';
end;

end;

procedure TForm1_ubahPasswd.JvImgBtn1Click(Sender: TObject);
var sql0, sql1 :string;
begin
   sql0 := 'update EMPLOYEES set passwd = %s where nama = %s and passwd = %s';
   with dataMaster do
   begin
     sql1 := format(sql0, [
                            quotedStr(jvEdit2.Text),
                            quotedStr(labelPemakai.Caption),
                            quotedStr(jvEdit1.Text)]);
     fdCmd1.Execute(sql1);
     FDConnection1.Connected := false;
   end;
modalResult := mrOK;
end;


procedure TForm1_ubahPasswd.JvTimer1Timer(Sender: TObject);
begin
jvImgBtn1.Enabled := (jvEdit2.Text=jvEdit3.Text) and (length(jvEdit2.Text) > 0);

end;

end.
