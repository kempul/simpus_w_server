unit masterfeerawatu;

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
  TForm1_masterFeeRawat = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    JvSpinEdit1: TJvSpinEdit;
    JvComboBox1: TJvComboBox;
    panelUtama1: TJvPanel;
    JvLabel1: TJvLabel;
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
    JvTimer1: TJvTimer;
    JvFormStorage1: TJvFormStorage;
    grid1: TDBGridEh;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    function grid1CheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
  private
    { Private declarations }
    procedure awal;
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_masterFeeRawat: TForm1_masterFeeRawat;

implementation

uses dmMaster, aau;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterFeeRawat.awal;
begin
buka_data;
end;

procedure TForm1_masterFeeRawat.btn_closeClick(Sender: TObject);
begin
dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
//form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_masterFeeRawat.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
//  uqrawat.Open;
end;
end;

procedure TForm1_masterFeeRawat.FormShow(Sender: TObject);
begin
awal;
end;

function TForm1_masterFeeRawat.grid1CheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
//result := field = dataMaster.uqrawat.fieldByName('dipake');
stringForTrue := '1';
stringForFalse := '0';
end;

procedure TForm1_masterFeeRawat.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
end;


end;

end.
