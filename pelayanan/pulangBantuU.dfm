object Form1_pulangBantu: TForm1_pulangBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Tambahan Pasien Pulang'
  ClientHeight = 364
  ClientWidth = 407
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
  object grp1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 401
    Height = 94
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 54
      Width = 76
      Height = 16
      Caption = 'status pulang'
    end
    object lblPulang: TLabel
      Left = 6
      Top = 25
      Width = 88
      Height = 16
      Caption = 'Tanggal Pulang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbbSebabPulang: TJvComboBox
      Left = 152
      Top = 51
      Width = 220
      Height = 24
      AutoDropDown = True
      TabOrder = 1
      Text = 'cbbInstalasi'
      OnChange = cbbSebabPulangChange
      Items.Strings = (
        'RAWAT JALAN'
        'RAWAT INAP'
        'GAWAT DARURAT')
    end
    object dtpPulang: TJvDateTimePicker
      Left = 152
      Top = 21
      Width = 103
      Height = 24
      Date = 41914.741393113430000000
      Time = 41914.741393113430000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DropDownDate = 41914.000000000000000000
    end
    object dtpPulangJam: TJvDateTimePicker
      Left = 269
      Top = 21
      Width = 89
      Height = 24
      Date = 41914.778203923610000000
      Time = 41914.778203923610000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 2
      DropDownDate = 41914.000000000000000000
    end
  end
  object pgc1: TJvPageControl
    Left = 0
    Top = 100
    Width = 407
    Height = 193
    ActivePage = ts2
    Align = alClient
    TabOrder = 1
    HideAllTabs = True
    object ts2: TTabSheet
      Caption = 'ts2'
      ImageIndex = 1
      object grpPulangDirujuk: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 393
        Height = 156
        Align = alClient
        Caption = 'detil pulang dirujuk ke'
        TabOrder = 0
        object lblRS: TLabel
          Left = 3
          Top = 26
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'Rumah Sakit'
        end
        object lblPoli: TLabel
          Left = 61
          Top = 56
          Width = 20
          Height = 16
          Alignment = taRightJustify
          Caption = 'Poli'
        end
        object cbb1: TComboBox
          Left = 101
          Top = 23
          Width = 211
          Height = 24
          AutoDropDown = True
          AutoCloseUp = True
          TabOrder = 0
          Text = 'cbb1'
        end
        object cbbPoli: TComboBox
          Left = 101
          Top = 53
          Width = 211
          Height = 24
          AutoDropDown = True
          AutoCloseUp = True
          TabOrder = 1
          Text = 'cbb1'
        end
        object grpTacc: TGroupBox
          Left = 2
          Top = 83
          Width = 389
          Height = 71
          Align = alBottom
          Color = clMenu
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object labelAlasan: TLabel
            Left = 12
            Top = 41
            Width = 38
            Height = 16
            Caption = 'Alasan'
          end
          object label3: TLabel
            Left = 12
            Top = 9
            Width = 28
            Height = 16
            Caption = 'TAcc'
          end
          object cbbTacc: TJvComboBox
            Left = 83
            Top = 6
            Width = 145
            Height = 24
            TabOrder = 0
            Text = 'Time'
            Items.Strings = (
              'Time'
              'Age'
              'Complication'
              'Comorbidity')
          end
          object editTacc: TEdit
            Left = 83
            Top = 36
            Width = 303
            Height = 24
            TabOrder = 1
          end
        end
      end
    end
    object ts5: TTabSheet
      Caption = 'ts5'
      ImageIndex = 4
      object grpPulangMeninggal: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 393
        Height = 156
        Align = alClient
        Caption = 'detil meninggal'
        TabOrder = 0
        object lbl19: TLabel
          Left = 29
          Top = 56
          Width = 97
          Height = 16
          Caption = 'sebab meninggal'
          Transparent = True
        end
        object lbl21: TLabel
          Left = 33
          Top = 26
          Width = 46
          Height = 16
          Caption = 'Tanggal'
          Transparent = True
        end
        object lbl22: TLabel
          Left = 29
          Top = 106
          Width = 34
          Height = 16
          Caption = 'otopsi'
          Transparent = True
        end
        object editMeninggalSebab: TJvEdit
          Left = 29
          Top = 72
          Width = 228
          Height = 21
          AutoSize = False
          TabOrder = 1
          Text = ''
        end
        object dtpMeninggalJam: TJvDateTimePicker
          Left = 204
          Top = 22
          Width = 97
          Height = 24
          Date = 41914.741393113430000000
          Time = 41914.741393113430000000
          Kind = dtkTime
          TabOrder = 0
          DropDownDate = 41914.000000000000000000
        end
        object editMeninggalOtopsi: TJvEdit
          Left = 29
          Top = 122
          Width = 228
          Height = 95
          AutoSize = False
          TabOrder = 2
          Text = ''
        end
        object dtpMeninggal: TJvDateTimePicker
          Left = 101
          Top = 22
          Width = 97
          Height = 24
          Date = 41914.741393113430000000
          Time = 41914.741393113430000000
          TabOrder = 3
          DropDownDate = 41914.000000000000000000
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'ts1'
      ImageIndex = 2
      object label4: TLabel
        Left = 69
        Top = 64
        Width = 20
        Height = 16
        Alignment = taRightJustify
        Caption = 'Poli'
      end
      object cbbPoliRujukInternal: TComboBox
        Left = 109
        Top = 61
        Width = 211
        Height = 24
        AutoDropDown = True
        AutoCloseUp = True
        TabOrder = 0
        Text = 'cbb1'
      end
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 293
    Width = 407
    Height = 71
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object labelIdxstr: TLabel
      Left = 163
      Top = 45
      Width = 59
      Height = 16
      Caption = 'labelIdxstr'
      Visible = False
    end
    object btn2: TBitBtn
      Left = 163
      Top = 14
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object btn1: TBitBtn
      Left = 244
      Top = 14
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
      TabOrder = 1
      OnClick = btn1Click
    end
    object check1Inap: TCheckBox
      Left = 21
      Top = 24
      Width = 97
      Height = 17
      Caption = 'check1Inap'
      TabOrder = 2
      Visible = False
    end
    object check1BPJS: TCheckBox
      Left = 21
      Top = 47
      Width = 97
      Height = 17
      Caption = 'check1BPJS'
      TabOrder = 3
      Visible = False
    end
  end
end
