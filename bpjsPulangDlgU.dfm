object Form1_bpjsPulangDlg: TForm1_bpjsPulangDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ambil Status Pulang'
  ClientHeight = 174
  ClientWidth = 211
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
  object rg1: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 205
    Height = 105
    Align = alTop
    Caption = 'Status Pulang'
    ItemIndex = 0
    Items.Strings = (
      'Rawat Inap'
      'Rawat Jalan')
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 16
    ExplicitWidth = 361
  end
  object btn1: TBitBtn
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object btn2: TBitBtn
    Left = 47
    Top = 128
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
end
