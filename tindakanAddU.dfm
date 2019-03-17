object Form1_tindakanAdd: TForm1_tindakanAdd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1_tindakanAdd'
  ClientHeight = 252
  ClientWidth = 672
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
  object lblTgl: TLabel
    Left = 40
    Top = 19
    Width = 80
    Height = 13
    Caption = 'tanggal tindakan'
  end
  object lbl1: TLabel
    Left = 40
    Top = 53
    Width = 41
    Height = 13
    Caption = 'tindakan'
  end
  object lblBiaya: TLabel
    Left = 40
    Top = 86
    Width = 26
    Height = 13
    Caption = 'biaya'
  end
  object lblKet: TLabel
    Left = 40
    Top = 120
    Width = 55
    Height = 13
    Caption = 'keterangan'
  end
  object label2: TLabel
    Left = 40
    Top = 160
    Width = 21
    Height = 13
    Caption = 'hasil'
  end
  object dtp1: TJvDateTimePicker
    Left = 144
    Top = 15
    Width = 113
    Height = 21
    Date = 42734.850617569440000000
    Time = 42734.850617569440000000
    TabOrder = 0
    OnKeyPress = dtp1KeyPress
    DropDownDate = 42734.000000000000000000
  end
  object cbb1: TJvDBSearchComboBox
    Left = 144
    Top = 49
    Width = 505
    Height = 21
    DataField = 'nm_tindakan'
    DataResult = 'nm_tindakan'
    DataSource = dataPelayanan.dsTindakanLU
    AutoDropDown = True
    TabOrder = 1
    Text = 'cbb1'
    OnChange = cbb1Change
    OnKeyPress = dtp1KeyPress
  end
  object edit1Ket: TEdit
    Left = 144
    Top = 116
    Width = 505
    Height = 21
    TabOrder = 3
    Text = 'edit1Ket'
    OnKeyPress = dtp1KeyPress
  end
  object btn1: TBitBtn
    Left = 569
    Top = 208
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
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 488
    Top = 208
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object edit1: TJvCalcEdit
    Left = 144
    Top = 157
    Width = 121
    Height = 21
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnKeyPress = edit1KeyPress
  end
  object editBiaya: TJvCalcEdit
    Left = 144
    Top = 82
    Width = 121
    Height = 21
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnKeyPress = dtp1KeyPress
  end
end
