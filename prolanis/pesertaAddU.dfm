object Form1_tambahPeserta: TForm1_tambahPeserta
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Tambah Peserta Kegiatan'
  ClientHeight = 497
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 614
    Height = 491
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'panel1'
    TabOrder = 0
    object panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 608
      Height = 158
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 96
        Width = 602
        Height = 59
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object labelEdit1: TLabeledEdit
          Left = 8
          Top = 32
          Width = 217
          Height = 21
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = 'Cari Nama / NIK / No Kartu'
          TabOrder = 0
          OnKeyPress = labelEdit1KeyPress
        end
        object btn1: TButton
          Left = 272
          Top = 30
          Width = 75
          Height = 25
          Caption = 'cari'
          TabOrder = 1
          OnClick = btn1Click
        end
        object btnTambahkan: TButton
          Left = 353
          Top = 30
          Width = 75
          Height = 25
          Caption = 'tambahkan'
          Enabled = False
          TabOrder = 2
          OnClick = btnTambahkanClick
        end
        object btn3: TButton
          Left = 434
          Top = 30
          Width = 151
          Height = 25
          Caption = 'kirim semua ke bpjs'
          TabOrder = 3
          OnClick = btn3Click
        end
      end
      object waiting1: TJvWaitingProgress
        Left = 152
        Top = 12
        Width = 228
        Height = 38
      end
      object panel7: TPanel
        Left = 0
        Top = 0
        Width = 608
        Height = 41
        Align = alTop
        Caption = 'panel7'
        TabOrder = 2
        object labelKegiatan: TLabel
          Left = 1
          Top = 1
          Width = 64
          Height = 39
          Align = alLeft
          Caption = 'labelKegiatan'
          ExplicitHeight = 13
        end
        object labelEduId: TLabel
          Left = 65
          Top = 1
          Width = 50
          Height = 39
          Align = alLeft
          Caption = 'labelEduId'
          ExplicitHeight = 13
        end
        object dbedit1kartu_bpjs: TDBEdit
          Left = 248
          Top = 8
          Width = 121
          Height = 21
          DataField = 'kartu_bpjs'
          DataSource = dataProlanis.dsPasien
          TabOrder = 0
          OnChange = dbedit1kartu_bpjsChange
        end
      end
    end
    object grid1: TDBGridEh
      Left = 0
      Top = 164
      Width = 614
      Height = 302
      Align = alClient
      DataSource = dataProlanis.dsPasien
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nama_lengkap'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'umur'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nik'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kartu_bpjs'
          Footers = <>
          Width = 99
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idxstr'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object dbnav1: TJvDBNavigator
      Left = 0
      Top = 466
      Width = 614
      Height = 25
      DataSource = dataProlanis.dsPasien
      VisibleButtons = [nbDelete, nbEdit, nbRefresh]
      Align = alBottom
      TabOrder = 2
      OnClick = dbnav1Click
    end
  end
  object panel2: TPanel
    AlignWithMargins = True
    Left = 623
    Top = 3
    Width = 158
    Height = 491
    Align = alClient
    BevelOuter = bvNone
    Caption = 'panel2'
    TabOrder = 1
    object panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 152
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Datftar Peserta'
      TabOrder = 0
    end
    object grid2: TDBGridEh
      Left = 0
      Top = 47
      Width = 158
      Height = 444
      Align = alClient
      DataSource = dataProlanis.dsPesertaAdding
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'edu_id'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'no_kartu'
          Footers = <>
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
          FieldName = 'kegiatan'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nik'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nama_lengkap'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'status'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
