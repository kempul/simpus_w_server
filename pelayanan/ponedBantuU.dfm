object Form1_ponedBantu: TForm1_ponedBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PONED'
  ClientHeight = 344
  ClientWidth = 797
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
  object grp2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 791
    Height = 126
    Align = alTop
    Caption = 'PONED'
    TabOrder = 0
    ExplicitWidth = 391
    object lbl25: TLabel
      Left = 27
      Top = 50
      Width = 79
      Height = 16
      Caption = 'jenis tindakan'
    end
    object lbl26: TLabel
      Left = 27
      Top = 77
      Width = 107
      Height = 16
      Caption = 'detil jenis tindakan'
    end
    object labelTgl: TLabel
      Left = 27
      Top = 21
      Width = 42
      Height = 16
      Caption = 'tanggal'
    end
    object cbbPonedKlp: TJvComboBox
      Left = 151
      Top = 47
      Width = 306
      Height = 24
      AutoDropDown = True
      TabOrder = 0
      Text = 'cbbTindakanGigi0'
      OnChange = cbbPonedKlpChange
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object cbbPonedPenyakit: TJvComboBox
      Left = 151
      Top = 74
      Width = 306
      Height = 24
      AutoDropDown = True
      TabOrder = 1
      Text = 'cbbTindakanGigi0'
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object dtp1: TJvDateTimePicker
      Left = 151
      Top = 15
      Width = 186
      Height = 24
      Date = 43144.389588576390000000
      Time = 43144.389588576390000000
      TabOrder = 2
      DropDownDate = 43144.000000000000000000
    end
    object btnSimpan: TButton
      Left = 472
      Top = 74
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 3
      OnClick = btnSimpanClick
    end
  end
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 320
    Width = 791
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 280
    object labelIdxstr: TLabel
      Left = 176
      Top = 3
      Width = 59
      Height = 16
      Caption = 'labelIdxstr'
    end
  end
  object panel4: TPanel
    Left = 0
    Top = 132
    Width = 797
    Height = 185
    Align = alClient
    Caption = 'panel4'
    TabOrder = 2
    ExplicitLeft = -195
    ExplicitTop = 139
    ExplicitWidth = 992
    ExplicitHeight = 165
    object nav1: TJvDBNavigator
      Left = 1
      Top = 159
      Width = 795
      Height = 25
      DataSource = dataPelayanan.dsPoned
      VisibleButtons = [nbDelete, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 139
      ExplicitWidth = 990
    end
    object grid1: TDBGridEh
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 789
      Height = 152
      Align = alClient
      DataSource = dataPelayanan.dsPoned
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      Columns = <
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
          FieldName = 'poned'
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
          FieldName = 'kelompok'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'jenis_penyakit'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
