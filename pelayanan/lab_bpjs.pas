unit lab_bpjs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls, JvComCtrls,
  Vcl.ExtCtrls, JvDateTimePicker, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.DBCtrls, JvExStdCtrls, JvCheckBox;

type
  TForm1_labBpjs = class(TForm)
    pnl1: TPanel;
    pageControl1: TJvPageControl;
    pnl2: TPanel;
    tsTensi: TTabSheet;
    tsGulaDarah: TTabSheet;
    tsDarahRutin: TTabSheet;
    tsLemakDarah: TTabSheet;
    tsFungsiHati: TTabSheet;
    tsFungsiGinjal: TTabSheet;
    tsFungsiJantung: TTabSheet;
    tsMata: TTabSheet;
    tsLain: TTabSheet;
    tsKeterangan: TTabSheet;
    dtPicker1: TJvDateTimePicker;
    labelEdit1MCU: TLabeledEdit;
    lbl1Idxstr: TLabel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    editSistole: TJvCalcEdit;
    editDiastole: TJvCalcEdit;
    lbl3: TLabel;
    editGdSewaktu: TJvCalcEdit;
    lbl4: TLabel;
    editGdPuasa: TJvCalcEdit;
    lbl5: TLabel;
    editGdPost: TJvCalcEdit;
    lbl6: TLabel;
    editGdHbA1c: TJvCalcEdit;
    btn2: TButton;
    Label1: TLabel;
    editDRHemo: TJvCalcEdit;
    Label2: TLabel;
    editDRLeu: TJvCalcEdit;
    Label3: TLabel;
    editDREri: TJvCalcEdit;
    Label4: TLabel;
    editEditDRLaju: TJvCalcEdit;
    Label5: TLabel;
    editDRHema: TJvCalcEdit;
    Label6: TLabel;
    editDRTromb: TJvCalcEdit;
    lbl7: TLabel;
    editLDHdl: TJvCalcEdit;
    lbl8: TLabel;
    editLDLdl: TJvCalcEdit;
    lbl9: TLabel;
    editLDCho: TJvCalcEdit;
    lbl10: TLabel;
    editLDTri: TJvCalcEdit;
    lbl11: TLabel;
    editFHSgot: TJvCalcEdit;
    lbl12: TLabel;
    editFHSgpt: TJvCalcEdit;
    lbl13: TLabel;
    editFHGamma: TJvCalcEdit;
    lbl14: TLabel;
    editFHPro: TJvCalcEdit;
    lbl15: TLabel;
    editFHAlbumin: TJvCalcEdit;
    lbl16: TLabel;
    editFGCrea: TJvCalcEdit;
    lbl17: TLabel;
    editFGUreum: TJvCalcEdit;
    lbl18: TLabel;
    editFGAsam: TJvCalcEdit;
    lbl19: TLabel;
    editFJAbi: TJvCalcEdit;
    lbl20: TLabel;
    lbl21: TLabel;
    mmoKet: TMemo;
    mmoLain: TMemo;
    dbedit1id: TDBEdit;
    dbedit1adl_isi: TDBEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    dbedit1kd_mcu: TDBEdit;
    btnHapusMcu: TButton;
    chk1Bpjs: TJvCheckBox;
    btn11: TButton;
    btn3: TButton;
    lblPasien: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btnHapusMcuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedit1adl_isiChange(Sender: TObject);
  private
    { Private declarations }
    iDummi : Integer;
    boleh_buka : Boolean;
    procedure kosongkan_form;
    function formatDouble(v: Extended): string;
    procedure awal;
    function cek_mcu(tanggal: TDate): string;
    procedure insert_mcu_dummi;
    procedure delete_mcu;
    procedure delete_null_mcu;
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_labBpjs: TForm1_labBpjs;

implementation

{$R *.dfm}

uses dmMcu, brMcuU;

{ TForm1_labBpjs }

procedure TForm1_labBpjs.awal;
begin
boleh_buka := False;
kosongkan_form;
//dtPicker1.Date:= Now();
labelEdit1MCU.Text := cek_mcu(dtPicker1.Date);

if Length(labelEdit1MCU.Text) = 1 then
begin
  insert_mcu_dummi;
  labelEdit1MCU.Text := cek_mcu(dtPicker1.Date);
end;

buka_data;
btn11.Enabled := chk1Bpjs.Checked;
end;

procedure TForm1_labBpjs.btn10Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set keterangan = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    QuotedStr(mmoKet.Lines.Text),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn11Click(Sender: TObject);
var br0 : brMcu;
begin
if chk1Bpjs.Checked then
begin
   br0 := brMcu.Create;
   try
     br0.postMcu(dbedit1id.Field.AsString);
   finally
     br0.Free;
   end;
end;
Close;

end;

