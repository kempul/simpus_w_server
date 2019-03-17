unit obatCaridiPcareU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1_obatCariDiPCARE = class(TForm)
    labelEdit1: TLabeledEdit;
    btn2: TBitBtn;
    btn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_obatCariDiPCARE: TForm1_obatCariDiPCARE;

implementation

{$R *.dfm}

procedure TForm1_obatCariDiPCARE.FormShow(Sender: TObject);
begin
labelEdit1.SetFocus;
end;

end.
