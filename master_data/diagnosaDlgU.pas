unit diagnosaDlgU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm1_diagnosaDlg = class(TForm)
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
  Form1_diagnosaDlg: TForm1_diagnosaDlg;

implementation

{$R *.dfm}

procedure TForm1_diagnosaDlg.editDiagnosaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_diagnosaDlg.FormShow(Sender: TObject);
begin
editDiagnosa.Clear;
seStart.Value := 0;
seLimit.Value := 10;
if editDiagnosa.Visible then editDiagnosa.SetFocus else seStart.SetFocus;
end;

procedure TForm1_diagnosaDlg.seLimitKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

procedure TForm1_diagnosaDlg.seStartKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then SelectNext(TWinControl(Sender), True, True);

end;

end.
