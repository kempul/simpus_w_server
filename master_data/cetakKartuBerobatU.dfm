object Form1_cetakKartuBerobat: TForm1_cetakKartuBerobat
  Left = 0
  Top = 0
  Caption = 'Form1_cetakKartuBerobat'
  ClientHeight = 412
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 89
    Align = alTop
    TabOrder = 0
    object labelEdit1: TLabeledEdit
      Left = 80
      Top = 40
      Width = 425
      Height = 21
      EditLabel.Width = 150
      EditLabel.Height = 13
      EditLabel.Caption = 'Cari Kata Kunci Nama KK/ ID KK'
      TabOrder = 0
      OnKeyPress = labelEdit1KeyPress
    end
    object btn1: TButton
      Left = 536
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn5: TButton
      Left = 832
      Top = 40
      Width = 139
      Height = 25
      Caption = 'cetak data dipilih'
      TabOrder = 2
      OnClick = btn5Click
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 89
    Width = 1020
    Height = 323
    Align = alClient
    TabOrder = 1
    object pnl4: TPanel
      Left = 1
      Top = 1
      Width = 610
      Height = 321
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object grid1: TDBGridEh
        Left = 0
        Top = 17
        Width = 610
        Height = 304
        Align = alClient
        DataSource = dataPasien.dsCetakKartuBerobatPV
        DynProps = <>
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dipilih'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_kk'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kk'
            Footers = <>
            ReadOnly = True
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rt'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rw'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'desa'
            Footers = <>
            ReadOnly = True
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object txt1: TStaticText
        Left = 0
        Top = 0
        Width = 68
        Height = 17
        Align = alTop
        Caption = 'data tersedia'
        TabOrder = 1
      end
    end
    object splitter1: TJvxSplitter
      AlignWithMargins = True
      Left = 614
      Top = 4
      Width = 5
      Height = 315
      ControlFirst = pnl5
      ControlSecond = pnl4
      Align = alLeft
    end
    object pnl5: TPanel
      Left = 700
      Top = 1
      Width = 319
      Height = 321
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnl4'
      TabOrder = 2
      object grid2: TDBGridEh
        Left = 0
        Top = 17
        Width = 319
        Height = 304
        Align = alClient
        DataSource = dataPasien.dsCetakKartuBerobat
        DynProps = <>
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dipilih'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_kk'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kk'
            Footers = <>
            ReadOnly = True
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rt'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rw'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'desa'
            Footers = <>
            ReadOnly = True
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object txt2: TStaticText
        Left = 0
        Top = 0
        Width = 122
        Height = 17
        Align = alTop
        Caption = 'data dipilih untuk dicetak'
        TabOrder = 1
      end
    end
    object pnl6: TPanel
      Left = 622
      Top = 1
      Width = 78
      Height = 321
      Align = alLeft
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 3
      object btn1Sel1: TSpeedButton
        Left = 6
        Top = 112
        Width = 69
        Height = 22
        Caption = '>'
        OnClick = btn1Sel1Click
      end
      object btn1UnSel: TSpeedButton
        Left = 6
        Top = 140
        Width = 69
        Height = 22
        Caption = '<'
        OnClick = btn1UnSelClick
      end
      object btn1SelAll: TSpeedButton
        Left = 3
        Top = 84
        Width = 69
        Height = 22
        Caption = '>>'
        OnClick = btn1SelAllClick
      end
      object btn1UnSelAll: TSpeedButton
        Left = 3
        Top = 168
        Width = 69
        Height = 22
        Caption = '<<'
        OnClick = btn1UnSelAllClick
      end
    end
  end
  object formStorage1: TJvFormStorage
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredProps.Strings = (
      'pnl4.Width')
    StoredValues = <>
    Left = 432
    Top = 48
  end
  object frxdb1KartuBerobat: TfrxDBDataset
    UserName = 'frxdb1KartuBerobat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_kk=id_kk'
      'kk=kk'
      'rt=rt'
      'rw=rw'
      'desa=desa'
      'dipilih=dipilih')
    BCDToCurrency = False
    Left = 696
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42754.786116064800000000
    ReportOptions.LastChange = 42754.786116064800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 752
    Top = 40
    Datasets = <
      item
        DataSet = frxdb1KartuBerobat
        DataSetName = 'frxdb1KartuBerobat'
      end
      item
        DataSet = frxdb1Thbl
        DataSetName = 'frxdb1Thbl'
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
      Columns = 2
      ColumnWidth = 90.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '100')
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 215.433073310000000000
        Top = 18.897650000000000000
        Width = 340.157700000000000000
        DataSet = frxdb1KartuBerobat
        DataSetName = 'frxdb1KartuBerobat'
        RowCount = 0
        object frxDBDataset1nama: TfrxMemoView
          Align = baWidth
          Left = 120.944960000000000000
          Top = 68.590600000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KartuBerobat
          DataSetName = 'frxdb1KartuBerobat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            ': [frxdb1KartuBerobat."kk"]')
          ParentFont = False
        end
        object frxDBDataset1mr: TfrxMemoView
          Align = baWidth
          Left = 120.944960000000000000
          Top = 120.724490000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KartuBerobat
          DataSetName = 'frxdb1KartuBerobat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            ': [frxdb1KartuBerobat."id_kk"]')
          ParentFont = False
        end
        object frxDBDataset1rt: TfrxMemoView
          Align = baWidth
          Left = 120.944960000000000000
          Top = 95.047310000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KartuBerobat
          DataSetName = 'frxdb1KartuBerobat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            
              ': RT [frxdb1KartuBerobat."rt"] / [frxdb1KartuBerobat."rw"] [frxd' +
              'b1KartuBerobat."desa"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 340.157700000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Cambria'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KARTU TANDA PENGENAL'
            '[frxdb1Thbl."institusi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Top = 68.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            'Nama KK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Top = 95.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Top = 120.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          Memo.UTF8W = (
            'No. Indek')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Align = baRight
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Height = 211.653543310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 68.590600000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 95.047310000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cambria'
          Font.Style = []
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Top = 122.724490000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Cambria'
          Font.Style = []
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baBottom
          Left = 1.338590000000000000
          Top = 215.433073310000000000
          Width = 340.157480310000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 81.259895000000000000
          Top = 158.858380000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Cambria'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tiap berobat harus dibawa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 81.259895000000000000
          Top = 181.417440000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Cambria'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Untuk satu keluarga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baLeft
          Top = 4.220470000000000000
          Height = 211.653543310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object frxdb1Thbl: TfrxDBDataset
    UserName = 'frxdb1Thbl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tahun=tahun'
      'bulan_id=bulan_id'
      'bulan=bulan'
      'institusi=institusi'
      'alamat=alamat')
    BCDToCurrency = False
    Left = 704
    Top = 72
  end
end
