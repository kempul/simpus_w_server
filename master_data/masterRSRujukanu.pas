unit masterRSRujukanu;

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
  TForm1_masterRSRujukan = class(TForm)
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
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn_mutasiClick(Sender: TObject);
    procedure btn_pakandikandangClick(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
    procedure buka_data;
    procedure isi_list(aQuery : string; aField : string; aNomorKolom : Integer; aGrid : TDBGridEh); 
  public
    { Public declarations }
  end;

var
  Form1_masterRSRujukan: TForm1_masterRSRujukan;

implementation

uses dmMaster, aau, aau111, brProviderU, diagnosaDlgU, icdxTouchU;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_masterRSRujukan.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_masterRSRujukan.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

dataMaster.FDConnection1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMessage('0');
end;

procedure TForm1_masterRSRujukan.btn_mutasiClick(Sender: TObject);
var jkn : brProvider;
begin
     jkn := brProvider.Create;
     try
       if jkn.getProvider('0', '100') then
       begin
       ShowMessage('jkn ok');
       buka_data;
       end else ShowMessage('jkn gagal');

     finally
     jkn.Free;
     end;

{
  Form1_diagnosaDlg.ShowModal;
  if Form1_diagnosaDlg.ModalResult = mrOk then
  begin
     jkn := brDiagnosa.Create;
     try
       if jkn.getDiagnosa(Form1_diagnosaDlg.editDiagnosa.Text, IntToStr(Form1_diagnosaDlg.seStart.Value), IntToStr(Form1_diagnosaDlg.seLimit.Value)) then
       begin
       ShowMessage('jkn ok');
       buka_data;
       end else ShowMessage('jkn gagal');

     finally
     jkn.Free;
     end;
  end;
}
end;

procedure TForm1_masterRSRujukan.btn_pakandikandangClick(Sender: TObject);
var sql0, sql1, paramku : string;
begin
Form1_icdxTouch.ShowModal;
if Form1_icdxTouch.ModalResult = mrOk then
begin
   try
   paramku := UpperCase(Form1_icdxTouch.editDiagnosa.Text);
   sql0 := 'update jkn.m_diagnosis set terakhir = current_timestamp where upper(kd_diag) like %s or upper(nm_diag) like %s;';
   sql1 := Format(sql0, [QuotedStr('%'+paramku+'%'), QuotedStr('%'+paramku+'%')]);
   ShowMessage(sql1);
   dataMaster.fdCmd1.Execute(sql1);
   finally
     buka_data;
   end;

end;
end;

procedure TForm1_masterRSRujukan.buka_data;
begin
with dataMaster do
begin
  FDConnection1.Connected := false;
  fdQueryRsRujukan.Open;
end;

//isi_list('select poli from simpus2.m_poli order by upper(poli)', 'poli', 5, grid1);
end;

procedure TForm1_masterRSRujukan.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_masterRSRujukan.isi_list(aQuery, aField: string;
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

procedure TForm1_masterRSRujukan.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataMaster.fdQueryRsRujukan.FieldByName('kd_provider').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  dataMaster.fdQueryRsRujukan.Locate('kd_provider', apv, []);
end;


end;

end.
