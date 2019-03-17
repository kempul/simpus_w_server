unit pesertaAddU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.DBCtrls, JvDBControls, Vcl.StdCtrls, JvExControls,
  JvWaitingProgress, Vcl.Mask;

type
  TForm1_tambahPeserta = class(TForm)
    panel1: TPanel;
    panel2: TPanel;
    panel4: TPanel;
    panel5: TPanel;
    grid1: TDBGridEh;
    grid2: TDBGridEh;
    panel6: TPanel;
    labelEdit1: TLabeledEdit;
    btn1: TButton;
    btnTambahkan: TButton;
    btn3: TButton;
    waiting1: TJvWaitingProgress;
    dbnav1: TJvDBNavigator;
    panel7: TPanel;
    labelKegiatan: TLabel;
    labelEduId: TLabel;
    dbedit1kartu_bpjs: TDBEdit;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure labelEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnTambahkanClick(Sender: TObject);
    procedure dbedit1kartu_bpjsChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbnav1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    iDummi : Integer;
    adaYangBelum : Integer;
    idPeserta : string;
    procedure buka_data;
    procedure awal;
    procedure buka_pasien;
    procedure insert_peserta;
    procedure kirim_bpjs;
    procedure ambilPesertaTerakhir;
  public
    { Public declarations }
  end;

var
  Form1_tambahPeserta: TForm1_tambahPeserta;

implementation

{$R *.dfm}
uses dmProlanis, aau111, brProlanisU;

procedure TForm1_tambahPeserta.ambilPesertaTerakhir;
begin
adaYangBelum := 0;
idPeserta := '';
with dataProlanis do
begin
  fdQPesertaTerakhir.Close;
  fdQPesertaTerakhir.ParamByName('kegiatan').AsString := labelKegiatan.Caption;
  fdQPesertaTerakhir.Open();
  if not fdQPesertaTerakhir.IsEmpty then
  begin
  adaYangBelum := fdQPesertaTerakhir.FieldByName('jml').AsInteger;
  idPeserta := fdQPesertaTerakhir.FieldByName('id').AsString;
  end;

  fdQPesertaTerakhir.Close;
end;
end;

procedure TForm1_tambahPeserta.awal;
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
grid2.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
buka_data;
end;

procedure TForm1_tambahPeserta.btn1Click(Sender: TObject);
begin
buka_pasien;

end;

procedure TForm1_tambahPeserta.btn3Click(Sender: TObject);
var
 br0 : brProlanis;
begin
with dataProlanis do
begin
  br0 := brProlanis.Create;
  try
  fdQPesertaAdding.First;
  while not fdQPesertaAdding.Eof do
  begin
    if fdQPesertaAdding.FieldByName('status').AsString = 'belum terkirim' then
             br0.postPesertaTunggal(fdQPesertaAdding.FieldByName('id').AsString);

    fdQPesertaAdding.Next;
    Application.ProcessMessages;
  end;
  finally
    br0.Free;
    buka_data;
  end;
end;
end;

procedure TForm1_tambahPeserta.btnTambahkanClick(Sender: TObject);
begin
try
  insert_peserta;
  ShowMessage('insert');
finally
  kirim_bpjs;
end;
end;

procedure TForm1_tambahPeserta.buka_data;
begin
with dataProlanis do
begin
  FDConnection1.Close;


  fdQPesertaAdding.Close;
  fdQPesertaAdding.ParamByName('kegiatan').AsString := labelKegiatan.Caption;
  fdQPesertaAdding.Open();
end;
end;

procedure TForm1_tambahPeserta.buka_pasien;
begin
with dataProlanis do
begin
  fdQPasien.Close;
  fdQPasien.ParamByName('param').AsString:= LowerCase('%' + labelEdit1.Text + '%');
  fdQPasien.Open();
  btnTambahkan.Enabled := Length(fdQPasien.FieldByName('kartu_bpjs').AsString) > 0;
end;
end;

procedure TForm1_tambahPeserta.dbedit1kartu_bpjsChange(Sender: TObject);
begin
btnTambahkan.Enabled := Length(dbedit1kartu_bpjs.Text) > 10;
end;

procedure TForm1_tambahPeserta.dbnav1Click(Sender: TObject;
  Button: TNavigateBtn);
  var apv, pv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
  grid1.SetFocus;
//  ShowMessage('tes');
end;

if Button = nbRefresh then
begin
  apv := dataProlanis.fdQPasien.FieldByName('idxstr').AsString;
  grid1.Options := grid2.Options - [dgEditing] + [dgRowSelect];
  buka_data;
  buka_pasien;
  dataProlanis.fdQPasien.Locate('idxstr', apv, []);
//  ShowMessage('e');
end;

end;

procedure TForm1_tambahPeserta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(Form111.MyIni, name, True);
grid2.SaveColumnsLayoutIni(Form111.MyIni, Name, false);
end;

procedure TForm1_tambahPeserta.FormResize(Sender: TObject);
begin
panel1.Width := Width div 2;
end;

procedure TForm1_tambahPeserta.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_tambahPeserta.insert_peserta;
var
  sql0, sql1, kartu : string;
begin
with dataProlanis do
begin
  kartu := fdQPasien.FieldByName('kartu_bpjs').AsString;
  //ShowMessage(kartu);

  sql0 := 'insert into kelompok.kegiatan_peserta(kegiatan, edu_id, no_kartu) ' +
        'values(%s, %s, %s);';

  sql1 := Format(sql0, [QuotedStr(labelKegiatan.Caption),
          QuotedStr(labelEduId.Caption),
          QuotedStr(kartu)
          ]);
  fdCmd1.Execute(sql1);
end;
buka_data;
end;

procedure TForm1_tambahPeserta.kirim_bpjs;
var
  br0 : brProlanis;
begin
  ambilPesertaTerakhir;
  if (adaYangBelum > 0) and (Length(idPeserta) > 0) then
  begin
  br0 := brProlanis.Create;
  try
    br0.postPesertaTunggal(idPeserta);
  finally
    br0.Free;
  buka_data;
  end;
  end;
end;

procedure TForm1_tambahPeserta.labelEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = Char(13) then buka_pasien;

end;

end.
