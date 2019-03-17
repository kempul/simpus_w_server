unit obatDlgU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm1_obatDlg = class(TForm)
    labelDiagnosa: TLabel;
    editDiagnosa: TEdit;
    seStart: TSpinEdit;
    labelStart: TLabel;
    labelLimit: TLabel;
    seLimit: TSpinEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure editDiagnosaKeyPress(Sender: TObject; var Key: Char);
    procedure seStartKeyPress(Sender: TObject; var Key: Char);
    procedure seLimitKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_obatDlg: TForm1_obatDlg;

implementation

{$R *.dfm}

procedure TForm1_obatDlg.editDiagnosaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_obatDlg.FormShow(Sender: TObject);
begin
editDiagnosa.Clear;
seStart.Value := 0;
seLimit.Value := 10;
editDiagnosa.SetFocus;
end;

procedure TForm1_obatDlg.seLimitKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_obatDlg.seStartKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

end.
