object Form1_ponedBantu: TForm1_ponedBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PONED'
  ClientHeight = 191
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object grp2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 391
    Height = 126
    Align = alTop
    Caption = 'PONED'
    TabOrder = 0
    object lbl25: TLabel
      Left = 27
      Top = 50
      Width = 79
      Height = 16
      Caption = 'jenis tindakan'
    end
    object lbl26: TLabel
      Left = 27
      Top = 77
      Width = 107
      Height = 16
      Caption = 'detil jenis tindakan'
    end
    object cbbPonedKlp: TJvComboBox
      Left = 151
      Top = 47
      Width = 233
      Height = 24
      AutoDropDown = True
      TabOrder = 0
      Text = 'cbbTindakanGigi0'
      OnChange = cbbPonedKlpChange
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object cbbPonedPenyakit: TJvComboBox
      Left = 151
      Top = 74
      Width = 233
      Height = 24
      AutoDropDown = True
      TabOrder = 1
      Text = 'cbbTindakanGigi0'
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 132
    Width = 397
    Height = 59
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object btn2: TBitBtn
      Left = 194
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object btn1: TBitBtn
      Left = 288
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
