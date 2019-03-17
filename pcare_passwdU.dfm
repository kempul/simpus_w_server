object Form1_passwdPcare: TForm1_passwdPcare
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ganti Password PCare'
  ClientHeight = 101
  ClientWidth = 457
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
    Left = 36
    Top = 29
    Width = 153
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Password PCare'
    TabOrder = 0
  end
  object btn1: TBitBtn
    Left = 317
    Top = 27
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 235
    Top = 27
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
