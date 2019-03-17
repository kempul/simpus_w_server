object Form1_gigiBantu: TForm1_gigiBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Tambahan Tindakan GIGI Pada Pasien'
  ClientHeight = 171
  ClientWidth = 429
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
  object lblJenis: TLabel
    Left = 40
    Top = 130
    Width = 41
    Height = 16
    Caption = 'lblJenis'
  end
  object lblJenisDetil: TLabel
    Left = 104
    Top = 130
    Width = 66
    Height = 16
    Caption = 'lblJenisDetil'
  end
  object grp1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 423
    Height = 102
    Align = alTop
    Caption = 'Tindakan Gigi'
    TabOrder = 0
    object lbl13: TLabel
      Left = 27
      Top = 36
      Width = 79
      Height = 16
      Caption = 'jenis tindakan'
    end
    object lbl14: TLabel
      Left = 27
      Top = 63
      Width = 107
      Height = 16
      Caption = 'detil jenis tindakan'
    end
    object cbbTindakanGigi0: TJvComboBox
      Left = 151
      Top = 33
      Width = 233
      Height = 24
      AutoDropDown = True
      TabOrder = 0
      Text = 'cbbTindakanGigi0'
      OnChange = cbbTindakanGigi0Change
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object cbbTindakanGigi1: TJvComboBox
      Left = 151
      Top = 60
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
  object btn1: TBitBtn
    Left = 312
    Top = 120
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 231
    Top = 120
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
