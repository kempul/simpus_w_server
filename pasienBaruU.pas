unit pasienBaruU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ComCtrls,
  JvExControls, JvButton, JvTransparentButton, ExtCtrls, JvExExtCtrls, JvBevel,
  JvExtComponent, JvPanel, ImgList, ActnList, JvExComCtrls, JvDateTimePicker,
  JvExStdCtrls, JvGroupBox, JvComponentBase, JvFormPlacement, JvCombobox, Spin,
  JvMaskEdit, System.ImageList, System.Actions;

type
  TForm1_pasienBaru = class(TForm)
    grp2: TGroupBox;
    actlst1: TActionList;
    actCariPasien: TAction;
    actNewKK: TAction;
    actNewPasien: TAction;
    actClose: TAction;
    actKKcari: TAction;
    images1: TImageList;
    JvPanel1: TJvPanel;
    JvBevel1: TJvBevel;
    btnKKNew: TJvTransparentButton;
    btn_close: TJvTransparentButton;
    btnPasienNew: TJvTransparentButton;
    btnKKcari: TJvTransparentButton;
    lblNama: TLabel;
    lblKelamin: TLabel;
    lblTgl: TLabel;
    lblMR: TLabel;
    lblBPJS: TLabel;
    lbl1: TLabel;
    editNama: TEdit;
    cbbKelamin: TComboBox;
    editMR: TEdit;
    editBPJS: TEdit;
    panel3: TPanel;
    btnSimpanPasien: TButton;
    btnbatalPasien: TButton;
    medtTgl: TMaskEdit;
    procedure actCloseExecute(Sender: TObject);
    procedure actNewPasienExecute(Sender: TObject);
    procedure editNIKKeyPress(Sender: TObject; var Key: Char);
    procedure editNamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKelaminKeyPress(Sender: TObject; var Key: Char);
    procedure editTptKeyPress(Sender: TObject; var Key: Char);
    procedure medtTglKeyPress(Sender: TObject; var Key: Char);
    procedure editTlpKeyPress(Sender: TObject; var Key: Char);
    procedure editMRKeyPress(Sender: TObject; var Key: Char);
    procedure editBPJSKeyPress(Sender: TObject; var Key: Char);
    procedure lbleditIDKKKeyPress(Sender: TObject; var Key: Char);
    procedure lbleditIDKKExit(Sender: TObject);
    procedure lbleditKKExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanPasienClick(Sender: TObject);
    procedure editNIKExit(Sender: TObject);
    procedure lbleditRTExit(Sender: TObject);
    procedure lbleditRWExit(Sender: TObject);
    procedure lbleditDesaExit(Sender: TObject);
    procedure lbleditKecExit(Sender: TObject);
    procedure lbleditKotaExit(Sender: TObject);
    procedure lbleditPropExit(Sender: TObject);
    procedure cbbKelKeyPress(Sender: TObject; var Key: Char);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);
    procedure editMRExit(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    procedure simpan_kk;
    procedure simpan_penduduk;
    function ambil_strParam(asal : string) : string;
  public
    { Public declarations }
  end;

var
  Form1_pasienBaru: TForm1_pasienBaru;

implementation

uses kk_cari_u, dmKunjungan, aau111;

{$R *.dfm}

procedure TForm1_pasienBaru.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm1_pasienBaru.actNewPasienExecute(Sender: TObject);
begin
  editMR.Clear;
  editNama.Clear;
  cbbKelamin.ItemIndex := 0;
  editMR.Text := '0';
  editBPJS.Clear;
  editNama.SetFocus;
end;

function TForm1_pasienBaru.ambil_strParam(asal: string): string;
begin
   if Length(asal) <= 0 then 
    Result := 'NULL' else Result := QuotedStr(asal);
end;

procedure TForm1_pasienBaru.btnSimpanPasienClick(Sender: TObject);
begin
simpan_penduduk;
ModalResult := mrOk;
end;

procedure TForm1_pasienBaru.cbbKelaminKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.cbbKelKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.medtTglKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.editBPJSKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.editMRExit(Sender: TObject);
begin
if (Length(editMR.Text) < 3) then
begin
  ShowMessage('Nomor Rekam Medis Tidak boleh kurang dari 3 digit');
  editMR.SetFocus;
end;

end;

procedure TForm1_pasienBaru.editMRKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.editNamaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.editNIKExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;
end;

procedure TForm1_pasienBaru.editNIKKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pasienBaru.editTlpKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.editTptKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.edt1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pasienBaru.FormShow(Sender: TObject);
begin
btnKKNew.Click;
end;

procedure TForm1_pasienBaru.lbleditDesaExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditIDKKExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditIDKKKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);
end;

procedure TForm1_pasienBaru.lbleditKecExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditKKExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditKotaExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditPropExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditRTExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.lbleditRWExit(Sender: TObject);
begin
if Length(TLabeledEdit(sender).Text) = 0 then
begin
  ShowMessage('nilai ' + TLabeledEdit(sender).EditLabel.Caption + ' tidak boleh kosong' );
  TLabeledEdit(sender).SetFocus;
end;

end;

procedure TForm1_pasienBaru.medt1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_pasienBaru.simpan_kk;
begin
end;

procedure TForm1_pasienBaru.simpan_penduduk;
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
    {
     uniQPasienLast.Close;
     uniQPasienLast.ParamByName('nama').AsString := editNama.Text;
     uniQPasienLast.Open;

     editMR.Text := uniQPasienLast.FieldByName('mr').AsString;
     uniQPasienLast.Close;
     }
   end;
end;

end.
