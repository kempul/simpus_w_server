unit pasienCariu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, GridsEh, DBAxisGridsEh, DBGridEh, DynVarsEh, ComCtrls,
  DBCtrls, JvDBControls, JvBaseDlg, JvProgressDialog, Mask,
  EhLibVCL;

type
  TForm1_pasienCari = class(TForm)
    panel2: TPanel;
    btn1: TBitBtn;
    panel3: TPanel;
    grid1: TDBGridEh;
    btn2: TBitBtn;
    lblMR: TLabel;
    lblNama: TLabel;
    dtp1: TDateTimePicker;
    check1: TCheckBox;
    panel4: TPanel;
    dbnav1: TJvDBNavigator;
    lblBPJS: TLabel;
    memoResponse: TMemo;
    pb1: TJvProgressDialog;
    labelNIK: TLabel;
    pageControl1: TPageControl;
    tsPasien: TTabSheet;
    tsBankData: TTabSheet;
    panel5: TPanel;
    txt2: TStaticText;
    editPasienCari: TEdit;
    btnCariLokal: TButton;
    navBank: TJvDBNavigator;
    gridBank: TDBGridEh;
    panel6: TPanel;
    txt3: TStaticText;
    edit1Bank: TEdit;
    btn1CariBank: TButton;
    btnUpdateCapil: TButton;
    btnAmbilDukcapil: TButton;
    btnUpdateMR: TButton;
    memoSQL: TMemo;
    tsBaru: TTabSheet;
    grp2: TGroupBox;
    label4: TLabel;
    labelKelamin: TLabel;
    labelTgl: TLabel;
    label5: TLabel;
    label6: TLabel;
    labellbl1: TLabel;
    editNama: TEdit;
    cbbKelamin: TComboBox;
    editMR: TEdit;
    editBPJS: TEdit;
    panel7: TPanel;
    btnSimpanPasien: TButton;
    btnbatalPasien: TButton;
    medtTgl: TMaskEdit;
    txt4: TStaticText;
    paneltxt1: TPanel;
    labelPasien: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnCariLokalClick(Sender: TObject);
    procedure editPasienCariKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure dbnav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnAmbilDukcapilClick(Sender: TObject);
    procedure btnUpdateCapilClick(Sender: TObject);
    procedure btnUpdateMRClick(Sender: TObject);
    procedure grid1Exit(Sender: TObject);
    procedure btn1CariBankClick(Sender: TObject);
    procedure btnSimpanPasienClick(Sender: TObject);
    procedure edit1BankKeyPress(Sender: TObject; var Key: Char);
    procedure gridBankDblClick(Sender: TObject);
  private
    { Private declarations }
    boleh_buka : Boolean;
    function ambil_strParam(asal : string) : string;
    procedure eksekusi_sql(str0 : string);
    procedure buka_data;
    procedure awal;
    procedure buka_pasien;
    procedure simpan_penduduk;
    function ambil_dari_bank_data : string;
  public
    { Public declarations }
  end;

var
  Form1_pasienCari: TForm1_pasienCari;

implementation

uses
  dmKunjungan, aau111, capilCariU, brCapilU;

{$R *.dfm}

function TForm1_pasienCari.ambil_dari_bank_data : string;
var vnik : string;
begin
with dataKunjungan do
begin
   vnik := fdQueryBankData.FieldByName('nik').AsString;

   fdSpPvNikPindah.Prepare;
   fdSpPvNikPindah.ParamByName('ip_nik').AsString := vnik;
   fdSpPvNikPindah.ExecProc;

   Result := vnik;
end;
end;

function TForm1_pasienCari.ambil_strParam(asal: string): string;
begin
   if Length(asal) <= 0 then 
    Result := 'NULL' else Result := QuotedStr(asal);
end;

procedure TForm1_pasienCari.awal;
begin
//dataKunjungan.FDConnection1.Close;
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
gridBank.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
boleh_buka := False;
pageControl1.ActivePageIndex := 0;
editPasienCari.Clear;
editPasienCari.SetFocus;

end;

