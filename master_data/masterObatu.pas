unit masterObatu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DynVarsEh,
  EhLibVCL, JvBaseDlg, JvProgressDialog;

type
  TForm1_masterObat = class(TForm)
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
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    grid1: TDBGridEh;
    pb1: TJvProgressDialog;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn_mutasiClick(Sender: TObject);
    procedure btn_pakandikandangClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : Boolean;
    procedure awal;
    procedure buka_data;
    procedure ambil_obat;

    procedure isi_list(aQuery : string; aField : string; aNomorKolom : Integer; aGrid : TDBGridEh);
  public
    { Public declarations }
  end;

var
  Form1_masterObat: TForm1_masterObat;

implementation

uses dmMaster, aau, aau111, brObatU, obatTouchU, obatDlgU, diagnosaDlgU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterObat.ambil_obat;
var aObat : brObat;
    kataKunci, mulaiDari, jmlData : string;
begin
  pb1.Max := 100;
  pb1.Interval := 10;
  pb1.Position := 0;
  Application.ProcessMessages;
  Form1_obatDlg.ShowModal;
  if form1_obatDlg.ModalResult = mrOK then
  begin
  pb1.Show;
  pb1.Position := pb1.Position + pb1.Interval;
  kataKunci := Form1_obatDlg.editDiagnosa.Text;
  mulaiDari := IntToStr(Form1_obatDlg.seStart.Value);
  jmlData := IntToStr(Form1_obatDlg.seLimit.Value);
  try
    aObat := brObat.Create;
    pb1.Position := pb1.Position + pb1.Interval;

    if aObat.getObatRef(kataKunci, mulaiDari, jmlData) then
    begin
    pb1.Position := pb1.Position + pb1.Interval;
  //    eksekusi_script(memoOlah.Lines);
    pb1.Position := pb1.Position + pb1.Interval;
    end;
      buka_data;
  finally
    pb1.Position := pb1.Position + pb1.Interval;
    aObat.Free;
    pb1.Position := pb1.Position + pb1.Interval;
    pb1.Hide;
  end;
  end;
end;

procedure TForm1_masterObat.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_masterObat.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterObat.btn_mutasiClick(Sender: TObject);
begin
ambil_obat;
end;

procedure TForm1_masterObat.btn_pakandikandangClick(Sender: TObject);
var sql0, sql1, paramku : string;
begin
Form1_obatTouch.ShowModal;
if Form1_obatTouch.ModalResult = mrOk then
begin
   try
   paramku := UpperCase(Form1_obatTouch.editDiagnosa.Text);
   sql0 := 'update farmasi.m_obat set terakhir = current_timestamp where upper(kd_obat) like %s or upper(nm_obat) like %s;';
   sql1 := Format(sql0, [QuotedStr('%'+paramku+'%'), QuotedStr('%'+paramku+'%')]);
   ShowMessage(sql1);
   dataMaster.fdCmd1.Execute(sql1);
   finally
     buka_data;
   end;

end;
end;

procedure TForm1_masterObat.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryMasterObat.Open;
end;

//isi_list('select poli from simpus2.m_poli order by upper(poli)', 'poli', 5, grid1);
end;

procedure TForm1_masterObat.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterObat.isi_list(aQuery, aField: string;
  aNomorKolom: Integer; aGrid: TDBGridEh);
begin
with dataMaster do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(aQuery);
  fdQueryBuka.Open;

  aGrid.Columns[aNomorKolom].PickList.Clear;
  while not fdQueryBuka.Eof do
  begin
    aGrid.Columns[aNomorKolom].PickList.Add(fdQueryBuka.FieldByName(aField).AsString);
    fdQueryBuka.Next;
  end;
  fdQueryBuka.Close;
end;
end;

procedure TForm1_masterObat.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQueryMasterObat.FieldByName('kd_obat').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataMaster.fdQueryMasterObat.Locate('kd_obat', apv, []);
end;


end;

end.
