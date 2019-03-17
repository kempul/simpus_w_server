unit masterKelasTmpTiduru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  JvToolEdit, JvBaseEdits, DynVarsEh, EhLibVCL;

type
  TForm1_masterKelasTmpTidur = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
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
    panel1: TJvPanel;
    nav1: TJvDBNavigator;
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
  Form1_masterKelasTmpTidur: TForm1_masterKelasTmpTidur;

implementation

uses dmMaster, aau, aau111, srvMkelasU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterKelasTmpTidur.awal;
begin
buka_data;
end;

procedure TForm1_masterKelasTmpTidur.btn_closeClick(Sender: TObject);
begin

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterKelasTmpTidur.btn_mutasiClick(Sender: TObject);
var srv : srvMkelas;
begin

  ShowMessage('mohon bersabar, ambil dari dinkes');
  srv := srvMkelas.Create;
  try
    if srv.getMkelas then
    ShowMessage('dinkes ok') else ShowMessage('dinkes gagal');
  finally
  srv.Free;
  end;
  buka_data;

end;

procedure TForm1_masterKelasTmpTidur.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryKelasTt.Close;
  fdQueryKelasTt.Open;
end;
end;

procedure TForm1_masterKelasTmpTidur.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterKelasTmpTidur.nav1Click(Sender: TObject;
  Button: TNavigateBtn);
  var apv : TDate;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  if TDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;

//  apv := dataMaster.fdQueryMasterTt.FieldByName('tanggal_ubah').AsDateTime;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
end;


end;

end.
