object Form1_kunjunganRI: TForm1_kunjunganRI
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Kunjungan Rawat Inap'
  ClientHeight = 419
  ClientWidth = 488
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
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 482
    Height = 413
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panel5: TPanel
      Left = 0
      Top = 0
      Width = 482
      Height = 137
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbl20: TLabel
        Left = 19
        Top = 22
        Width = 92
        Height = 13
        Caption = 'Tanggal Kunjungan'
      end
      object lbl23: TLabel
        Left = 19
        Top = 45
        Width = 49
        Height = 13
        Caption = 'Nomor RM'
      end
      object btn1: TSpeedButton
        Left = 332
        Top = 42
        Width = 34
        Height = 22
        Caption = 'cari'
        OnClick = btn1Click
      end
      object btnCariPasien: TSpeedButton
        Left = 372
        Top = 42
        Width = 34
        Height = 22
        Caption = '.....'
        ParentShowHint = False
        ShowHint = True
        OnClick = btnCariPasienClick
      end
      object lbl27: TLabel
        Left = 19
        Top = 71
        Width = 33
        Height = 16
        Caption = 'Nama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl28: TLabel
        Left = 19
        Top = 97
        Width = 78
        Height = 16
        Caption = 'Tanggal Lahir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dtPicker1: TJvDateTimePicker
        Left = 152
        Top = 14
        Width = 103
        Height = 24
        Date = 41914.741393113430000000
        Time = 41914.741393113430000000
        TabOrder = 0
        DropDownDate = 41914.000000000000000000
      end
      object editMR: TEdit
        Left = 152
        Top = 41
        Width = 174
        Height = 21
        TabOrder = 2
        Text = '123456789012345678'
      end
      object editNama: TEdit
        Left = 152
        Top = 67
        Width = 308
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = 'editNama'
      end
      object dateTglLahir: TJvDateEdit
        Left = 152
        Top = 92
        Width = 127
        Height = 27
        DateFormat = 'dfShort'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ShowNullDate = False
        TabOrder = 4
      end
      object dtPickerJam: TJvDateTimePicker
        Left = 261
        Top = 14
        Width = 89
        Height = 24
        Date = 41914.778203923610000000
        Time = 41914.778203923610000000
        Kind = dtkTime
        TabOrder = 1
        DropDownDate = 41914.000000000000000000
      end
      object editNIK: TEdit
        Left = 291
        Top = 94
        Width = 169
        Height = 21
        TabOrder = 5
      end
    end
    object panel6: TPanel
      Left = 0
      Top = 137
      Width = 482
      Height = 276
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object grp2: TGroupBox
        Left = 0
        Top = 0
        Width = 482
        Height = 87
        Align = alTop
        TabOrder = 0
        object lbl3: TLabel
          Left = 19
          Top = 22
          Width = 85
          Height = 13
          Caption = 'Jenis Pembiayaan'
        end
        object lbl5: TLabel
          Left = 19
          Top = 50
          Width = 61
          Height = 13
          Caption = 'Cara Datang'
        end
        object cbbBiaya: TJvComboBox
          Left = 152
          Top = 20
          Width = 145
          Height = 21
          AutoDropDown = True
          TabOrder = 0
          Text = 'cbbBiaya'
        end
        object cbbCaraDatang: TJvComboBox
          Left = 149
          Top = 50
          Width = 145
          Height = 21
          AutoDropDown = True
          TabOrder = 2
          Text = 'cbbCaraDatang'
          Items.Strings = (
            'sendiri'
            'dengan rujukan')
        end
        object chkBaru: TJvCheckBox
          Left = 352
          Top = 24
          Width = 77
          Height = 17
          Caption = 'Pasien Baru'
          TabOrder = 1
          LinkedControls = <>
        end
        object checkLuarWilayah: TJvCheckBox
          Left = 352
          Top = 51
          Width = 83
          Height = 17
          Caption = 'Luar Wilayah'
          TabOrder = 3
          LinkedControls = <>
        end
      end
      object panel7: TPanel
        Left = 0
        Top = 221
        Width = 482
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        Caption = 'panel7'
        TabOrder = 2
        object btn1Simpan: TButton
          Left = 288
          Top = 18
          Width = 75
          Height = 25
          Caption = 'simpan'
          TabOrder = 0
          OnClick = btn1SimpanClick
        end
        object btn1Batal: TButton
          Left = 207
          Top = 18
          Width = 75
          Height = 25
          Caption = 'batal'
          TabOrder = 1
          OnClick = btn1BatalClick
        end
      end
      object grpRawat: TGroupBox
        Left = 0
        Top = 87
        Width = 482
        Height = 134
        Align = alTop
        TabOrder = 1
        object lbl1: TLabel
          Left = 19
          Top = 31
          Width = 78
          Height = 13
          Caption = 'Jenis Kunjungan'
        end
        object lbl29: TLabel
          Left = 19
          Top = 57
          Width = 79
          Height = 13
          Caption = 'Jenis Perawatan'
        end
        object lbl30: TLabel
          Left = 19
          Top = 84
          Width = 52
          Height = 13
          Caption = 'Poli Tujuan'
        end
        object cbbKunjungan: TComboBox
          Left = 152
          Top = 27
          Width = 145
          Height = 21
          AutoDropDown = True
          AutoCloseUp = True
          Enabled = False
          TabOrder = 0
          Text = 'Kunjungan Sehat'
          OnChange = cbbKunjunganChange
          Items.Strings = (
            'Kunjungan Sehat'
            'Kunjungan Sakit')
        end
        object cbbInstalasi: TComboBox
          Left = 152
          Top = 53
          Width = 145
          Height = 21
          AutoDropDown = True
          TabOrder = 1
          Text = 'cbbInstalasi'
        end
        object cbbPoli: TJvComboBox
          Left = 152
          Top = 80
          Width = 145
          Height = 21
          AutoDropDown = True
          TabOrder = 2
          Text = 'cbbPoli'
        end
      end
    end
  end
  object pb1: TJvProgressDialog
    ShowCancel = False
    Smooth = True
    Text = 'TUNGGU ...'
    Transparent = True
    OnProgress = pb1Progress
    Left = 424
    Top = 16
  end
end
