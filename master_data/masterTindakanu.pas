unit masterTindakanu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DynVarsEh,
  EhLibVCL;

type
  TForm1_masterTindakan = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    JvSpinEdit1: TJvSpinEdit;
    JvComboBox1: TJvComboBox;
    panelUtama1: TJvPanel;
    nav1: TJvDBNavigator;
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
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    grid1: TDBGridEh;
    memo2: TMemo;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn_mutasiClick(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_masterTindakan: TForm1_masterTindakan;

implementation

uses dmMaster, aau, aau111, brTindakanU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterTindakan.awal;
begin
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);

buka_data;
end;

procedure TForm1_masterTindakan.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterTindakan.btn_mutasiClick(Sender: TObject);
var jkn : brTindakan;
begin
// ambil dari jkn dulu
jkn := brTindakan.Create;
if jkn.getTindakanRef('0', '1000') then
begin
  ShowMessage('jkn ok');
//  memo2.Lines.Assign(jkn.aScript);
  buka_data;
end else ShowMessage('jkn gagal');
  memo2.Lines.Add(jkn.tsResponse.Text);
  memo2.Lines.Add(jkn.tsHeader.Text);
//  memo2.Lines.Add(jkn.tsResponse.Text);

jkn.Free;
end;

procedure TForm1_masterTindakan.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryMasterTindakan.Open;
end;
end;

procedure TForm1_masterTindakan.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterTindakan.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQueryMasterTindakan.FieldByName('nm_tindakan').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;


end;

end.
