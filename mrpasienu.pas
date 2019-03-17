unit mrpasienu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, JvSplit,
  DynVarsEh;

type
  TForm1_MRpasien = class(TForm)
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
    frxdbPasien: TfrxDBDataset;
    frxReport1: TfrxReport;
    grid1: TDBGridEh;
    panel01: TPanel;
    splitter1: TJvxSplitter;
    panel02: TPanel;
    grid2: TDBGridEh;
    nav2: TJvDBNavigator;
    formStorage1: TJvFormStorage;
    lblKK: TLabel;
    lblPasien: TLabel;
    frxdbMR: TfrxDBDataset;
    frxdbthbl: TfrxDBDataset;
    frxdbpuskesmas: TfrxDBDataset;
    frxReport2: TfrxReport;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure nav2Click(Sender: TObject; Button: TNavigateBtn);
    procedure grid1Exit(Sender: TObject);
    procedure grid2Exit(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
    procedure btn_jaminanClick(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
    procedure isi_pickList(aGrid : TDBGridEh; aKolom : Integer; aQuery : string; aField : String);
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_MRpasien: TForm1_MRpasien;

implementation

uses dmPasien, aau, aau111;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_MRpasien.awal;
begin
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);

buka_data;
end;

procedure TForm1_MRpasien.btn_cetakClick(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm1_MRpasien.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
grid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataPasien.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_MRpasien.btn_jaminanClick(Sender: TObject);
begin
frxReport2.ShowReport();
end;

procedure TForm1_MRpasien.buka_data;
var th, bl, tg : word;

begin
DecodeDate(Now, th, bl, tg);
with dataPasien do
begin
  conn1.Connected := false;

  uspThblDummi.ParamByName('ip_tahun').AsInteger := th;
  uspThblDummi.ParamByName('ip_bulan').AsInteger := bl;
  uspThblDummi.ParamByName('ip_institusi').AsString := Form111.institusiR;
  uspThblDummi.ParamByName('ip_alamat').AsString := Form111.alamatR;
  uspThblDummi.ExecProc;
  uspThblDummi.Close;


  qpasien0.Close;
  qpasien0.ParamByName('puskesmas').AsString := Form111.storageUmum.StoredValue['puskesmas'];
  qpasien0.Open;


end;
end;

procedure TForm1_MRpasien.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_MRpasien.grid1Exit(Sender: TObject);
begin
if dataPasien.qKK.Active then nav1.BtnClick(nbRefresh);
end;

procedure TForm1_MRpasien.grid2Exit(Sender: TObject);
begin
if dataPasien.qPasien.Active then nav2.BtnClick(nbRefresh);
end;

procedure TForm1_MRpasien.isi_pickList(aGrid: TDBGridEh; aKolom: Integer; aQuery,
  aField: String);
begin
with dataPasien do
begin
  qbuka.Close;
  qbuka.SQL.Clear;
  qbuka.SQL.Add(aQuery);
  qbuka.Open;

  aGrid.Columns[aKolom].PickList.Clear;
  while not qbuka.Eof do
  begin
    aGrid.Columns[aKolom].PickList.Add(qbuka.FieldByName(aField).AsString);
    qbuka.Next;
  end;
  
  qbuka.Close;
end;
end;

procedure TForm1_MRpasien.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataPasien.qKK.FieldByName('kk').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataPasien.qKK.Locate('kk', apv, []);
end;


end;

procedure TForm1_MRpasien.nav2Click(Sender: TObject; Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid2.Options := grid2.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataPasien.qKK.FieldByName('id_kk').AsString;
  pv := dataPasien.qPasien.FieldByName('mr').AsString;
  grid2.Options := grid2.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataPasien.qKK.Locate('id_kk', apv, []);
  dataPasien.qPasien.Locate('mr', pv, []);
end;

end;

end.
