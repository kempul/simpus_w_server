unit lab_pasien_data_u;

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
  DBAxisGridsEh, DynVarsEh, Pipes, ImgList, ActnList, JvDBImage;

type
  TForm1_LabData = class(TForm)
    panelUtama: TJvPanel;
    JvTimer1: TJvTimer;
    JvFormStorage1: TJvFormStorage;
    panelU1: TJvPanel;
    panel7: TPanel;
    dbtxt1: TDBText;
    dbtxtNama: TDBText;
    panelU11: TPanel;
    panelU111: TPanel;
    grid1: TDBGridEh;
    splitter1: TJvxSplitter;
    panelU112: TPanel;
    grid2: TDBGridEh;
    panel2: TPanel;
    panel3: TPanel;
    btnSimpanPasien: TButton;
    btnbatalPasien: TButton;
    panelU12: TPanel;
    panelPeringatan: TPanel;
    pipeClient1: TPipeClient;
    txt1: TStaticText;
    actlst1: TActionList;
    actCariPasien: TAction;
    actNew: TAction;
    actPrint: TAction;
    actClose: TAction;
    actLab: TAction;
    actDel: TAction;
    actEditBPJS: TAction;
    actRefresh: TAction;
    images1: TImageList;
    JvPanel2: TJvPanel;
    JvBevel1: TJvBevel;
    btn_pasienAdd: TJvTransparentButton;
    JvTransparentButton1: TJvTransparentButton;
    btnPrint: TJvTransparentButton;
    btnKunjunganDel: TJvTransparentButton;
    btnEditBpjs: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    dbmemo1: TJvDBImage;
    dbedtformat_data: TDBEdit;
    nav1: TJvDBNavigator;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure JvSpinEdit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure btn_cetakClick(Sender: TObject);
    procedure btnSimpanPasienClick(Sender: TObject);
    procedure pipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
      Stream: TStream);
    procedure grid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure dbedtformat_dataChange(Sender: TObject);
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
  Form1_LabData: TForm1_LabData;

implementation

uses aau111, frxu, dmLab, aau;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_LabData.actCloseExecute(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
grid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataLab.conn1.Connected:=False;

//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

//showMessage('ctcp : 0');

end;

procedure TForm1_LabData.actRefreshExecute(Sender: TObject);
begin
buka_data;
panelPeringatan.Visible := False;
end;

procedure TForm1_LabData.awal;
begin
boleh_buka := false;
grid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);

set_periode;
buka_data;
end;

procedure TForm1_LabData.btnSimpanPasienClick(Sender: TObject);
var vidxstr : string;
begin
   with DataLab do
   begin
   vidxstr := uqKunjungan1.FieldByName('idxstr').AsString;

   if uqPasienLab.Modified then uqPasienLab.Post;
   buka_data;
   ShowMessage('Data disimpan');
   uqKunjungan1.Locate('idxstr', vidxstr, []);
   end;
end;

procedure TForm1_LabData.btn_cetakClick(Sender: TObject);
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

procedure TForm1_LabData.btn_closeClick(Sender: TObject);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
grid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

dataLab.conn1.Connected:=False;

//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');

//showMessage('ctcp : 0');
end;

procedure TForm1_LabData.buka_data;
begin
with DataLab do
begin
  uqKunjungan1.Close;
  uqKunjungan1.Open;

  uqPasienLab.Close;
  uqPasienLab.Open;
end;
boleh_buka := True;
end;

procedure TForm1_LabData.dbedtformat_dataChange(Sender: TObject);
begin
panelU12.Visible := dbedtformat_data.Text = 'gambar';

end;

procedure TForm1_LabData.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_LabData.grid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if DataLab.uqKunjungan1.FieldByName('lab_ok').AsInteger = 1 then
begin
  AFont.Style := [fsBold];
  AFont.Color := clMaroon;
end;
end;

procedure TForm1_LabData.JvComboBox1Change(Sender: TObject);
begin
if boleh_buka then buka_data;
end;

procedure TForm1_LabData.JvSpinEdit1Change(Sender: TObject);
begin
if boleh_buka then buka_data;

end;

procedure TForm1_LabData.nav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
      pv : Integer;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid2.Options := grid2.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := DataLab.uqKunjungan1.FieldByName('mr').AsString;
  pv := DataLab.uqPasienLab.FieldByName('idx00').AsInteger;
  grid2.Options := grid2.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  DataLab.uqKunjungan1.Locate('mr', apv,[]);
  DataLab.uqPasienLab.Locate('idx00', pv,[]);

end;


end;

procedure TForm1_LabData.pipeClient1PipeMessage(Sender: TObject; Pipe: HPIPE;
  Stream: TStream);
var
    i : Integer;
    Msg : String;
begin
    SetLength(Msg, Stream.Size div SizeOf(Char));
    Stream.Position := 0;
    Stream.Read(Msg[1], Stream.Size);

    i:=StrToInt(Msg);
    if i = 1002 then
    begin
      panelPeringatan.Caption := '  ==> ' + DateToStr(now) + ' : Data baru saja diupdate, butuh direfresh ...';
      panelPeringatan.Visible := True;
    end;
end;

procedure TForm1_LabData.set_periode;
begin
end;

end.


