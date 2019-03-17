unit kk_cari_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, Buttons, EhLibVCL;

type
  TForm1_kkCari = class(TForm)
    panel2: TPanel;
    panel3: TPanel;
    grid1: TDBGridEh;
    lbl1: TLabel;
    editparam: TEdit;
    btn1: TButton;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editparamKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_kkCari: TForm1_kkCari;

implementation

uses
  dmKunjungan, aau111;

{$R *.dfm}

procedure TForm1_kkCari.btn1Click(Sender: TObject);
begin
{
with dataKunjungan do
begin

  uqKKcari.Close;
  uqKKcari.ParamByName('paramku').AsString := '%' + editparam.text + '%';
  uqKKcari.Open;
end;
}
end;

procedure TForm1_kkCari.editparamKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then btn1.Click;

end;

procedure TForm1_kkCari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
grid1.SaveColumnsLayoutIni(form111.MyIni, name, true);

end;

procedure TForm1_kkCari.FormShow(Sender: TObject);
begin
   grid1.RestoreColumnsLayoutIni(form111.MyIni, Name, [crpColWidthsEh]);
   editparam.Clear;
   editparam.SetFocus;
end;

procedure TForm1_kkCari.grid1DblClick(Sender: TObject);
begin
btnOK.Click;
end;

end.
