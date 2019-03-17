unit masterJmlTmpTiduru;

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
  TForm1_masterJmlTmpTidur = class(TForm)
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
    panel3: TPanel;
    grid2: TDBGridEh;
    panel4: TPanel;
    dbeditkelas: TDBEdit;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure dbeditkelasChange(Sender: TObject);
    procedure btn_pakandikandangClick(Sender: TObject);
    procedure btn_jaminanClick(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
    procedure buka_data;
    procedure kirim_kamar;
    procedure kirim_kamar_edit(id : string);
    function idKamarTerakhir(kamar : string) : string;
  public
    { Public declarations }
  end;

var
  Form1_masterJmlTmpTidur: TForm1_masterJmlTmpTidur;

implementation

uses dmMaster, aau, aau111, kamarAddU, kamarEditU ;
//, SrvParallelU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterJmlTmpTidur.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);

buka_data;
end;

procedure TForm1_masterJmlTmpTidur.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(Form111.MyIni, Name, True);
grid2.SaveColumnsLayoutIni(Form111.MyIni, Name, False);

with dataMaster do
begin
  fdQueryKamar.Close;
  fdQueryKelasTt.Close;
end;

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterJmlTmpTidur.btn_jaminanClick(Sender: TObject);
var id : string;
begin
id := dataMaster.fdQueryKamar.FieldByName('id').AsString;
Form1_kamarEdit.Caption := 'Edit Kamar ' + panel4.Caption;
Form1_kamarEdit.labelId.Caption := id;
Form1_kamarEdit.editNama.Text := dataMaster.fdQueryKamar.FieldByName('nama_kamar').AsString;
Form1_kamarEdit.editJml.AsInteger := dataMaster.fdQueryKamar.FieldByName('jml_tt').AsInteger;
Form1_kamarEdit.editTarif.AsInteger := dataMaster.fdQueryKamar.FieldByName('tarif').AsInteger;

Form1_kamarEdit.ShowModal;
if Form1_kamarEdit.ModalResult = mrOk then
begin
   try
     buka_data;
   finally
   kirim_kamar_edit(id);
   end;
end;

end;

procedure TForm1_masterJmlTmpTidur.btn_pakandikandangClick(Sender: TObject);
begin
Form1_kamarAdd.Caption := 'Menambah Kamar ' + panel4.Caption;
Form1_kamarAdd.labelKelas.Caption := dbeditkelas.Field.AsString;
Form1_kamarAdd.ShowModal;
if Form1_kamarAdd.ModalResult = mrOk then
begin
   try
     buka_data;
   finally
   kirim_kamar;
   end;
end;
end;

procedure TForm1_masterJmlTmpTidur.buka_data;
var kelas : string;
begin
with dataMaster do
begin
  kelas := '';
  if fdQueryKelasTt.Active then kelas := fdQueryKelasTt.FieldByName('kelas').AsString;

  FDConnection1.Connected := false;
  fdQueryKelasTt.Close;
  fdQueryKelasTt.Open;

  if Length(kelas) > 0 then fdQueryKelasTt.Locate('kelas', kelas, []);


  fdQueryKamar.Close;
  fdQueryKamar.Open();
end;
end;

procedure TForm1_masterJmlTmpTidur.dbeditkelasChange(Sender: TObject);
begin
if dataMaster.fdQueryKelasTt.Active then

panel4.Caption := 'Kelas - ' + dbeditkelas.Field.AsString;
end;

procedure TForm1_masterJmlTmpTidur.FormShow(Sender: TObject);
begin
awal;
end;

function TForm1_masterJmlTmpTidur.idKamarTerakhir(kamar: string): string;
begin
with dataMaster do
begin
  fdQueryKamarTerakhir.Close;
  fdQueryKamarTerakhir.Prepare;
  fdQueryKamarTerakhir.ParamByName('kamar').AsString := kamar;
  fdQueryKamarTerakhir.Open();
  Result := fdQueryKamarTerakhir.FieldByName('id').AsString;
  fdQueryKamarTerakhir.Close;
end;
end;

procedure TForm1_masterJmlTmpTidur.kirim_kamar;
var id : string;
    //srv : SrvParallel;
begin
{
id := idKamarTerakhir(Form1_kamarAdd.editNama.Text);
try
srv := SrvParallel.Create;
try
  srv.kamarPost(id);
finally
  srv.Free;
end;
finally

srv := SrvParallel.Create;
try
  srv.kamarPostLog(id);
finally
  srv.Free;
end;

end;
}
end;

procedure TForm1_masterJmlTmpTidur.kirim_kamar_edit(id: string);
//var srv : SrvParallel;
begin
{
try
srv := SrvParallel.Create;
try
  srv.kamarPost(id);
finally
  srv.Free;
end;
finally

srv := SrvParallel.Create;
try
  srv.kamarPostLog(id);
finally
  srv.Free;
end;

end;
}
end;

procedure TForm1_masterJmlTmpTidur.nav1Click(Sender: TObject;
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
