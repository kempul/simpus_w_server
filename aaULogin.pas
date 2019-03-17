unit aaULogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, JvExComCtrls, JvComCtrls,
  JvgPage, Mask, JvExMask, JvToolEdit, JvExControls, JvLabel, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TFormLogin = class(TForm)
    JvPageControl1: TJvgPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    btn_go: TButton;
    Button1: TButton;
    TabSheet3: TTabSheet;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    lbl_Remaining: TJvLabel;
    FDConnection1: TFDConnection;
    fdTransaction1: TFDTransaction;
    fdpgdriver1: TFDPhysPgDriverLink;
    fdQueryLogin: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure btn_goClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    const
    preRemaining : WideString = '%d kali pemakaian lagi.... '+#13+'Software ini akan tewaz..ZZZ....';
    var
    pghost, pgport, pgdb, pguser, pgpasswd : WideString;
    procedure getpg;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses aau111, aaaliCrypt, kunciu;


{$R *.DFM}

procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key =chr(13) then SelectNext(Edit1, True, True);
end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key =chr(13) then BitBtn1.Click;
end;


procedure TFormLogin.btn_goClick(Sender: TObject);
begin
jvPageControl1.ActivePageIndex:=0;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
//getDB;
getpg;
end;

procedure TFormLogin.FormShow(Sender: TObject);
var i : integer;
begin

Button3.Visible:= not form111.isCorrect;
//if not form111.isCorrect then showMessage('tes');
with form111 do
begin
if isCorrect then
begin
labeledEdit1.Text:=institusiR;
LabeledEdit2.Text:=alamatR;
LabeledEdit3.Text:=decodeData(serialR, keyTo);
end else
begin
institusiR:='Trial Version';
alamatR:='Trial Version';
serialR:=encodeData('Trial Version', keyTo);

labeledEdit1.Text:=institusiR;
LabeledEdit2.Text:=alamatR;
LabeledEdit3.Text:=decodeData(serialR, keyTo);
end;
end;

for I := 0 to jvPageControl1.PageCount - 1 do
  begin
     jvPageControl1.Pages[i].TabVisible:=False;
  end;

if form111.isCorrect then
begin
   jvPageControl1.ActivePageIndex:=0;
end else
begin
   jvPageControl1.ActivePageIndex:=1;
   lbl_Remaining.Caption:=format(preRemaining, [form111.muddaR]);
 //  if form111.muddaR <=0 then Application.Terminate;

end;
end;


procedure TFormLogin.getpg;
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

procedure TFormLogin.Button1Click(Sender: TObject);
begin
jvPageControl1.ActivePageIndex:=2;
end;

procedure TFormLogin.Button2Click(Sender: TObject);
begin
labelededit3.Text:=GenerateSerialNumber(labelededit1.Text);
end;

procedure TFormLogin.Button3Click(Sender: TObject);
begin
form111.cobaRegister(labeledEdit1.Text, labeledEdit2.Text, labeledEdit3.Text);
if form111.isCorrect then messageBox(0, 'Selamat Bekerja Semoga Sukses', 'Info', mb_ok or mb_IconInformation) else
messageBox(0, 'Serial Number Salah !!!', 'Peringatan !!', mb_ok or mb_IconWarning);

if form111.isCorrect then jvPageControl1.ActivePageIndex:=0;

end;

procedure TFormLogin.Button4Click(Sender: TObject);
begin
form111.resetRegister;
messageBox(0, 'Registrasi Software dihapus !!!', 'Peringatan !!!', mb_ok or mb_IconWarning);
end;

procedure TFormLogin.Button5Click(Sender: TObject);
begin
jvPageControl1.ActivePageIndex:=1;
end;

end.
