unit obatAddU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  JvExControls, JvSpeedButton, StdCtrls, GridsEh, DBAxisGridsEh, DBGridEh,
  DBCtrls, JvDBControls, ComCtrls, JvExComCtrls, JvComCtrls, ExtCtrls, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, EhLibVCL, Vcl.Samples.Spin,
  JvDateTimePicker;

type
  TForm1_obatAdd = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl3: TPanel;
    pnl4: TPanel;
    nav1: TJvDBNavigator;
    grid1: TDBGridEh;
    lbl1: TLabel;
    editObat: TEdit;
    btnObatCari: TJvSpeedButton;
    label2: TLabel;
    editSigna1: TJvCalcEdit;
    label3: TLabel;
    editSigna2: TJvCalcEdit;
    label5: TLabel;
    editJml: TJvCalcEdit;
    btnSimpan: TButton;
    pnl5: TPanel;
    panelgrp1: TPanel;
    label11: TLabel;
    label12: TLabel;
    label14: TLabel;
    editSigna11: TJvCalcEdit;
    editSigna21: TJvCalcEdit;
    editJml1: TJvCalcEdit;
    panelgrp2: TPanel;
    label10: TLabel;
    btn1: TJvSpeedButton;
    labelJml: TLabel;
    editObat1: TEdit;
    editPermintaan: TJvCalcEdit;
    btnSimpan1: TButton;
    label6: TLabel;
    seRacikan: TSpinEdit;
    labelIdxstr: TLabel;
    panel2: TPanel;
    labelTgl: TLabel;
    dtp1: TJvDateTimePicker;
    labelObat: TLabel;
    checkDpho: TCheckBox;
    checkBpjs: TCheckBox;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnObatCariClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnSimpan1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    idPasienObat : string;
    boleh_buka : Boolean;
    procedure awal;
    procedure buka_data;
    procedure simpan_non_racikan;
    procedure simpan_racikan;
    procedure cariObat;
    procedure kirimObatPasienJkn;
    function ambilIdPasienObat(idxstr : string) : string;
  public
    { Public declarations }
  end;

var
  Form1_obatAdd: TForm1_obatAdd;

implementation

uses aau111, obatCariU, dmpelayanan, StrUtils, brObatU, OtlParallel; //SrvParallelU,

{$R *.dfm}

function TForm1_obatAdd.ambilIdPasienObat(idxstr: string): string;
begin
  with dataPelayanan do
  begin
    fdQueryObatPasienTerakhir.Close;
    fdQueryObatPasienTerakhir.Prepare;
    fdQueryObatPasienTerakhir.ParamByName('idxstr').AsString := idxstr;
    fdQueryObatPasienTerakhir.Active := True;

    Result := fdQueryObatPasienTerakhir.FieldByName('id').AsString;
    fdQueryObatPasienTerakhir.Close;
  end;
end;

procedure TForm1_obatAdd.awal;
begin
boleh_buka := False;
dtp1.DateTime := Now;
grid1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
editObat.Clear;
pageControl1.ActivePageIndex := 0;
seRacikan.Value := 1;
buka_data;
end;

procedure TForm1_obatAdd.btn1Click(Sender: TObject);
begin
cariObat;
end;

procedure TForm1_obatAdd.btn2Click(Sender: TObject);
var
  br0 : brObat;
begin
  br0 := brObat.Create;
  try
    br0.postObat(labelIdxstr.Caption);
  finally
    br0.Free;
  end;

end;

procedure TForm1_obatAdd.btnObatCariClick(Sender: TObject);
begin
  cariObat;
end;

procedure TForm1_obatAdd.btnSimpan1Click(Sender: TObject);
begin
try
  simpan_racikan;
finally
  buka_data;
  if checkBpjs.Checked then kirimObatPasienJkn;;
end;
end;

procedure TForm1_obatAdd.btnSimpanClick(Sender: TObject);
var id : string;
begin
try
  simpan_non_racikan;
