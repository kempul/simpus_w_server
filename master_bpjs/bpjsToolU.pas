unit bpjsToolU;

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
  JvDateTimePicker, JvComCtrls;

type
  TForm1_toolsBpjs = class(TForm)
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
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    grid1: TDBGridEh;
    grid2: TDBGridEh;
    label2: TLabel;
    dlgSave1: TSaveDialog;
    ts3: TTabSheet;
    grid3: TDBGridEh;
    panel1: TJvPanel;
    spinEdit1: TJvSpinEdit;
    cbb1: TJvComboBox;
    tsError: TTabSheet;
    gridError: TDBGridEh;
    frxReport1BpjsKunjungan: TfrxReport;
    frxdb1RptBpjsKunjungan: TfrxDBDataset;
    frxdbThbl: TfrxDBDataset;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn_cetakClick(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure pageControl1Change(Sender: TObject);
    procedure btnEksportClick(Sender: TObject);
    procedure btnProsesBpjsClick(Sender: TObject);
    procedure spinEdit1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : boolean;
    procedure awal;
    procedure buka_data;
    procedure buka_belum;
    procedure buka_sudah;
    procedure buka_reporting;
    procedure buka_error;
    procedure set_periode;

    procedure proses_bpjs;
  public
    { Public declarations }
  end;

var
  Form1_toolsBpjs: TForm1_toolsBpjs;

implementation

uses aau111, frxu, dmBPJS, aau, DBGridEhImpExp, brPendaftaranU, brKunjunganU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_toolsBpjs.awal;
begin
boleh_buka := false;
pageControl1.ActivePageIndex := 0;
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
grid3.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
gridError.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
dtp1.DateTime := Now;
set_periode;
buka_data;
end;

procedure TForm1_toolsBpjs.btnEksportClick(Sender: TObject);
begin
if dlgSave1.Execute then
begin
case pageControl1.ActivePageIndex of
0 : DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grid1, dlgSave1.FileName, true);
1 : DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grid2, dlgSave1.FileName, true);
2 : DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grid3, dlgSave1.FileName, true);
else DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, gridError, dlgSave1.FileName, true);
end;
end;
end;

procedure TForm1_toolsBpjs.btnProsesBpjsClick(Sender: TObject);
begin
proses_bpjs;
end;

procedure TForm1_toolsBpjs.btn_cetakClick(Sender: TObject);
begin
with dataBPJS do
begin
  fdQPuskesmasThbl.Close;
  fdQPuskesmasThbl.Prepare;
  fdQPuskesmasThbl.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQPuskesmasThbl.Open();

  fdQRptBpjsKunjungan.Close;
  fdQRptBpjsKunjungan.Prepare;
  fdQRptBpjsKunjungan.ParamByName('bulan').AsInteger := cbb1.ItemIndex + 1;
  fdQRptBpjsKunjungan.ParamByName('tahun').AsInteger := spinEdit1.AsInteger;
  fdQRptBpjsKunjungan.Open();

  frxReport1BpjsKunjungan.ShowReport();

end;

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

procedure TForm1_toolsBpjs.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
grid2.SaveColumnsLayoutIni(form111.MyIni, name, False);
grid3.SaveColumnsLayoutIni(form111.MyIni, name, False);
gridError.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataBPJS.fdconnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_toolsBpjs.buka_belum;
begin
with dataBPJS do
begin
  fdQueryToolsBpjsSudah.Close;

  fdQueryToolsBpjsBelum.Close;
  fdQueryToolsBpjsBelum.Prepare;
  fdQueryToolsBpjsBelum.ParamByName('tanggal').AsDate := dtp1.DateTime;
  fdQueryToolsBpjsBelum.Open();
end;

end;

procedure TForm1_toolsBpjs.buka_data;
var terlihat : Boolean;
begin
dataBPJS.FDConnection1.Connected := False;
case pageControl1.ActivePageIndex of
0 : buka_belum;
1 : buka_sudah;
2 : buka_reporting;
else buka_error;

boleh_buka := True;
end;

btnProsesBpjs.Visible := pageControl1.ActivePageIndex = 0;
btnEksport.Visible := True;

boleh_buka := True;
end;

procedure TForm1_toolsBpjs.buka_error;
begin
with dataBPJS do
begin
  fdQError.Close;
  fdQError.Prepare;
  fdQError.ParamByName('tanggal').AsDate := dtp1.Date;
  fdQError.Open();
end;

end;

procedure TForm1_toolsBpjs.buka_reporting;
begin
with dataBPJS do
begin
  fdQueryReportBulanan.Close;
  fdQueryReportBulanan.Prepare;
  fdQueryReportBulanan.ParamByName('th').AsInteger := spinEdit1.AsInteger;
  fdQueryReportBulanan.ParamByName('bl').AsInteger := cbb1.ItemIndex + 1;
  fdQueryReportBulanan.Open();
end;
end;

procedure TForm1_toolsBpjs.buka_sudah;
begin
with dataBPJS do
begin
  fdQueryToolsBpjsBelum.Close;

  fdQueryToolsBpjsSudah.Close;
  fdQueryToolsBpjsSudah.Prepare;
  fdQueryToolsBpjsSudah.ParamByName('tanggal').AsDate := dtp1.DateTime;
  fdQueryToolsBpjsSudah.Open();
end;
end;

procedure TForm1_toolsBpjs.cbb1Change(Sender: TObject);
begin
if boleh_buka and (pageControl1.ActivePageIndex = 2) then buka_reporting;

end;

procedure TForm1_toolsBpjs.dtp1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_toolsBpjs.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_toolsBpjs.nav1Click(Sender: TObject; Button: TNavigateBtn);
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

procedure TForm1_toolsBpjs.pageControl1Change(Sender: TObject);
begin
buka_data;
end;

procedure TForm1_toolsBpjs.proses_bpjs;
var
  brDaftar : brPendaftaran;
  brKunjung : brKunjungan;
  vidxstr : string;
begin
with dataBPJS do
begin
  fdQueryToolsBpjsBelum.First;
  while not fdQueryToolsBpjsBelum.Eof do
  begin
    if fdQueryToolsBpjsBelum.FieldByName('bpjs_urut').IsNull then
    begin
      vidxstr := fdQueryToolsBpjsBelum.FieldByName('idxstr').AsString;
      //ShowMessage(vidxstr);
      brDaftar := brPendaftaran.Create;
      try
        //ShowMessage(vidxstr);
        brDaftar.postPendaftaran(vidxstr);
      finally
        brDaftar.Free;
      end;
    end;

    fdQueryToolsBpjsBelum.Next;
  end;
  ShowMessage('Pendaftaran BPJS selesai');

  fdQueryToolsBpjsBelum.First;
  while not fdQueryToolsBpjsBelum.Eof do
  begin
      vidxstr := fdQueryToolsBpjsBelum.FieldByName('idxstr').AsString;
      brKunjung := brKunjungan.Create;
      try
        brKunjung.postKunjungan(vidxstr);
      finally
        brKunjung.Free;
      end;
    fdQueryToolsBpjsBelum.Next;
  end;
  ShowMessage('Pelayanan BPJS selesai');

end;
end;

procedure TForm1_toolsBpjs.set_periode;
var th, bl, tg : word;
begin
decodeDate(now, th, bl, tg);
spinEdit1.AsInteger := th;
cbb1.ItemIndex := bl -1;
end;

procedure TForm1_toolsBpjs.spinEdit1Change(Sender: TObject);
begin
if boleh_buka and (pageControl1.ActivePageIndex = 2) then buka_reporting;

end;

end.


