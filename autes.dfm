object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 357
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp11: TGroupBox
    Left = 40
    Top = 8
    Width = 329
    Height = 225
    Caption = 'Pemeriksaan Fisik'
    TabOrder = 0
    object lbl111: TLabel
      Left = 16
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Kesadaran'
    end
    object lbl112: TLabel
      Left = 16
      Top = 48
      Width = 61
      Height = 13
      Caption = 'Tinggi Badan'
    end
    object lbl113: TLabel
      Left = 16
      Top = 69
      Width = 59
      Height = 13
      Caption = 'Berat Badan'
    end
    object lbl114: TLabel
      Left = 16
      Top = 92
      Width = 86
      Height = 13
      Caption = 'Tekanan Darah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl115: TLabel
      Left = 16
      Top = 113
      Width = 38
      Height = 13
      Caption = '- Sistole'
    end
    object lbl116: TLabel
      Left = 16
      Top = 134
      Width = 45
      Height = 13
      Caption = '- Diastole'
    end
    object lbl117: TLabel
      Left = 16
      Top = 161
      Width = 82
      Height = 13
      Caption = 'Respiratory Rate'
    end
    object lbl118: TLabel
      Left = 16
      Top = 182
      Width = 53
      Height = 13
      Caption = 'Heart Rate'
    end
    object lbl121: TLabel
      Left = 240
      Top = 48
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object lbl122: TLabel
      Left = 240
      Top = 69
      Width = 11
      Height = 13
      Caption = 'kg'
    end
    object lbl123: TLabel
      Left = 248
      Top = 112
      Width = 29
      Height = 13
      Caption = 'mmHg'
    end
    object lbl124: TLabel
      Left = 248
      Top = 134
      Width = 29
      Height = 13
      Caption = 'mmHg'
    end
    object lbl125: TLabel
      Left = 248
      Top = 161
      Width = 51
      Height = 13
      Caption = 'per minute'
    end
    object lbl127: TLabel
      Left = 248
      Top = 182
      Width = 20
      Height = 13
      Caption = 'bpm'
    end
    object cbbKesadaran: TComboBoxEx
      Left = 113
      Top = 18
      Width = 145
      Height = 22
      ItemsEx = <>
      ItemHeight = 16
      TabOrder = 0
      Text = 'cbbKesadaran'
    end
    object editTB: TJvCalcEdit
      Left = 113
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object editBB: TJvCalcEdit
      Left = 113
      Top = 65
      Width = 121
      Height = 21
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object editSistol: TJvCalcEdit
      Left = 113
      Top = 109
      Width = 121
      Height = 21
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object editDiastol: TJvCalcEdit
      Left = 113
      Top = 130
      Width = 121
      Height = 21
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object editNafas: TJvCalcEdit
      Left = 113
      Top = 157
      Width = 121
      Height = 21
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
    end
    object editHati: TJvCalcEdit
      Left = 113
      Top = 178
      Width = 121
      Height = 21
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
    end
  end
end
