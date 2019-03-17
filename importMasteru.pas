unit importMasteru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, JvComponentBase, JvFormPlacement,
  JvTimer, ExtCtrls, JvExExtCtrls, JvBevel, JvButton, JvTransparentButton,
  DBCtrls, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask,
  JvSpin, JvExtComponent, JvPanel, Buttons, DB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBAxisGridsEh, DBVertGridsEh,
  JvToolEdit, Spin, JvCipher, JvZlibMultiple, FileCtrl, JvSpecialProgress,
  JvMemo, JvTextListBox, CheckLst, JvExCheckLst, JvCheckListBox;

type
  TForm1_importMaster = class(TForm)
    panelUtama: TJvPanel;
    JvPanel1: TJvPanel;
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
    btnImport: TButton;
    formStorage1: TJvFormStorage;
    cipher1: TJvVigenereCipher;
    lblFolder: TLabel;
    timer1: TJvTimer;
    pb1: TJvSpecialProgress;
    fileEdit1: TJvFilenameEdit;
    listBox1: TJvCheckListBox;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    strPuskesmas : string;
    strTahun, strBln : string;
    procedure set_periode;
    procedure awal;
    procedure eksekusi_query(str0 : string);

    function set_teks(aFieldName : string) : string;
    function set_integer(aFieldName : string) : string;
    function set_tanggal(aFieldName, aFormat : string): string;
    function set_blobTeks(aFieldName : string): string;

  public
    { Public declarations }
  end;

var
  Form1_importMaster: TForm1_importMaster;

implementation

uses dmMaster, aau, aau111;

{$R *.dfm}

{ TForm1_satuan }

procedure TForm1_importMaster.awal;
begin
timer1.Enabled := True;
pb1.Visible := False;
strPuskesmas := Form111.storageUmum.StoredValue['puskesmas'];
set_periode;
end;

procedure TForm1_importMaster.btnImportClick(Sender: TObject);
var i, titikPos : integer;
    vlabel : string;
begin
//showMessage(jvFileListBox1.FileName);
try
   vlabel := lblFolder.Caption;
   cipher1.DecodeFile('15754', fileEdit1.FileName);
   listBox1.Clear;
finally
   listBox1.Items.LoadFromFile(fileEdit1.FileName);
   (Sender as TButton).Visible := False;
   pb1.Position:=0;
   pb1.Visible:=True;
   pb1.Maximum := listBox1.Count div 10;

    try
      for I := 0 to listBox1.Count - 1 do
      begin
        eksekusi_query(listBox1.Items[i]);
        listBox1.Checked[i] := True;
        if ( ((i mod 10) = 0) or (i = listBox1.Count-1)) then
        begin
          lblFolder.Caption := listBox1.Items[i];
          listBox1.Selected[i] := True;
          pb1.StepIt;
          Application.ProcessMessages;
        end;
      end;
    finally
      pb1.Visible:=False;
      pb1.Position:=0;
      (Sender as TButton).Visible := True;
      //memo1.Clear;
 //     memo1.Lines.Add('sql control --> OK');
      fileEdit1.InitialDir := ExtractFilePath(fileEdit1.FileName);
      cipher1.EncodeFile('15754', fileEdit1.FileName);
      showMessage('sukses');
      lblFolder.Caption := vlabel;
      listBox1.Clear;
end;
end;
//showMessage( 'fullFile is : ' +fullFile);

end;

procedure TForm1_importMaster.btn_closeClick(Sender: TObject);
begin
//Form111.storageUmum.StoredValue['folder ekspor'] := dirEdit1.Directory;
timer1.Enabled := False;
dataMaster.conn1.Connected:=False;
//showMessage('ctcp : 0');
Form1_aa.PipeClient1.SendMesssage('0');
end;


procedure TForm1_importMaster.eksekusi_query (str0 : string);
begin
with dataMaster do
begin
  unsqlproses.SQL.Clear;
  unsqlproses.SQL.Add(str0);
  unsqlproses.Execute;
end;
end;

procedure TForm1_importMaster.FormShow(Sender: TObject);
begin
awal;
end;

function TForm1_importMaster.set_blobTeks(aFieldName: string): string;
var theText: string;
begin
with dataMaster do
begin
  if uqbuka.FieldByName(aFieldName).IsNull then Result := null else
  begin
    theText := uqbuka.FieldByName(aFieldName).AsString;
    result:=quotedStr(theText);
  end;
end;
end;

function TForm1_importMaster.set_integer(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=IntToStr(dataMaster.uqbuka.FieldByName(aFieldName).AsInteger);
end;

procedure TForm1_importMaster.set_periode;
begin
end;

function TForm1_importMaster.set_tanggal(aFieldName, aFormat: string): string;
var TheDateStr: string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
  begin
    DateTimeToString(TheDateStr, aFormat, dataMaster.uqbuka.FieldByName(aFieldName).AsDateTime);
    result:=quotedStr(TheDateStr);
  end;
end;

function TForm1_importMaster.set_teks(aFieldName: string): string;
begin
if dataMaster.uqbuka.FieldByName(aFieldName).IsNull then
result:='NULL' else
    result:=QuotedStr(dataMaster.uqbuka.FieldByName(aFieldName).AsString);
end;

end.
