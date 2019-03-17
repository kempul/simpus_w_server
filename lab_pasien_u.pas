unit lab_pasien_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBCtrls, JvDBControls,
  ComCtrls, JvExComCtrls, JvDateTimePicker, EhLibVCL;

type
  TForm1_labPasien = class(TForm)
    panel3: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grid1: TDBGridEh;
    panel7: TPanel;
    dbtxt1: TDBText;
    dbtxtNama: TDBText;
    panel2: TPanel;
    dbnav1: TJvDBNavigator;
    checkBPJS: TCheckBox;
    panel4: TPanel;
    dtp1: TJvDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure simpan_permohonan_lab;
  public
    { Public declarations }
  end;

var
  Form1_labPasien: TForm1_labPasien;

implementation
    uses dmpelayanan, aau111;
{$R *.dfm}

procedure TForm1_labPasien.btnOKClick(Sender: TObject);
begin
{
try
if dataPelayanan.uqLab.Modified then dataPelayanan.uqLab.Post;
finally
simpan_permohonan_lab;
end;
}
end;

procedure TForm1_labPasien.FormClose(Sender: TObject; var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

end;

procedure TForm1_labPasien.FormShow(Sender: TObject);
begin
{
with dataPelayanan do
begin
  uqLab.Close;
  uqLab.Open;
end;
}
end;

procedure TForm1_labPasien.simpan_permohonan_lab;
begin
{
with dataPelayanan do
begin
  unspLab_dari_pv.Prepare;
  unspLab_dari_Pv.ParamByName('ip_tanggal').AsDate := uqLab.FieldByName('tanggal').AsDateTime;
  unspLab_dari_Pv.ParamByName('ip_nomor').AsInteger := uqLab.FieldByName('nomor').AsInteger;
  unspLab_dari_Pv.ParamByName('ip_bpjs').AsBoolean := checkBPJS.Checked;
  unspLab_dari_Pv.ParamByName('ip_tgl_pelayanan').AsDate :=  dtp1.Date;
  unspLab_dari_Pv.ExecProc;
end;
}
end;

end.