finally
buka_data;
if checkBpjs.Checked then kirimObatPasienJkn;
end;

end;

procedure TForm1_obatAdd.buka_data;
begin

with dataPelayanan do
begin
  fdQueryObatPasien.Close;
  fdQueryObatPasien.ParamByName('idxstr').AsString := labelIdxstr.Caption;
  fdQueryObatPasien.Active := True;
end;
boleh_buka := True;
end;

procedure TForm1_obatAdd.cariObat;
begin
form1_obatCari.ShowModal;
if Form1_obatCari.ModalResult = mrOK then
with dataPelayanan do
begin
  if pageControl1.ActivePageIndex = 0 then
         editObat.Text := fdQueryObatCari.FieldByName('nm_obat').AsString else
         editObat1.Text := fdQueryObatCari.FieldByName('nm_obat').AsString;
  labelObat.Caption := fdQueryObatCari.FieldByName('kd_obat').AsString;
  checkDpho.Checked := fdQueryObatCari.FieldByName('adl_dpho').AsBoolean;
end;
end;

procedure TForm1_obatAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
dataPelayanan.fdQueryObatPasien.Close;
end;

procedure TForm1_obatAdd.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_obatAdd.kirimObatPasienJkn;

var srv : brObat;
    id : string;

begin
   id := ambilIdPasienObat(labelIdxstr.Caption);
   srv := brObat.Create;
   try
     srv.postObatTunggal(id);
   finally
     srv.Free;
   end;
   //ini kirim master obat yang dari jkn
{
   if checkDpho.Checked then
   begin
     srv := SrvParallel.Create;
     try
       srv.obatJknPost(labelObat.Caption);
     finally
       srv.Free;
     end;
   end;

   id := ambilIdPasienObat(labelIdxstr.Caption);
   srv := SrvParallel.Create;
   try
     srv.pasienObatPost(id);
   finally
   srv.Free;
   end;
 }
end;


procedure TForm1_obatAdd.simpan_non_racikan;
var sql0, sql1 : string;
begin
sql0 := 'insert into farmasi.pasien_obat(idxstr, kd_obat, signa1, signa2, jml_obat, jml_permintaan, tanggal, obat_dpho) ' +
        'values(%s, %s, %s, %s, %s, %s, %s, %s);';
with dataPelayanan do
begin
  sql1 := Format(sql0, [
                        QuotedStr(labelIdxstr.Caption),
                        QuotedStr(labelObat.Caption),
                        IntToStr(editSigna1.AsInteger),
                        IntToStr(editSigna2.AsInteger),
                        IntToStr(editJml.AsInteger),
                        IntToStr(editJml.AsInteger),
                        QuotedStr(FormatDateTime('YYYY-MM-DD', dtp1.DateTime)),
                        BoolToStr(checkDpho.Checked, True)
                        ]);

  fdCmd1.Execute(sql1);
  end;
end;


procedure TForm1_obatAdd.simpan_racikan;
var sql0, sql1 : string;
begin

sql0 := 'insert into farmasi.pasien_obat(idxstr, kd_obat, signa1, signa2, jml_obat, jml_permintaan, tanggal, obat_dpho, racikan_ke, racikan) ' +
        'values(%s, %s, %s, %s, %s, %s, %s, %s, %s, true);';

with dataPelayanan do
begin
  sql1 := Format(sql0, [
                        QuotedStr(labelIdxstr.Caption),
                        QuotedStr(labelObat.Caption),
                        IntToStr(editSigna11.AsInteger),
                        IntToStr(editSigna21.AsInteger),
                        IntToStr(editJml1.AsInteger),
                        IntToStr(editPermintaan.AsInteger),
                        QuotedStr(FormatDateTime('YYYY-MM-DD', dtp1.DateTime)),
                        BoolToStr(checkDpho.Checked, True),
                        IntToStr(seRacikan.Value)
                        ]);

  fdCmd1.Execute(sql1);
  end;
end;

end.
