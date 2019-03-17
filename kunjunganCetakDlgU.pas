unit kunjunganCetakDlgU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, JvExComCtrls, JvDateTimePicker;

type
  TForm1_kunjunganCetakDlg = class(TForm)
    lbl1: TLabel;
    dtPicker1: TJvDateTimePicker;
    lbl2: TLabel;
    dtPicker2: TJvDateTimePicker;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure dtPicker1Change(Sender: TObject);
    procedure dtPicker2Change(Sender: TObject);
  private
    { Private declarations }
    procedure awal;
  public
    { Public declarations }
  end;

var
  Form1_kunjunganCetakDlg: TForm1_kunjunganCetakDlg;

implementation

{$R *.dfm}

{ TForm1_kunjunganCetakDlg }

procedure TForm1_kunjunganCetakDlg.awal;
begin
dtPicker1.DateTime := Now;
dtPicker2.DateTime := Now;
dtPicker1.SetFocus;
end;

procedure TForm1_kunjunganCetakDlg.dtPicker1Change(Sender: TObject);
begin
if dtPicker1.DateTime > dtPicker2.DateTime then dtPicker2.DateTime := dtPicker1.DateTime;

end;

procedure TForm1_kunjunganCetakDlg.dtPicker2Change(Sender: TObject);
begin
if dtPicker2.DateTime < dtPicker1.DateTime then dtPicker1.DateTime := dtPicker2.DateTime;

end;

end.
