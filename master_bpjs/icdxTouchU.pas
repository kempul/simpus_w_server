unit icdxTouchU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1_icdxTouch = class(TForm)
    btn2: TBitBtn;
    btn1: TBitBtn;
    labelDiagnosa: TLabel;
    editDiagnosa: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_icdxTouch: TForm1_icdxTouch;

implementation

{$R *.dfm}

procedure TForm1_icdxTouch.FormShow(Sender: TObject);
begin
  editDiagnosa.Clear;
  editDiagnosa.SetFocus;
end;

end.
