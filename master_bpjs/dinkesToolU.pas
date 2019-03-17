unit dinkesToolU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, JvSplit, JvCtrls, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, DB, JvRadioGroup,
  GridsEh, DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DBAxisGridsEh, DynVarsEh, EhLibVCL, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvComCtrls, JvBaseDlg, JvProgressDialog;

type
  TForm1_toolsDinkes = class(TForm)
    panelUtama: TJvPanel;
    JvPanel2: TJvPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvLabel2: TJvLabel;
    JvBevel1: TJvBevel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btnProsesBpjs: TJvTransparentButton;
    btn_cetak: TJvTransparentButton;
    btn_jaminan: TJvTransparentButton;
    btnEksport: TJvTransparentButton;
    JvTimer1: TJvTimer;
    JvFormStorage1: TJvFormStorage;
    panel2: TPanel;
    dtp1: TJvDateTimePicker;
    label2: TLabel;
    dlgSave1: TSaveDialog;
    grid1: TDBGridEh;
    pb1: TJvProgressDialog;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn_cetakClick(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure pageControl1Change(Sender: TObject);
    procedure btnEksportClick(Sender: TObject);
    procedure btnProsesBpjsClick(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
  private
    { Private declarations }
    boleh_buka : boolean;
    procedure awal;
    procedure buka_data;
    procedure set_periode;
  public
    { Public declarations }
  end;

var
  Form1_toolsDinkes: TForm1_toolsDinkes;

implementation

uses aau111, frxu, dmBPJS, aau, DBGridEhImpExp; //, srvCommonsU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_toolsDinkes.awal;
begin
boleh_buka := false;
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
dtp1.DateTime := Now;
set_periode;
buka_data;
end;

procedure TForm1_toolsDinkes.btnEksportClick(Sender: TObject);
begin
if dlgSave1.Execute then
begin
DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grid1, dlgSave1.FileName, true);
end;
end;

procedure TForm1_toolsDinkes.btnProsesBpjsClick(Sender: TObject);
//var srv : srvCommon;
begin
{
pb1.Max := dataBPJS.fdQueryToolsDinkes.RecordCount;
ShowMessage('Akan mengirim ke Server Dinkes dengan jumlah data : ' + intToStr(pb1.Max));
pb1.Position := 0;
pb1.Show;
try

with dataBPJS do
begin
  fdQueryToolsDinkes.First;
//  ShowMessage(fdQueryToolsDinkes.FieldByName('id').AsString);
  while not fdQueryToolsDinkes.Eof do
  begin
//     ShowMessage(IntToStr(pb1.Position));

     srv := srvCommon.Create;
     try
       srv.kirim_lagi(fdQueryToolsDinkes.FieldByName('id').AsString);
     finally
       srv.Free;
     end;
     pb1.Position := pb1.Position + 1;
     fdQueryToolsDinkes.Next;
  end;
end;
finally
  pb1.Hide;
  buka_data;
end;
}
end;

procedure TForm1_toolsDinkes.btn_cetakClick(Sender: TObject);
begin

{
with form1_frx do
begin
try
db1.Connected := false;

   qrentangthbl.Close;
   qrentangthbl.ParamByName('institusi').asString:=form111.institusiR;
   qrentangthbl.ParamByName('alamat').asString:=form111.alamatR;
   qrentangthbl.ParamByName('tahun').asInteger:= jvSpinEdit1.AsInteger;
   qrentangthbl.ParamByName('bulan').asInteger:=jvcomboBox1.ItemIndex + 1;
   qrentangthbl.Open;

   qfeerawat.Open;
   frxReport1_feeRawat.ShowReport();
finally
  buka_data;
end;
end;
}
end;

procedure TForm1_toolsDinkes.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grideh1.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataBPJS.fdconnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;


procedure TForm1_toolsDinkes.buka_data;
begin
with dataBPJS do
begin
  fdQueryToolsBpjsSudah.Close;

  fdQueryToolsDinkes.Close;
//  fdQueryToolsBpjsBelum.Prepare;
  fdQueryToolsDinkes.ParamByName('tanggal').AsDate := dtp1.DateTime;
  fdQueryToolsDinkes.Open();
end;
boleh_buka := True;
end;


procedure TForm1_toolsDinkes.dtp1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_toolsDinkes.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_toolsDinkes.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin
{
if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.qsatuan.FieldByName('satuan').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataMaster.qsatuan.Locate('satuan', apv,[]);
end;
}

end;

procedure TForm1_toolsDinkes.pageControl1Change(Sender: TObject);
begin
buka_data;
end;

procedure TForm1_toolsDinkes.pb1Progress(Sender: TObject;
  var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

procedure TForm1_toolsDinkes.set_periode;
var th, bl, tg : word;
begin
{
decodeDate(now, th, bl, tg);
spinEdit1.AsInteger := th;
cbb1.ItemIndex := bl -1;
}
end;

end.


