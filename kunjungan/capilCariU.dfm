object Form1_cariDiDukcapil: TForm1_cariDiDukcapil
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cari Di DUKCAPIL'
  ClientHeight = 278
  ClientWidth = 529
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
  object panel2: TPanel
    Left = 0
    Top = 214
    Width = 529
    Height = 64
    Align = alBottom
    Caption = 'panel2'
    TabOrder = 0
    Visible = False
    object btn2: TBitBtn
      Left = 256
      Top = 17
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object btn1: TBitBtn
      Left = 337
      Top = 17
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object btn3: TButton
      Left = 447
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btn3'
      TabOrder = 2
      OnClick = btn3Click
    end
  end
  object pageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 529
    Height = 214
    ActivePage = ts4
    Align = alClient
    TabOrder = 1
    object ts1: TTabSheet
      Caption = 'CARI BERDASARKAN NAMA'
      object panel3: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 186
        Align = alClient
        TabOrder = 0
        object label2: TLabel
          Left = 32
          Top = 17
          Width = 37
          Height = 13
          Caption = 'Propinsi'
        end
        object label3: TLabel
          Left = 216
          Top = 17
          Width = 52
          Height = 13
          Caption = 'Kabupaten'
        end
        object label4: TLabel
          Left = 32
          Top = 60
          Width = 53
          Height = 13
          Caption = 'Kecamatan'
        end
        object label5: TLabel
          Left = 216
          Top = 60
          Width = 48
          Height = 13
          Caption = 'Kelurahan'
        end
        object label6: TLabel
          Left = 32
          Top = 102
          Width = 27
          Height = 13
          Caption = 'Nama'
        end
        object cbbKec: TComboBox
          Left = 32
          Top = 75
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'cbbKec'
          OnChange = cbbKecChange
        end
        object cbbKel: TComboBox
          Left = 216
          Top = 75
          Width = 225
          Height = 21
          TabOrder = 1
          Text = 'cbbKel'
        end
        object editNama: TEdit
          Left = 32
          Top = 118
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object btnCari: TButton
          Left = 216
          Top = 115
          Width = 75
          Height = 25
          Caption = 'Cari'
          TabOrder = 3
          OnClick = btnCariClick
        end
        object cbbProp: TComboBox
          Left = 32
          Top = 33
          Width = 145
          Height = 21
          TabOrder = 4
          Text = 'cbbKec'
          OnChange = cbbPropChange
        end
        object cbbKab: TComboBox
          Left = 216
          Top = 33
          Width = 225
          Height = 21
          TabOrder = 5
          Text = 'cbbKel'
          OnChange = cbbKabChange
        end
      end
    end
    object ts3: TTabSheet
      Caption = 'CARI BERDASARKAN NIK'
      ImageIndex = 2
      object panel7: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 186
        Align = alClient
        TabOrder = 0
        object labelEditNIK: TLabeledEdit
          Left = 80
          Top = 56
          Width = 223
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'NIK'
          TabOrder = 0
        end
        object btn1NIKCari: TButton
          Left = 309
          Top = 54
          Width = 75
          Height = 25
          Caption = 'Cari'
          TabOrder = 1
          OnClick = btn1NIKCariClick
        end
      end
    end
    object ts4: TTabSheet
      Caption = 'CARI BERDASARKAN NOMOR KK'
      ImageIndex = 3
      object panel8: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 186
        Align = alClient
        TabOrder = 0
        object labelEditKK: TLabeledEdit
          Left = 80
          Top = 56
          Width = 223
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Nomor KK'
          TabOrder = 0
        end
        object btn1KKCari: TButton
          Left = 309
          Top = 54
          Width = 75
          Height = 25
          Caption = 'Cari'
          TabOrder = 1
          OnClick = btn1KKCariClick
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'ts2'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object panel4: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 186
        Align = alClient
        Caption = 'panel4'
        TabOrder = 0
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 519
          Height = 80
          Align = alTop
          Caption = 'panel4'
          TabOrder = 0
          object memoResponse: TMemo
            Left = 371
            Top = 1
            Width = 185
            Height = 78
            Align = alLeft
            Lines.Strings = (
              'memoResponse')
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object memoSQL: TMemo
            Left = 186
            Top = 1
            Width = 185
            Height = 78
            Align = alLeft
            Lines.Strings = (
              'memoResponse')
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object memoKel: TMemo
            Left = 1
            Top = 1
            Width = 185
            Height = 78
            Align = alLeft
            Lines.Strings = (
              'memoResponse')
            ScrollBars = ssBoth
            TabOrder = 2
          end
        end
        object panel5: TPanel
          Left = 1
          Top = 81
          Width = 519
          Height = 104
          Align = alClient
          Caption = 'panel5'
          TabOrder = 1
          object memoProp: TMemo
            Left = 1
            Top = 1
            Width = 185
            Height = 102
            Align = alLeft
            Lines.Strings = (
              'memoResponse')
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object memoKab: TMemo
            Left = 371
            Top = 1
            Width = 185
            Height = 102
            Align = alLeft
            Lines.Strings = (
              '')
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object memoKec: TMemo
            Left = 186
            Top = 1
            Width = 185
            Height = 102
            Align = alLeft
            Lines.Strings = (
              '')
            ScrollBars = ssBoth
            TabOrder = 2
          end
        end
      end
    end
  end
  object pb1: TJvProgressDialog
    Caption = 'TUNGGU....'
    Interval = 10
    ShowCancel = False
    Smooth = True
    Text = 'TUNGGU ...'
    Transparent = True
    Left = 16
    Top = 16
  end
  object formStorage1: TJvFormStorage
    Active = False
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredValues = <
      item
        Name = 'KEC'
      end
      item
        Name = 'KEL'
      end>
    Left = 432
    Top = 48
  end
end
