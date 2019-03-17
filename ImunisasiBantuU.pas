unit ImunisasiBantuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  ExtCtrls, DBCtrls, JvDBControls, EhLibVCL;

type
  TForm1_ImunisasiBantu = class(TForm)
    panel2: TPanel;
    btn2: TBitBtn;
    btn1: TBitBtn;
    grpImunisasi: TGroupBox;
    grideh1: TDBGridEh;
    dbnav1: TJvDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure isi_combo(aCombo : TComboBox; aQuery, aField : string);
    procedure kosongkan_poned;
  public
    { Public declarations }
  end;

var
  Form1_ImunisasiBantu: TForm1_ImunisasiBantu;

implementation

uses dmpelayanan, aau111;

{$R *.dfm}

{ TForm1_ponedBantu }

procedure TForm1_ImunisasiBantu.btn1Click(Sender: TObject);
begin
{
if dataPelayanan.uqImunisasi_pv.Modified then dataPelayanan.uqImunisasi_pv.Post;

gridEh1.SaveColumnsLayoutIni(form111.MyIni, name, true);
}
end;

procedure TForm1_ImunisasiBantu.FormShow(Sender: TObject);
begin
gridEh1.RestoreColumnsLayoutIni(Form111.MyIni, name, [crpColWidthsEh]);
kosongkan_poned;
end;

procedure TForm1_ImunisasiBantu.isi_combo(aCombo: TComboBox; aQuery,
  aField: string);
begin
aCombo.Clear;
with dataPelayanan do
begin
  fdQueryBuka.Close;
  fdQueryBuka.SQL.Clear;
  fdQueryBuka.SQL.Add(aQuery);
  fdQueryBuka.Open;

  while not fdQueryBuka.Eof do
  begin
    aCombo.Items.Add(fdQueryBuka.FieldByName(aField).AsString);
    fdQueryBuka.Next;
  end;
  fdQueryBuka.Close;
  aCombo.ItemIndex := 0;
end;


end;

procedure TForm1_ImunisasiBantu.kosongkan_poned;
begin
end;

end.
