object Form1_diagnosaAdd: TForm1_diagnosaAdd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1_diagnosaAdd'
  ClientHeight = 256
  ClientWidth = 464
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
  object grp2: TGroupBox
    Left = 0
    Top = 0
    Width = 464
    Height = 215
    Align = alClient
    Caption = 'Tindakan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object labellbl2: TLabel
      Left = 6
      Top = 47
      Width = 52
      Height = 16
      Caption = 'Diagnosa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl3: TLabel
      Left = 6
      Top = 110
      Width = 37
      Height = 16
      Caption = 'Terapi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labellbl4: TLabel
      Left = 6
      Top = 151
      Width = 80
      Height = 16
      Caption = 'Tenaga Medis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1ICDXCari: TSpeedButton
      Left = 191
      Top = 48
      Width = 26
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn1ICDXCariClick
    end
    object labellbl1: TLabel
      Left = 6
      Top = 22
      Width = 46
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object memoTindakan: TJvMemo
      Left = 119
      Top = 94
      Width = 312
      Height = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'memoDiagnosa')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object cbbDokter: TJvComboBox
      Left = 119
      Top = 147
      Width = 145
      Height = 24
      AutoDropDown = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'cbbDokter'
    end
    object txt1: TStaticText
      Left = 122
      Top = 72
      Width = 25
      Height = 20
      Caption = 'txt1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object editICDX: TEdit
      Left = 119
      Top = 47
      Width = 66
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'EDITICDX'
      OnChange = editICDXChange
      OnExit = editICDXExit
      OnKeyPress = editICDXKeyPress
    end
    object dtpTindakan: TJvDateTimePicker
      Left = 119
      Top = 22
      Width = 98
      Height = 24
      Date = 42679.510039317130000000
      Time = 42679.510039317130000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DropDownDate = 42679.000000000000000000
    end
    object dtpTindakanJam: TJvDateTimePicker
      Left = 223
      Top = 22
      Width = 82
      Height = 24
      Date = 42679.510039317130000000
      Time = 42679.510039317130000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
      DropDownDate = 42679.000000000000000000
    end
    object checkKasusBaru: TCheckBox
      Left = 223
      Top = 50
      Width = 127
      Height = 17
      Caption = 'adl Kasus Baru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 215
    Width = 464
    Height = 41
    Align = alBottom
    Caption = 'panel2'
    TabOrder = 1
    object labelIdxstr: TLabel
      Left = 30
      Top = 16
      Width = 51
      Height = 13
      Caption = 'labelIdxstr'
    end
    object btn1Batal: TButton
      Left = 191
      Top = 9
      Width = 106
      Height = 25
      Caption = 'batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1BatalClick
    end
    object btn1Simpan: TButton
      Left = 306
      Top = 9
      Width = 106
      Height = 25
      Caption = 'simpan tindakan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn1SimpanClick
    end
    object chk1NonSpesialis: TJvCheckBox
      Left = 83
      Top = 16
      Width = 102
      Height = 17
      Caption = 'chk1NonSpesialis'
      TabOrder = 2
      Visible = False
      LinkedControls = <>
    end
  end
end