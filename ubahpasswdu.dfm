object Form1_ubahPasswd: TForm1_ubahPasswd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ubah Password'
  ClientHeight = 171
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 84
    Top = 20
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'password lama'
    Transparent = True
  end
  object JvLabel2: TJvLabel
    Left = 83
    Top = 71
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'password baru'
    Transparent = True
  end
  object JvLabel3: TJvLabel
    Left = 21
    Top = 94
    Width = 135
    Height = 13
    Alignment = taRightJustify
    Caption = 'password  baru (konfirmasi)'
    Transparent = True
  end
  object JvBevel1: TJvBevel
    Left = 21
    Top = 43
    Width = 351
    Height = 18
    Shape = bsTopLine
    Edges = [beTop]
    Inner = bvRaised
  end
  object labelPemakai: TJvLabel
    Left = 64
    Top = 122
    Width = 24
    Height = 13
    Caption = 'label'
    Transparent = True
    Visible = False
  end
  object JvEdit1: TJvEdit
    Left = 188
    Top = 16
    Width = 185
    Height = 21
    PasswordChar = '@'
    TabOrder = 0
    Text = 'JvEdit1'
  end
  object JvEdit2: TJvEdit
    Left = 187
    Top = 67
    Width = 185
    Height = 21
    PasswordChar = '@'
    TabOrder = 1
    Text = 'JvEdit1'
  end
  object JvEdit3: TJvEdit
    Left = 187
    Top = 90
    Width = 185
    Height = 21
    PasswordChar = '@'
    TabOrder = 2
    Text = 'JvEdit1'
  end
  object JvImgBtn1: TJvImgBtn
    Left = 297
    Top = 122
    Width = 75
    Height = 25
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = JvImgBtn1Click
    Kind = bkOK
  end
  object JvImgBtn2: TJvImgBtn
    Left = 216
    Top = 122
    Width = 75
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 4
    Kind = bkCancel
  end
  object JvCheckBox1: TJvCheckBox
    Left = 21
    Top = 126
    Width = 123
    Height = 17
    Caption = 'perlihatkan password'
    TabOrder = 5
    OnClick = JvCheckBox1Click
    LinkedControls = <>
  end
  object JvTimer1: TJvTimer
    Enabled = False
    OnTimer = JvTimer1Timer
    Left = 208
    Top = 88
  end
end
