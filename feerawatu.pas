unit feerawatu;

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
  DBAxisGridsEh, DynVarsEh, EhLibVCL;

type
  TForm1_feeRawat = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    JvSpinEdit1: TJvSpinEdit;
    JvComboBox1: TJvComboBox;
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
    grid1: TDBGridEh;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure JvSpinEdit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
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
  Form1_feeRawat: TForm1_feeRawat;

implementation

uses aau111, frxu, dmpelayanan;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_feeRawat.awal;
begin
boleh_buka := false;
set_periode;
buka_data;
end;

procedure TForm1_feeRawat.btn_cetakClick(Sender: TObject);
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

procedure TForm1_feeRawat.btn_closeClick(Sender: TObject);
begin

dataPelayanan.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
end;

procedure TForm1_feeRawat.buka_data;
begin
{
with form1_Frx do
begin

  FDConnection1.Connected := false;
   qrentangthbl.Close;
   qrentangthbl.ParamByName('institusi').asstring:=form111.institusiR;
   qrentangthbl.ParamByName('alamat').asstring:=form111.alamatR;
   qrentangthbl.ParamByName('tahun').asinteger:= jvSpinEdit1.AsInteger;
   qrentangthbl.ParamByName('bulan').asInteger:=jvcomboBox1.ItemIndex + 1;
   qrentangthbl.Open;

  qfeerawat.Open;
 // jvdbfindEdit1.ResetFilter;

  boleh_buka := true;
end;
}
end;

procedure TForm1_feeRawat.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_feeRawat.JvComboBox1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_feeRawat.JvSpinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;

procedure TForm1_feeRawat.nav1Click(Sender: TObject; Button: TNavigateBtn);
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

procedure TForm1_feeRawat.set_periode;
var th, bl, tg : word;
begin
decodeDate(now, th, bl, tg);
with dataPelayanan do
begin
   fdQueryBuka.Close();
   fdQueryBuka.SQL.Clear;
   fdQueryBuka.SQL.Add('select bulan_teks from m_bulan order by bulan');
   fdQueryBuka.Open;

   jvcomboBox1.Clear;
   while not fdQueryBuka.Eof do
   begin
     jvComboBox1.Items.Add(fdQueryBuka.FieldByName('bulan_teks').asString);
     fdQueryBuka.Next;
   end;
   jvcomboBox1.ItemIndex := bl - 1;
   jvSpinEdit1.AsInteger := th;
   fdQueryBuka.Close();
end;
end;

end.


