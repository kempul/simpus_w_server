unit bpjsMasterU;

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
  DBAxisGridsEh, DynVarsEh, ComCtrls, JvExComCtrls, JvComCtrls,
  JvBaseDlg, JvProgressDialog, EhLibVCL;

type
  TForm1_masterBPJS = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
    JvLabel1: TJvLabel;
    JvPanel2: TJvPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvLabel2: TJvLabel;
    JvBevel1: TJvBevel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btn_mutasi: TJvTransparentButton;
    btn_cetak: TJvTransparentButton;
    btn_jaminan: TJvTransparentButton;
    btn_pakandikandang: TJvTransparentButton;
    JvTimer1: TJvTimer;
    JvFormStorage1: TJvFormStorage;
    panelU1: TJvPanel;
    pageControl1: TJvPageControl;
    tsICDX: TTabSheet;
    grid1: TDBGridEh;
    pb1: TJvProgressDialog;
    pageControl2: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    memoResponse: TMemo;
    memoOlah: TMemo;
    tsObat: TTabSheet;
    gridObat: TDBGridEh;
    tsPoliRujukan: TTabSheet;
    gridPoliRujukan: TDBGridEh;
    tsProvider: TTabSheet;
    gridProvider: TDBGridEh;
    tsTindakan: TTabSheet;
    gridTindakan: TDBGridEh;
    tsKesadaran: TTabSheet;
    gridKesadaran: TDBGridEh;
    tsPulang: TTabSheet;
    gridPulang: TDBGridEh;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure JvSpinEdit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
    procedure pageControl1Change(Sender: TObject);
    procedure btn_mutasiClick(Sender: TObject);
    procedure pb1Progress(Sender: TObject; var AContinue: Boolean);
  private
    { Private declarations }
    boleh_buka : boolean;
    procedure awal;

    procedure buka_data;
    procedure buka_icdx;
    procedure buka_dokter;
    procedure buka_obat;
    procedure buka_poli;
    procedure buka_poli_rujukan;
    procedure buka_provider;
    procedure buka_tindakan;
    procedure buka_kesadaran;
    procedure buka_pulang;

    procedure set_periode;

    procedure ambil_icdx;
    procedure ambil_dokter;
    procedure ambil_obat;
    procedure ambil_poli;
    procedure ambil_provider;
    procedure ambil_poli_rujukan;
    procedure ambil_tindakan;
    procedure ambil_kesadaran;
    procedure ambil_pulang;

  public
    { Public declarations }
  end;

var
  Form1_masterBPJS: TForm1_masterBPJS;

implementation

uses aau111, frxu, aau, bpjsPulangDlgU, diagnosaDlgU, dmBPJSMaster, obatDlgU, brPulangU, brKesadaranU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterBPJS.ambil_dokter;
begin
end;

procedure TForm1_masterBPJS.ambil_icdx;
begin
end;

procedure TForm1_masterBPJS.ambil_kesadaran;
var aKesadaran : brKesadaran;
begin
  pb1.Max := 100;
  pb1.Interval := 10;
  pb1.Position := 0;
  pb1.Show;
  Application.ProcessMessages;
  try

    pb1.Position := pb1.Position + pb1.Interval;
    aKesadaran := brKesadaran.Create;
    if aKesadaran.getKesadaran() then
    begin
    pb1.Position := pb1.Position + pb1.Interval;
    pb1.Position := pb1.Position + pb1.Interval;
  //    eksekusi_script(memoOlah.Lines);
    pb1.Position := pb1.Position + pb1.Interval;
    end;
      buka_data;
  finally
    pb1.Position := pb1.Position + pb1.Interval;
    aKesadaran.Free;
    pb1.Position := pb1.Position + pb1.Interval;
    pb1.Hide;
  end;

end;

procedure TForm1_masterBPJS.ambil_pulang;
var aPulang : brPulang;
begin
try
  aPulang := brPulang.Create;
  try
    aPulang.getPulangRi;
  finally
    aPulang.Free;
  end;
