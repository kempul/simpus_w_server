object Form1_diagnosaDlg: TForm1_diagnosaDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Parameter ICD-X'
  ClientHeight = 172
  ClientWidth = 419
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
  object labelDiagnosa: TLabel
    Left = 32
    Top = 24
    Width = 50
    Height = 13
    Caption = 'Kata Kunci'
  end
  object labelStart: TLabel
    Left = 32
    Top = 51
    Width = 24
    Height = 13
    Caption = 'Mulai'
  end
  object labelLimit: TLabel
    Left = 32
    Top = 79
    Width = 41
    Height = 13
    Caption = 'Jml Data'
  end
  object editDiagnosa: TEdit
    Left = 128
    Top = 21
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'editDiagnosa'
    OnKeyPress = editDiagnosaKeyPress
  end
  object seStart: TSpinEdit
    Left = 128
    Top = 48
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
    OnKeyPress = seStartKeyPress
  end
  object seLimit: TSpinEdit
    Left = 128
    Top = 76
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnKeyPress = seLimitKeyPress
  end
  object btn1: TBitBtn
    Left = 310
    Top = 112
    Width = 75
    Height = 25
    Caption = 'OK'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 3
  end
  object btn2: TBitBtn
    Left = 216
    Top = 112
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
end