procedure TForm1_pasienCari.btn1CariBankClick(Sender: TObject);
var aParam : string;
begin
aParam := UpperCase('%' + edit1Bank.Text + '%');
with dataKunjungan do
begin
  fdQueryBankData.Close;
  fdQueryBankData.ParamByName('paramku').AsString := aParam;
  fdQueryBankData.Open;
end;
end;

procedure TForm1_pasienCari.btn1Click(Sender: TObject);
begin
labelPasien.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('idxstr').AsString;
lblMR.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('mr').AsString;
lblNama.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('nama_lengkap').AsString;
lblBPJS.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('kartu_bpjs').AsString;
labelNIK.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('nik').AsString;
dtp1.DateTime := dataKunjungan.fdQueryPasienCari.FieldByName('tgl_lahir').AsDateTime;
check1.Checked := not dataKunjungan.fdQueryPasienCari.FieldByName('kartu_bpjs').IsNull;

end;

procedure TForm1_pasienCari.btnCariLokalClick(Sender: TObject);
var aParam : string;
begin
aParam := UpperCase('%' + editPasienCari.Text + '%');
with dataKunjungan do
begin
  fdQueryPasienCari.Close;
  fdQueryPasienCari.ParamByName('paramku').AsString := aParam;
  fdQueryPasienCari.Open;


end;
end;

procedure TForm1_pasienCari.btnSimpanPasienClick(Sender: TObject);
begin
try
  simpan_penduduk;
finally
  editPasienCari.Text := editMR.Text;
  btnCariLokal.Click;
  pageControl1.ActivePageIndex:= 0;
end;
end;

procedure TForm1_pasienCari.btnUpdateCapilClick(Sender: TObject);
var str0, strNIK, strMR, strX : string;
    aCapil : CapilCommon;
begin

