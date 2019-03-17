unit pustuKesakitanInsertU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DBCtrls,
  JvDBControls, GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvSplit, JvComponentBase, JvFormPlacement,
  DynVarsEh;

type
  TForm1_pusKesakitanInsert = class(TForm)
    panel3: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    dbgrid1: TDBGridEh;
    panelU: TPanel;
    panelU1: TPanel;
    panelU2: TPanel;
    splitter1: TJvxSplitter;
    dbgrid2: TDBGridEh;
    dbnav2: TJvDBNavigator;
    lbl1: TLabel;
    lbl2: TLabel;
    formStorage1: TJvFormStorage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrid2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1_pusKesakitanInsert: TForm1_pusKesakitanInsert;

implementation

uses
  dmpustu, aau111;

{$R *.dfm}

procedure TForm1_pusKesakitanInsert.dbgrid2Exit(Sender: TObject);
begin
if dataPustu.q_pustuKesakitanPV.Modified then dataPustu.q_pustuKesakitanPV.Post;

end;

procedure TForm1_pusKesakitanInsert.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dbgrid1.SaveColumnsLayoutIni(form111.MyIni, name, true);
dbgrid2.SaveColumnsLayoutIni(form111.MyIni, name, false);

end;

procedure TForm1_pusKesakitanInsert.FormShow(Sender: TObject);
begin
dbgrid1.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
dbgrid2.RestoreColumnsLayoutIni(form111.MyIni, name, [crpColWidthsEh]);
dataPustu.q_pustuKesakitanPV0.Close;
dataPustu.q_pustuKesakitanPv0.Open;
dataPustu.q_pustuKesakitanPV.Close;
dataPustu.q_pustuKesakitanPv.Open;
end;

end.
