unit icdx_edit_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, GridsEh, DBAxisGridsEh, DBGridEh, DynVarsEh, DBCtrls,
  JvExStdCtrls, JvRichEdit, JvDBRichEdit, JvExExtCtrls, JvExtComponent, JvSplit,
  JvBaseDlg, JvProgressDialog, EhLibVCL;

type

  TForm1_ICDXedit = class(TForm)
    panel2: TPanel;
    btn1: TBitBtn;
    panel3: TPanel;
    grid1: TDBGridEh;
    btn2: TBitBtn;
    lblICDX: TLabel;
    lblPenyakit: TLabel;
    panelU: TPanel;
    splitter1: TJvxSplitter;
    lbl1: TLabel;
    lbl2: TLabel;
    panel2Cari: TPanel;
    label2: TLabel;
    edit2: TEdit;
    btn5: TButton;
    btn4: TButton;
    pb1: TJvProgressDialog;
    panel4: TPanel;
    memoData: TMemo;
    memoResponse: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid1DblClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    procedure buka_data;
  public
    { Public declarations }
  end;

var
  Form1_ICDXedit: TForm1_ICDXedit;

implementation

uses
  dmpelayanan, aau111, icdxCaridiPcareU;

{$R *.dfm}

procedure TForm1_ICDXedit.btn1Click(Sender: TObject);
begin
{
lblICDX.Caption := dataPelayanan.qICDXCari.FieldByName('kd_diag').AsString;
lblPenyakit.Caption := dataPelayanan.qICDXCari.FieldByName('nm_diag').AsString;
}
end;

procedure TForm1_ICDXedit.btn4Click(Sender: TObject);
begin
{
Form1_icdxCariDiPCARE.ShowModal;
if Form1_icdxCariDiPCARE.ModalResult = mrOK then
begin
try
   edit2.Text := Form1_icdxCariDiPCARE.labelEdit1.Text;
   pb1.Show;
   ABridge := TBridge.create;
   try
   pb1.Position := pb1.Position + pb1.Interval;
   ABridge.get_diagnosa(memoResponse.Lines, Form1_icdxCariDiPCARE.labelEdit1.Text);
   ABridge.ambil_list_diagnosa(memoData.Lines, Form1_icdxCariDiPCARE.labelEdit1.Text);
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

procedure TForm1_ICDXedit.btn5Click(Sender: TObject);
begin
buka_data;
end;

procedure TForm1_ICDXedit.buka_data;
begin
{
with dataPelayanan do
begin
  qICDXCari.Close;
  qICDXCari.Prepare;
  qICDXCari.ParamByName('paramicdx').AsString := '%' + edit2.Text + '%';
  qICDXCari.Open;
end;
}
end;

procedure TForm1_ICDXedit.edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = Chr(13) then btn5.Click;

end;

procedure TForm1_ICDXedit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  grid1.SaveColumnsLayoutIni(Form111.MyIni, Name, True);
//  dataPelayanan.qICDXCari.Close;
end;

procedure TForm1_ICDXedit.FormShow(Sender: TObject);
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
end;

procedure TForm1_ICDXedit.grid1DblClick(Sender: TObject);
begin
btn1.Click;
end;

procedure TForm1_ICDXedit.grid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
btn1.Click;
end;

end;

end.
