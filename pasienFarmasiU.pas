unit pasienFarmasiU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DynVarsEh,
  JvToolEdit, ComCtrls, JvExComCtrls, JvDateTimePicker, JvMemo, DBCtrlsEh, pngimage,
  JvBaseEdits, JvSplit, ActnList, ImgList, JvImageList;

type
  TForm1_pasienFarmasi = class(TForm)
    panelUtama: TJvPanel;
    panelUtama1: TJvPanel;
    panelMenu: TJvPanel;
    btn_close: TJvTransparentButton;
    btn_mutasi: TJvTransparentButton;
    btn_cetak: TJvTransparentButton;
    btnFarmasiOk: TJvTransparentButton;
    btn_pakandikandang: TJvTransparentButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    bevel1: TJvBevel;
    panel4: TPanel;
    grideh1: TDBGridEh;
    panel2: TPanel;
    dbtxt1: TDBText;
    panel42: TPanel;
    splitter1: TJvxSplitter;
    grid1: TDBGridEh;
    dbmemo2: TDBMemo;
    formStorage1: TJvFormStorage;
    imageList1: TJvImageList;
    actlst1: TActionList;
    actFarmasiOK: TAction;
    dbedit2: TDBEdit;
    actClose: TAction;
    btnRefresh: TJvTransparentButton;
    actRefresh: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedit1Change(Sender: TObject);
    procedure grideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btn_jaminanClick(Sender: TObject);
    procedure actFarmasiOKExecute(Sender: TObject);
    procedure dbedit2Change(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : Boolean;
    procedure awal;
    procedure buka_data;

    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_form;
    procedure simpan_tindakan;
    procedure simpan_tindakanGigi;
    procedure simpan_poned;

    function ambil_idxGigi : Integer;
    function ambil_idxPoned : Integer;

    procedure usai_tindakan;

    procedure simpan_pulang(statusPulang : string);
    procedure simpan_pemeriksaan_fisik;
    procedure tampilkan_imunisasi;
    procedure simpan_imunisasi;
    procedure update_farmasi;
  public
    { Public declarations }
  end;

var
  Form1_pasienFarmasi: TForm1_pasienFarmasi;

implementation

uses aau, aau111, dmFarmasi;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pasienFarmasi.actCloseExecute(Sender: TObject);
begin
gridEh1.SaveColumnsLayoutIni(form111.MyIni, name, true);
//grid2.SaveColumnsLayoutIni(form111.MyIni, 'Pegawai', False);

DataFarmasi.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_pasienFarmasi.actFarmasiOKExecute(Sender: TObject);
begin
   try
     update_farmasi;
   finally
     buka_data;
   end;
end;

procedure TForm1_pasienFarmasi.actRefreshExecute(Sender: TObject);
begin
buka_data;
end;

function TForm1_pasienFarmasi.ambil_idxGigi: Integer;
begin
end;

function TForm1_pasienFarmasi.ambil_idxPoned: Integer;
begin
end;

procedure TForm1_pasienFarmasi.awal;
begin
gridEh1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_pasienFarmasi.btn_jaminanClick(Sender: TObject);
begin
   try
     update_farmasi;
   finally
     buka_data;
   end;
end;

procedure TForm1_pasienFarmasi.buka_data;
begin
with DataFarmasi do
begin
  conn1.Connected := false;
  uqKunjungan1.Close;
  uqKunjungan1.Open;

  uqFarmasi.Close;
  uqFarmasi.Open;
end;
  boleh_buka := True;
end;

procedure TForm1_pasienFarmasi.dbedit1Change(Sender: TObject);
var farmasi_ok : Integer;
begin
  farmasi_ok := DataFarmasi.uqKunjungan1.FieldByName('farmasi_ok').AsInteger;
end;

procedure TForm1_pasienFarmasi.dbedit2Change(Sender: TObject);
begin
btnFarmasiOk.Visible := DataFarmasi.uqKunjungan1.FieldByName('farmasi_ok').AsInteger < 1;
end;

procedure TForm1_pasienFarmasi.FormCreate(Sender: TObject);
begin
boleh_buka := False;
end;

procedure TForm1_pasienFarmasi.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pasienFarmasi.grideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if DataFarmasi.uqKunjungan1.FieldByName('farmasi_ok').AsInteger = 1 then
begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clMaroon;
end;
end;

procedure TForm1_pasienFarmasi.isi_combo(aCombo: TComboBox; aQuery, aField: string);
begin
aCombo.Clear;
with DataFarmasi do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(aQuery);
  qbuka.Open;

  while not qbuka.Eof do
  begin
    aCombo.Items.Add(qbuka.FieldByName(aField).AsString);
    qbuka.Next;
  end;
  qbuka.Close;
  aCombo.ItemIndex := 0;
end;

end;

procedure TForm1_pasienFarmasi.kosongkan_form;
begin
end;

procedure TForm1_pasienFarmasi.simpan_imunisasi;
begin
end;

procedure TForm1_pasienFarmasi.simpan_pemeriksaan_fisik;
begin

end;

procedure TForm1_pasienFarmasi.simpan_poned;
begin


end;

procedure TForm1_pasienFarmasi.simpan_pulang(statusPulang : string);
begin
end;

procedure TForm1_pasienFarmasi.simpan_tindakan;
begin
end;



procedure TForm1_pasienFarmasi.simpan_tindakanGigi;
begin
end;

procedure TForm1_pasienFarmasi.tampilkan_imunisasi;
begin
end;

procedure TForm1_pasienFarmasi.update_farmasi;
begin
   with DataFarmasi do
   begin
     unsqlFarmasiUpdate.ParamByName('tanggal').AsDate := uqKunjungan1.FieldByName('tanggal').AsDateTime;
     unsqlFarmasiUpdate.ParamByName('nomor').AsInteger := uqKunjungan1.FieldByName('nomor').AsInteger;
     unsqlFarmasiUpdate.Execute;
   end;
end;

procedure TForm1_pasienFarmasi.usai_tindakan;
begin

end;

end.
