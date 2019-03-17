unit masterpuskesmasu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  EhLibVCL, DynVarsEh;

type
  TForm1_masterPuskesmas = class(TForm)
    panelUtama: TJvPanel;
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
    formStorage1: TJvFormStorage;
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
  Form1_masterPuskesmas: TForm1_masterPuskesmas;

implementation

uses dmMaster, aau, aau111
 , srvPuskesmasU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterPuskesmas.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.Ini1.FullFileName, Name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_masterPuskesmas.btn_closeClick(Sender: TObject);
begin
//Form111.storageUmum.StoredValue['provider_bpjs'] := dataMaster.fdQueryPuskesmas.FieldByName('provider_bpjs').AsString;
grid1.SaveGridLayoutIni(Form111.Ini1.FullFileName, Name, True);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterPuskesmas.btn_mutasiClick(Sender: TObject);
var aSrv : srvPuskesmas;
begin

  aSrv := srvPuskesmas.Create;
  if aSrv.getPuskesmas(Form1_aa.puskesmas) then
  begin
   ShowMessage('ok');
   buka_data;
   end else ShowMessage('gagal');


   memo2.Lines.Add(aSrv.tsResponse.Text);
   memo2.Lines.Add(IntToStr(aSrv.ResultCode));
  aSrv.Free;

end;

procedure TForm1_masterPuskesmas.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryPuskesmas.Open;
end;
end;

procedure TForm1_masterPuskesmas.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterPuskesmas.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
 // apv := dataMaster.qpemakai.FieldByName('nama').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];;
  buka_data;
 // dataMaster.qpemakai.Locate('nama', apv, []);
end;


end;

end.