strNIK := dataKunjungan.fdQueryPasienCari.FieldByName('nik').AsString;
strMR := dataKunjungan.fdQueryPasienCari.FieldByName('mr').AsString;
str0 := 'Data Pasien dengan NIK = ' + strNIK + ' akan diupdate dengan data DUKCAPIL, YAKIN?';
if (MessageDlg(str0, mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then
begin
pb1.Show;
   ACapil := CapilCommon.create;

  if ACapil.getNikForUpdate(strNIK) then
  begin
      editPasienCari.Text := strNIK;
      btnCariLokal.Click;
  end else ShowMessage('Koneksi ke Server CAPIL gagal');

  ACapil.Free;
  pb1.Hide;
ShowMessage('ok');
end;

end;

procedure TForm1_pasienCari.btnUpdateMRClick(Sender: TObject);
var strNIK, str0 : string;
    dtTgl : TDateTime;
begin

strNIK := dataKunjungan.fdQueryPasienCari.FieldByName('nik').AsString;
str0 := 'Data Pasien dengan NIK = ' + strNIK + ' akan diupdate Nomor RM berdasarkan TANGGAL LAHIR, YAKIN?';

if (MessageDlg(str0, mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then
try
  with dataKunjungan do
  begin
     dtTgl := fdQueryPasienCari.FieldByName('tgl_lahir').AsDateTime;
     fdSpMrUpdateAuto.Prepare;
     fdSpMrUpdateAuto.ParamByName('ip_nik').AsString := strNIK;
     fdSpMrUpdateAuto.ExecProc;
  end;
finally
      editPasienCari.Text := strNIK;
      btnCariLokal.Click;
end;
end;

procedure TForm1_pasienCari.buka_data;
begin
case pageControl1.ActivePageIndex of
0 : ;

end;
end;

procedure TForm1_pasienCari.buka_pasien;
begin
with dataKunjungan do
begin

end;
end;

procedure TForm1_pasienCari.btnAmbilDukcapilClick(Sender: TObject);
var indekAktif : integer;
begin
Form1_cariDiDukcapil.ShowModal;
if Form1_cariDiDukcapil.ModalResult = mrOK then
begin
   indekAktif := Form1_cariDiDukcapil.pageControl1.ActivePageIndex;
   case indekAktif of
   0 : edit1Bank.Text := Form1_cariDiDukcapil.editNama.Text;
   1 : edit1Bank.Text := Form1_cariDiDukcapil.labelEditNIK.Text;
   2 : edit1Bank.Text := Form1_cariDiDukcapil.labelEditKK.Text;
   end;
btn1CariBank.Click;   
end;
{
pb1.Show;
Form1_cariDiDukcapil.ShowModal;
if Form1_cariDiDukcapil.ModalResult = mrOK then
begin
  if capil_akses_nik(Form1_cariDiDukcapil.labelEdit1.Text, memo2.Lines ) then
  begin
   strX := capil_insert_nik(memo2.Lines);
   if Length(strX) > 1 then
   begin
      eksekusi_sql(strX);
      edt1.Text := Form1_cariDiDukcapil.labelEdit1.Text;
      btnCariLokal.Click;
   end else ShowMessage('Data NIK Tidak Ditemukan !');

  end else ShowMessage('Koneksi ke Server CAPIL gagal');
end;
pb1.Hide;
}
end;

procedure TForm1_pasienCari.dbnav1Click(Sender: TObject; Button: TNavigateBtn);
  var apv : string;
begin

if Button in [ nbInsert, nbEdit] then
begin
  grid1.Options := grid1.Options + [dgEditing] - [dgRowSelect];
end;

if Button = nbRefresh then
begin
  apv := dataKunjungan.fdQueryPasienCari.FieldByName('nik').AsString;
  grid1.Options := grid1.Options - [dgEditing] + [dgRowSelect];
  dataKunjungan.fdQueryPasienCari.Close;
  dataKunjungan.fdQueryPasienCari.Open;
  dataKunjungan.fdQueryPasienCari.Locate('nik', apv, []);
end;


end;

procedure TForm1_pasienCari.edit1BankKeyPress(Sender: TObject; var Key: Char);
begin
if Key = Chr(13) then btn1CariBank.Click;

end;

procedure TForm1_pasienCari.editPasienCariKeyPress(Sender: TObject; var Key: Char);
begin
if Key =Chr(13) then btnCariLokal.Click;

end;

procedure TForm1_pasienCari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if not dataKunjungan.fdQueryPasienCari.IsEmpty then
begin
lblMR.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('mr').AsString;
grid1.SaveColumnsLayoutIni(Form111.MyIni, Name, True);
gridBank.SaveColumnsLayoutIni(Form111.MyIni, Name, False);
dataKunjungan.fdQueryPasienCari.Close;
dataKunjungan.fdQueryBankData.Close;
end;
end;

procedure TForm1_pasienCari.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_pasienCari.grid1Exit(Sender: TObject);
begin
if TDBgridEh(Sender).DataSource.DataSet.Modified then TDBGridEh(Sender).DataSource.DataSet.Post;

end;

procedure TForm1_pasienCari.grid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
lblMR.Caption := dataKunjungan.fdQueryPasienCari.FieldByName('mr').AsString;
btn1.Click;
end;

end;

procedure TForm1_pasienCari.gridBankDblClick(Sender: TObject);
var vnik : string;
begin
try
  vnik := ambil_dari_bank_data;
finally
  editPasienCari.Text := vnik;
  btnCariLokal.Click;
  pageControl1.ActivePageIndex := 0;
end;
end;

procedure TForm1_pasienCari.simpan_penduduk;
var sql0, sql1 : string;
begin
   sql0 := 'insert into capil.capil_nik(nik, mr, nama_lengkap, jenis_kelamin, tgl_lahir, kartu_bpjs) ' +
            ' values(''0'', %s, %s, %s, %s, %s);';

   sql1 := Format(sql0, [
                          ambil_strParam(editMR.Text),
                          ambil_strParam(editNama.Text),
                          ambil_strParam(cbbKelamin.Items[cbbKelamin.ItemIndex]),
                          ambil_strParam(FormatDateTime('YYYY-MM-DD', (StrToDate(medtTgl.Text)))),
                          ambil_strParam(editBPJS.Text)
                          ]);
   with dataKunjungan do
   begin
     fdCmd1.Execute(sql1);
   end;
end;


procedure TForm1_pasienCari.eksekusi_sql(str0: string);
begin
with dataKunjungan do
begin
  fdCmd1.Execute(str0);
end;
end;

end.
