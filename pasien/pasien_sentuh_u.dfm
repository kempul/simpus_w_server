object Form1_sentuhPasien: TForm1_sentuhPasien
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'tampilkan Pasien'
  ClientHeight = 130
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object labelEdit1: TLabeledEdit
    Left = 40
    Top = 40
    Width = 305
    Height = 21
    EditLabel.Width = 304
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama Pasien atau Nama KK atau Nama Ayah Mengandung Kata'
    TabOrder = 0
  end
  object btn1: TBitBtn
    Left = 254
    Top = 80
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object btn2: TBitBtn
    Left = 173
    Top = 80
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
end
