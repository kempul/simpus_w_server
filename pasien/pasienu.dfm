object Form1_pasien: TForm1_pasien
  Left = 0
  Top = 0
  Caption = 'Form1_pasien'
  ClientHeight = 574
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelUtama: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 765
    Height = 514
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 705
    object JvPanel1: TJvPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 759
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      ExplicitWidth = 699
      object JvSpinEdit1: TJvSpinEdit
        Left = 67
        Top = 7
        Width = 70
        Height = 21
        TabOrder = 0
      end
      object JvComboBox1: TJvComboBox
        Left = 320
        Top = 7
        Width = 145
        Height = 21
        TabOrder = 1
        Text = 'JvComboBox1'
      end
    end
    object panelUtama1: TJvPanel
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 759
      Height = 461
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 699
      object panel02: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 753
        Height = 455
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 693
        object lblPasien: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 747
          Height = 19
          Align = alTop
          Caption = 'Data &Pasien'
          FocusControl = grid2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 82
        end
        object grid2: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 25
          Width = 747
          Height = 396
          Align = alClient
          ColumnDefValues.Title.Alignment = taCenter
          DataSource = dataPasien.dsPasien
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
          SearchPanel.Enabled = True
          SearchPanel.FilterOnTyping = True
          TabOrder = 0
          OnExit = grid2Exit
          Columns = <
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
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_kepala_keluarga'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_ayah'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'alamat'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'rt'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'rw'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_ibu'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'mr'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'biaya'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kartu_bpjs'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tgl_lahir'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tmpt_lahir'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'gol_drh'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nomor_kk'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_kel'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'hp'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'auto_mr'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'agama'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'jenis_kelamin'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pekerjaan'
              Footers = <>
              Visible = False
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'hubungan_keluarga'
              Footers = <>
              Visible = False
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pendidikan'
              Footers = <>
              Visible = False
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'status_kawin'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_prop'
              Footers = <>
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_kab'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_kec'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'no_akta_lahir'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'idx'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kelompok'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lama'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'last_updated'
              Footers = <>
              ReadOnly = True
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object nav2: TJvDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 427
          Width = 747
          Height = 25
          DataSource = dataPasien.dsPasien
          VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          Align = alBottom
          Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = nav2Click
          ExplicitWidth = 687
        end
      end
    end
  end
  object JvPanel2: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 765
    Height = 48
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    ExplicitWidth = 705
    object JvBevel1: TJvBevel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 70
      Height = 38
      Align = alLeft
      Shape = bsSpacer
      Edges = []
      Inner = bvSpace
      Outer = bvSpace
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 732
    end
    object btn_pasienAdd: TJvTransparentButton
      AlignWithMargins = True
      Left = 79
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actTampilkan
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = ilimages1
      Images.ActiveIndex = 0
      Images.GrayIndex = 0
      Images.DisabledIndex = 0
      Images.DownIndex = 0
      Images.HotIndex = 0
      ExplicitHeight = 32
    end
    object btnClose: TJvTransparentButton
      AlignWithMargins = True
      Left = 726
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actClose
      Align = alRight
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = ilimages1
      Images.ActiveIndex = 3
      ExplicitLeft = 855
      ExplicitTop = 10
      ExplicitHeight = 28
    end
    object btnPrint: TJvTransparentButton
      AlignWithMargins = True
      Left = 231
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actPrint
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = ilimages1
      Images.ActiveIndex = 2
      Images.GrayIndex = 2
      Images.DisabledIndex = 2
      Images.DownIndex = 2
      Images.HotIndex = 2
    end
    object btnKunjunganDel: TJvTransparentButton
      AlignWithMargins = True
      Left = 155
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actDel
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
      Images.ActiveIndex = 6
      Images.GrayIndex = 5
      Images.DisabledIndex = 5
      Images.DownIndex = 5
      Images.HotIndex = 5
      ExplicitLeft = 226
      ExplicitTop = 0
      ExplicitHeight = 28
    end
    object btnEditBpjs: TJvTransparentButton
      AlignWithMargins = True
      Left = 117
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actLihatIndek
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
      Images.ActiveImage = ilimages1
      Images.ActiveIndex = 1
      Images.GrayIndex = 1
      Images.DisabledIndex = 1
      Images.DownIndex = 1
      Images.HotIndex = 1
      ExplicitLeft = 226
      ExplicitTop = 0
      ExplicitHeight = 28
    end
    object btnRefresh: TJvTransparentButton
      AlignWithMargins = True
      Left = 193
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Hint = 'Close'
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = actCloseExecute
      Images.ActiveImage = ilimages1
      Images.ActiveIndex = 3
      Images.GrayIndex = 2
      Images.DisabledIndex = 2
      Images.DownIndex = 2
      Images.HotIndex = 2
      ExplicitLeft = 250
      ExplicitTop = -2
      ExplicitHeight = 28
    end
    object dbeditMR: TDBEdit
      Left = 743
      Top = 10
      Width = 121
      Height = 21
      DataField = 'mr'
      TabOrder = 0
      Visible = False
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SP_ID=SP_ID'
      'NOPOL=NOPOL'
      'TIPE=TIPE'
      'PEMILIK=PEMILIK'
      'ASURANSI=ASURANSI'
      'ACC=ACC'
      'BEA_PRODUKSI=BEA_PRODUKSI'
      'BEA_LAIN=BEA_LAIN'
      'LABA_KOTOR=LABA_KOTOR')
    BCDToCurrency = False
    Left = 16
    Top = 16
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41016.316655266200000000
    ReportOptions.LastChange = 41016.316655266200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 84
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 60.472480000000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."ASURANSI"'
        OutlineText = 'frxDBDataset1."ASURANSI"'
        StartNewPage = True
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'ASURANSI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '[frxDBDataset1."ASURANSI"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 26.456710000000000000
          Width = 45.354286770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'invoice')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 47.078832660000000000
          Top = 26.456710000000000000
          Width = 97.160617120000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'NOPOL')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 146.270989780000000000
          Top = 26.456710000000000000
          Width = 154.960656770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 305.278911800000000000
          Top = 26.456710000000000000
          Width = 100.929373920000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMILIK')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 408.208285720000000000
          Top = 26.456710000000000000
          Width = 75.590551180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'ACC')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 486.442169600000000000
          Top = 26.456710000000000000
          Width = 75.590551180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'bea produksi')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 564.442169600000000000
          Top = 26.456710000000000000
          Width = 75.590551180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'bea lain')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 641.596625140000000000
          Top = 26.456710000000000000
          Width = 75.590551180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'laba kotor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 45.354286770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Copy(<frxDBDataset1."SP_ID">,1,3)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 48.283532660000000000
          Width = 97.160617120000000000
          Height = 18.897650000000000000
          DataField = 'NOPOL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOPOL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 147.475689780000000000
          Width = 154.960656770000000000
          Height = 18.897650000000000000
          DataField = 'TIPE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."TIPE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 306.483611800000000000
          Width = 100.929373920000000000
          Height = 18.897650000000000000
          DataField = 'PEMILIK'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PEMILIK"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 409.412985720000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'ACC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ACC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 487.646869600000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'BEA_PRODUKSI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."BEA_PRODUKSI"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 565.646869600000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'BEA_LAIN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."BEA_LAIN"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 642.801325140000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'LABA_KOTOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."LABA_KOTOR"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 408.189240000000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ACC">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 486.423123880000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."BEA_PRODUKSI">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 564.423123880000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."BEA_LAIN">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 641.577579420000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LABA_KOTOR">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 408.189240000000000000
          Top = 3.779530000000000000
          Width = 309.921460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] [Time]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 98.267780000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 160.630025000000000000
          Top = 64.252010000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jl. Hasanudin G '#8211' 63 Telp. (024) 3547190 / Fax. (024) 3550399')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 89.047310000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 275.905690000000000000
          Top = 6.118120000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Laba Rugi Kotor')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 230.551330000000000000
          Top = 30.236240000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[periode]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          Left = 408.189240000000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ACC">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 486.423123880000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."BEA_PRODUKSI">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 564.423123880000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."BEA_LAIN">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 641.577579420000000000
          Top = 11.338590000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LABA_KOTOR">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 408.189240000000000000
          Top = 3.779530000000000000
          Width = 309.921460000000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object formStorage1: TJvFormStorage
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredValues = <>
    Left = 152
    Top = 16
  end
  object actlst1: TActionList
    Images = ilimages1
    Left = 220
    Top = 16
    object actCariPasien: TAction
      Caption = '....'
      ShortCut = 16464
    end
    object actTampilkan: TAction
      Hint = 'Tampilkan Pasien'
      ImageIndex = 0
      OnExecute = actTampilkanExecute
    end
    object actPrint: TAction
      Hint = 'Cetak Rekam Medis'
      ImageIndex = 2
      OnExecute = actPrintExecute
    end
    object actClose: TAction
      Hint = 'Close'
      ImageIndex = 3
      OnExecute = actCloseExecute
    end
    object actLab: TAction
      Caption = 'actLab'
      Hint = 'Lab Test'
      ImageIndex = 5
    end
    object actDel: TAction
      Caption = 'actDel'
      Hint = 'Hapus Batal Berobat'
      ImageIndex = 6
    end
    object actLihatIndek: TAction
      Hint = 'Lihat Indek Terakhir'
      ImageIndex = 1
      OnExecute = actLihatIndekExecute
    end
    object actRefresh: TAction
      Caption = 'actRefresh'
      Hint = 'Refresh'
      ImageIndex = 8
    end
  end
  object ilimages1: TImageList
    Height = 32
    Width = 32
    Left = 288
    Top = 16
    Bitmap = {
      494C010109009000E40020002000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855D4CFF835C4BFF835B4BFF835B4BFF835B4BFF825B4BFF825B4BFF825C
      4BFF825A4AFF825A4AFF815A4AFF815A4AFF815B4AFF805949FF805949FF7B58
      49FF7B5848FF7A5948FF7A5748FF795847FF785646FF775746FF775747FF7757
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805847FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7252
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805645FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7253
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000815846FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000825847FFF7F1E8FFF7F0E8FFF7F0E8FFF7F1E8FFF7F1E8FFF7F1E8FFF7F0
      E8FFF7F0E8FFF6ECE2FFE1B794FFC76319FFC86113FFCB8959FFEACEB8FFF5EE
      E3FFF5EDE2FFF5ECE1FFF4ECE0FFF4EBDFFFF4EBDEFFEDDFD0FFE6D1BEFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000835A47FFF8F2E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1
      E9FFF7F1E9FFC06B22FFDA781FFFFFA237FFFFA030FFF1891DFFC25809FFF3E7
      DBFFF5EEE4FFF5EDE2FFF5EDE1FFF4ECE0FFF4EBDFFFEFE1D2FFE6D1BFFF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855B48FFF8F3ECFFF8F3EBFFF8F3ECFFF6EBDFFFF1D8BFFFF8F3ECFFEDCD
      ADFFCA6C12FFFFAB4DFFFFA649FFFFA540FFE08020FFC46217FFBB5C0DFFDF70
      0EFFC47647FFF6EEE4FFF5EEE3FFF5EDE2FFF5ECE1FFEEE2D2FFE7D2C0FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875A47FFF9F4EDFFF8F3EDFFF9F4EDFFD68C3AFFCB7316FFF0DBC2FFC971
      17FFFFB362FFFFAB52FFFFAB4FFFC26511FFDDAC82FFF7F1E9FFF6EEE6FFC574
      3FFFA94100FFF6EFE5FFF6EEE4FFF5EDE3FFF5EDE2FFF0E1D3FFE7D3C1FF7756
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000865C49FFFAF5F1FFF9F5EFFFF9F5F0FFDA9242FFFFCB96FFE9A658FFFFC8
      8FFFFFC182FFFFB867FFCB7012FFF9F4EDFFF8F3EDFFF8F3ECFFF8F2EBFFF7F1
      E9FFF7F1E9FFF7F0E7FFF6EFE6FFF6EEE5FFF5EEE4FFEFE2D4FFE8D3C2FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875B48FFFAF6F1FFFAF6F0FFFAF6F1FFE4AA68FFFFCE9CFFFFCF9CFFFFC8
      90FFFFC58AFFE29138FFE5BB8DFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3ECFFF8F2
      EAFFF7F1EAFFF7F0E8FFF7F0E7FFF6EFE5FFF6EEE4FFEFE4D5FFE8D4C3FF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000895C49FFFBF8F3FFFCF7F3FFFBF7F3FFF2D8B8FFFFDEBDFFFFD4A9FFFFCD
      9DFFFFCC97FFCC8330FFE5C096FFFAF6F1FFFAF5F0FFF9F5EFFFF9F4EEFFF8F3
      ECFFF8F3ECFFF8F2EAFFF7F1E9FFF7F0E7FFF6EFE6FFF0E3D8FFE9D4C4FF7956
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5D4BFFFBF8F4FFFBF8F4FFFBF8F5FFFAEEE0FFFFEAD4FFFFD7AEFFFFCE
      9EFFFFCB96FFFAB972FFE89940FFF6E8D9FFFAF6F1FFF8F3EEFFF3E6D9FFE1B9
      9FFFD6A182FFC16F47FFC1724BFFF7F0E8FFF7F0E7FFF0E5D7FFE9D5C5FF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5E4CFFFCFAF7FFFCF9F6FFFCFAF7FFFCFAF7FFFACE9DFFFFE4C8FFF3BD
      80FFEBAB5BFFDB8C29FFD37B17FFFAF2EBFFE9D1BCFFFFD39AFFFFCD94FFFFD4
      A5FFFFD7ACFFFFD6ADFFFFDEB3FFF5EEE5FFF7F1E8FFF2E4DAFFE9D5C6FF7B58
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C604BFFFCFBF8FFFCFAF8FFFCFBF8FFFCFBF9FFEAAB4EFFEAA744FFEEC0
      82FFF0CC9FFFF7E9D9FFFCF6F1FFFBF8F5FFF7ECE2FFE29D56FFF8C089FFFFCE
      9DFFFFD2A4FFFFD5AAFFFFDBADFFEED9CAFFF7F1E9FFF1E4D9FFE9D6C7FF7B57
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F604CFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFAFFFDFBF9FFFCFBF9FFFCFAF7FFFCF9F6FFFBF8F4FFC97735FFFFC8
      91FFFFCB94FFFFCB99FFFFCD9BFFD39F81FFF8F2EAFFF1E5DAFFEAD6C8FF8059
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F624CFFFEFDFBFFFDFCFBFFFEFDFCFFFEFDFCFFFEFDFDFFFEFDFDFFFEFD
      FCFFFDFCFCFFFDFCFAFFFDFBFAFFFCFAF8FFFCFAF7FFEAC3A0FFD78433FFFFC3
      88FFFFC68DFFFFCA92FFFFC88FFFC78359FFF8F2EBFFF1E5DCFFEAD6C8FF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000091634DFFFEFEFEFFFEFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFBE
      7AFFFDFDFDFFFEFDFCFFFDFCFCFFFDFBFAFFF9ECDEFFF7A348FFFFAE57FFFFB9
      6EFFF9B368FFB8642EFFF7BB80FFC15F1EFFF8F3ECFFF2E6DDFFEAD7C9FF8158
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092624EFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD073
      00FFE29D41FFFDFDFBFFFEFDFCFFEAC399FFC97014FFFFAB4EFFFFAB4FFFFFB4
      5DFFC06316FFF0DDCDFFBB5B14FFC2672CFFF8F3ECFFF2E6DCFFEAD7C9FF815A
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093634FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
      F6FFDA993CFFFF9A2AFFFF9A2AFFFF9D31FFFF9E35FFFFA747FFFFAF57FFE8BD
      99FFFBF8F4FFFAF6F1FFFAF5F0FFF9F4EEFFF8F3EDFFF2E6DCFFEAD7C9FF8259
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFAF7FFDB7B0BFFF7982FFFFFAE51FFFFB158FFE49137FFC86E1BFFFBF9
      F5FFFBF8F4FFFAF6F2FFFAF6F0FFF9F4EEFFF9F3EDFFF3E8DEFFEAD7CAFF8259
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956550FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFFCF9
      F6FFFBF8F4FFFBF7F3FFFAF6F2FFF6F1EBFFF9F5EEFFF3ECE4FFE9D9CEFF865E
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF8D6E
      63F4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA4836FFFC8B3A5FFC6AD9AFFC3A283FFC19C74FFB88F61FF8D665AFB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986753FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF8D6A5DF93939393A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826AFFF2D7AEFFEECD9BFFC59A65FF8D6A5DF900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58065FFEECE98FFEFC785FF8C6D60F72F2F2F3000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996851FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA3785AFFBF9461FF8E6E64F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976651FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77B57FF917167F527272728000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986752FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B71
      61FF977C71EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6D59FF9B6B57FF9A6B56FF996A56FF996A56FF996B57FF986955FF976A
      56FF976854FF956755FF956853FF936754FF936552FF916451FF916552FF9C8F
      88D5141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4C4C4C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818197474747A2C2C
      2CFD363636FF5F5F5FFF676767FF666666FF5F5F5FFF494949FF3E3E3EFF3535
      35FD7B7B7BDB1F1F1F20006F00FF20BE3FFF20BE3EFF1EBC3DFF1EBC3DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006767696B87879FB182828D953434343500000000000000000000
      000000000000006D00FF006D00FF006B00FF006A00FF006800FF006700FF0000
      000000000000000000000000000000000000000000008889A0A80117C9FF0011
      BBFF5156BAE4000000000000000000000000000000007F7F878D0007A7FE8787
      A0AD727276790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855D4CFF835C4BFF835B4BFF835B4BFF835B4BFF825B4BFF825B4BFF825C
      4BFF825A4AFF825A4AFF815A4AFF815A4AFF815B4AFF805949FF805949FF7B58
      49FF7B5848FF7A5948FF7A5748FF795847FF785646FF775746FF775747FF7757
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101011474747F43D3D3DFFC1C1
      C1FFC5C5C5FF9E9E9EFF949494FF828282FF747474FF676767FF5F5F5FFF4949
      49FF3A3A3AFF9D9D9DFB007000FF3BD96EFF3AD86DFF38D66BFF1FBD3EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1F1F200013C8FF001EDFFF0013CBFF080EACFC00000000000000000000
      000000000000006F00FF3AD86DFF20BE3EFF20BE3EFF1EBC3DFF006900FF0000
      000000000000000000000000000000000000000000000415BFFD1D55FFFF1135
      B8FF0723B6FF4848B5FFB6A29FFF845B4BFFB5A097FF0008AEFF0938F2FF0012
      AFFF0005AAFFB4A09AFF825B4BFF815949FF815A49FF805848FF805848FF7A57
      48FF7A5747FF795847FF795647FF785746FF775545FF765645FF765646FF7656
      47FF000000000000000000000000000000000000000000000000000000000000
      0000805847FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7252
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000414141F84C4C4CFF9C9C9CFFB4B4B4FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FF646464FF5C5C5CFF4B4B
      4BFF434343FF9D9D9DFF007400FF3FDD72FF3EDC71FF3CDA6FFF21BF3FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005050
      50510023DDFE0037FFFF0035FFFF0028F4FF0023E8FF7171ADD1000000000000
      000000000000007200FF75EA98FF3CDA6FFF3BD96EFF20BE3FFF006C00FF0000
      000000000000000000000000000000000000000000001826C1F81949E8FF2156
      FFFF2156FFFF1134B0FF0216B6FF585BC7FF000CB7FF144AFFFF1149FFFF0E45
      FFFF0837E6FF0105A4FFD5CDDEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FFEEDAC7FFEEDAC6FFEED8C3FFEED8C1FFEDD7BEFFEDD6BCFF7250
      41FF000000000000000000000000000000000000000000000000000000000000
      0000805645FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7253
      43FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003A3A3A3B4E4E4EFF767676FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FFB1B1B1FFA9A9
      A9FFA5A5A5FF9D9D9DFF007600FF40DE73FF40DE73FF3DDB70FF22C041FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008182
      8E91033BF8FF0B4FFFFF094CFFFF0033FFFF0028F4FF040BABFD121212130000
      000000000000007400FF76EB9AFF3EDC71FF3DDB70FF21BF3FFF006D00FF0000
      000000000000000000000000000000000000000000008589ACB71540E5FF2459
      FFFF2358FFFF1E50F9FF1336B2FF000DBBFF1749FCFF174DFFFF144AFFFF0F47
      FFFF0E45FFFF000AB2FF9694D2FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FFFAF0E1FFFAEFE1FFF9EEDEFFF9EDDBFFF8ECD9FFF2E0CAFF7152
      42FF000000000000000000000000000000000000000000000000000000000000
      0000815846FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      00000000000056565658323232FE616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FF008100FF29C7
      48FF29C748FF29C747FF28C647FF44E277FF43E176FF40DE73FF24C242FF22C0
      41FF21BF3FFF1FBD3EFF1EBC3DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7F
      878A0C4EFCFF2382FFFF1F74FFFF0B4DFFFF0037FFFF007A00FF007A00FF0079
      00FF007900FF007800FF78ED9BFF41DF74FF40DE73FF23C142FF007000FF006D
      00FF006C00FF006900FF006700FF000000000000000087899EA40119C8FE3A83
      FFFF2E66FFFF265BFFFF255AFFFF1F53FCFF2055FFFF1A52FFFF184FFFFF1142
      F9FF000AB4FFD9CCD3FFDFC6B9FFDABCACFFDABAABFFDAB9A8FFDAB9A6FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFFAF0E1FFF9EFDEFFF2E1CDFF7453
      42FF000000000000000000000000000000000000000000000000000000000000
      0000825847FFF7F1E8FFF7F0E8FFF7F0E8FFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFD3B4A6FFD3B3A3FFD8B8A5FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFF4EBDEFFEDDFD0FFE6D1BEFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8EA6353535FF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FF008300FF4AE8
      82FF4AE882FF49E781FF48E680FF46E479FF44E277FF42E075FF40DE73FF3DDB
      70FF3CDA6FFF38D66BFF1EBC3DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101023636
      38FB002BFCFF2B98FFFF2083FFFF0B52FFFF003CFFFF008100FF48E680FF29C7
      48FF29C747FF28C647FF45E378FF43E176FF42E075FF24C242FF23C142FF21BF
      3FFF20BE3FFF1EBC3DFF006800FF000000000000000000000101575758590C2D
      D7FF3980FDFF2A5FFFFF275CFFFF2358FFFF2156FFFF1C53FFFF1B50FFFF0007
      B0FF6462C6FFDCC1B4FFDABDAFFFDABCADFFDABCABFFDABAAAFFDAB9A7FFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFFAF1E3FFF9F0E0FFF2E2CFFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      0000835A47FFF8F2E9FFF7F1E9FFF7F1E9FFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFD9BBACFFBFA496FFC2A697FFCBAC9BFFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFF4EBDFFFEFE1D2FFE6D1BFFF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      000000000000878787CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FF008700FF4FED
      87FF4FED87FF4DEB85FF4CEA84FF49E781FF48E680FF44E277FF43E176FF40DE
      73FF3EDC71FF3AD86DFF20BE3EFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000727272DF3F3F3FFFAFAE
      ACFF9C9A94CD8087AFDFCFCCC5FF3C437DF58586969B008500FF82F2A1FF4CEA
      84FF4CEA84FF4AE882FF49E781FF46E479FF44E277FF42E075FF40DE73FF3DDB
      70FF3BD96EFF20BE3EFF006A00FF000000000000000000000000000000000000
      00006463BAFF336CFBFF2E64FFFF285DFFFF255AFFFF1841D2FF0012B7FFEBDE
      D7FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFFDABBACFFDABBAAFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFFBF3E6FFFAF2E6FFF3E4D3FF7554
      43FF000000000000000000000000000000000000000000000000000000000000
      0000855B48FFF8F3ECFFF8F3EBFFF8F3ECFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFB9A094FF998475FFA28B80FFB79D8FFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFF5ECE1FFEEE2D2FFE7D2C0FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      000000000000878787CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FF008900FF51EF
      89FF51EF89FF4FED87FF4EEC86FF4BE983FF49E781FF46E479FF44E277FF40DE
      73FF3FDD72FF3BD96EFF20BE3FFF000000000000000000000000000000000000
      000000000000363636373F3F3F40000000006767676A636363FFBBBBBBFF8282
      828B06060607908F8E99C4C4C3FF8383828E00000000008700FF84F4A3FF4FED
      87FF4EEC86FF4CEA84FF4AE882FF48E680FF46E479FF43E176FF41DF74FF3EDC
      71FF3CDA6FFF20BE3EFF006B00FF000000000000000000000000000000000000
      00004F53C0FF3771FFFF2F63FFFF2A5FFFFF275DFFFF1D4DECFF1030AEFF9692
      D4FFE3D0C8FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FFDBBCADFFDBBCABFFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFFBF3E7FFFAF3E6FFF3E5D5FF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      0000875A47FFF9F4EDFFF8F3EDFFF9F4EDFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FF716763FF5C524EFF9C8677FFD3B5A5FFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFF5EDE2FFF0E1D3FFE7D3C1FF7756
      44FF000000000000000000000000000000000000000000000000000000000000
      000000000000878787CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FF008D00FF008D
      00FF008B00FF008900FF008800FF4EEC86FF4CEA84FF48E680FF28C647FF0076
      00FF007400FF007000FF006F00FF000000000000000000000000000000002D2D
      2D2E2230C0F50029F8FF0024E9FF585851FFB6B6B5FF969696AE121212130000
      0000000000009D9D9DAEB9B9B9FF7878787F00000000008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4AE882FF49E781FF45E378FF78ED9BFF76EB
      9AFF75EA98FF3AD86DFF006D00FF000000000000000000000000000000006C6C
      70710828D8FF366AFFFF3368FFFF214DF2FF306EF6FF265BFFFF2357FFFF041C
      B9FF333AC1FFDBC3B9FFDBC1B7FFDBBFB4FFDBBEB2FFDBBDAEFFDBBCADFFDBBB
      ABFFDBBAA8FFDAB8A5FFDAB7A3FFDFBFABFFFBF4E8FFFCF4E8FFF5E6D7FF7754
      43FF000000000000000000000000000000000000000000000000000000000000
      0000865C49FFFAF5F1FFF9F5EFFFF9F5F0FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FF918987FF688B9DFF5C646FFF306744FF3289
      30FF6B9D56FFDAB8A5FFDAB7A3FFDFBFABFFF5EEE4FFEFE2D4FFE8D3C2FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      000000000000878787CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FFB5B5B5FFB1B1B1FFA9A9
      A9FFA5A5A5FF9D9D9DFF008900FF4FED87FF4DEB85FF49E781FF29C747FF0000
      0000000000000000000000000000000000000000000000000000000000008789
      A0A60031F9FF0038FFFF0B30C2FFC1C0B7FF71706CFF00000000000000000000
      000000000000A4A4A4BAB5B5B5FF7272727700000000008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF4CEA84FF4AE882FF28C647FF007800FF0074
      00FF007200FF006F00FF006D00FF000000000000000000000000000000006D78
      C0D42A57F1FF386CFFFF3567FFFF0012C6FF0010C4FF306EFFFF255AFFFF1234
      B0FF000FBBFFE5D4CEFFDBC2B8FFDBC0B5FFDBC0B3FFDBBDB0FFDBBDAEFFDBBB
      ABFFDBBBA9FFDAB8A6FFDAB8A4FFDFBFACFFFBF4E9FFFBF4E8FFF4E6D8FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000875B48FFFAF6F1FFFAF6F0FFFAF6F1FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFBAB1B0FF698FA4FF21933AFF109626FF1F9D
      33FF0A7B16FFDAB8A6FFDAB8A4FFDFBFACFFF6EEE4FFEFE4D5FFE8D4C3FF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      000000000000878787CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FF646464FF5C5C5CFF4B4B
      4BFF434343FF9D9D9DFF008B00FF51EF89FF4FED87FF4AE882FF29C748FF0000
      0000000000000000000000000000000000000000000000000000000000007380
      CBD0196BFFFF1B6DFFFF1059FFFF002AFFFF0004C2FF8C8C8BA5464646470000
      000000000000AEAEAED0A9A9A9FF656565680000000000000000000000000000
      000000000000008B00FF86F6A4FF4EEC86FF4CEA84FF29C747FF007900FF0442
      FFFF0027F2FF0000000000000000000000000000000000000000000000001840
      E9FF4B86FFFF3A6BFEFF2249E8FFE6E6F6FFE9DDD9FF0015C7FF3071FBFF2155
      FFFF153CC9FF2C33C0FFE5D9D9FFDBC2B7FFDBC1B5FFDBBEB1FFDBBEB0FFDBBB
      ACFFDBBBABFFDBB9A7FFDBB9A5FFDFC0ACFFFBF5EAFFFBF5EBFFF4E7D9FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      0000895C49FFFBF8F3FFFCF7F3FFFBF7F3FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDAC1B8FF62B098FF61FD97FF59F08AFF44D0
      66FF33BA50FF067510FF91A56CFFDFC0ACFFF6EFE6FFF0E3D8FFE9D4C4FF7956
      45FF000000000000000000000000000000000000000000000000000000000000
      000000000000888888CB3A3A3AFF616161FF727272FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7A7A7AFF727272FF646464FF5C5C5CFF4B4B
      4BFF434343FF9D9D9DFF008D00FF51EF89FF4FED87FF4AE882FF29C748FF0000
      000000000000000000000000000000000000000000000000000000000000787A
      8282145DFAFF2387FFFF1666FFFF002EFFFF0509A5FF585857FF3B3B3BFF8080
      808B2D2D2D2EB1B1B1DBA5A5A5FF5E5E5E600000000000000000000000000000
      000014141415008B00FF86F7A5FF4FED87FF4CEA84FF29C748FF007900FF003B
      FFFF2F39BEF10000000000000000000000000000000000000000000000003367
      F3FF579CFFFF3765F7FF001BD2FFFDFBF8FFDBC8C3FF5C64D6FF021BCCFF2660
      FFFF1D50FDFF0014C0FF7879CAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFFDBB9A8FFDBB9A5FFDFC0ADFFFBF5EBFFFBF5EAFFF4E7D9FF7955
      44FF000000000000000000000000000000000000000000000000000000000000
      00008B5D4BFFFBF8F4FFFBF8F4FFFBF8F5FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FF5AC079FF61FE97FF5FFB95FF4FE1
      77FF42CD63FF1F9C32FF0A7510FFDFC0ADFFF7F0E7FFF0E5D7FFE9D5C5FF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000008B8B8BCB3E3E3EFF616161FF727272FF999999FFB3B3B3FFC9C8
      C8FFB9B8B8FF9E9694FF988D8AFF887773FF7A6F6BFF6B625FFF615B58FF4C4B
      4AFF434343FF9D9D9DFF008D00FF008900FF008700FF008300FF008100FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0D0E0E78736BFF34301EFF34343435000000000E0E0E0F5C5C5C5E7C7C
      7CFA787878FF9F9F9FFF999999FF56588CE70013DCFF001DE9FF131663FE4B4B
      4AFFA2A2A2FF008D00FF86F7A5FF84F4A3FF82F2A1FF48E680FF007A00FF6D6D
      6D71000000000000000000000000000000000000000000000000000000004545
      4646283ED6FF0020DEFFC5CCF8FFFDFBF8FFDBC7C2FFDCC9C5FFE1D7DEFF031E
      CFFF000FC2FF9190D7FFE1D3D5FFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFFDBB9A8FFDBB8A6FFE0C0AEFFFCF6ECFFFBF6EBFFF4E8DAFF7A57
      45FF000000000000000000000000000000000000000000000000000000000000
      00008B5E4CFFFCFAF7FFFCF9F6FFFCFAF7FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFBAC4A6FF4DEA7AFF5AF78DFF5DF7
      91FF55EB85FF3CC55BFF2EB046FF19791AFFD9E3CDFFF2E4DAFFE9D5C6FF7B58
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000008D8D8DCB404040FF616161FF727272FF999898FFB5B2B2FFCDC5
      C5FFB4BDBEFF5CB7CAFF36B4D3FF1BABD0FF1BA0C5FF2488A7FF2D7390FF484E
      50FF49403CFF9D9C9BFF999999FF919191FF8C8C8CFF8E8E8EFFB0B0B0E60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6AFF353532FE000000000000000000000000000000001616
      16176969696CA4A4A4FE939393FF3C3620FF0A37D6FF082AB8FF4C4832FF9A9A
      95FF8C8C8CDC008D00FF008B00FF008700FF008500FF008100FF007A00FF7A7A
      7A81000000000000000000000000000000000000000000000000000000000000
      0000BAA397FF95A4F5FFFEFCFAFFFEFCF9FFDCC7C2FFDCC8C3FFDECBC7FF4C55
      CDFFB2AFDAFFE2D0CAFFDCC4BCFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFFDBB9A8FFDBB8A6FFE0C0AFFFFCF6EDFFFBF6EDFFF4E8DBFF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      00008C604BFFFCFBF8FFFCFAF8FFFCFBF8FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FF2BC056FF54F085FF60FE
      97FF5CF58FFF4AD96FFF3AC258FF138C22FF2B892FFFF1E4D9FFE9D6C7FF7B57
      46FF000000000000000000000000000000000000000000000000000000000000
      000000000000909090CB424242FF675E5BFF727372FF4BE9FFFF85FEFFFF94FE
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B2FF0070A9FF0065A1FF005E95FF1B1714FF120F0DFF141414FF898989CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E5E5EFF767676DF000000000000000000000000000000000000
      000000000000ADADADFF888888FF1552DBFF1F80FFFF0C52FFFF0036FFFF4B4B
      4B4C00000000000000000000000000000000000000001F1F1F20B2B2B2FF8C8C
      8C9F000000000000000000000000000000000000000000000000000000000000
      00008F5F4BFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFDBBAA9FFDBB9A6FFE0C1AEFFFCF6EEFFFDF7EEFFF4E8DCFF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      00008F604CFFFDFCFAFFFDFCFAFFFDFCFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFD8BEB2FF5AC06FFF58F6
      89FF5DFA92FF5AF28CFF52E57BFF35BB51FF27A63CFF4D994CFFE7D5C6FF8059
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000919191CB454443FF33869DFF00C2FAFF4CE7FFFF88F9FFFF95FD
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B1FF006FA7FF006199FF00629BFF005E95FF0C2733FF151413FF898989CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080809585858FF8C8C8CC5000000000000000000000000000000000000
      000000000000B1B1B1FF828282FF0D39D8FD2A98FFFF125BFFFF003BFFFF0909
      090A000000000000000000000000000000000000000012121213ABABABFE9090
      90AF000000000000000000000000000000000000000000000000000000000000
      00008F614BFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF8057
      46FF000000000000000000000000000000000000000000000000000000000000
      00008F624CFFFEFDFBFFFDFCFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFD0C0ADFF43DD
      6EFF59F68BFF5FFC95FF59F08AFF43CF65FF33B84EFF0A7B16FF62A257FF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000949292CB226687FF00AADEFF00BFF3FF4DE6FFFF88F9FFFF95FD
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B1FF006FA7FF006199FF006199FF006199FF00629BFF143342FF898989CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C3D4C4C4CFF84848490000000000000000000000000000000000000
      000000000000B9B9B7FF747470FF232323246E6D6D71707068E7060606070000
      0000000000000000000000000000000000000000000003030304ACACACF48989
      89CE000000000000000000000000000000000000000000000000000000000000
      000091624CFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF8157
      46FF000000000000000000000000000000000000000000000000000000000000
      000091634DFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFC0F0
      CAFF2CC55AFF5AF78CFF5FFC96FF56EC86FF4DDE74FF2CB547FF2A8F38FF6F61
      4FFF000000000000000000000000000000000000000000000000000000000000
      000000000000969494CB206C8EFF00AADDFF00BFF3FF4DE6FFFF88F9FFFF95FD
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B1FF006FA7FF006199FF006199FF006199FF006199FF135070FF8A8989CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000056565658464646FF71717176000000000000000000000000000000000000
      0000000000009F9EB0FF545373FF1B1B1B1C737373777A7A77E1000000000000
      0000000000000000000000000000000000000000000000000000AFAFAFEB7A7A
      7ADD000000000000000000000000000000000000000000000000000000000000
      000092614DFFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF8159
      46FF000000000000000000000000000000000000000000000000000000000000
      000092624EFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FF9BE3B1FF55F285FF5BF88EFF5DF690FF54EB84FF5D9167FF6E676DFF6462
      62FF404040410000000000000000000000000000000000000000000000000000
      000000000000999695CB236E92FF00AADDFF00BFF3FF4DE6FFFF88F9FFFF95FD
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B1FF006FA7FF006199FF006199FF006199FF006199FF16526FFF8D8B8ACB0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008787878F3F3F3FFF40404041000000000000000000000000000000008788
      9AA40016C8FE0022E8FF0020E3FF0014D0FF0000A1FF82827FDA000000000000
      0000000000000000000000000000000000000000000000000000ADADADD24646
      46F8010101020000000000000000000000000000000000000000000000000000
      000093624EFFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF8258
      48FF000000000000000000000000000000000000000000000000000000000000
      000093634FFFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FF4BC369FF40DB6CFF66EB93FF959596FFE3E3E3FFC5C4C4FF8385
      94FF333B9BFF0606060700000000000000000000000000000000000000000000
      0000000000009A9896CB257094FF00AADDFF00BFF3FF4DE6FFFF88F9FFFF95FD
      FFFF69F0FFFF20D8FFFF00CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF0079
      B1FF006FA7FF006199FF006199FF006199FF006199FF175372FF8D8D8BCB0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9AAA3C3C3CFF26262627000000000000000000000000000000000017
      D2FF002BFBFF0028F5FF0026F0FF001EE1FF0016D7FF878786D4000000000000
      0000000000000000000000000000000000000000000000000000A8A8A8C53636
      36FD0C0C0C0D0000000000000000000000000000000000000000000000000000
      000094634EFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF8258
      47FF000000000000000000000000000000000000000000000000000000000000
      000094644FFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFC6BFA1FF35C45EFFA7A6A7FFE3E0E2FFF1F1EFFFE3E2DCFF182F
      CBFF1629C2FF7878919E00000000000000000000000000000000000000000000
      0000000000009D9C9ACB287397FF00AADDFF00BFF3FF4DE6FFFF88F9FFFF96FD
      FFFF6BF0FFFF21D8FFFF00CCFFFF00B7EAFF00AFE1FF009ACEFF0091C4FF0079
      B1FF006FA7FF006199FF006199FF006199FF006199FF195573FF918E8DCB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ABABABE1626262EF01010102000000000000000000000000141414150648
      FFFF0A4DFFFF0849FFFF0440FFFF002AF7FF0024EBFF7575A4D1020202030000
      00000000000000000000000000000000000000000000000000009A9A9AAB3333
      2AFF2929292A0000000000000000000000000000000000000000000000000000
      000095644FFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF865D
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000956550FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFBEBDBDFFE2E2E1FF5A77EDFF345BEEFF3558
      E7FF233CCFFF0207A2FF4040A2E4000000000000000000000000000000000000
      0000000000009D9D9BCB297598FF00AADDFF00BFF3FF50E6FFFF90F9FFFF99FD
      FEFF5CF0FEFF11DCF8FF00D4F5FF00C3E7FF00BAE1FF00A8D3FF009DCBFF0084
      B6FF0070A8FF005F97FF006098FF006199FF006199FF1A5674FF91908DCB0000
      0000000000000000000000000000000000000000000000000000000000000303
      0304AAAA9FF8878782D70000000000000000000000000909090A6A6A6B6E1059
      FFFF1461FFFF135DFFFF0D52FFFF0032FFFF0027F3FF0D0A77FE66665FE96060
      60631D1D1D1E0000000000000000000000000000000000000000919193A11412
      5CFF707073760000000000000000000000000000000000000000000000000000
      000096664FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFFA292
      8CD7000000000000000000000000000000000000000000000000000000000000
      0000966750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFCFCCCAFFCBC9C3FF3259ECFF4877FFFF3456
      E5FF223CCEFF0206A1FF5050A3DA000000000000000000000000000000000000
      000000000000A09F9DCB2D779AFF00AEDFFF00DFF7FF00FFFFFF00FFFFFF63EC
      EBFF92E0E0FFC9D0D0FFD8CBCBFFD4C1BFFFCDBDBAFFB9B2B1FFAAACAEFF6EA2
      B0FF4F9CB2FF038FBFFF0089C0FF0073ACFF00669EFF1C5776FF929190CB0000
      000000000000000000000000000000000000000000000000000061616364001E
      E2FF0021EAFF0011D6FF4242ADEA848482D03D3D3DFEA3A3A3FFC8C4B7FF1666
      FFFF288CFFFF2381FFFF1968FFFF033EFFFF002FFFFFA09EBCFFC2C2BEFF8F8F
      8FFF707070FF434343FF323232FF8A8A8AC37878787F0017DDFE0029FFFF0024
      EBFF0021E4FF5252ABE30E0E0E0F000000000000000000000000000000000000
      0000986750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA4836EFFC8B3A5FFC6AD9AFFC3A283FFC19C73FFB88F60FF9E8276EA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA4836FFFC8B3A5FFC6AD9AFFC3A283FFAE9286FF375CE9FF3E67F4FF2640
      D3FF182AC0FF71719CB902020203000000000000000000000000000000000000
      000000000000A3A09FCB2E759BFF00F5FAFF00FEFEFFA9E8E8FFE9DDDDFFE4D7
      D7FFDDD4D4FFD3D0D0FFCECDCDFFC7C7C7FFC2C1C1FFB5B4B4FFA9A8A7FFA09A
      99FFA59D9CFFA19591FF828D94FF0078AEFF0071ADFF1D5977FF939191CB0000
      00000000000000000000000000000000000000000000252525261829C7F8002C
      FBFF002AFCFF101B52FF2F2F24FF979797FFBCBCBCFF828282FF605E59FD1F4C
      F6F6298EFFFF2381FFFF1968FFFF0340FFFF0020EEFF82827ADE949494A2A8A8
      A8FDB4B4B4FF9D9D9DFF858585FF4D4D4DFF3A3A37FF26261DFF0630CBFF002D
      FCFF0027F1FF000EC2FF6F6F7275000000000000000000000000000000000000
      0000986652FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFFA08A81E3282828290000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986753FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF1926B6FF2641D2FF1525
      BBFF00029FFF0D0D0D0E00000000000000000000000000000000000000000000
      000000000000A4A0A0CB20BAC4FFFFEBEBFFEEE8E8FFE3E3E3FFE0E0E0FFDCDC
      DCFFD9D9D9FFC0C0C0FFA9A9A9FF808080FF6A6A6AFF4F4F4FFF525252FF8E8E
      8EFF8D8D8DFF979797FF959595FF8A8989FF8B8481FF155E84FF949291CB0000
      00000000000000000000000000000000000000000000878BA4AC0A4DFEFF115B
      FFFF0C54FFFFA19984FF6B6858FF2F2F47FF595958EF79797980545454550505
      05061D1D1E1E737ECBD05E6FD2DD787AAFCB2928A2F31B1BABF78080898F0000
      0000000000004949494A8282828F3E3E3DFF696A70FF6C6762FF1C5FDFFF0E54
      FFFF0440FFFF0024EDFF8181A5C0000000000000000000000000000000000000
      0000996851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA68269FFF2D7AEFFEECD9BFFC59A64FFA08980E400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826AFFF2D7AEFFEECD9BFFC59A65FF8D6A5DF900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098A1A2E06EBFC5FFEEECECFFEAEAEAFFE4E4E4FFE2E2E2FFDCDC
      DCFFBABABAFFB7B7B7FFB3B3B3FFA3A3A3FF949494FF606060FF393939FF4545
      45FF8B8B8BFF939393FF979797FF8C8C8CFF878686FF436373FF818687DF0000
      00000000000000000000000000000000000000000000848695981258FBFF1F74
      FFFF1869FFFF133ABEFF042DD9FF4E4D82FF6A6A66FF494949FF3E3E3EFF4544
      42F6818079D17474747B4F4F4F500016D2FE0028F8FF0022EEFF000BC3FF7D7D
      7C87878787C8585858FF898989FFB5B5B4FF9B9A99FF1C7AFFFF2487FFFF1662
      FFFF094BFFFF001FE4FF82828B92000000000000000000000000000000000000
      00009A6651FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58064FFEECE98FFEFC785FFA19188DC2020202100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58065FFEECE98FFEFC785FF8C6D60F72F2F2F3000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000072727275969595FFF1F1F1FFEEEEEEFFE7E7E7FFE4E4E4FFD2D2
      D2FFF0F0F0FFFDFDFDFFF5F5F5FFDADADAFFCACACAFFACACACFF9E9E9EFF9898
      98FF777777FF949494FF999999FF929292FF8D8D8DFF5C5C5CFE6D6D6D710000
      0000000000000000000000000000000000000000000000000000888EAAAA2C93
      FFFF2077FFFF0645FFFF0018CAFE00000000030303044B4B4B4C73737377A2A2
      A2CA939393F38F8F8EFF959492FF3E4248FF0E58FFFF082897FFBDB6A0FF7575
      6EFF6B6B6AF58080808A5151515200000000000000007484CCCE165EF9FF1666
      FFFF0847FDFF69696B6D00000000000000000000000000000000000000000000
      0000996750FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA37759FFBF9460FFA4948DD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996851FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA3785AFFBF9461FF8E6E64F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B0CA7A7A7D4F2F2F2FFF3F3F3FFE8E8E8FFE6E6E6FFDADA
      DAFFFAFAFAFFFFFFFFFFFEFEFEFFDFDFDFFFCECECEFFAFAFAFFF9E9E9EFF9A9A
      9AFFA0A0A0FFA7A7A7FFA0A0A0FF989898FF909090FF959595CD080808090000
      0000000000000000000000000000000000000000000000000000050506063053
      E5F10A3FEAFE5864C0E057575859000000000000000000000000000000000000
      000001010102484848497777777D2068E0FF1D75FFFF0649FFFF102B90FF6B6B
      6C6F04040405000000000000000000000000000000000A0A0B0B74757C7C6071
      D3DC878BABB20000000000000000000000000000000000000000000000000000
      0000976550FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77A56FFA59590D41919191A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976651FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77B57FF917167F527272728000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000064646466A9A9A9DFB3B3B3FFCECECEFFEAEA
      EAFFE7E7E7FFDCDCDCFFDBDBDBFFD8D8D8FFD1D1D1FFCDCDCDFFCDCDCDFFC0C0
      C0FFB9B9B9FF969696FF808080FF979797D75E5E5E6000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004362E5EA1A68F9FF0945F7FF1429C8F90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986651FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B70
      60FFA49A97BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986752FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B71
      61FF977C71EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505069393939CA6A6A6E19A9A
      9AFFA9A9A9FFBABABAFFBEBEBEFFBEBEBEFFBDBDBDFFB1B1B1FFA6A6A6FF8D8D
      8DFF818181FFA1A1A1D48787878F020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016161717797A818382838F942D2D2D2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6C58FF9B6A56FF9A6A55FF996955FF996955FF996A56FF986854FF9769
      55FF976753FF956654FF956752FF936653FF936451FF916350FF916451FF8C89
      8894070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6D59FF9B6B57FF9A6B56FF996A56FF996A56FF996B57FF986955FF976A
      56FF976854FF956755FF956853FF936754FF936552FF916451FF916552FF9C8F
      88D5141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855F4EFF835E4DFF835D4DFF835D4DFF835D4DFF825D4DFF825D4DFF825E
      4DFF825C4CFF825C4CFF815C4CFF815C4CFF815D4CFF805B4BFF805B4BFF7D5A
      4BFF7D5A4AFF7C5B4AFF7C594AFF7B5A49FF7A5848FF795948FF795949FF7959
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D6969FF9E6666FF7A47
      47FF804949FFE0D2D2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B1B545454C9090909180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805A49FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFD3B9C1FFA490CFFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7454
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976262FFFFE4E4FF9C64
      64FF945C5CFF774343FF956363FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010B0B0B2BAABAB3B3B0FFB9B9B9FF9191
      91FF808080FF0000000000000000000000000000000000000000000000000000
      0000805847FFECDACBFFECDACCFFECDBCCFFECDBCCFFD5C6D1FFA69ADBFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7455
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8FF8282
      82FF959595FF909090FF858585FFAEAEAEFFE1E1E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976161FFFFDBDBFF9D65
      65FF9F6767FFA06868FFA16969FF905858FF794646FF9D6F6FFFD5C3C3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000024BCBC1455FFFF9A9895FFDCDBDAFF8888
      88FF919191FF0404040D00000000000000000000000000000000000000000000
      0000815A48FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFDAD1E0FFAAA3E7FFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7654
      45FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B1FF858585FFA4A4
      A4FFA0A0A0FF949494FF969696FF878787FF777777FFC6C6C6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      63FF666666FF616362FF606160FF565656FF545454FF744E4EFFFFDBDBFF9E65
      65FFA06868FFA06868FFA06868FFA06868FFA26A6AFF844C4CFF703D3DFFBEA3
      A3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000010D0D0028C2C22E79FFFF3E92FFFF5FC7FFFF88CBEBFFE8E7
      E7FFB6B6B6FF0000000000000000000000000000000000000000000000000000
      0000825A49FFFBD9B1FFFBD9B1FFFBD9B1FFFBD9B1FFE5C6B6FFB89DC1FFFBD9
      B1FFFBD9B1FFFBD9B0FFFBD9B0FFFAD8B0FFFAD8B0FFFAD8AFFFFAD8AFFFFAD8
      AEFFFAD8AEFFFAD7ADFFF9D7ADFFF9D7ACFFF9D7ACFFF6D1A6FFF3CB9EFF7755
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8CFF999999FFACACACFFAAAAAAFF9797
      97FF6C6C6CFF5D5D5DFF6C6C6CFF6D6D6DFF484848FF8F8F8FFF8C8C8CFF7272
      72FF929292FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98FF737373FF686768FF878185FFBCB4BAFFBFB8BDFF976A6CFFFFDADAFFA067
      67FFA26A6AFFA26A6AFFA26A6AFFA16969FFA16969FFA16969FFA06868FFA169
      69FF915959FF5D3F3FFFB9BABAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000027C7C7195AFFFF3F93FFFF52AEFFFF65CDFFFF61CCFFFFB9B4
      AEFFC3C3C3FF3232327400000000000000000000000000000000000000000000
      0000835C49FFF8F2E9FFC3BFBAFF828181FFD1CDC7FFDFD9EBFFADA9F0FFF7F1
      E9FFF7F1E9FFF7F1E8FFF7F0E8FFF7F0E7FFF7F0E7FFF6EFE6FFF6EFE5FFF6EE
      E4FFF5EEE4FFF5EDE2FFF5EDE1FFF4ECE0FFF4EBDFFFEFE1D2FFE6D1BFFF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      000000000000CACACAFF8F8F8FFFAFAFAFFFB1B1B1FFAEAEAEFF979797FF6969
      69FFA8A8A8FFA4A4A4FF8B8B8BFF5C5C5CFF4A4A4AFF383838FF585858FF8B8B
      8BFF838383FF727272FFA7A7A7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF727272FF6B6569FF339D50FF48B466FF59B572FF88675FFFFFDADAFFA168
      68FFA36B6BFFA36B6BFFA36B6BFFA36B6BFFA26A6AFFA26A6AFFA16969FFA26A
      6AFFA16969FF5D3B3BFF5B5C5CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      13130029CDCD307BFFFF4095FFFF63C8FFFF65CCFFFF5ABBFFFF4AA4FFFF2976
      FFFF4860AEFB2B2B2B6A00000000000000000000000000000000000000000000
      0000855D4AFFF8F3ECFF515150FF5B5B5BFF717070FFE0DBEEFFAEABF2FFF8F3
      ECFFF8F3EBFFF8F2EBFFF8F2EBFFF8F2EAFFF7F1E9FFF7F1E8FFF7F0E8FFF6F0
      E6FFF6EFE6FFF6EEE4FFF5EEE3FFF5EDE2FFF5ECE1FFEEE2D2FFE7D2C0FF7956
      47FF000000000000000000000000000000000000000000000000000000009D9D
      9DFF9A9A9AFFBCBCBCFFBBBBBBFF989898FF6E6E6EFFBEBEBEFFDBDBDBFFD2D2
      D2FFD1D1D1FFAAAAAAFFABABABFFAEAEAEFF717171FF272727FF2C2C2CFF3030
      30FF2F2F2FFF4D4D4DFF6B6B6BFF757575FF6E6E6EFFA5A5A5FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF7A7A7AFF6E666CFF25963FFF1AA63BFF1AA63BFF756853FFFFDBDDFFA56C
      6CFFA56D6DFFA56D6DFFA56D6DFFA56D6DFFA46C6CFFA46C6CFFA36B6BFFA36B
      6BFFA26A6AFF603D3DFF4B4C4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000029
      CBCD1C5EFEFF4196FFFF54B1FFFF65CCFFFF64CBFFFF4AA5FFFF3C8EFFFF0A42
      F9F9000E56560000000000000000000000000000000000000000000000000000
      0000875C49FFF9F4EDFFC7C3BEFF5C5B5BFFC9C5C0FFE1DCEFFFAFABF2FFF9F3
      EDFFF9F3EDFFF8F3ECFFF8F3ECFFF8F2EBFFF8F2EAFFF7F1E9FFF7F1E9FFF7F0
      E7FFF6F0E7FFF6EFE5FFF6EEE4FFF5EDE3FFF5EDE2FFF0E1D3FFE7D3C1FF7958
      46FF000000000000000000000000000000000000000000000000EAEAEAFFB6B6
      B6FFC2C2C2FFBBBBBBFF999999FF959595FFC9C9C9FFD9D9D9FFD7D7D7FFD4D4
      D4FFD2D2D2FFADADADFFADADADFFAEAEAEFFA7A7A7FF4A4A4AFF2B2B2BFF2828
      28FF2B2B2BFF2E2E2EFF2E2E2EFF555555FF707070FF6E6E6EFF676767FFBFBF
      BFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC98FFF0000000000000000A1A1
      A1FF818181FF70696EFF219039FF169E33FF169E33FF776753FFFFDBDDFFA66D
      6DFFA76F6FFFA66E6EFFA66E6EFFA66E6EFFA66E6EFFA56D6DFFA56D6DFFA46C
      6CFFA36B6BFF634040FF4C4F4FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272A600021B0D42F76
      EFFF4398FFFF64CAFFFF66CEFFFF58B9FFFF49A2FFFF2B74FFFF093FF5F50000
      0000000000000000000000000000000000000000000000000000000000000000
      0000865E4BFFFAF5F1FFF9F5EFFFF9F5F0FFF9F5F0FFE1DDF1FFAFACF4FFF9F5
      EFFFF9F5EFFFF9F4EFFFF9F4EEFFF9F4EDFFF8F3EDFFF8F3ECFFF8F2EBFFF7F1
      E9FFF7F1E9FFF7F0E7FFF6EFE6FFF6EEE5FFF5EEE4FFEFE2D4FFE8D3C2FF7A57
      46FF000000000000000000000000000000000000000000000000D4D4D4FF9C9C
      9CFF838383FFDCDCDCFFE3E3E3FFDDDDDDFFDCDCDCFFDADADAFFD9D9D9FFD6D6
      D6FFD6D6D6FFB1B1B1FFB2B2B2FFB1B1B1FFB1B1B1FFB3B3B3FFB3B3B3FF8484
      84FF656565FF3A3A3AFF262626FF272727FF2A2A2AFF2C2C2CFF323232FF6262
      62FF696969FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000349F34FF5AB05AFF00000000A3A3
      A3FF828282FF726B70FF1B822BFF0E8F24FF0E8F24FF826456FFFFDBDDFFA86E
      6FFFA97171FFA97171FFA87070FFA56E6EFFA86F6FFFA76F6FFFA76F6FFFA66E
      6EFFA56D6DFF644242FF535454FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606118B8986FF515F7EFF3D8B
      E8FF54B2FBFF66CEFFFF65CBFFFF48A1FFFF3B8CFFFF073CF5F5000E47470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875D4AFFFAF6F1FFFAF6F0FFFAF6F1FFFAF6F1FFE1DEF2FFAFADF5FFFAF6
      F1FFFAF6F0FFF9F5F0FFF9F5EFFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3ECFFF8F2
      EAFFF7F1EAFFF7F0E8FFF7F0E7FFF6EFE5FFF6EEE4FFEFE4D5FFE8D4C3FF7A57
      48FF0000000000000000000000000000000000000000E9E9E9FFA5A5A5FFB9B9
      B9FFE2E2E2FFE2E2E2FFE0E0E0FFDFDFDFFFDEDEDEFFDBDBDBFFDADADAFFD8D8
      D8FFD7D7D7FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB2B2B2FFB3B3B3FFB4B4
      B4FFB3B3B3FF808080FF636363FF393939FF252525FF262626FF292929FF2A2A
      2AFF646464FFD6D6D6FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000349E34FF0B8F18FF5CB15CFFA4A4
      A4FF838383FF716A70FF167825FF0B871CFF0B871CFF846657FFFFDCDEFFA96F
      6FFFAA7272FFAA7272FFAA7272FFA36D6DFFA56E6EFFA87070FFA87070FFA76F
      6FFFA66E6EFF664444FF545656FF000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E253C3C3CA9464646CB4848
      48DA414141C8212121680707071A0000000000000000969696FFCCCCCCFF678E
      A0FF57B7E6FF56B6FFFF48A1FFFF2970FFFF0539F0F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000895E4BFFFBF8F3FFFCF7F3FFFBF7F3FFFBF8F3FFE2E0F5FFB0AEF7FFFBF7
      F3FFFBF7F3FFFAF7F2FFFAF6F2FFFAF6F1FFFAF5F0FFF9F5EFFFF9F4EEFFF8F3
      ECFFF8F3ECFFF8F2EAFFF7F1E9FFF7F0E7FFF6EFE6FFF0E3D8FFE9D4C4FF7B58
      47FF0000000000000000000000000000000000000000B4B4B4FFCECECEFFE6E6
      E6FFE6E6E6FFE4E4E4FFE4E4E4FFE2E2E2FFE0E0E0FFDEDEDEFFDDDDDDFFDADA
      DAFFDBDBDBFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB8B8B9FFC59B67FFC88D
      45FFC68F4DFFB9A99BFFB4B8BEFFB6B7B8FFB5B5B5FF787878FF5F5F5FFF5B5B
      5BFFA3A3A3FF787878FF979797FF000000000000000000000000000000000000
      000000000000000000000000000000000000349E34FF38C466FF37BD65FF50AE
      50FFB4B4B4FF736C72FF0D6C15FF03730DFF03730DFF866959FFFFDCDDFFAB71
      72FFAC7474FFAD7373FF986969FFA16B6BFFA36D6DFFA87171FFAB7272FFA971
      71FFA87070FF6A4747FF545656FF000000000000000000000000000000000000
      0000000000000000000000000000474747BC5A5A5AFC646668EC76777AE97A7A
      7EDF727376E3454546F5474748FA0E0E0E311A1A1A518F8F8FFFB6B6B6FFC8C3
      C0FF6392AAFF4295EEFF3785F7FF0538EEEE000B3B3B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5F4DFFFDDDB6FFFDDDB6FFFDDDB6FFFDDDB6FFE6C9BCFFB99FC5FFFDDD
      B6FFFDDDB6FFFDDCB6FFFDDCB6FFFCDCB5FFFCDCB5FFFCDBB4FFFCDBB4FFFCDB
      B3FFFBDAB2FFFBDAB2FFFBD9B1FFFBD9B1FFFBD9B0FFF8D4A9FFF5CDA1FF7C58
      47FF0000000000000000000000000000000000000000BCBCBCFFCCCCCCFFE8E8
      E8FFE7E7E7FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2E2FFDFDFDFFFDEDEDEFFDBDB
      DBFFD9D9D9FFBDBDBDFFBCBCBCFFBBBBBBFFBBBCBCFFCE9042FFDB8A24FFE198
      3AFFDD9230FFD4720AFFCD6D0DFFB6B5B5FFB5B8BAFFB8B8B8FFB4B4B4FFAEAE
      AEFFB5B5B5FF999999FF9B9B9BFF0000000000000000278827FF137713FF1881
      18FF198519FF168716FF118611FF0E890EFF007500FF42E276FF3AC869FF0B95
      15FF4DAA4DFF736C73FF0A660EFF006B05FF006B05FF8C685BFFFFDCDDFFAC72
      72FFAD7474FF938181FF808585FF9B6C6CFFA26D6DFFA77171FFAA7373FFAA72
      72FFA97171FF6C4949FF575858FF000000000000000000000000000000000000
      000000000000595959DA68696AFBBDA98EEECBA669E2CEA769E0CFA96DE1D0AC
      70E3CFA86BE2CC9D54E0D0A96EE69DA0A4F5444546FDBDBDBDFFEEEEEEFFCECE
      CEFFD5D4D4FF345BABFF002AC5EA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B604EFFFCFAF7FFFCF9F6FFFCFAF7FFFCFAF7FFE3E1F8FFB1AFF9FFFCFA
      F7FFFCF9F7FFFCF9F6FFFBF9F5FFFBF8F4FFFBF7F3FFFAF6F2FFFAF6F1FFF9F5
      EFFFF9F4EEFFF8F3ECFFF8F2EBFFF7F1E9FFF7F1E8FFF2E4DAFFE9D5C6FF7D5A
      48FF0000000000000000000000000000000000000000D2D2D2FFBEBEBEFFECEC
      ECFFEBEBEBFFE9E9E9FFE8E8E8FFE6E6E6FFE5E5E5FFE2E2E2FFE0E0E0FFDEDE
      DEFFCCCCCCFFC2C2C2FFC1C1C1FFC0C0C1FFBFC3C8FFE6A857FFEBB56AFFE6A7
      51FFE5A64FFFE3A34AFFE4A349FFDF9637FFCF6800FFBABBBCFFB9B9B9FFB8B8
      B8FFB8B8B8FF8B8B8BFFB5B5B5FF0000000000000000157015FF3CD16DFF35CC
      65FF35CF67FF38D06AFF3BD36CFF3ED46EFF3ED770FF44E377FF47E57AFF3FCA
      6BFF3CBD68FF4FA94EFF9ED6C5FF65D1B3FF65D1B3FFA07975FFFFDBDCFFAE73
      73FFBEA2A2FFD0D0D0FFD2D2D2FFA39C9CFFA87070FFAD7575FFAD7575FFAC74
      74FFAB7373FF6F4D4DFF595A5AFF000000000000000000000000000000000000
      000010101023737475FBA39D95F5CCA667DECEAB73DFD1AF7CE1D1B17FE2D7BA
      8CE6D9BC8EE7D6B684E6D0AB6FE4D6B483EACECDCCFB5A5A5AFFC3C3C3FF9C9C
      9CFFB0B0B0FF7B7874FF09123245000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C624DFFFCFBF8FFC7C5C4FF828282FFD4D3D2FFE4E2FAFFB1B0FBFFFCFA
      F8FFFCFAF8FFFCFAF7FFFCF9F6FFFBF8F5FFFBF8F4FFFAF7F3FFFAF6F2FFFAF5
      F0FFF9F5EFFFF9F4EDFFF8F3ECFFF8F2EAFFF7F1E9FFF1E4D9FFE9D6C7FF7D59
      48FF0000000000000000000000000000000000000000E2E2E2FFB4B4B4FFEDED
      EDFFEDEDEDFFEBEBEBFFEAEAEAFFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFDFDF
      DFFFC6C6C6FFC4C4C4FFC4C4C4FFC3C5C7FFC9B094FFEFBD80FFEAB165FFE7A8
      53FFE6A751FFE4A44CFFE3A349FFE2A347FFD67915FFBCBEC0FFBEBDBCFFC4C1
      C0FFBABABAFF7A7A7AFFCBCBCBFF0000000000000000116D11FF4CDA80FF37D6
      6AFF39D86CFF3DDC70FF40DE73FF42E175FF45E378FF47E67AFF48E680FF4BEA
      84FF41CB6DFF089A10FF5CCE71FFA7FFFFFFA7FFFFFFAA8686FFFFDADAFFAE73
      73FFC5ABABFFE9E9E9FFF8F8F8FFB1A4A4FFAF7676FFAE7676FFAE7676FFAD75
      75FFAC7474FF715050FF595B5BFF000000000000000000000000000000004848
      4894777778FED0AB72DDCBAB72DCCAAB72DBCAAB72DB007100FF007100FF006E
      00FF006C00FFB99963E2D7BD8FE6D9BC8EE8CFA567E2CBCBCAFB444445FE2E2E
      2E970404040C1E1E1E4500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F624EFFFEDEB9FF524E4AFF5B5B5BFF716E6BFFE7CABEFFB9A1C7FFFEDE
      B9FFFEDEB9FFFEDEB8FFFDDEB8FFFDDDB7FFFDDDB7FFFDDDB6FFFDDDB6FFFCDC
      B5FFFCDCB5FFFCDBB3FFFCDBB3FFFBDAB2FFFBDAB1FFF8D4AAFFF5CDA2FF805B
      4AFF000000000000000000000000000000000000000000000000ADADADFFF2F2
      F2FFF0F0F0FFEEEEEEFFEDEDEDFFEAEAEAFFE8E8E8FFE5E5E5FFE3E3E3FFCFCF
      CFFFCACACAFFC9C9C9FFC9C9C9FFCEB391FFDE922EFFEEB973FFEAAD5BFFE8AA
      57FFE7A954FFE5A64FFFE4A44DFFE3A449FFD77A16FFAEACABFF5AA7DEFF4BAC
      F8FFCBC6C2FF747474FF0000000000000000000000000E6C0EFF57DF89FF3AD8
      6DFF3CDA6FFF40DE73FF42E075FF45E378FF47E57AFF4AE882FF4CEA84FF4FED
      87FF51EF89FF45CD70FF43BE6CFF6DD080FFD7FFFFFFAD8282FFFFDADAFFB178
      78FFB27878FFC6AFAFFFBCB4B4FFB27878FFB17979FFB07878FFB07878FFAF77
      77FFAE7676FF765252FF5F6161FF000000000000000000000000000000007777
      77FB8A8A8AFBCCAC76DBCAAC77DBCAAC78DACAAC78DA007300FF3ED871FF22BC
      41FF22BC41FFB69662E0CAA667DDDBC29AE9D9BD8FE8D7B888EA97999EFB0505
      0514000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F644EFFFEFDFBFFCACAC9FF5C5C5CFFCCCBCBFFE5E4FDFFB2B2FEFFFEFD
      FCFFFDFCFCFFFDFCFAFFFDFBFAFFFCFAF8FFFCFAF7FFFBF9F5FFFBF8F4FFFAF7
      F2FFFAF6F1FFF9F5EFFFF9F4EEFFF8F3ECFFF8F2EBFFF1E5DCFFEAD6C8FF805A
      49FF000000000000000000000000000000000000000000000000D0D0D0FFF6F6
      F6FFF2F2F2FFEFEFEFFFEEEEEEFFEBEBEBFFE9E9E9FFE6E6E6FFE5E5E5FFCECE
      CEFFCECECEFFCCCCCCFFCCCDCDFFD89031FFEBB368FFECB56BFFEAAE5DFFE9AB
      58FFE8AA56FFE6A751FFE5A54EFFE4A54BFFD4730CFF8C8A88FF48B7FFFF5AB0
      EDFFC6C1BEFFA3A3A3FF0000000000000000000000000C6D0CFF58E28BFF3AD9
      6DFF3DDB70FF41DF74FF43E176FF47E57AFF49E781FF4CEA84FF4EEC86FF51EF
      89FF52F08AFF54F08CFF42BD6BFF7AD389FFE4FFFFFFB08383FFFFDADAFFB379
      79FFB48181FFB47A7AFFB37878FFB38080FFB27A7AFFB17979FFB17979FFB078
      78FFAF7777FF785555FF5F6161FF000000000000000000000000080808108686
      85FCCEB17BDCCBB07FD9CBB27FD9C9B481D8C9B281D8007600FF79EA98FF3ED8
      71FF24BE43FFB79B69DFCAAB72DCCBA669DDDAC097E7D0AC70E3D3B17BE84242
      42DC000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000091654FFFFEFEFEFFFEFEFDFFFEFEFEFFFFFFFFFFE6E6FFFFB3B3FFFFFEFE
      FEFFFEFEFEFFFEFDFCFFFDFCFCFFFDFBFAFFFDFBF9FFFCFAF7FFFBF9F6FFFBF8
      F4FFFAF7F2FFFAF5F0FFF9F5EFFFF9F3EDFFF8F3ECFFF2E6DDFFEAD7C9FF815A
      49FF00000000000000000000000000000000000000000000000000000000E0E0
      E0FFF7F7F7FFF2F2F2FFF0F0F0FFECECECFFEBEBEBFFE8E8E8FFDEDEDEFFD6D6
      D6FFD6D6D6FFD4D6D8FFD5C6B2FFF2BF83FFF0BF83FFECB163FFEBB061FFEAAD
      5BFFE9AB59FFE7A853FFE6A751FFDC912FFFD09B59FFA5A3A2FF55738AFFB7B3
      B1FFBBBBBBFF000000000000000000000000000000000C6D0CFF5BE38EFF3EDB
      70FF42DF74FF47E37AFF4AE581FF4EE985FF50EB87FF54EE8BFF52F08AFF55F3
      8DFF57F590FF0CAA15FF80D380FFFEFEFDFFFEFFFDFFB98989FFFFDADAFFB580
      80FFB68383FFB68383FFB68383FFB58282FFB48181FFB38080FFB38080FFB179
      79FFB17979FF795959FF636363FF0000000000000000000000002C2C2C53A096
      83F0CEB47FD9CBB483D8CDB588D8B7A378DBB7A37BDB007A00FF7BEC9BFF41DB
      74FF26C045FFB69C6CDEB79B6ADFB69763DFBB9D6CE3D7B989E6CCA059E04849
      49FE0E0E0E2B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000926450FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBFAFFFCFAF7FFFCF9F6FFFBF8
      F4FFFBF7F3FFFAF6F1FFF9F5F0FFF9F4EDFFF8F3ECFFF2E6DCFFEAD7C9FF815C
      49FF00000000000000000000000000000000000000000000000000000000B7B7
      B7FFF7F7F7FFF2F2F2FFF1F1F1FFEDEDEDFFEBEBEBFFE3E3E3FFDCDCDCFFDADA
      DAFFDADADAFFD9D4D0FFDC9837FFF3C389FFF2BD7AFFEDB265FFECB062FFEAAD
      5DFFE9AC5AFFE7A954FFE6A752FFD78016FFCFC0AFFFCFCFCFFFC3C1C0FFD1D1
      D1FF8A8A8AFF000000000000000000000000000000000D6E0DFF5FE590FF8DEB
      ACFF90ECB0FF97EEB5FF98F1B6FF9FF4BAFFA0F4BCFF83F4A9FF51F18AFF58F6
      91FF5AF995FF54AB54FFFFFDFCFFFFFBF8FFFFFBF8FFB88687FFFFDADAFFB783
      83FFB88585FFB78484FFB78484FFB68383FFB58282FFB48181FFB48181FFB27A
      7AFFB38080FF7A5B5BFF636464FF000000000000000000000000656565B2C3AE
      84DECCB588D7D0C19ADB008100FF2DC74CFF2DC74BFF2CC64BFF49E37CFF44DE
      77FF28C246FF26C045FF24BE43FF22BC41FF006C00FFD9BF96E7D0AC6FE27274
      76FE2C2C2C880000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000936551FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFCFBF8FFFCFAF7FFFBF8
      F5FFFBF8F4FFFAF6F1FFFAF5F0FFF9F4EEFFF8F3EDFFF2E6DCFFEAD7C9FF825B
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7FFE8E8E8FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE5E5E5FFE2E4
      E7FFE2DDD8FFEBB163FFF7C995FFF2BC77FFF0B66DFFEEB367FFEDB265FFEBAF
      5FFFEAAD5CFFE9AB56FFE7AA55FFD6C2AAFFD5D7D9FFD3D3D3FFD5D5D5FF8585
      85FFE5E5E5FF00000000000000000000000000000000329432FF1B861BFF1B89
      1BFF1B8B1BFF168C16FF168F16FF169116FF017A01FF63F497FF56F58FFF10A9
      1AFF58B358FF696A6BFFFFF6EDFFFFF5ECFFFFF5ECFFBA8888FFFFDADAFFB984
      84FFBA8787FFB98686FFB98686FFB88585FFB78484FFB68383FFB68383FFB481
      81FFB38080FF825E5EFF646565FF000000000000000000000000727272C4CAB6
      87DACCB889D6D3C69FDC008300FF4EE882FF4DE781FF4CE680FF4BE57EFF46E0
      79FF44DE77FF41DB74FF3ED871FF22BC41FF006E00FFD9C197E7D1AE78E27F80
      83FE3333339C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000946651FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBF9FFFCFAF8FFFBF9
      F5FFFBF8F4FFFAF6F2FFFAF6F0FFF9F4EEFFF9F3EDFFF3E8DEFFEAD7CAFF825B
      4AFF000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBEFFB1B1B1FFBABBBCFFC2C2C3FFD2D3D4FFD9DBDDFFE7D1
      B4FFE8A954FFF7CC9BFFF6C791FFF1B971FFF0B76EFFEEB468FFEDB266FFEBAF
      60FFEAAE5DFFE9AB59FFE09A3CFFDADEE4FFD9D9DAFFD9D9D9FFD6D6D6FFCECE
      CEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034A234FF57F691FF5BFA96FF5BB8
      5BFFC0C0C0FF69696AFFFFF3E7FFFFF2E6FFFFF2E6FFBE8B8AFFFFDADAFFBA85
      85FFBB8888FFBA8787FFBA8787FFB98686FFB98686FFB78484FFB68383FFB582
      82FFB48181FF855F5FFF646666FF0000000000000000000000006C6C6CB2C3B2
      8CDCCCBB91D5E1D8C3E5008B00FF86F7A5FF86F6A4FF84F4A3FF83F4A2FF4BE5
      7EFF49E37CFF7BEC9BFF79EA98FF3ED871FF007100FFD8BF97E5D0AE76E17677
      79FE3030308B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFFCF9
      F6FFFBF8F4FFFBF7F3FFFAF6F2FFF6F1EBFFF9F5EEFFF3ECE4FFE9D9CEFF8660
      4EFF000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDFFFAEAAA5FFFFF4E0FFFFF4E1FFF8BE76FFF6BD76FFFCD3
      A7FFFACE9FFFF7BF82FFF4BD7AFFF2BB74FFF1B971FFEFB66BFFEEB367FFEDB1
      62FFECAF60FFDB8F28FFE3D3BEFFE6E6E6FFD2D2D2FF939393FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034A634FF13AA1FFF65C365FFB6B6
      B6FF9D9D9DFF68696AFFFFEDDBFFFFECDAFFFFECDAFFBF8B8CFFFFDADAFFBC87
      87FFBC8989FFD3A1A1FFC99595FFBA8686FFB78484FFB88585FFB88585FFB784
      84FFB78484FF876262FF696B6BFF0000000000000000000000005959598FB3A6
      87E2CEBF95D4E3DCC9E6008D00FF008D00FF008B00FF008800FF84F4A3FF4CE6
      80FF2CC64BFF007A00FF007600FF007300FF007100FFD6BE94E4CFAB70DF6365
      66FE232323660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966952FFFEE0BBFFC8B39AFF82807CFFD5C2AAFFE8CBC0FFBAA2C8FFFEE0
      BBFFFEE0BBFFFEE0BBFFFEE0BBFFFEDFBAFFFEDFBAFFFEDEB8FFFDDDB8FFFEDE
      B9FFFEDFB8FFFCDBB4FFFAD8B1FFF5D2ABFFF4D0A8FFEBC49CFFDFB88FFF8165
      5AD7000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C6FFCCC6BCFFFFF3E1FFFFF2E0FFFDE2C2FFF8CD9BFFF0B4
      67FFEFB266FFEFB368FFEFB468FFEEB368FFEEB367FFEEB366FFEDB365FFEAAD
      5CFFE2A047FFAC9A83FF979A9DFF999999FFABABABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034A934FF62B962FF00000000B7B7
      B7FFA0A0A0FF696A6CFFFFEAD6FFFFE9D5FFFFE9D6FFC28D8DFFFFDADAFFBE8A
      8AFFBC8888FFFFECECFFFFE2E2FFF4CCCCFFE9BBBBFFCF9C9CFFC59191FFB582
      82FFB68383FF896363FF6A6B6BFF0000000000000000000000000F0F0F157D7D
      7BFAD0C399D4DDD9C2E2E3E1CFE7EDEDE3EFEFEEE7F1008B00FF86F6A4FF4DE7
      81FF2DC74BFFB7A680DACBB788D7CBB27FD9CAAF7CDAD1B581DFCBAB77E25252
      52E3000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A53FFFFFFFFFF525252FF5B5B5BFF717171FFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA48371FFC8B3A5FFC6AD9AFFC3A283FFC19C76FFB88F63FF886557EA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000939594FFFFF9ECFFFFF5E6FFFFF4E5FFFFF2E1FFFFF2DFFFFFF1
      DBFFFFF0DAFFFFEFD6FFFFEED5FFFFEDD2FFFFEDD0FFCDC2B2FFB1B3B8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D297FF0000000000000000B9B9
      B9FFA6A6A6FF6B6C6EFFFFE4CAFFFFE3C9FFFFE3CAFFC69292FFFFD9DAFFC08B
      8BFFC08C8CFFFFF0F0FFFFE9E9FFFFE5E5FFFFE3E3FFFFDEDEFFFFDBDBFFF7C8
      C8FFBA8686FF8C6666FF6A6B6BFF000000000000000000000000000000009091
      93FEACA48AE3DBD4BEE0E1DDCBE4F0EFE8F0EEEDE5F0008D00FF86F7A5FF4EE8
      82FF2DC74CFFB7A681D9CCB789D6CBB47FD9CAAF7CDACFAD73DCBAAC97F13333
      3384000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986955FFFFFFFFFFCCCCCCFF5D5D5DFFCDCDCDFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF85655AE3262524290000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAA9A7FFFFFDF0FFFFF6E8FFFFF5E7FFFFF3E3FFFFF2E0FFFFF0
      DCFFFFEFD9FFFFEED4FFFFEDD2FFFFEBCDFFFFEACAFFA8A198FFD7D7D8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BAFFA7A7A7FF6A6D70FFFFE1C4FFFFE0C3FFFFE0C3FFC79493FFFFD9D9FFC18C
      8CFFC18D8DFFFFF3F3FFFFEDEDFFFFE8E8FFFFE5E5FFFFDFDFFFFFDBDBFFF1C4
      C4FFB88585FF8D6969FF6B6B6BFF000000000000000000000000000000007676
      76A1A1A1A2FED9D3B4D9DDD9C4E0E0DFCFE3E3E2D4E5008D00FF008B00FF0083
      00FF008100FFCDBB92D7CBB788D7CBB27FD9CDB17FDAA09D99F868696AFE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996B54FFFEE0BBFFFEE0BBFFFEE0BBFFFEE0BBFFE8CBC0FFBAA2C8FFFEE0
      BBFFFEE0BBFFFEDFBAFFFEDFBAFFFEDEBAFFFEDEB9FFFDDDB8FFFDDDB7FFDED2
      CAFFA6826CFFF2D7AEFFEECD9BFFC59A67FF856559E400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3DFDAFFFFFBF2FFFFF7EDFFFFF6EAFFFFF4E6FFFFF3E3FFFFF1
      DEFFFFF0DBFFFFEED6FFFFEDD4FFFFEBCEFFFFECCEFFA2A3A4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BCFFA9A9A9FF6C6D70FFFFDBB8FFFFDAB7FFFFDAB7FFCA9597FFFFD9D9FFC38E
      8EFFC49191FFEEDDDDFFF8E9E9FFFFF3F3FFFFEFEFFFFFE5E5FFFFE1E1FFE8BC
      BCFFB88484FF906C6CFF6D6D6DFF000000000000000000000000000000000F0F
      0F129E9E9EDF938F80EBDAD6B8DADCD9C4DEDCDCC7DFE0DECCE4E0DDCAE4D5CA
      ACDAD0C3A2D8CBB88ED6CBB788D7CCB27FD9CDB17CDC707172FD505050C20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6954FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6FFFFB3B3FFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58067FFEECE98FFEFC785FF82675BDC1F1E1E2100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEF9F3FFFFFAF4FFFFF8EEFFFFF7ECFFFFF5E7FFFFF4E4FFFFF2
      DFFFFFF1DCFFFFEFD7FFFFEED4FFFFECCFFFFFEFCEFFC4C5C5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BDFFAAAAAAFF6A6D6FFFFFD8B1FFFFD7B1FFFFD7B1FFCA9798FFFFD9D9FFC48F
      8FFFC59292FFBB8686FFB68181FFBA8888FFC29393FFD4AAAAFFDDB4B4FFD9AC
      ACFFB98686FF926C6CFF6D6E6EFF000000000000000000000000000000000000
      000000000000A4A4A4E5A2A2A3FDADA68FE2D2C8A3D2CDC39FD2CDC29BD2CDBE
      95D4CCBC91D5D0BB89D6CEB788D9868787F8757576FD0D0D0D1D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996A53FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFE5E5FEFFB2B2FEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA37A5CFFBF9463FF83675BD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5FFC6C4C3FFCBC9C8FFD9D5D0FFE0DBD3FFEDE6DAFFF4ECDEFFFFF6
      E2FFFFF8E3FFFFF5DCFFFFF3D9FFFFF2D4FFFBE8CBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C1
      C1FFB0B0B0FF717372FF988065FFA48B6EFFAE9374FFD39FA0FFFFDADAFFC58F
      8FFFC69191FFC59191FFC49090FFC28F8FFFC18E8EFFBF8C8CFFBE8B8BFFBB88
      88FFBA8787FF957070FF717272FF000000000000000000000000000000000000
      0000000000001414141B838383B98E8E90FC797B78F5B5AD90DFC4B896D9CDBD
      94D7C6B58FDB9E9686EE828284F5797979FD4D4D4D9E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976853FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFE5E6FDFFB2B2FEFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77D59FF84685DD41818181A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFFD8D8D8FFD1D1D1FFC3C3C3FFBEBEBEFFAFAFB0FFA6A7A7FF9697
      98FF909191FF9A9895FFA39F9AFFB2ACA2FFAAA49CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C2FFB1B1B1FF939393FF909192FF8D8E90FF8A8C8DFFD7A0A0FFFFD9D9FFEBCD
      CDFFE6C7C7FFD8B4B4FFD1A9A9FFC49393FFC18D8DFFBE8B8BFFBD8A8AFFBA87
      87FFBA8787FF967171FF717272FF000000000000000000000000000000000000
      00000000000000000000000000000101010224242437777777BF8D8D8DE68E8E
      8EF47D7D7DDE4343437D1717172B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986954FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFE1D8ECFFAFA8F0FFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B73
      63FF806961BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4FFBDBDBDFF9E9E9EFF999999FF939393FF8F8F8FFF888A8AFF868989FF8184
      84FF7A8383FF807A7AFF847979FF897878FF8E7777FF947575FF987676FFA076
      76FFA47777FF837373FF686A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6F5BFF9B6D59FF9A6D58FF996C58FF996C58FF996D59FF986B57FF976C
      58FF976A56FF956957FF956A55FF936956FF936754FF916653FF916754FF6F61
      5A94070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B8FFC8C8C8FFCACACAFFCFCFCFFFCCCCCCFFC8C8C8FFC8C8C8FFC1C1C1FFBBBB
      BBFFBCBCBCFFB2B2B2FFB0B1B1FFA7A8A8FFA5A6A6FF9D9F9FFF969898FF9294
      94FF878888FF757575FF767777FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000}
  end
  object frxdb1_rm: TfrxDBDataset
    UserName = 'frxDB1_rm'
    CloseDataSource = True
    FieldAliases.Strings = (
      'nik=nik'
      'nama_lengkap=nama_lengkap'
      'tmpt_lahir=tmpt_lahir'
      'tgl_lahir=tgl_lahir'
      'jenis_kelamin=jenis_kelamin'
      'alamat=alamat'
      'rt=rt'
      'rw=rw'
      'mr=mr'
      'idxstr=idxstr'
      'kartu_bpjs=kartu_bpjs'
      'tanggal_diagnosa=tanggal_diagnosa'
      'dokter=dokter'
      'penyakit=penyakit'
      'tindakan=tindakan'
      'nm_diag=nm_diag'
      'id_diag=id_diag'
      'no_kunjungan=no_kunjungan'
      'kunjungan_bpjs=kunjungan_bpjs')
    DataSet = dataPasien.fdQueryRm
    BCDToCurrency = False
    Left = 376
    Top = 296
  end
  object frxReport2: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43162.362404467600000000
    ReportOptions.LastChange = 43162.362404467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 216
    Datasets = <
      item
        DataSet = frxdb1_puskesmas
        DataSetName = 'frxdb1_puskesmas'
      end
      item
        DataSet = frxdb1_rm
        DataSetName = 'frxDB1_rm'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 181.417440000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAM MEDIS PASIEN'
            'Nomor : [frxDB1_rm."mr"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baWidth
          Top = 44.015770000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdb1_puskesmas."nama"] ([frxdb1_puskesmas."idxstr"])       - ' +
              '      [frxdb1_puskesmas."nm_cabang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxDB1_rmnama_lengkap: TfrxMemoView
          Left = 105.826840000000000000
          Top = 75.590600000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Memo.UTF8W = (
            ':   [frxDB1_rm."nama_lengkap"]  / [frxDB1_rm."jenis_kelamin"]')
          Formats = <
            item
            end
            item
            end>
        end
        object frxDB1_rmnik: TfrxMemoView
          Left = 105.826840000000000000
          Top = 98.267780000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Memo.UTF8W = (
            ':   [frxDB1_rm."nik"] / [frxDB1_rm."kartu_bpjs"]')
          Formats = <
            item
            end
            item
            end>
        end
        object frxDB1_rmtgl_lahir: TfrxMemoView
          Left = 105.826840000000000000
          Top = 120.944960000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Memo.UTF8W = (
            ':   [frxDB1_rm."tgl_lahir"] ')
        end
        object frxDB1_rmalamat: TfrxMemoView
          Left = 105.826840000000000000
          Top = 143.622140000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Memo.UTF8W = (
            
              ':   [frxDB1_rm."alamat"]   RT [frxDB1_rm."rt"] / [frxDB1_rm."rw"' +
              ']')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'NIK / Kartu BPJS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Tanggal Lahir')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Top = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 170.078850000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 64.252010000000000000
        ParentFont = False
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        DataSet = frxdb1_rm
        DataSetName = 'frxDB1_rm'
        RowCount = 0
        object frxDB1_rmno_kunjungan: TfrxMemoView
          Align = baLeft
          Top = 9.448825000000000000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1_rm."no_kunjungan"]'
            '[frxDB1_rm."kunjungan_bpjs"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object frxDB1_rmtanggal_diagnosa: TfrxMemoView
          Left = 151.181200000000000000
          Top = 9.448825000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          DataField = 'tanggal_diagnosa'
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1_rm."tanggal_diagnosa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB1_rmnm_diag: TfrxMemoView
          Left = 264.567100000000000000
          Top = 9.448825000000000000
          Width = 200.315090000000000000
          Height = 49.133890000000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1_rm."penyakit"]'
            '[frxDB1_rm."nm_diag"]')
          ParentFont = False
        end
        object frxDB1_rmtindakan: TfrxMemoView
          Left = 476.220780000000000000
          Top = 9.448825000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          DataField = 'tindakan'
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1_rm."tindakan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB1_rmdokter: TfrxMemoView
          Left = 627.401980000000000000
          Top = 9.448825000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          DataField = 'dokter'
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1_rm."dokter"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 1.889765000000000000
          Width = 143.622140000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'No Kunjungan'
            'PCare')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Top = 2.834647500000000000
          Width = 188.976500000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'ICD-X'
            'Diagnosa')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 476.220780000000000000
          Top = 0.944882500000000000
          Width = 128.504020000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tindakan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1_rm
          DataSetName = 'frxDB1_rm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdb1_puskesmas: TfrxDBDataset
    UserName = 'frxdb1_puskesmas'
    CloseDataSource = True
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'nama=nama'
      'kd_cabang=kd_cabang'
      'nm_cabang=nm_cabang'
      'adl_aktif=adl_aktif'
      'alamat=alamat'
      'telepon=telepon')
    DataSet = dataPasien.fdQueryPuskesmas
    BCDToCurrency = False
    Left = 336
    Top = 200
  end
end