procedure TForm1_labBpjs.btn1Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set tekanan_darah_sistole = %s, tekanan_darah_diastole = %s where id = %s;';
sql1 := Format(sql0, [intToStr(editSistole.AsInteger), intToStr(editDiastole.AsInteger), quotedStr(labelEdit1MCU.Text)]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn2Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set gula_darah_sewaktu = %s, gula_darah_puasa = %s, gula_darah_post_prandial = %s, gula_darah_hba1c = %s where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editGdSewaktu.Value),
    formatDouble(editGdPuasa.Value),
    formatDouble(editGdPost.Value),
    formatDouble(editGdHbA1c.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn3Click(Sender: TObject);
begin
//ShowMessage(formatDouble(editGdSewaktu.Value));
Close;
end;

procedure TForm1_labBpjs.btn4Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set darah_rutin_leu = %s, darah_rutin_erit = %s, ' +
        'darah_rutin_hemo = %s, darah_rutin_hema = %s, darah_rutin_trom = %s, ' +
        'darah_rutin_laju = %s where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editDRLeu.Value),
    formatDouble(editDREri.Value),
    formatDouble(editDRHemo.Value),
    formatDouble(editDRHema.Value),
    formatDouble(editDRTromb.Value),
    formatDouble(editEditDRLaju.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn5Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set lemak_darah_hdl = %s, lemak_darah_ldl = %s, ' +
        'lemak_darah_chol = %s, lemak_darah_trigli = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editLDHdl.Value),
    formatDouble(editLDLdl.Value),
    formatDouble(editLDCho.Value),
    formatDouble(editLDTri.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn6Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set fungsi_hati_sgot = %s, fungsi_hati_sgpt = %s, ' +
        'fungsi_hati_gamma = %s, fungsi_hati_prot_kual = %s, fungsi_hati_albumin = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editFHSgot.Value),
    formatDouble(editFHSgpt.Value),
    formatDouble(editFHGamma.Value),
    formatDouble(editFHPro.Value),
    formatDouble(editFHAlbumin.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn7Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set fungsi_ginjal_crea = %s, fungsi_ginjal_ureum = %s, ' +
        'fungsi_ginjal_asam = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editFGCrea.Value),
    formatDouble(editFGUreum.Value),
    formatDouble(editFGAsam.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn8Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set fungsi_jantung_abi = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    formatDouble(editFJAbi.Value),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btn9Click(Sender: TObject);
var
    sql0, sql1 : string;
begin
sql0 := 'update jkn.bpjs_mcu set pemeriksaan_lain = %s ' +
        'where id = %s;';
sql1 := Format(sql0, [
    QuotedStr(mmoLain.Lines.Text),
    quotedStr(labelEdit1MCU.Text)
    ]);
dataMCU.fdCmd1.Execute(sql1);
buka_data;
ShowMessage('OK');
end;

procedure TForm1_labBpjs.btnHapusMcuClick(Sender: TObject);
var
  br0 : brMcu;
begin
if MessageBox(0, 'Yakin Hapus?', 'Konfirmasi', MB_YESNO) = mrYes then

try
   if dbedit1kd_mcu.Field.AsInteger > 0 then
   begin
   br0 := brMcu.Create;
   try
     br0.delMcu(labelEdit1MCU.Text);
   finally
     br0.Free;
   end;
   end;
finally
   delete_mcu;
   insert_mcu_dummi;
   buka_data;
end;
end;

procedure TForm1_labBpjs.buka_data;
begin
with dataMCU do
begin
  fdQMcu.Close;
  fdQMcu.ParamByName('id').AsString := labelEdit1MCU.Text;
  fdQMcu.Open();
end;
boleh_buka:= True;
end;

function TForm1_labBpjs.cek_mcu(tanggal: TDate): string;
var
  tglStr, sql0, sql1 : string;
begin
  DateTimeToString(tglStr, 'yyyy-MM-dd', dtPicker1.Date);
  with dataMcu do
  begin
    sql0 := 'select * from jkn.bpjs_mcu where idxstr = %s and tanggal = %s;';
    sql1 := Format(sql0, [QuotedStr(lbl1Idxstr.Caption), QuotedStr(tglStr)]);
    fdQ1.Close;
    fdQ1.SQL.Clear;
    fdQ1.SQL.Add(sql1);
    fdQ1.Open();

    if fdQ1.IsEmpty then Result:= '-' else Result := fdQ1.FieldByName('id').AsString;
    if Length(Result) > 3 then
    begin
      editSistole.Value := fdQ1.FieldByName('tekanan_darah_sistole').asInteger;
      editDiastole.Value := fdQ1.FieldByName('tekanan_darah_diastole').asInteger;

      editGdPost.Value:= fdQ1.FieldByName('gula_darah_post_prandial').AsFloat;
      editGdPuasa.Value := fdQ1.FieldByName('gula_darah_puasa').AsFloat;
editGdHbA1c.Value := fdQ1.FieldByName('gula_darah_hba1c').AsFloat;
editGdSewaktu.Value := fdQ1.FieldByName('gula_darah_sewaktu').AsFloat;

editDREri.Value := fdQ1.FieldByName('darah_rutin_erit').AsFloat;
editDRHemo.Value := fdQ1.FieldByName('darah_rutin_hemo').AsFloat;
editDRHema.Value := fdQ1.FieldByName('darah_rutin_hema').AsFloat;
editDRTromb.Value := fdQ1.FieldByName('darah_rutin_trom').AsFloat;
editEditDRLaju.Value := fdQ1.FieldByName('darah_rutin_laju').AsFloat;
editDRLeu.Value := fdQ1.FieldByName('darah_rutin_leu').AsFloat;

  editLDTri.Value := fdQ1.FieldByName('lemak_darah_trigli').AsFloat;
  editLDCho.Value := fdQ1.FieldByName('lemak_darah_chol').AsFloat;
  editLDLdl.Value := fdQ1.FieldByName('lemak_darah_ldl').AsFloat;
  editLDHdl.Value := fdQ1.FieldByName('lemak_darah_hdl').AsFloat;

  editFHAlbumin.Value := fdQ1.FieldByName('fungsi_hati_albumin').AsFloat;
  editFHGamma.Value := fdQ1.FieldByName('fungsi_hati_gamma').AsFloat;
  editFHSgpt.Value := fdQ1.FieldByName('fungsi_hati_sgpt').AsFloat;
  editFHSgot.Value := fdQ1.FieldByName('fungsi_hati_sgot').AsFloat;
  editFHPro.Value := fdQ1.FieldByName('fungsi_hati_prot_kual').AsFloat;

  editFGCrea.Value := fdQ1.FieldByName('fungsi_ginjal_crea').AsFloat;
  editFGAsam.Value := fdQ1.FieldByName('fungsi_ginjal_asam').AsFloat;
  editFGUreum.Value := fdQ1.FieldByName('fungsi_ginjal_ureum').AsFloat;

  editFJAbi.Value := fdQ1.FieldByName('fungsi_jantung_abi').AsFloat;
  mmoLain.Lines.Text:= fdQ1.FieldByName('pemeriksaan_lain').AsString;
  mmoKet.Lines.Text:= fdQ1.FieldByName('keterangan').AsString;


    end;
    fdQ1.Close;

  end;
end;

procedure TForm1_labBpjs.dbedit1adl_isiChange(Sender: TObject);
begin
if dataMCU.fdQMcu.Active then btnHapusMcu.Enabled := dbedit1adl_isi.Field.AsFloat > 0;
end;

procedure TForm1_labBpjs.delete_mcu;
var
  sql0, sql1 : string;
begin
with dataMCU do
begin
   sql0 := 'delete from jkn.bpjs_mcu where id = %s;';
   fdCmd1.Execute(Format(sql0, [QuotedStr(labelEdit1MCU.Text)]));
   kosongkan_form;
end;
end;

procedure TForm1_labBpjs.delete_null_mcu;
begin
with dataMCU do
begin
  fdCmd1.Execute('delete from jkn.bpjs_mcu where adl_isi = 0;');
end;
end;

function TForm1_labBpjs.formatDouble(v: Extended): string;
var
  formatSettings: TFormatSettings;
begin
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  formatSettings.DecimalSeparator:= '.';
  Result := FloatToStr(v, formatSettings);
end;

procedure TForm1_labBpjs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
delete_null_mcu;
end;

procedure TForm1_labBpjs.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm1_labBpjs.insert_mcu_dummi;
var tglStr, sql0, sql1 : string;
begin
with dataMCU do
begin
  DateTimeToString(tglStr, 'yyyy-MM-dd', dtPicker1.Date);
  sql0:= 'insert into jkn.bpjs_mcu(idxstr, tanggal) values(%s, %s);';
  fdCmd1.Execute(Format(sql0, [QuotedStr(lbl1Idxstr.Caption), QuotedStr(tglStr)]));
end;
end;

procedure TForm1_labBpjs.kosongkan_form;
begin
editSistole.Value := 0;
editDiastole.Value := 0;

editGdPost.Value := 0;
editGdPuasa.Value := 0;
editGdHbA1c.Value := 0;
editGdSewaktu.Value := 0;;

editDREri.Value := 0;;
editDRHemo.Value := 0;;
editDRHema.Value := 0;;
editDRTromb.Value := 0;;
editEditDRLaju.Value := 0;;
editDRLeu.Value := 0;;

editLDTri.Value := 0;;
editLDCho.Value := 0;;
editLDLdl.Value := 0;;
editLDHdl.Value := 0;;

editFHAlbumin.Value := 0;;
editFHGamma.Value := 0;;
editFHSgpt.Value := 0;;
editFHSgot.Value := 0;;
editFHPro.Value := 0;;

editFGCrea.Value := 0;
editFGAsam.Value := 0;
editFGUreum.Value := 0;

editFJAbi.Value := 0;
mmoLain.Lines.Clear;
mmoKet.Lines.Clear;

end;

end.
