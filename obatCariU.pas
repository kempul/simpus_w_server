unit obatCariU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, Buttons, JvBaseDlg,
  JvProgressDialog, ComCtrls, JvExComCtrls, JvComCtrls, EhLibVCL;

type
  TForm1_obatCari = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    grid1: TDBGridEh;
    label2: TLabel;
    edit2: TEdit;
    btn1: TButton;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TButton;
    pb1: TJvProgressDialog;
    pageControl1: TJvPageControl;
    ts1: TTabSheet;
    memoResponse: TMemo;
    ts2: TTabSheet;
    memoData: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_obatCari: TForm1_obatCari;

implementation
        uses dmpelayanan, obatCaridiPcareU;
{$R *.dfm}

procedure TForm1_obatCari.btn1Click(Sender: TObject);
begin
{
with dataPelayanan do
begin
  uniQObatCari.Close;
  uniQObatCari.Prepare;
  uniQObatCari.ParamByName('paramobat').AsString := '%' + edit2.Text + '%';
  uniQObatCari.Open;
end;
}
end;

procedure TForm1_obatCari.btn4Click(Sender: TObject);
begin
{
Form1_obatCariDiPCARE.ShowModal;
if Form1_obatCariDiPCARE.ModalResult = mrOK then
begin
try
   pb1.Show;
   edit2.Text := Form1_obatCariDiPCARE.labelEdit1.Text;
   ABridge := TBridge.create;
   try
   pb1.Position := pb1.Position + pb1.Interval;
   ABridge.get_obat(memoResponse.Lines, Form1_obatCariDiPCARE.labelEdit1.Text);
   ABridge.ambil_list_obat(memoData.Lines, Form1_obatCariDiPCARE.labelEdit1.Text);
   finally
     ABridge.Free;
   end;
   pb1.Hide;
finally
buka_data;
grid1.SetFocus;
end;
end;
}
end;

procedure TForm1_obatCari.buka_data;
begin
{
with dataPelayanan do
begin
  uniQObatCari.Close;
  uniQObatCari.Prepare;
  uniQObatCari.ParamByName('paramobat').AsString := '%' + edit2.Text + '%';
  uniQObatCari.Open;
end;
}
end;

procedure TForm1_obatCari.edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then btn1.Click;

end;

end.
