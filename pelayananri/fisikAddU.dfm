object Form1_fisikAdd: TForm1_fisikAdd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1_fisikAdd'
  ClientHeight = 293
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
  object grpFisik: TGroupBox
    Left = 0
    Top = 0
    Width = 457
    Height = 294
    Align = alTop
    Caption = 'Pemeriksaan Fisik'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object labellbl111: TLabel
      Left = 16
      Top = 59
      Width = 60
      Height = 16
      Caption = 'Kesadaran'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl112: TLabel
      Left = 16
      Top = 83
      Width = 74
      Height = 16
      Caption = 'Tinggi Badan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl113: TLabel
      Left = 16
      Top = 104
      Width = 69
      Height = 16
      Caption = 'Berat Badan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl114: TLabel
      Left = 16
      Top = 127
      Width = 73
      Height = 13
      Caption = 'Tekanan Darah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl115: TLabel
      Left = 16
      Top = 148
      Width = 47
      Height = 16
      Caption = '- Sistole'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl116: TLabel
      Left = 16
      Top = 169
      Width = 54
      Height = 16
      Caption = '- Diastole'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl117: TLabel
      Left = 16
      Top = 196
      Width = 95
      Height = 16
      Caption = 'Respiratory Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl118: TLabel
      Left = 16
      Top = 217
      Width = 61
      Height = 16
      Caption = 'Heart Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl121: TLabel
      Left = 240
      Top = 83
      Width = 17
      Height = 16
      Caption = 'cm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl122: TLabel
      Left = 240
      Top = 104
      Width = 13
      Height = 16
      Caption = 'kg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl123: TLabel
      Left = 248
      Top = 147
      Width = 37
      Height = 16
      Caption = 'mmHg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl124: TLabel
      Left = 248
      Top = 169
      Width = 37
      Height = 16
      Caption = 'mmHg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl125: TLabel
      Left = 248
      Top = 196
      Width = 62
      Height = 16
      Caption = 'per minute'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl127: TLabel
      Left = 248
      Top = 217
      Width = 25
      Height = 16
      Caption = 'bpm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl6: TLabel
      Left = 16
      Top = 27
      Width = 44
      Height = 16
      Caption = 'keluhan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object editTB: TJvCalcEdit
      Left = 113
      Top = 79
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editTBKeyPress
    end
    object editBB: TJvCalcEdit
      Left = 113
      Top = 100
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editBBKeyPress
    end
    object editSistol: TJvCalcEdit
      Left = 113
      Top = 144
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editSistolKeyPress
    end
    object editDiastol: TJvCalcEdit
      Left = 113
      Top = 165
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editDiastolKeyPress
    end
    object editNafas: TJvCalcEdit
      Left = 113
      Top = 192
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editNafasKeyPress
    end
    object editHati: TJvCalcEdit
      Left = 113
      Top = 213
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 7
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editHatiKeyPress
    end
    object panel6: TPanel
      Left = 2
      Top = 248
      Width = 453
      Height = 44
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'panel5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object labelIdxstr: TLabel
        Left = 34
        Top = 20
        Width = 59
        Height = 16
        Caption = 'labelIdxstr'
      end
      object btn1FisikBatal: TButton
        Left = 192
        Top = 12
        Width = 106
        Height = 25
        Caption = 'batal'
        TabOrder = 1
        OnClick = btn1FisikBatalClick
      end
      object btn1FisikSimpan: TButton
        Left = 304
        Top = 12
        Width = 106
        Height = 25
        Caption = 'simpan data fisik'
        TabOrder = 0
        OnClick = btn1FisikSimpanClick
      end
    end
    object cbbKesadaran: TComboBox
      Left = 113
      Top = 53
      Width = 145
      Height = 24
      AutoDropDown = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = cbbKesadaranKeyPress
    end
    object edit1Keluhan: TJvEdit
      Left = 113
      Top = 23
      Width = 317
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnKeyPress = edit1KeluhanKeyPress
    end
  end
end
