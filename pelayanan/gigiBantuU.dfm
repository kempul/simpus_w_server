object Form1_gigiBantu: TForm1_gigiBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Tambahan Tindakan GIGI Pada Pasien'
  ClientHeight = 362
  ClientWidth = 932
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
  object grp1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 926
    Height = 126
    Align = alTop
    Caption = 'Tindakan Gigi'
    TabOrder = 0
    ExplicitWidth = 790
    object lbl13: TLabel
      Left = 27
      Top = 59
      Width = 79
      Height = 16
      Caption = 'jenis tindakan'
    end
    object lbl14: TLabel
      Left = 27
      Top = 86
      Width = 107
      Height = 16
      Caption = 'detil jenis tindakan'
    end
    object labelTgl: TLabel
      Left = 27
      Top = 27
      Width = 79
      Height = 16
      Caption = 'jenis tindakan'
    end
    object cbbTindakanGigi0: TJvComboBox
      Left = 151
      Top = 56
      Width = 233
      Height = 24
      AutoDropDown = True
      TabOrder = 0
      Text = 'cbbTindakanGigi0'
      OnChange = cbbTindakanGigi0Change
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object cbbTindakanGigi1: TJvComboBox
      Left = 151
      Top = 83
      Width = 233
      Height = 24
      AutoDropDown = True
      TabOrder = 1
      Text = 'cbbTindakanGigi0'
      Items.Strings = (
        'PEMERIKSAAN'
        'PERAWATAN')
    end
    object btnSimpan: TButton
      Left = 408
      Top = 83
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 2
      OnClick = btnSimpanClick
    end
    object dtp1: TJvDateTimePicker
      Left = 151
      Top = 23
      Width = 186
      Height = 24
      Date = 43144.273828402780000000
      Time = 43144.273828402780000000
      TabOrder = 3
      DropDownDate = 43144.000000000000000000
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 304
    Width = 932
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 796
    object labelIdxstr: TLabel
      Left = 384
      Top = 24
      Width = 59
      Height = 16
      Caption = 'labelIdxstr'
    end
    object btn1: TBitBtn
      Left = 696
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Close'
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
      TabOrder = 0
    end
  end
  object panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 135
    Width = 926
    Height = 166
    Align = alClient
    BevelOuter = bvNone
    Caption = 'panel3'
    TabOrder = 2
    ExplicitLeft = 312
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grid1: TDBGridEh
      Left = 0
      Top = 0
      Width = 926
      Height = 141
      Align = alClient
      DataSource = dataPelayanan.dsTindakanGigi
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id_tindakangigi'
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
          FieldName = 'idx'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tgl_tindakan'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tindakan'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'jenis'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ket'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object nav1: TJvDBNavigator
      Left = 0
      Top = 141
      Width = 926
      Height = 25
      DataSource = dataPelayanan.dsTindakanGigi
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 272
      ExplicitTop = 72
      ExplicitWidth = 240
    end
  end
end
