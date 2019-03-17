unit pembuka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, JvExExtCtrls, JvImage, JvExControls,
  JvgLabel, JvLabel, JvGIF;

type
  TForm1_pembuka = class(TForm)
    JvImage1: TJvImage;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_pembuka: TForm1_pembuka;

implementation

uses aau111;

{$R *.dfm}

procedure TForm1_pembuka.FormShow(Sender: TObject);
begin
jvLabel1.Caption := form111.institusiR;
jvLabel2.Caption := form111.alamatR;
end;

end.
