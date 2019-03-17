unit pasien_sentuh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1_sentuhPasien = class(TForm)
    labelEdit1: TLabeledEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_sentuhPasien: TForm1_sentuhPasien;

implementation

{$R *.dfm}

procedure TForm1_sentuhPasien.FormShow(Sender: TObject);
begin
labelEdit1.Clear;
labelEdit1.SetFocus;
end;

end.
