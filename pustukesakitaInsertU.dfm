object Form1_pustuKesakitan0: TForm1_pustuKesakitan0
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1_pustuKesakitan0'
  ClientHeight = 612
  ClientWidth = 909
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Biaya'
      Visible = False
    end
    object lbl2: TLabel
      Left = 159
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Kategori'
    end
    object lbl3: TLabel
      Left = 294
      Top = 32
      Width = 63
      Height = 13
      Caption = 'Jenis Kelamin'
    end
    object lbl4: TLabel
      Left = 429
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Kel. Umur'
    end
    object lbl5: TLabel
      Left = 564
      Top = 32
      Width = 28
      Height = 13
      Caption = 'ICD-X'
    end
    object btnICDX: TSpeedButton
      Left = 699
      Top = 48
      Width = 46
      Height = 22
      Caption = 'cari...'
      OnClick = btnICDXClick
    end
    object lbl6: TLabel
      Left = 751
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Jumlah'
    end
    object lblPenyakit: TLabel
      Left = 0
      Top = 116
      Width = 909
      Height = 13
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblPenyakit'
      ExplicitWidth = 51
    end
    object cbbBiaya: TComboBox
      Left = 24
      Top = 48
      Width = 129
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      TabOrder = 0
      Text = 'cbbBiaya'
      Visible = False
      OnKeyPress = cbbBiayaKeyPress
    end
    object cbbKat: TComboBox
      Left = 159
      Top = 48
      Width = 129
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'B'
      OnKeyPress = cbbKatKeyPress
      Items.Strings = (
        'B'
        'L')
    end
    object cbbKelamin: TComboBox
      Left = 294
      Top = 48
      Width = 63
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'L'
      OnKeyPress = cbbKelaminKeyPress
      Items.Strings = (
        'L'
        'P')
    end
    object cbbUmur: TComboBox
      Left = 429
      Top = 48
      Width = 129
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = '< 1 th'
      OnKeyPress = cbbUmurKeyPress
      Items.Strings = (
        '< 1 th'
        '1 - 4 th'
        '5 - 14 th'
        '15 - 44 th'
        '45 - 54 th'
        '55 - 64 th'
        '> 65 th')
    end
    object editICDX: TJvEdit
      Left = 564
      Top = 48
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnExit = editICDXExit
      OnKeyPress = editICDXKeyPress
    end
    object editJml: TJvCalcEdit
      Left = 751
      Top = 48
      Width = 58
      Height = 21
      Alignment = taLeftJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      ShowButton = False
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
      OnKeyPress = editJmlKeyPress
    end
    object btnSimpan: TButton
      Left = 734
      Top = 88
      Width = 75
      Height = 25
      Caption = 'simpan'
      TabOrder = 6
      OnClick = btnSimpanClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 576
    Width = 909
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btn1: TButton
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = 'close'
      TabOrder = 0
      OnClick = btn1Click
    end
  end
  object grid2: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 132
    Width = 903
    Height = 441
    Align = alClient
    ColumnDefValues.Title.Alignment = taCenter
    DataSource = dataPustu.ds_pustuKesakitan
    DynProps = <>
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 2
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'tahun'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'bulan'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'puskesmas'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'pustu'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'biaya'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'kat'
        Footers = <>
        ReadOnly = True
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'jenis_kelamin'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'L / P'
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'kelompok_umur'
        Footers = <>
        ReadOnly = True
        Visible = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'kelompok'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'kelompok umur'
        Width = 87
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode'
        Footers = <>
        ReadOnly = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'penyakit'
        Footers = <>
        ReadOnly = True
        Width = 500
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'jml'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
