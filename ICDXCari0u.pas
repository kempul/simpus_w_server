unit ICDXCari0u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, GridsEh, DBAxisGridsEh, DBGridEh, DynVarsEh;

type
  TForm1_ICDXCari0 = class(TForm)
    panel2: TPanel;
    btn1: TBitBtn;
    panel3: TPanel;
    grid1: TDBGridEh;
    btn2: TBitBtn;
    lblICDX: TLabel;
    lblPenyakit: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid1DblClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_ICDXCari0: TForm1_ICDXCari0;

implementation

uses
  aau111, dmpustu;

{$R *.dfm}

procedure TForm1_ICDXCari0.btn1Click(Sender: TObject);
begin
lblICDX.Caption := dataPustu.uniQICDXCari.FieldByName('kd_diag').AsString;
lblPenyakit.Caption := dataPustu.uniQICDXCari.FieldByName('nm_diag').AsString;
end;

procedure TForm1_ICDXCari0.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  grid1.SaveColumnsLayoutIni(Form111.MyIni, Name, True);
  dataPustu.uniQICDXCari.Close;
end;

procedure TForm1_ICDXCari0.FormShow(Sender: TObject);
begin
grid1.RestoreColumnsLayoutIni(Form111.MyIni, Name, [crpColWidthsEh]);
with dataPustu do
begin
  uniQICDXCari.Close;
  uniQICDXCari.Open;
end;
end;

procedure TForm1_ICDXCari0.grid1DblClick(Sender: TObject);
begin
btn1.Click;
end;

procedure TForm1_ICDXCari0.grid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
btn1.Click;
end;

end;

end.
