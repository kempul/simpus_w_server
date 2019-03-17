unit bulanDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvCombobox,
  Vcl.Mask, JvExMask, JvSpin, Vcl.Buttons;

type
  TForm1_bulanDialog = class(TForm)
    editTahun: TJvSpinEdit;
    cbbBulan: TJvComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure awal;

  public
    { Public declarations }
  end;

var
  Form1_bulanDialog: TForm1_bulanDialog;

implementation

{$R *.dfm}
        uses System.DateUtils;
procedure TForm1_bulanDialog.awal;
var
  th, bl, tg : word;
begin

  DecodeDate(now, th, bl, tg);
  editTahun.AsInteger := th;
  cbbBulan.ItemIndex := bl -1;
end;

procedure TForm1_bulanDialog.FormShow(Sender: TObject);
begin
awal;
end;

end.
