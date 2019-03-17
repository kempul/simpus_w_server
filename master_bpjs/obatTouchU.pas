unit obatTouchU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1_obatTouch = class(TForm)
    btn2: TBitBtn;
    btn1: TBitBtn;
    labelDiagnosa: TLabel;
    editDiagnosa: TEdit;
    procedure FormShow(Sender: TObject);
    procedure editDiagnosaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_obatTouch: TForm1_obatTouch;

implementation

{$R *.dfm}

procedure TForm1_obatTouch.editDiagnosaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = chr(13) then btn1.Click;

end;

procedure TForm1_obatTouch.FormShow(Sender: TObject);
begin
editDiagnosa.Clear;
editDiagnosa.SetFocus;
end;

end.
