unit pemakaiu;

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
  TForm1_pemakai = class(TForm)
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
    grid1: TDBGridEh;
    memo2: TMemo;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    procedure awal;
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_pemakai: TForm1_pemakai;

implementation

uses dmMaster, aau, aau111, SynCommons;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pemakai.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_pemakai.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grid2.SaveColumnsLayoutIni(form111.MyIni, 'Pegawai', False);

dataMaster.FDConnection1.Connected := False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_pemakai.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQuerypemakai.Open;
end;
end;

procedure TForm1_pemakai.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pemakai.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQuerypemakai.FieldByName('nama').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataMaster.fdQuerypemakai.Locate('nama', apv, []);
end;


end;

end.
