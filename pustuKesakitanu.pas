unit pustuKesakitanu;

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
  TForm1_pustuKesakitan = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
    spinEdit1: TJvSpinEdit;
    cbb1: TJvComboBox;
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
    btn_entriData: TJvTransparentButton;
    frxDBDataset1: TfrxDBDataset;
    splitter1: TJvxSplitter;
    panel02: TPanel;
    grid2: TDBGridEh;
    nav2: TJvDBNavigator;
    formStorage1: TJvFormStorage;
    lblPasien: TLabel;
    frxdb_thbl: TfrxDBDataset;
    lbl1: TLabel;
    cbbPustu: TJvComboBox;
    frxReport_kesakitan: TfrxReport;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav2Click(Sender: TObject; Button: TNavigateBtn);
    procedure spinEdit1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
    procedure btn_entriDataClick(Sender: TObject);
    procedure grid2Exit(Sender: TObject);
    procedure cbbPustuChange(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : boolean;
//    strPustu : string;
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure awal;
    procedure isi_pickList(aGrid : TDBGridEh; aKolom : Integer; aQuery : string; aField : String);
    procedure buka_data;
    procedure set_periode;
    procedure set_biaya;
    procedure pustuKesakitanInsert;
    procedure pustuKesakitan_dari_pv;

  public
    { Public declarations }
  end;

var
  Form1_pustuKesakitan: TForm1_pustuKesakitan;

implementation

uses dmpustu, aau, aau111, pustuKesakitanInsertU, pustukesakitaInsertU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_pustuKesakitan.awal;
begin
boleh_buka := False;
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
set_periode;
isi_combo(TComboBox(cbbPustu), 'select pustu from simpus2.m_pustu order by upper(pustu)', 'pustu');
buka_data;
end;

procedure TForm1_pustuKesakitan.btn_cetakClick(Sender: TObject);
begin
with dataPustu do
begin
  uspThblDummi.ParamByName('ip_tahun').AsInteger := spinEdit1.AsInteger;
  uspThblDummi.ParamByName('ip_bulan').AsInteger := cbb1.ItemIndex + 1;
  uspThblDummi.ParamByName('ip_institusi').AsString := Form111.institusiR;
  uspThblDummi.ParamByName('ip_alamat').AsString := Form111.alamatR;
  uspThblDummi.ExecProc;
  uspThblDummi.Close;

  uq_kesakitanCetak.Close;
  uq_kesakitanCetak.Open;
  frxReport_kesakitan.ShowReport();
end;
end;

procedure TForm1_pustuKesakitan.btn_closeClick(Sender: TObject);
begin
grid2.SaveColumnsLayoutIni(form111.MyIni, name, True);

dataPustu.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;

procedure TForm1_pustuKesakitan.btn_entriDataClick(Sender: TObject);
begin
    Form1_pustuKesakitan0.pustu := cbbPustu.Items[cbbPustu.ItemIndex];
    Form1_pustuKesakitan0.bulanStr := cbb1.Items[cbb1.ItemIndex];
    Form1_pustuKesakitan0.bulan := cbb1.ItemIndex + 1;
    Form1_pustuKesakitan0.tahun := spinEdit1.AsInteger;
    
    Form1_pustuKesakitan0.ShowModal;
    if Form1_pusKesakitanInsert.ModalResult = mrOK then pustuKesakitan_dari_pv;
    dataPustu.qPustu.Locate('pustu', cbbPustu.Items[cbbPustu.ItemIndex], []);
    
end;

procedure TForm1_pustuKesakitan.buka_data;
begin
with dataPustu do
begin
  conn1.Connected := false;
  qPustu.Close;
  qPustu.ParamByName('tahun').AsInteger := spinEdit1.AsInteger;
  qPustu.ParamByName('bulan').AsString := cbb1.Items[cbb1.ItemIndex];
  qPustu.Open;
  cbbPustuChange(cbbPustu);
  
  q_pustuKesakitan.Close;
  q_pustuKesakitan.Open;
  boleh_buka := True;
//  qPasien.Close;
//  qPasien.Open;
end;
//isi_pickList(grid2, 7, 'select status from m_kk_status', 'status');
end;

procedure TForm1_pustuKesakitan.cbb1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_pustuKesakitan.cbbPustuChange(Sender: TObject);
begin
if dataPustu.qPustu.Active then dataPustu.qPustu.Locate('pustu', cbbPustu.Items[cbbPustu.ItemIndex], []);
end;

procedure TForm1_pustuKesakitan.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pustuKesakitan.grid2Exit(Sender: TObject);
begin
if dataPustu.q_pustuKesakitan.Modified then dataPustu.q_pustuKesakitan.Post;

end;

procedure TForm1_pustuKesakitan.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataPustu do
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

procedure TForm1_pustuKesakitan.isi_pickList(aGrid: TDBGridEh; aKolom: Integer; aQuery,
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

procedure TForm1_pustuKesakitan.nav2Click(Sender: TObject; Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid2.Options := grid2.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
 // apv := dataPustu.qPustu.FieldByName('idx').AsString;
//  pv := dataPustu.qPustuData.FieldByName('idx').AsString;
  grid2.Options := grid2.Options - [dgEditing] + [dgRowSelect];
if TjvDBNavigator(Sender).DataSource.DataSet.Modified then TDBNavigator(Sender).DataSource.DataSet.Post;
  //  buka_data;
 // dataPustu.qPustu.Locate('idx', apv, []);
 // dataPustu.qPustuData.Locate('idx', pv, []);
end;

end;

procedure TForm1_pustuKesakitan.pustuKesakitanInsert;
begin
end;

procedure TForm1_pustuKesakitan.pustuKesakitan_dari_pv;
begin
end;

procedure TForm1_pustuKesakitan.set_biaya;

begin
end;

procedure TForm1_pustuKesakitan.set_periode;
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

procedure TForm1_pustuKesakitan.spinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

end.
