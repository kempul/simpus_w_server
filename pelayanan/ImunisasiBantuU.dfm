object Form1_ImunisasiBantu: TForm1_ImunisasiBantu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Imunisasi'
  ClientHeight = 381
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 329
    Width = 903
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    object btn1: TBitBtn
      Left = 248
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Close'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btn1Click
    end
    object panel4: TPanel
      Left = 464
      Top = 0
      Width = 439
      Height = 49
      Align = alRight
      TabOrder = 1
      Visible = False
      object labelIdxStr: TLabel
        Left = 40
        Top = 16
        Width = 61
        Height = 16
        Caption = 'labelIdxStr'
      end
      object labelKode: TLabel
        Left = 208
        Top = 16
        Width = 55
        Height = 16
        Caption = 'labelKode'
      end
    end
  end
  object grpImunisasi: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 130
    Width = 903
    Height = 193
    Align = alClient
    TabOrder = 1
    object dbnav1: TJvDBNavigator
      Left = 2
      Top = 166
      Width = 899
      Height = 25
      DataSource = dataPelayanan.dsImunisasi
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 0
    end
    object grid1: TDBGridEh
      Left = 2
      Top = 18
      Width = 899
      Height = 148
      Align = alClient
      DataSource = dataPelayanan.dsImunisasi
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idxstr'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nomor'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'imunisasi'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tanggal'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'vaksin'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 903
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object label2: TLabel
      Left = 64
      Top = 16
      Width = 42
      Height = 16
      Caption = 'tanggal'
    end
    object labelImunisasi: TLabel
      Left = 64
      Top = 48
      Width = 54
      Height = 16
      Caption = 'Imunisasi'
    end
    object btnCari: TSpeedButton
      Left = 695
      Top = 45
      Width = 50
      Height = 22
      Caption = 'cari ...'
      OnClick = btnCariClick
    end
    object dtp1: TJvDateTimePicker
      Left = 160
      Top = 10
      Width = 186
      Height = 24
      Date = 43143.479061805560000000
      Time = 43143.479061805560000000
      TabOrder = 0
      DropDownDate = 43143.000000000000000000
    end
    object editImunisasi: TEdit
      Left = 160
      Top = 43
      Width = 529
      Height = 24
      ReadOnly = True
      TabOrder = 1
    end
    object btnSimpan: TButton
      Left = 160
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 2
      OnClick = btnSimpanClick
    end
  end
end
