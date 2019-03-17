object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'cetak data kunjungan'
  ClientHeight = 164
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object radioGroup1: TJvRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 303
    Height = 105
    Align = alTop
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'puskesmas'
      'puskesmas plus pustu')
    TabOrder = 0
    CaptionVisible = True
    ExplicitLeft = 40
    ExplicitTop = 16
    ExplicitWidth = 345
  end
  object btn1: TBitBtn
    Left = 216
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object btn2: TBitBtn
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
end
