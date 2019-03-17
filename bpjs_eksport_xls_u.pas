unit bpjs_eksport_xls_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Spin, JvDialogs, EhLibVCL;

type
  TForm1_bpjsEkxportXLS = class(TForm)
    panel2: TPanel;
    btn1: TButton;
    grid1: TDBGridEh;
    se1: TSpinEdit;
    se2: TSpinEdit;
    saveDlg1: TFileSaveDialog;
    saveDlg2: TJvSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_bpjsEkxportXLS: TForm1_bpjsEkxportXLS;

implementation
     uses frxu, DBGridEhImpExp;
{$R *.dfm}

{ TForm1_bpjsEkxportXLS }

procedure TForm1_bpjsEkxportXLS.btn1Click(Sender: TObject);
begin
if saveDlg1.Execute then
begin
DBGridEhImpExp.SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grid1, saveDlg1.FileName, true);
end;
end;

procedure TForm1_bpjsEkxportXLS.buka_data;
begin
{with Form1_frx do
begin
  uniQbpjs_eksport.Close;
  uniQbpjs_eksport.ParamByName('tahun').AsInteger := se1.Value;
  uniQbpjs_eksport.ParamByName('bulan').AsInteger := se2.Value;
  uniQbpjs_eksport.Open;
end;
}
end;

procedure TForm1_bpjsEkxportXLS.FormShow(Sender: TObject);
begin
buka_data;
end;

end.
