unit cetakKartuBerobatU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvExtComponent, JvSplit, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, StdCtrls, GridsEh, DBAxisGridsEh,
  DBGridEh, Buttons, JvComponentBase, JvFormPlacement, frxClass, frxDBSet,
  EhLibVCL, FireDAC.Phys.Intf;

type
  TForm1_cetakKartuBerobat = class(TForm)
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    grid1: TDBGridEh;
    labelEdit1: TLabeledEdit;
    btn1: TButton;
    splitter1: TJvxSplitter;
    pnl5: TPanel;
    grid2: TDBGridEh;
    pnl6: TPanel;
    btn1Sel1: TSpeedButton;
    btn1UnSel: TSpeedButton;
    btn1SelAll: TSpeedButton;
    btn1UnSelAll: TSpeedButton;
    formStorage1: TJvFormStorage;
    btn5: TButton;
    txt1: TStaticText;
    txt2: TStaticText;
    frxdb1KartuBerobat: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxdb1Thbl: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn1Sel1Click(Sender: TObject);
    procedure labelEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1SelAllClick(Sender: TObject);
    procedure btn1UnSelClick(Sender: TObject);
    procedure btn1UnSelAllClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure buka_data;
    procedure awal;


  public
    { Public declarations }
  end;

var
  Form1_cetakKartuBerobat: TForm1_cetakKartuBerobat;

implementation
      uses dmPasien, aau111;
{$R *.dfm}

procedure TForm1_cetakKartuBerobat.awal;
var sql0 : string;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);

labelEdit1.Clear;
labelEdit1.SetFocus;

 sql0 := 'delete from simpus2.penduduk_cetak_kartu;';
try
 with dataPasien do
 begin
   fdCmd1.Execute(sql0);

   fdCmd1.CommandText.Clear;
   fdCmd1.CommandText.Add('reporting.rpt_dummi_thbl_buat');
   fdCmd1.CommandKind := skStoredProc;
   fdCmd1.Prepare;
   fdCmd1.ParamByName('ip_tahun').AsInteger := CurrentYear;
   fdCmd1.ParamByName('ip_bulan').AsInteger := 1;
   fdCmd1.Execute();

 end;
finally
  buka_data;
end;
end;

procedure TForm1_cetakKartuBerobat.btn1Click(Sender: TObject);
begin
with dataPasien do
begin
try
 //  unspCetakKartu.Prepare;
 //  unspCetakKartu.ParamByName('paramku').AsString := UpperCase('%' + labelEdit1.Text + '%');
  // unspCetakKartu.ExecProc;
finally
    buka_data;
end;
end;
end;

procedure TForm1_cetakKartuBerobat.btn1Sel1Click(Sender: TObject);
begin
{
  try
  with dataPasien do
  begin
  if uniQCetakKartuBerobatPV.Modified then uniQCetakKartuBerobatPV.Post;

  unsql1.CreateProcCall('simpus2.kartu_berobat_add');
  unsql1.Execute;
  end;
  finally
    buka_data;
  end;
}
end;

procedure TForm1_cetakKartuBerobat.btn1SelAllClick(Sender: TObject);
begin
 {
  try
  with dataPasien do
  begin
  if uniQCetakKartuBerobatPV.Modified then uniQCetakKartuBerobatPV.Post;

  unsql1.CreateProcCall('simpus2.kartu_berobat_add_all');
  unsql1.Execute;
  end;
  finally
    buka_data;
  end;
 }
end;

procedure TForm1_cetakKartuBerobat.btn1UnSelAllClick(Sender: TObject);
begin
{
  try
  with dataPasien do
  begin
  if uniQCetakKartuBerobat.Modified then uniQCetakKartuBerobat.Post;

  unsql1.CreateProcCall('simpus2.kartu_berobat_add_x_all');
  unsql1.Execute;
  end;
  finally
    buka_data;
  end;
}
end;

procedure TForm1_cetakKartuBerobat.btn1UnSelClick(Sender: TObject);
begin
 {
  try
  with dataPasien do
  begin
  if uniQCetakKartuBerobat.Modified then uniQCetakKartuBerobat.Post;

  unsql1.CreateProcCall('simpus2.kartu_berobat_add_x');
  unsql1.Execute;
  end;
  finally
    buka_data;
  end;
  }
end;

procedure TForm1_cetakKartuBerobat.btn5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm1_cetakKartuBerobat.buka_data;
begin
{
with dataPasien do
begin
   uniQCetakKartuBerobatPV.Close;
   uniQCetakKartuBerobatPV.Open;

   uniQCetakKartuBerobat.Close;
   uniQCetakKartuBerobat.Open;
end;
 }

end;

procedure TForm1_cetakKartuBerobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(Form111.MyIni, Name, True);
grid2.SaveColumnsLayoutIni(Form111.MyIni, Name, False);

end;

procedure TForm1_cetakKartuBerobat.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_cetakKartuBerobat.labelEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = Chr(13) then btn1.Click;

end;

end.
