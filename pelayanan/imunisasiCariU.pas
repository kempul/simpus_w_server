unit imunisasiCariU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1_ImunisasiCari = class(TForm)
    panel2: TPanel;
    grid1: TDBGridEh;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    panel3: TPanel;
    labelKode: TLabel;
    labelText: TLabel;
    procedure grid1DblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_ImunisasiCari: TForm1_ImunisasiCari;

implementation

uses
  dmpelayanan;

{$R *.dfm}

procedure TForm1_ImunisasiCari.btnOkClick(Sender: TObject);
begin
labelKode.Caption := dataPelayanan.fdQueryMImunisasiCari.FieldByName('idx').AsString;
labelText.Caption := dataPelayanan.fdQueryMImunisasiCari.FieldByName('vaksin').AsString;
end;

procedure TForm1_ImunisasiCari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dataPelayanan.fdQueryMImunisasiCari.Close;
end;

procedure TForm1_ImunisasiCari.FormShow(Sender: TObject);
begin
dataPelayanan.fdQueryMImunisasiCari.Active := True;
grid1.SetFocus;
end;

procedure TForm1_ImunisasiCari.grid1DblClick(Sender: TObject);
begin
btnOk.Click;
end;

end.
