unit masterBiayau;

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
  TForm1_masterBiaya = class(TForm)
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
  Form1_masterBiaya: TForm1_masterBiaya;

implementation

uses dmMaster, aau, aau111;
//, srvBiayaU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterBiaya.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);

buka_data;
end;

procedure TForm1_masterBiaya.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grid2.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterBiaya.btn_mutasiClick(Sender: TObject);
//var srv : srvBiaya;
begin
  {
   srv := srvBiaya.Create;
   if srv.getBiaya then
   begin
     ShowMessage('dinkes ok');
     buka_data;
   end else ShowMessage('dinkes gagal');

   srv.Free;
   }
end;

procedure TForm1_masterBiaya.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryMasterBiaya.Open;
end;
end;

procedure TForm1_masterBiaya.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterBiaya.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQueryMasterBiaya.FieldByName('id_pasien_biaya').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
end;


end;

end.
