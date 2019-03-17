unit masterInstalasiU;

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
  TForm1_masterInstalasi = class(TForm)
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
  Form1_masterInstalasi: TForm1_masterInstalasi;

implementation

uses dmMaster, aau, aau111 ;
//, srvInstalasiU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterInstalasi.awal;
begin
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);

buka_data;
end;

procedure TForm1_masterInstalasi.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterInstalasi.btn_mutasiClick(Sender: TObject);
//var srv : srvInstalasi;
begin
// ambil dari jkn dulu
{
jkn := brPoli.Create;
if jkn.getPoliFktp('0', '100') then
begin
  ShowMessage('jkn ok');
//  memo2.Lines.Assign(jkn.aScript);
  buka_data;
end else ShowMessage('jkn gagal');
jkn.Free;
}
{
// ambil dinkes
srv := srvInstalasi.Create;
if srv.getInstalasi then
begin
  ShowMessage('dinkes ok');
//  memo2.Lines.Assign(srv.aScript);
  buka_data;
end else ShowMessage('dinkes gagal');
srv.Free;
}
end;

procedure TForm1_masterInstalasi.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryInstalasi.Open;
end;
end;

procedure TForm1_masterInstalasi.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterInstalasi.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQueryMasterPoli.FieldByName('id_poli').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;


end;

end.
