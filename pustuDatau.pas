unit pustuDatau;

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
  TForm1_pustuData = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    spinEdit1: TJvSpinEdit;
    cbb1: TJvComboBox;
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
    btn_entriData: TJvTransparentButton;
    frxDBDataset1: TfrxDBDataset;
    grid1: TDBGridEh;
    panel01: TPanel;
    splitter1: TJvxSplitter;
    panel02: TPanel;
    grid2: TDBGridEh;
    nav2: TJvDBNavigator;
    formStorage1: TJvFormStorage;
    lblKK: TLabel;
    lblPasien: TLabel;
    frxReport_pustudata: TfrxReport;
    frxdb_thbl: TfrxDBDataset;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure nav2Click(Sender: TObject; Button: TNavigateBtn);
    procedure grid1Exit(Sender: TObject);
    procedure grid2Exit(Sender: TObject);
    procedure btn_entriDataClick(Sender: TObject);
    procedure spinEdit1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : boolean;
    procedure awal;
    procedure isi_pickList(aGrid : TDBGridEh; aKolom : Integer; aQuery : string; aField : String);
    procedure buka_data;
    procedure set_periode;
    
  public
    { Public declarations }
  end;

var
  Form1_pustuData: TForm1_pustuData;

implementation

uses dmpustu, aau, aau111;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pustuData.awal;
begin
boleh_buka := False;
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
set_periode;
buka_data;
end;

procedure TForm1_pustuData.btn_cetakClick(Sender: TObject);
begin
with dataPustu do
begin
  uspThblDummi.ParamByName('ip_tahun').AsInteger := spinEdit1.AsInteger;
  uspThblDummi.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspThblDummi.ParamByName('ip_institusi').AsString := Form111.institusiR;
  uspThblDummi.ParamByName('ip_alamat').AsString := Form111.alamatR;
  uspThblDummi.ExecProc;
  uspThblDummi.Close;

  q_pustuCetak.Close;
  q_pustuCetak.Open;
  frxReport_pustudata.ShowReport();
end;
end;

procedure TForm1_pustuData.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
grid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataPustu.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_pustuData.btn_entriDataClick(Sender: TObject);
var strPustu : string;
begin
if MessageBox(0, 'PERHATIAN, Data terkait pustu pada tahun dan bulan dimaksud akan dihapus. Buat Baru?', 'PERINGATAN', MB_YESNO)= mrYes then

begin
  with dataPustu do
  begin
    strPustu := qPustu.FieldByName('pustu').AsString;
    uspPustuData.ParamByName('ip_tahun').AsInteger := spinEdit1.AsInteger;
    uspPustuData.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
    uspPustuData.ParamByName('ip_pustu').AsString := strPustu;
    uspPustuData.ExecProc;
    ShowMessage('ok');
    buka_data;
    qPustu.Locate('pustu', strPustu, []);
  end;
end;
end;



procedure TForm1_pustuData.buka_data;
begin
with dataPustu do
begin
  conn1.Connected := false;
  qPustu.Close;
  qPustu.ParamByName('tahun').AsInteger := spinEdit1.AsInteger;
  qPustu.ParamByName('bulan').AsString := cbb1.Items[cbb1.ItemIndex];
  qPustu.Open;

  qPustuData.Close;
  qPustuData.Open;
  boleh_buka := True;
//  qPasien.Close;
//  qPasien.Open;
end;
//isi_pickList(grid2, 7, 'select status from m_kk_status', 'status');
end;

procedure TForm1_pustuData.cbb1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_pustuData.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pustuData.grid1Exit(Sender: TObject);
begin
if dataPustu.qKK.Active then nav1.BtnClick(nbRefresh);
end;

procedure TForm1_pustuData.grid2Exit(Sender: TObject);
begin
if dataPustu.qPasien.Active then nav2.BtnClick(nbRefresh);
end;

procedure TForm1_pustuData.isi_pickList(aGrid: TDBGridEh; aKolom: Integer; aQuery,
  aField: String);
begin
with dataPustu do
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

procedure TForm1_pustuData.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataPustu.qPustu.FieldByName('idx').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataPustu.qPustu.Locate('idx', apv, []);
end;


end;

procedure TForm1_pustuData.nav2Click(Sender: TObject; Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid2.Options := grid2.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataPustu.qPustu.FieldByName('idx').AsString;
  pv := dataPustu.qPustuData.FieldByName('idx').AsString;
  grid2.Options := grid2.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataPustu.qPustu.Locate('idx', apv, []);
  dataPustu.qPustuData.Locate('idx', pv, []);
end;

end;

procedure TForm1_pustuData.set_periode;
var th, bl, tg  : Word;
begin
   DecodeDate(Now, th, bl, tg);
   spinEdit1.AsInteger := th;

   cbb1.Clear;
   with dataPustu do
   begin
     qbuka.Close;
     qbuka.SQL.Clear;
     qbuka.SQL.Add('select bulan from simpus2.m_bulan order by bln_id');
     qbuka.Open;

     while not qbuka.Eof do
     begin
       cbb1.Items.Add(qbuka.FieldByName('bulan').AsString);
       qbuka.Next;
     end;
     qbuka.Close;
   end;
   cbb1.ItemIndex := bl -1;
end;

procedure TForm1_pustuData.spinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

end.
