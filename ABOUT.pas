unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, JvExControls, JvgLabel, jpeg, JvPoweredBy, JvExExtCtrls,
  JvExtComponent, JvPanel, JvFormWallpaper, JvGIF, pngimage, frxClass;

type
  TAboutBox = class(TForm)
    OKButton: TButton;
    JvFormWallpaper1: TJvFormWallpaper;
    Panel1: TJvPanel;
    ProgramIcon: TImage;
    Copyright: TLabel;
    Label1: TLabel;
    JvgLabel1: TJvgLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses aau111, aaaliCrypt;

{$R *.dfm}

procedure TAboutBox.FormShow(Sender: TObject);
begin

Label2.Caption:='versi :'+#13+form111.storageUmum.StoredValue['versi'];
Label3.Caption:='Hak Pakai :'+#13+form111.institusiR+#13+generateSerialNumber(form111.institusiR);
end;

end.
 