finally
  aPulang := brPulang.Create;
  try
    aPulang.getPulangRiNon;
  finally
    aPulang.Free;
  end;
end;
buka_data;
end;

procedure TForm1_masterBPJS.ambil_obat;
begin
end;

procedure TForm1_masterBPJS.ambil_poli;
begin
end;

procedure TForm1_masterBPJS.ambil_poli_rujukan;
begin
end;

procedure TForm1_masterBPJS.ambil_provider;
begin
end;

procedure TForm1_masterBPJS.ambil_tindakan;
begin
end;

procedure TForm1_masterBPJS.awal;
begin
boleh_buka := false;
pageControl1.ActivePageIndex := 5;
set_periode;
buka_data;
end;

procedure TForm1_masterBPJS.btn_cetakClick(Sender: TObject);
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

procedure TForm1_masterBPJS.btn_closeClick(Sender: TObject);
begin
//grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grid2.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMasterBPJS.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterBPJS.btn_mutasiClick(Sender: TObject);
begin
case pageControl1.ActivePageIndex of
0 : ambil_icdx;
1 : ambil_dokter;  
2 : ambil_obat;
3 : ambil_poli;
4 : ambil_poli_rujukan;
5 : ambil_kesadaran;
6 : ambil_pulang;
end;
ShowMessage('bpjs ok');
buka_data;
end;

procedure TForm1_masterBPJS.buka_data;
begin
dataMasterBPJS.FDConnection1.Connected := false;
case pageControl1.ActivePageIndex of
0 : buka_icdx;
1 : buka_dokter;
2 : buka_obat;
3 : buka_poli;
4 : buka_poli_rujukan;
5 : buka_kesadaran;
6 : buka_pulang;
7 : buka_kesadaran;
8 : buka_pulang;
end;
//ShowMessage(IntToStr(pageControl1.ActivePageIndex));
boleh_buka := True;
end;

procedure TForm1_masterBPJS.buka_dokter;
begin
end;

procedure TForm1_masterBPJS.buka_icdx;
begin
with dataMasterBPJS do
begin
  fdQueryIcdx.Close;
  fdQueryIcdx.Open();
end;
end;

procedure TForm1_masterBPJS.buka_kesadaran;
begin
with dataMasterBPJS do
begin
  FDConnection1.Close;
  fdQueryKesadaran.Open();
end;
end;

procedure TForm1_masterBPJS.buka_obat;
begin
with dataMasterBPJS do
begin
  //uniQObat.Close;
  //uniQObat.Open;
end;
end;

procedure TForm1_masterBPJS.buka_poli;
begin
with dataMasterBPJS do
begin
  //uniQPoli.Close;
  //uniQPoli.Open;
end;

end;

procedure TForm1_masterBPJS.buka_poli_rujukan;
begin
with dataMasterBPJS do
begin
  //uniQPoliRujukan.Close;
  //uniQPoliRujukan.Open;
end;

end;

procedure TForm1_masterBPJS.buka_provider;
begin
with dataMasterBPJS do
begin
  //uniQProvider.Close;
  //uniQProvider.Open;
end;
end;

procedure TForm1_masterBPJS.buka_pulang;
begin
with dataMasterBPJS do
begin
  FDConnection1.Close;
  fdQueryMasterPulang.Open();
end;
end;

procedure TForm1_masterBPJS.buka_tindakan;
begin
with dataMasterBPJS do
begin
  //uniQTindakan.Close;
  //uniQTindakan.Open;
end;
end;

procedure TForm1_masterBPJS.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterBPJS.JvComboBox1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_masterBPJS.JvSpinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;

procedure TForm1_masterBPJS.nav1Click(Sender: TObject; Button: TNavigateBtn);
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

procedure TForm1_masterBPJS.pageControl1Change(Sender: TObject);
begin
  if boleh_buka then  buka_data
end;

procedure TForm1_masterBPJS.pb1Progress(Sender: TObject;
  var AContinue: Boolean);
begin
Application.ProcessMessages;
end;

procedure TForm1_masterBPJS.set_periode;
begin
end;

end.


