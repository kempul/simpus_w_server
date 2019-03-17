object Form1_frx: TForm1_frx
  Left = 0
  Top = 0
  Caption = 'Form1_frx'
  ClientHeight = 624
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object frxprvw1: TfrxPreview
    Left = 328
    Top = 200
    Width = 100
    Height = 100
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    UseReportHints = True
  end
  object frxpdfxprt1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 448
    Top = 356
  end
  object frxcrsbjct1: TfrxCrossObject
    Left = 16
    Top = 152
  end
  object frxlsxprt1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 124
    Top = 560
  end
  object frxchckbxbjct1: TfrxCheckBoxObject
    Left = 448
    Top = 84
  end
  object frxDB_feeRawat: TfrxDBDataset
    UserName = 'frxDB_feeRawat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TANGGAL=TANGGAL'
      'JML=JML'
      'NILAI_FEE=NILAI_FEE')
    BCDToCurrency = False
    Left = 124
    Top = 356
  end
  object frxReport1_feeRawat: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 150
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41207.887915856500000000
    ReportOptions.LastChange = 41207.887915856500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 124
    Top = 424
    Datasets = <
      item
        DataSet = frxDB_feeRawat
        DataSetName = 'frxDB_feeRawat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 79.370130000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB1thbl."INSTITUSI"]'
            '[frxDB1thbl."ALAMAT"]'
            'Fee Rawat Aplikasi'
            
              'Periode Penjualan : [frxDB1thbl."BULAN_TEKS"] - [frxDB1thbl."TAH' +
              'UN"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_feeRawat
        DataSetName = 'frxDB_feeRawat'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'TANGGAL'
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          Memo.UTF8W = (
            '[frxDB_feeRawat."TANGGAL"]')
        end
        object Memo16: TfrxMemoView
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'NILAI_FEE'
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_feeRawat."NILAI_FEE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 260.787570000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'JML'
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_feeRawat."JML"]')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 1.889765000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date]    [Time]')
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal : [Page]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 1.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 76.464750000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          Memo.UTF8W = (
            'Tanggal Penjualan')
        end
        object Memo4: TfrxMemoView
          Left = 375.047620000000000000
          Top = 21.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nilai Fee')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 76.149660000000000000
          Top = 49.133890000000000000
          Width = 377.953000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 261.661720000000000000
          Top = 9.448825000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah Transaksi')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 128.504020000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 374.173470000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDB_feeRawat."NILAI_FEE">,MasterData2)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 377.953000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDB_feeRawat
          DataSetName = 'frxDB_feeRawat'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDB_feeRawat."JML">,MasterData2)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baBottom
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 699.213050000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Mohon bisa ditransfer pada salah satu rekening berikut :'
            
              ' 1. BRI atas nama ALI HAIDZAR unit Gedong Kuning Yogyakarta nomo' +
              'r : 3008 01 000830 50 1'
            
              ' 2. Bank Syariah Mandiri (BSM) atas nama ALI HAIDZAR Cabang 347 ' +
              'KCP Godean nomor : 347 7000 116')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1_10Besar: TfrxDBDataset
    UserName = 'frxDBDataset1_10Besar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'th=th'
      'bl=bl'
      'bea=bea'
      'icdx=icdx'
      'diagnosa=diagnosa'
      'jml=jml')
    DataSet = fdQBesar10
    BCDToCurrency = False
    Left = 232
    Top = 288
  end
  object frxReport1_10Besar: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 150
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40859.477703993100000000
    ReportOptions.LastChange = 40862.095809097200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 424
    Datasets = <
      item
        DataSet = frxDBDataset1_10Besar
        DataSetName = 'frxDBDataset1_10Besar'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1_10Besar
        DataSetName = 'frxDBDataset1_10Besar'
        KeepHeader = True
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'icdx'
          DataSet = frxDBDataset1_10Besar
          DataSetName = 'frxDBDataset1_10Besar'
          Memo.UTF8W = (
            '[frxDBDataset1_10Besar."icdx"]')
        end
        object Memo5: TfrxMemoView
          Left = 113.385900000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          DataField = 'diagnosa'
          DataSet = frxDBDataset1_10Besar
          DataSetName = 'frxDBDataset1_10Besar'
          Memo.UTF8W = (
            '[frxDBDataset1_10Besar."diagnosa"]')
        end
        object Memo6: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'jml'
          DataSet = frxDBDataset1_10Besar
          DataSetName = 'frxDBDataset1_10Besar'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1_10Besar."jml"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo17: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo18: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object frxDBrptthblINSTITUSI: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 631.181510000000000000
          Height = 18.897650000000000000
          DataSet = frxDBrptthbl
          DataSetName = 'frxdbrptthbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1_10Besar."bea"'
        KeepTogether = True
        ReprintOnNewPage = True
        OutlineText = 'frxDBDataset1_10Besar."bea"'
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Fill.BackColor = 15790320
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 2.559060000000000000
          Top = 15.000000000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1_10Besar."bea"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxDBDataset1_10Besar."th"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2_kesakitan: TfrxDBDataset
    UserName = 'frxDBDataset2_kesakitan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'penyakit=penyakit'
      'nm_diag=nm_diag'
      'idx=idx'
      'kelompok=kelompok'
      'kategori=kategori'
      'sex=sex'
      'jumlah=jumlah'
      'tahun=tahun'
      'bulan=bulan')
    DataSet = fdQKesakitan
    BCDToCurrency = False
    Left = 340
    Top = 288
  end
  object frxReport1_kesakitan: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.958194074100000000
    ReportOptions.LastChange = 43439.747859467590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 424
    Datasets = <
      item
        DataSet = frxDBDataset2_kesakitan
        DataSetName = 'frxDBDataset2_kesakitan'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 14
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessWidth = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1210.205506000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1210.205506000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN DATA KESAKITAN PUSKESMAS'
            '[frxDBThbl."bulan"] [frxDBDataset2_kesakitan."tahun"] ')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1210.205506000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 149.401670000000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 1022.583763450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 1022.583763450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 1022.583763450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 1022.583763450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 189.186236100000000000
          Top = 75.968503940000000000
          Width = 984.672949900000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 180.409400000000000000
        Top = 279.685220000000000000
        Width = 1210.205506000000000000
        DataSet = frxDBDataset2_kesakitan
        DataSetName = 'frxDBDataset2_kesakitan'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Width = 298.000000000000000000
          Height = 170.000000000000000000
          ColumnLevels = 4
          DownThenAcross = False
          PlainCells = True
          RowLevels = 2
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'idx'
            'kelompok'
            'kategori'
            'sex')
          DataSet = frxDBDataset2_kesakitan
          DataSetName = 'frxDBDataset2_kesakitan'
          RowFields.Strings = (
            'penyakit'
            'nm_diag')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231323122
            20546F703D223338352C3638353232222057696474683D223330222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223133
            332220546F703D22313038222057696474683D22343622204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223132312220546F703D223430372C36
            38353232222057696474683D22333022204865696768743D2232322220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223135312220546F703D22333835
            2C3638353232222057696474683D22323922204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D2243616C696272692220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223130312220546F703D2231
            3330222057696474683D22333222204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D2268615269676874222056416C69676E3D22
            766143656E7465722220546578743D2230222F3E3C546672784D656D6F566965
            77204C6566743D223135312220546F703D223430372C36383532322220576964
            74683D22323922204865696768743D22323222205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D2243616C69
            6272692220466F6E742E5374796C653D223022204672616D652E5479703D2231
            35222046696C6C2E4261636B436F6C6F723D2231353739303332302220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C65
            66743D223138302220546F703D223338352C3638353232222057696474683D22
            333522204865696768743D22323222205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D2243616C6962726922
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223231312220546F703D22313038222057696474683D223436222048
            65696768743D22323222205265737472696374696F6E733D2232342220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            615269676874222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223138302220546F70
            3D223430372C3638353232222057696474683D22333522204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223138372220546F
            703D22313038222057696474683D22333522204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E74
            2E4E616D653D2243616C696272692220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2230222F3E
            3C546672784D656D6F56696577204C6566743D223137392220546F703D223133
            30222057696474683D22333222204865696768743D2232322220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223231312220546F703D22313330222057696474683D22343622
            204865696768743D22323222205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            2268615269676874222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22323135222054
            6F703D223338352C3638353232222057696474683D2236332220486569676874
            3D22323222205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D2232383922
            20546F703D22313038222057696474683D22343622204865696768743D223232
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D223231352220546F703D223430372C363835
            3232222057696474683D22363322204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C2F63
            656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C546672784D
            656D6F56696577204C6566743D223130312220546F703D223836222057696474
            683D22333222204865696768743D22323222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322205641
            6C69676E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C
            546672784D656D6F56696577204C6566743D223133332220546F703D22383622
            2057696474683D22343622204865696768743D22323222205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222056416C69676E3D22766143656E7465722220546578743D226A756D6C61
            68222F3E3C546672784D656D6F56696577204C6566743D223137392220546F70
            3D223836222057696474683D22333222204865696768743D2232322220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222056416C69676E3D22766143656E7465722220546578743D22
            6A756D6C6168222F3E3C546672784D656D6F56696577204C6566743D22323131
            2220546F703D223836222057696474683D22343622204865696768743D223232
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D226A756D6C6168222F3E3C546672784D656D6F56696577204C656674
            3D223235372220546F703D223836222057696474683D22333222204865696768
            743D22323222205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222056416C69676E3D22766143656E74
            65722220546578743D224A4D4C222F3E3C2F63656C6C6865616465726D656D6F
            733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577204C6566
            743D223132312220546F703D223239392C3638353232222057696474683D2239
            3422204865696768743D22323222205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31332220466F6E742E4E616D653D2243616C696272692220
            466F6E742E5374796C653D223022204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223132312220546F703D223332312C3638353232222057696474683D22
            393422204865696768743D22323222205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D2243616C6962726922
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C
            6566743D223132312220546F703D223334332C3638353232222057696474683D
            22353922204865696768743D22323222205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D2243616C69627269
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D223132312220546F703D223336352C363835323222205769647468
            3D22333022204865696768743D22323022205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D2243616C696272
            692220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D656D6F73
            3E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56696577
            204C6566743D223231352220546F703D223239392C3638353232222057696474
            683D22363322204865696768743D22383622205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D2243616C696272
            692220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C222F3E3C546672784D656D
            6F56696577204C6566743D223239302220546F703D223539222057696474683D
            22333822204865696768743D22363622205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C222F3E3C546672784D656D6F56696577204C6566743D223138302220546F70
            3D223334332C3638353232222057696474683D22333522204865696768743D22
            343222205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22546F74616C222F3E3C546672784D656D6F56696577204C6566743D22313531
            2220546F703D223336352C3638353232222057696474683D2232392220486569
            6768743D22323022205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31322220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2254222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F
            726E65726D656D6F733E3C546672784D656D6F56696577204C6566743D223230
            2220546F703D223239392C3638353232222057696474683D2231303122204865
            696768743D223022205265737472696374696F6E733D2238222056697369626C
            653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22
            43616C696272692220466F6E742E5374796C653D223022204672616D652E5479
            703D2231302220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C
            546672784D656D6F56696577204C6566743D223132312220546F703D22323939
            2C3638353232222057696474683D2231353722204865696768743D2230222052
            65737472696374696F6E733D2238222056697369626C653D2246616C73652220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31332220466F6E742E4E616D653D2243616C69627269222046
            6F6E742E5374796C653D223022204672616D652E5479703D223135222046696C
            6C2E4261636B436F6C6F723D2231353739303332302220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D226964782C206B656C6F6D706F6B2C206B617465676F72692C2073
            6578222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D
            2230222057696474683D223022204865696768743D2230222052657374726963
            74696F6E733D2238222056697369626C653D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E746572222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D2232302220546F703D223239
            392C3638353232222057696474683D22353022204865696768743D2238362220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E74
            2E4E616D653D2243616C696272692220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2270656E
            79616B6974222F3E3C546672784D656D6F56696577204C6566743D2237302220
            546F703D223239392C3638353232222057696474683D22353122204865696768
            743D22383622205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            322220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D226E6D5F64696167222F3E3C2F636F726E65726D656D6F733E3C726F77
            6D656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F
            703D223338352C3638353232222057696474683D22353022204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D22332220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D22222F3E3C546672784D656D6F566965
            77204C6566743D2237302220546F703D223338352C3638353232222057696474
            683D22353122204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31312220466F6E742E4E616D653D2243616C6962
            72692220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672
            784D656D6F56696577204C6566743D2232302220546F703D223430372C363835
            3232222057696474683D2231303122204865696768743D223232222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D224772616E642054
            6F74616C222F3E3C546672784D656D6F56696577204C6566743D223333222054
            6F703D22313639222057696474683D2231313622204865696768743D22323222
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D65
            6D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F6365
            6C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F
            3E3C6974656D20322F3E3C6974656D20302F3E3C6974656D20302F3E3C2F636F
            6C756D6E736F72743E3C726F77736F72743E3C6974656D20322F3E3C6974656D
            20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 521.575140000000000000
        Width = 1210.205506000000000000
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 1025.008536000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 633.449228000000000000
          Width = 576.756278000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 538.960978000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]   @   halaman : [Page#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxDBDataset1_kunjunganHarian: TfrxDBDataset
    UserName = 'frxDBDataset1_kunjunganHarian'
    CloseDataSource = True
    FieldAliases.Strings = (
      'tanggal=TANGGAL'
      'biaya=BIAYA'
      'kategori=kategori'
      'sex=sex'
      'tahun=tahun'
      'bulan=bulan'
      'jumlah=jumlah')
    DataSet = fdQKunjunganHarian
    BCDToCurrency = False
    Left = 16
    Top = 356
  end
  object frxReport1_kunjunganHarian: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.908761030100000000
    ReportOptions.LastChange = 40862.908761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 340
    Top = 424
    Datasets = <
      item
        DataSet = frxDBDataset1_kunjunganHarian
        DataSetName = 'frxDBDataset1_kunjunganHarian'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessWidth = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"]  [frxDBDataset1_kunjunganHarian."tahun"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 218.118120000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1_kunjunganHarian
        DataSetName = 'frxDBDataset1_kunjunganHarian'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 282.000000000000000000
          Height = 202.999999995020600000
          AutoSize = False
          ColumnLevels = 3
          DownThenAcross = False
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'BIAYA'
            'kategori'
            'sex')
          DataSet = frxDBDataset1_kunjunganHarian
          DataSetName = 'frxDBDataset1_kunjunganHarian'
          RowFields.Strings = (
            'TANGGAL')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2239372220
            546F703D223432322C343634373439393935303231222057696474683D223336
            22204865696768743D22323222205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220446973706C6179
            466F726D61742E466F726D61745374723D2225322E306E2220446973706C6179
            466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222046696C6C
            2E4261636B436F6C6F723D2231363737373231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D222030222F3E3C546672784D656D6F56696577204C6566743D223937
            2220546F703D223434342C343634373439393935303231222057696474683D22
            333622204865696768743D22323222205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220446973706C
            6179466F726D61742E466F726D61745374723D2225322E306E2220446973706C
            6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31332220466F6E742E4E616D653D2243616C696272692220
            466F6E742E5374796C653D223022204672616D652E5479703D22313522204669
            6C6C2E4261636B436F6C6F723D2231363737373231352220476170583D223322
            20476170593D2233222048416C69676E3D22686143656E746572222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D222030222F3E3C546672784D656D6F56696577204C6566743D22
            3133332220546F703D223432322C343634373439393935303231222057696474
            683D22333822204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C736522204469
            73706C6179466F726D61742E466F726D61745374723D22232C23222044697370
            6C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D2243616C6962726922
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222046
            696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D222030222F3E3C546672784D656D6F56696577204C6566743D
            223133332220546F703D223434342C3436343734393939353032312220576964
            74683D22333822204865696768743D22323222205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222044
            6973706C6179466F726D61742E466F726D61745374723D2225322E306E222044
            6973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31332220466F6E742E4E616D653D2243616C6962
            72692220466F6E742E5374796C653D223022204672616D652E5479703D223135
            222046696C6C2E4261636B436F6C6F723D223136373737323135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D222030222F3E3C546672784D656D6F56696577204C65
            66743D223137312220546F703D223432322C3436343734393939353032312220
            57696474683D22333922204865696768743D2232322220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D222030222F3E3C546672784D65
            6D6F56696577204C6566743D223137312220546F703D223434342C3436343734
            39393935303231222057696474683D22333922204865696768743D2232322220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D2243616C696272692220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22203022
            2F3E3C546672784D656D6F56696577204C6566743D223231302220546F703D22
            3432322C343634373439393935303231222057696474683D2235322220486569
            6768743D22323222205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D222030
            222F3E3C546672784D656D6F56696577204C6566743D223231302220546F703D
            223434342C343634373439393935303231222057696474683D22353222204865
            696768743D22323222205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            5269676874222056416C69676E3D22766143656E7465722220546578743D2220
            30222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F73
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226A756D6C6168222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226A756D6C6168222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C2F63656C6C6865616465
            726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F566965
            77204C6566743D2239372220546F703D223330332C3436343735222057696474
            683D2231313322204865696768743D2234382C33333333333333333030343132
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22312220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F56696577204C6566743D2239372220546F703D22
            3335312C373938303833333330303431222057696474683D2237342220486569
            6768743D2234312C333333333333333334393739342220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D2239372220546F703D223339332C31333134313636
            3635303231222057696474683D22333622204865696768743D2232392C333333
            333333333322205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            746572222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E
            3C546672784D656D6F56696577204C6566743D223231302220546F703D223330
            332C3436343735222057696474683D22353222204865696768743D223131382C
            39393939393939393530323122205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D224772616E6420546F74616C222F3E3C546672784D65
            6D6F56696577204C6566743D223137312220546F703D223335312C3739383038
            33333330303431222057696474683D22333922204865696768743D2237302C36
            36363636363636343937393422205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22546F74616C222F3E3C546672784D656D6F56696577204C
            6566743D223133332220546F703D223339332C31333134313636363530323122
            2057696474683D22333822204865696768743D2232392C333333333333333322
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D65
            6D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F703D
            223330332C3436343735222057696474683D22373722204865696768743D2230
            22205265737472696374696F6E733D2238222056697369626C653D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D2243616C69627269
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231302220
            46696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D226A756D6C6168222F3E3C546672784D656D6F5669657720
            4C6566743D2239372220546F703D223330332C3436343735222057696474683D
            2231363522204865696768743D223022205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D2243616C696272692220466F6E742E5374796C653D22302220
            4672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D222D
            31363737373139342220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2242494159412C20
            6B617465676F72692C20736578222F3E3C546672784D656D6F56696577204C65
            66743D22302220546F703D2230222057696474683D223022204865696768743D
            223022205265737472696374696F6E733D2238222056697369626C653D224661
            6C73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            46696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            32302220546F703D223330332C3436343735222057696474683D223737222048
            65696768743D2231313922205265737472696374696F6E733D22382220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31332220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2254414E4747414C222F3E3C2F636F726E65726D656D6F73
            3E3C726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2232
            302220546F703D223432322C343634373439393935303231222057696474683D
            22373722204865696768743D22323222205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D2243616C69627269
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F
            77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D22
            32302220546F703D223434342C34363437343939393530323122205769647468
            3D22373722204865696768743D22323222205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D2243616C69627269
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D224772616E6420546F74616C222F3E3C2F72
            6F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C697465
            6D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F7274
            3E3C6974656D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C2F636F
            6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C2F726F77
            736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 559.370440000000000000
        Width = 1046.929810000000000000
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 948.662030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'halaman : [Page#]')
        end
      end
    end
  end
  object frxDBDataset2_kunjunganLuar: TfrxDBDataset
    UserName = 'frxDBDataset2_kunjunganLuar'
    CloseDataSource = True
    FieldAliases.Strings = (
      'tahun=tahun'
      'bulan=bulan'
      'biaya=biaya'
      'poli_tujuan=poli_tujuan'
      'kategori=kategori'
      'sex=sex'
      'jumlah=jumlah')
    DataSet = fdQKunjunganLuar
    BCDToCurrency = False
    Left = 448
    Top = 288
  end
  object frxReport1_kunjunganLuar: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.908761030100000000
    ReportOptions.LastChange = 40862.908761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 448
    Top = 492
    Datasets = <
      item
        DataSet = frxDBDataset2_kunjunganLuar
        DataSetName = 'frxDBDataset2_kunjunganLuar'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            'Kunjungan Luar Wilayah'
            '[frxDBThbl."bulan"] - [frxDBDataset2_kunjunganLuar."TAHUN"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 231.897650000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset2_kunjunganLuar
        DataSetName = 'frxDBDataset2_kunjunganLuar'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 441.000000000000000000
          Height = 213.000000000000000000
          AutoSize = False
          ColumnLevels = 3
          DownThenAcross = False
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'BIAYA'
            'kategori'
            'sex')
          DataSet = frxdbDataset1_kunjungan
          DataSetName = 'frxDBDataset1_kunjungan'
          RowFields.Strings = (
            'poli_tujuan')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232323022
            20546F703D223338382C3436343735222057696474683D223733222048656967
            68743D22343422205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220446973706C6179466F726D6174
            2E466F726D61745374723D2225322E306E2220446973706C6179466F726D6174
            2E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D2243616C696272692220466F6E742E537479
            6C653D223022204672616D652E5479703D223135222046696C6C2E4261636B43
            6F6C6F723D2231363737373231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2220
            30222F3E3C546672784D656D6F56696577204C6566743D223232302220546F70
            3D223433322C3436343735222057696474683D22373322204865696768743D22
            343422205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220446973706C6179466F726D61742E466F72
            6D61745374723D2225322E306E2220446973706C6179466F726D61742E4B696E
            643D22666B4E756D657269632220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F72
            3D2231363737373231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D222030222F3E
            3C546672784D656D6F56696577204C6566743D223239332220546F703D223338
            382C3436343735222057696474683D22333822204865696768743D2234342220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220446973706C6179466F726D61742E466F726D617453
            74723D22232C232220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D223135222046696C6C2E4261636B436F6C6F723D2231363737
            373231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D222030222F3E3C546672784D
            656D6F56696577204C6566743D223239332220546F703D223433322C34363437
            35222057696474683D22333822204865696768743D2234342220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220446973706C6179466F726D61742E466F726D61745374723D222532
            2E306E2220446973706C6179466F726D61742E4B696E643D22666B4E756D6572
            69632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223136373737323135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D222030222F3E3C546672784D656D6F56
            696577204C6566743D223333312220546F703D223338382C3436343735222057
            696474683D22333822204865696768743D22343422205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D222030222F3E3C546672784D656D6F56696577204C65
            66743D223333312220546F703D223433322C3436343735222057696474683D22
            333822204865696768743D22343422205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D222030222F3E3C546672784D656D6F56696577204C6566743D223336
            392220546F703D223338382C3436343735222057696474683D22353222204865
            696768743D22343422205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            5269676874222056416C69676E3D22766143656E7465722220546578743D2220
            30222F3E3C546672784D656D6F56696577204C6566743D223336392220546F70
            3D223433322C3436343735222057696474683D22353222204865696768743D22
            343422205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D222030222F3E3C2F
            63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C54667278
            4D656D6F56696577204C6566743D223137342220546F703D2238352220576964
            74683D2231323222204865696768743D22323222205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226A756D6C6168222F
            3E3C546672784D656D6F56696577204C6566743D223137342220546F703D2231
            3037222057696474683D2231323222204865696768743D223232222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223022204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223136373737323135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D226A
            756D6C6168222F3E3C546672784D656D6F56696577204C6566743D2231373422
            20546F703D22313239222057696474683D2231323222204865696768743D2232
            3222205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D224A4D4C5F4B554E4A554E47414E222F3E3C546672784D656D6F56
            696577204C6566743D223137342220546F703D22313531222057696474683D22
            31323222204865696768743D22323222205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C2F63
            656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672
            784D656D6F56696577204C6566743D223232302220546F703D223330332C3436
            343735222057696474683D2231343922204865696768743D2234312220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D223232302220546F703D223334342C
            3436343735222057696474683D2231313122204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223232302220546F
            703D223336362C3436343735222057696474683D22373322204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E
            746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2233
            36392220546F703D223330332C3436343735222057696474683D223532222048
            65696768743D22383522205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31332220466F6E742E4E616D653D2243616C696272692220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D224772616E6420546F74616C222F3E3C546672784D656D6F56
            696577204C6566743D223333312220546F703D223334342C3436343735222057
            696474683D22333822204865696768743D22343422205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E
            3C546672784D656D6F56696577204C6566743D223239332220546F703D223336
            362C3436343735222057696474683D22333822204865696768743D2232322220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F
            726E65726D656D6F733E3C546672784D656D6F56696577204C6566743D223230
            2220546F703D223330332C3436343735222057696474683D2232303022204865
            696768743D223022205265737472696374696F6E733D2238222056697369626C
            653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22
            43616C696272692220466F6E742E5374796C653D223022204672616D652E5479
            703D223130222046696C6C2E4261636B436F6C6F723D22313637373732313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D226A756D6C6168222F3E3C546672784D65
            6D6F56696577204C6566743D223232302220546F703D223330332C3436343735
            222057696474683D2232303122204865696768743D2230222052657374726963
            74696F6E733D2238222056697369626C653D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31332220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D223135222046696C6C2E4261636B
            436F6C6F723D222D31363737373139342220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2242494159412C206B617465676F72692C20736578222F3E3C546672784D656D
            6F56696577204C6566743D223137342220546F703D2230222057696474683D22
            31323222204865696768743D2231303722205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
            72616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D223136
            3737373231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D2232302220546F703D223330332C3436343735
            222057696474683D2232303022204865696768743D2238352220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22706F6C695F74756A75
            616E222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C5466
            72784D656D6F56696577204C6566743D2232302220546F703D223338382C3436
            343735222057696474683D2232303022204865696768743D2234342220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F
            726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D2232302220546F703D223433322C34363437352220
            57696474683D2232303022204865696768743D22343422205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D224772616E6420546F74616C
            222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E
            733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C75
            6D6E736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D2030
            2F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F
            3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 570.709030000000000000
        Width = 1046.929810000000000000
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
    end
  end
  object frxReport1_rawatInap: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.958194074100000000
    ReportOptions.LastChange = 42720.442943310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 560
    Datasets = <
      item
        DataSet = frxdbRawatInap
        DataSetName = 'frxdbRawatInap'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 1172.410206000000000000
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 1025.008536000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 633.449228000000000000
          Width = 538.960978000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 538.960978000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]    @   halaman : [Page#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 1172.410206000000000000
        DataSet = frxdbRawatInap
        DataSetName = 'frxdbRawatInap'
        RowCount = 0
        object frxdbRawatInapitem0: TfrxMemoView
          Align = baLeft
          Top = 1.889765000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'item0'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Memo.UTF8W = (
            '[frxdbRawatInap."item0"]')
          SuppressRepeated = True
        end
        object frxdbRawatInapitem: TfrxMemoView
          Align = baLeft
          Left = 109.606370000000000000
          Top = 1.889765000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'item'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Memo.UTF8W = (
            '[frxdbRawatInap."item"]')
        end
        object frxdbRawatInapket: TfrxMemoView
          Align = baLeft
          Left = 154.960730000000000000
          Top = 1.889765000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'ket'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Memo.UTF8W = (
            '[frxdbRawatInap."ket"]')
        end
        object frxdbRawatInapket1: TfrxMemoView
          Align = baLeft
          Left = 453.543600000000000000
          Top = 1.889765000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ket1'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbRawatInap."ket1"]')
          ParentFont = False
        end
        object frxdbRawatInaplteks: TfrxMemoView
          Align = baLeft
          Left = 514.016080000000000000
          Top = 1.889765000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'lteks'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRawatInap."lteks"]')
          ParentFont = False
        end
        object frxdbRawatInapl: TfrxMemoView
          Align = baLeft
          Left = 570.708993390000000000
          Top = 1.889765000000000000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DataField = 'l'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbRawatInap."l"]')
          ParentFont = False
        end
        object frxdbRawatInappteks: TfrxMemoView
          Align = baLeft
          Left = 627.401906775826800000
          Top = 1.889765000000000000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DataField = 'pteks'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbRawatInap."pteks"]')
          ParentFont = False
        end
        object frxdbRawatInapp: TfrxMemoView
          Align = baLeft
          Left = 684.094820161653600000
          Top = 1.889765000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'p'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRawatInap."p"]')
          ParentFont = False
        end
        object frxdbRawatInapjmlteks: TfrxMemoView
          Align = baLeft
          Left = 740.787733551653600000
          Top = 1.889765000000000000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DataField = 'jmlteks'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbRawatInap."jmlteks"]')
          ParentFont = False
        end
        object frxdbRawatInaptot: TfrxMemoView
          Align = baLeft
          Left = 797.480646937480400000
          Top = 1.889765000000000000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DataField = 'tot'
          DataSet = frxdbRawatInap
          DataSetName = 'frxdbRawatInap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbRawatInap."tot"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1172.410206000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1172.410206000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            'RAWAT INAP'
            '[frxDBThbl."bulan"] - [frxdbRawatInap."tahun"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1172.410206000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1_gigi: TfrxDBDataset
    UserName = 'frxDBDataset1_gigi'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=KODE'
      'kode2=KODE2'
      'jenis=JENIS'
      'ket=KET'
      'tahun=TAHUN'
      'bulan=BULAN'
      'kat=KAT'
      'umur=umur'
      'idx_umur=idx_umur'
      'sex=sex'
      'tindakan=tindakan'
      'jumlah=jumlah'
      'kelompok=kelompok')
    DataSet = fdQTindakanGigi
    BCDToCurrency = False
    Left = 124
    Top = 288
  end
  object frxReport1_gigi: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40863.440142685200000000
    ReportOptions.LastChange = 40863.440142685200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 492
    Datasets = <
      item
        DataSet = frxDBDataset1_gigi
        DataSetName = 'frxDBDataset1_gigi'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 14
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 23.677180000000000000
        ParentFont = False
        Top = 623.622450000000000000
        Width = 1172.410206000000000000
        object Memo36: TfrxMemoView
          Align = baWidth
          Width = 1172.410206000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo37: TfrxMemoView
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
        object Memo38: TfrxMemoView
          Align = baRight
          Left = 1096.819606000000000000
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
        object Memo10: TfrxMemoView
          Left = 538.960978000000000000
          Top = 2.389765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
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
        Height = 239.779530010000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 1172.410206000000000000
        DataSet = frxDBDataset1_gigi
        DataSetName = 'frxDBDataset1_gigi'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 310.000000000000000000
          Height = 185.000000000000000000
          ColumnLevels = 4
          DownThenAcross = True
          RowLevels = 3
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'idx_umur'
            'kelompok'
            'sex'
            'KAT')
          DataSet = frxDBDataset1_gigi
          DataSetName = 'frxDBDataset1_gigi'
          RowFields.Strings = (
            'JENIS'
            'KODE2'
            'KET')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231323122
            20546F703D223339312C3032333831222057696474683D223333222048656967
            68743D22323022205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31322220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22313632
            2220546F703D22313638222057696474683D2231303722204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223132312220546F703D223431312C30
            32333831222057696474683D22333322204865696768743D2232332220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223132312220546F703D223433342C
            3032333831222057696474683D22333322204865696768743D22323222205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223135342220546F703D22333931
            2C3032333831222057696474683D22323922204865696768743D223230222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E74
            2E4E616D653D2243616C696272692220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2230222F3E
            3C546672784D656D6F56696577204C6566743D223136322220546F703D223231
            32222057696474683D2231303722204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D223135222046696C6C2E4261636B436F6C6F723D222D3136373737
            3139342220476170583D22332220476170593D2233222048416C69676E3D2268
            6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F
            56696577204C6566743D223135342220546F703D223431312C30323338312220
            57696474683D22323922204865696768743D2232332220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D
            6F56696577204C6566743D223135342220546F703D223433342C303233383122
            2057696474683D22323922204865696768743D22323222205265737472696374
            696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22
            43616C696272692220466F6E742E5374796C653D223022204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223236392220546F703D22313436222057696474
            683D22323422204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31332220466F6E742E4E616D653D2243616C6962
            72692220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D2230222F3E3C546672784D656D6F566965
            77204C6566743D223236392220546F703D22313638222057696474683D223234
            22204865696768743D22323222205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31322220466F6E742E4E616D653D2243616C69627269222046
            6F6E742E5374796C653D223022204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686152696768742220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F56696577204C6566
            743D223233372220546F703D22323133222057696474683D2232342220486569
            6768743D22353922205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223233372220546F703D22
            323732222057696474683D22323422204865696768743D223533222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C5466
            72784D656D6F56696577204C6566743D223138332220546F703D223339312C30
            32333831222057696474683D22333822204865696768743D2232302220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D223135222046696C6C2E4261636B436F6C6F723D222D313637
            37373139342220476170583D22332220476170593D2233222048416C69676E3D
            22686152696768742220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D65
            6D6F56696577204C6566743D223236392220546F703D22323132222057696474
            683D22323422204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D2268615269676874222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3138332220546F703D223431312C3032333831222057696474683D2233382220
            4865696768743D22323322205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31322220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D223135222046696C6C2E
            4261636B436F6C6F723D222D31363737373139342220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D2231383322
            20546F703D223433342C3032333831222057696474683D223338222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C736522204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223232312220546F703D2233
            39312C3032333831222057696474683D22363922204865696768743D22323022
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F
            6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223232342C303535313138
            3131303233362220546F703D223132342C303030303030303122205769647468
            3D22323822204865696768743D22323222205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2232
            32312220546F703D223431312C3032333831222057696474683D223639222048
            65696768743D22323322205265737472696374696F6E733D2232342220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3232312220546F703D223433342C3032333831222057696474683D2236392220
            4865696768743D22323222205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31322220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865
            616465726D656D6F733E3C546672784D656D6F56696577204C6566743D223133
            302220546F703D22313436222057696474683D22333222204865696768743D22
            323222205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222056416C69676E3D22766143656E74657222
            20546578743D226A756D6C6168222F3E3C546672784D656D6F56696577204C65
            66743D223133302220546F703D22313638222057696474683D22333222204865
            696768743D22323222205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F56
            696577204C6566743D223133302220546F703D22313930222057696474683D22
            333222204865696768743D22323222205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222056416C6967
            6E3D22766143656E7465722220546578743D224A4D4C222F3E3C2F63656C6C68
            65616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223132312220546F703D223331312C303233383122
            2057696474683D2231303022204865696768743D223230222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D223132312220546F703D223333312C30323338
            31222057696474683D22363222204865696768743D2232302220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D65
            3D2243616C696272692220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D223132312220546F703D223335312C303233
            3831222057696474683D22363222204865696768743D22323022205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223132312220546F703D223337312C3032
            333831222057696474683D22333322204865696768743D223230222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F63
            6F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C5466
            72784D656D6F56696577204C6566743D223232312220546F703D223331312C30
            32333831222057696474683D22363922204865696768743D2238302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22546F74222F3E
            3C546672784D656D6F56696577204C6566743D223138332220546F703D223333
            312C3032333831222057696474683D22333822204865696768743D2236302220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C2220466F6E742E5374796C653D22312220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22546F74616C
            222F3E3C546672784D656D6F56696577204C6566743D223235312220546F703D
            2236382C36363636363636363737373738222057696474683D22323222204865
            696768743D2234352C3333333333333333353535353622205265737472696374
            696F6E733D2238222056697369626C653D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31322220466F6E742E4E616D653D2243616C696272692220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22546F74222F3E3C546672784D656D6F56696577204C6566743D2231
            35342220546F703D223337312C3032333831222057696474683D223239222048
            65696768743D22323022205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31322220466F6E742E4E616D653D2243616C696272692220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22546F74222F3E3C2F636F6C756D6E746F74616C6D656D6F73
            3E3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C656674
            3D2232302220546F703D223331312C3032333831222057696474683D22313031
            22204865696768743D223022205265737472696374696F6E733D223822205669
            7369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D2230222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F566965
            77204C6566743D223132312220546F703D223331312C30323338312220576964
            74683D2231363922204865696768743D223022205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D22382220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            6964785F756D75722C206B656C6F6D706F6B2C207365782C204B4154222F3E3C
            546672784D656D6F56696577204C6566743D223133302220546F703D22302220
            57696474683D22333222204865696768743D2231363822205265737472696374
            696F6E733D2238222056697369626C653D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            746572222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C546672784D656D6F56696577204C6566743D2232302220546F703D22333131
            2C3032333831222057696474683D22323222204865696768743D223830222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223022204672
            616D652E5479703D22382220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D2234322220546F703D223331312C30
            32333831222057696474683D22343722204865696768743D2238302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D223022204672616D
            652E5479703D2231302220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F56696577204C6566743D2238392220546F703D223331312C3032
            333831222057696474683D22333222204865696768743D223830222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D224B4554222F3E3C
            2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672784D656D6F
            56696577204C6566743D2232302220546F703D223339312C3032333831222057
            696474683D22323222204865696768743D22343322205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31332220466F6E742E4E616D653D224361
            6C696272692220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C73652220526F7461
            74696F6E3D223930222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D2234322220546F70
            3D223339312C3032333831222057696474683D22343722204865696768743D22
            323022205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313222
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D2238392220546F70
            3D223339312C3032333831222057696474683D22333222204865696768743D22
            323022205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313222
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C
            546672784D656D6F56696577204C6566743D2232302220546F703D223433342C
            3032333831222057696474683D2231303122204865696768743D223232222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D224772616E
            6420546F74616C222F3E3C546672784D656D6F56696577204C6566743D223432
            2220546F703D223431312C3032333831222057696474683D2237392220486569
            6768743D22323322205265737472696374696F6E733D22382220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31322220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223122204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22546F74616C222F3E3C546672784D656D6F56696577204C656674
            3D223132372C3035353131383131303233362220546F703D223132342C303030
            3030303031222057696474683D22353122204865696768743D22323222205265
            737472696374696F6E733D2238222056697369626C653D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D656D6F73
            3E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66
            756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C69
            74656D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C2F636F6C756D
            6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F
            3E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 1172.410206000000000000
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1172.410206000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1172.410206000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxDBDataset1_gigi."TAHUN"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1172.410206000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
  end
  object frxdb_poned: TfrxDBDataset
    UserName = 'frxdb_poned'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jumlah=jumlah'
      'poned=poned'
      'tanggal=tanggal'
      'no1=NO1'
      'nomor=NOMOR'
      'kelompok=KELOMPOK'
      'jenis_penyakit=JENIS_PENYAKIT'
      'idx=IDX'
      'biaya=BIAYA'
      'tahun=TAHUN'
      'bulan=BULAN')
    DataSet = fdQPoned
    BCDToCurrency = False
    Left = 340
    Top = 356
  end
  object frxReport_poned: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.908761030100000000
    ReportOptions.LastChange = 40862.908761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Top = 492
    Datasets = <
      item
        DataSet = frxdb_poned
        DataSetName = 'frxdb_poned'
      end
      item
        DataSet = frxdb1Imunisasi
        DataSetName = 'frxdb1Imunisasi'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessWidth = True
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 551.811380000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]     [Time]      hal :  [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 212.677180000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frxdb_poned
        DataSetName = 'frxdb_poned'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Left = 26.456710000000000000
          Width = 376.000000000000000000
          Height = 140.000000000000000000
          DownThenAcross = False
          PlainCells = True
          RowLevels = 4
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'BIAYA')
          DataSet = frxdb_poned
          DataSetName = 'frxdb_poned'
          RowFields.Strings = (
            'NO1'
            'KELOMPOK'
            'IDX'
            'JENIS_PENYAKIT')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223236372C
            34353637312220546F703D223333392C3638353232222057696474683D223431
            22204865696768743D22323022205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223333362220546F703D223834222057696474683D2231303722204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D223236372C3435
            3637312220546F703D223335392C3638353232222057696474683D2234312220
            4865696768743D22323022205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D2268615269676874222050617265
            6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
            20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2235
            30342220546F703D223832222057696474683D2231303722204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C736522204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223236372C34353637312220546F70
            3D223337392C3638353232222057696474683D22343122204865696768743D22
            323022205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313222
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223330382C3435363731
            2220546F703D223333392C3638353232222057696474683D2237342220486569
            6768743D22323022205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E537479
            6C653D223022204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D2233343222
            20546F703D223832222057696474683D22383022204865696768743D22323222
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205641
            6C69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D
            656D6F56696577204C6566743D223330382C34353637312220546F703D223335
            392C3638353232222057696474683D22373422204865696768743D2232302220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
            546672784D656D6F56696577204C6566743D223235362220546F703D22313238
            222057696474683D22383022204865696768743D223232222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
            22417269616C2220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686152696768742220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D
            6F56696577204C6566743D223330382C34353637312220546F703D223337392C
            3638353232222057696474683D22373422204865696768743D22323022205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686152696768742220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D2230222F3E3C2F63
            656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C546672784D
            656D6F56696577204C6566743D223235362220546F703D223632222057696474
            683D22383022204865696768743D22323222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D22332220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D226A756D6C
            6168222F3E3C546672784D656D6F56696577204C6566743D223333362220546F
            703D223632222057696474683D2231303722204865696768743D223232222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D22332220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D226A756D6C6168222F3E3C546672784D656D6F56696577204C
            6566743D223434332220546F703D223632222057696474683D22383022204865
            696768743D22323222205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E537479
            6C653D223022204672616D652E5479703D2231352220476170583D2233222047
            6170593D22332220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C546672
            784D656D6F56696577204C6566743D223532332220546F703D22363222205769
            6474683D2231303722204865696768743D22323222205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269
            616C2220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D226A
            756D6C6168222F3E3C546672784D656D6F56696577204C6566743D2236333022
            20546F703D223632222057696474683D22383722204865696768743D22323222
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222056416C69676E3D22766143656E74657222205465
            78743D226A756D6C6168222F3E3C2F63656C6C6865616465726D656D6F733E3C
            636F6C756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D22
            3236372C34353637312220546F703D223331392C363835323222205769647468
            3D22343122204865696768743D22323022205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E
            6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223330382C34353637312220546F703D223331392C
            3638353232222057696474683D22373422204865696768743D22323022205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D224772616E642054
            6F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65
            726D656D6F733E3C546672784D656D6F56696577204C6566743D2234362C3435
            3637312220546F703D223239392C3638353232222057696474683D2232323122
            204865696768743D22323022205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F77
            2220466F6E742E5374796C653D22302220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            6A756D6C6168222F3E3C546672784D656D6F56696577204C6566743D22323637
            2C34353637312220546F703D223239392C3638353232222057696474683D2231
            313522204865696768743D22323022205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31322220466F6E742E4E616D653D22417269616C204E6172
            726F772220466F6E742E5374796C653D22302220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D224249415941222F3E3C546672784D656D6F56696577204C6566743D2231
            32392220546F703D223232222057696474683D2231313922204865696768743D
            22323222205265737472696374696F6E733D2238222056697369626C653D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E746572222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            2234362C34353637312220546F703D223331392C363835323222205769647468
            3D22333222204865696768743D22323022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D224E4F31222F3E3C546672784D
            656D6F56696577204C6566743D2237382C34353637312220546F703D22333139
            2C3638353232222057696474683D22363722204865696768743D223230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            224B454C4F4D504F4B222F3E3C546672784D656D6F56696577204C6566743D22
            3134352C34353637312220546F703D223331392C363835323222205769647468
            3D22323822204865696768743D22323022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22494458222F3E3C546672784D
            656D6F56696577204C6566743D223137332C34353637312220546F703D223331
            392C3638353232222057696474683D22393422204865696768743D2232302220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D224A454E49535F50454E59414B4954222F3E3C2F636F726E65726D656D6F73
            3E3C726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2234
            362C34353637312220546F703D223333392C3638353232222057696474683D22
            333222204865696768743D22343022205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31322220466F6E742E4E616D653D22417269616C204E61
            72726F772220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D22332220506172656E74466F6E74
            3D2246616C73652220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D2237382C34353637312220546F703D223333392C36383532322220
            57696474683D22363722204865696768743D2234302220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D2241
            7269616C204E6172726F772220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2231
            34352C34353637312220546F703D223333392C3638353232222057696474683D
            22323822204865696768743D22323022205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D22332220506172656E74466F6E
            743D2246616C73652220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D223137332C34353637312220546F703D223333392C3638353232
            222057696474683D22393422204865696768743D223230222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C73652220546578743D22222F3E3C2F726F77
            6D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F5669
            6577204C6566743D2234362C34353637312220546F703D223337392C36383532
            32222057696474683D2232323122204865696768743D22323022205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D65
            3D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D224772616E6420546F7461
            6C222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D22
            30222057696474683D223022204865696768743D223022205265737472696374
            696F6E733D2238222056697369626C653D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22546F74616C222F3E3C546672784D656D6F56696577204C6566743D2231
            34352C34353637312220546F703D223335392C3638353232222057696474683D
            2231323222204865696768743D22323022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31322220466F6E742E4E616D653D22417269616C204E
            6172726F772220466F6E742E5374796C653D223122204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22546F74616C222F3E3C546672
            784D656D6F56696577204C6566743D223138332220546F703D22383822205769
            6474683D2231323422204865696768743D22323222205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C6675
            6E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E73
            3E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E736F
            72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C69
            74656D20302F3E3C6974656D20322F3E3C2F726F77736F72743E3C2F63726F73
            733E}
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxdb_poned."TAHUN"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 551.811380000000000000
        Width = 980.410082000000000000
        object Memo35: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]     [Time]      hal :  [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 212.677180000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 980.410082000000000000
        DataSet = frxdb1Imunisasi
        DataSetName = 'frxdb1Imunisasi'
        RowCount = 0
        object DBCross2: TfrxDBCrossView
          Left = 26.456710000000000000
          Width = 314.000000000000000000
          Height = 148.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          PlainCells = True
          RowLevels = 3
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'biaya'
            'sex')
          DataSet = frxdb1Imunisasi
          DataSetName = 'frxdb1Imunisasi'
          RowFields.Strings = (
            'desa'
            'sasaran'
            'vaksin')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223137382C
            34353637312220546F703D223334312C3638353232222057696474683D223330
            22204865696768743D22323222205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223137382C34353637312220546F703D223336332C3638353232222057696474
            683D22333022204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D2230222F3E3C546672784D656D6F5669657720
            4C6566743D2238302220546F703D223634222057696474683D22373922204865
            696768743D22323022205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22313738
            2C34353637312220546F703D223338352C3638353232222057696474683D2233
            3022204865696768743D22323222205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D223230382C
            34353637312220546F703D223334312C3638353232222057696474683D223338
            22204865696768743D22323222205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223230382C34353637312220546F703D223336332C3638353232222057696474
            683D22333822204865696768743D22323222205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D2230222F3E3C546672784D656D6F5669657720
            4C6566743D223139372220546F703D223432222057696474683D223734222048
            65696768743D22323222205265737472696374696F6E733D2232342220416C6C
            6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            615269676874222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223230382C34353637
            312220546F703D223338352C3638353232222057696474683D22333822204865
            696768743D22323222205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323436
            2C34353637312220546F703D223334312C3638353232222057696474683D2237
            3422204865696768743D22323222205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223234362C34353637312220546F703D223336332C36383532322220576964
            74683D22373422204865696768743D22323222205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            22302220546F703D2230222057696474683D223022204865696768743D223022
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D2268615269676874222056416C
            69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
            6F56696577204C6566743D223234362C34353637312220546F703D223338352C
            3638353232222057696474683D22373422204865696768743D22323222205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D2268615269676874222056416C6967
            6E3D22766143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D
            6F733E3C63656C6C6865616465726D656D6F733E3C546672784D656D6F566965
            77204C6566743D223235362220546F703D223632222057696474683D22383022
            204865696768743D22323222205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C
            546672784D656D6F56696577204C6566743D223333362220546F703D22363222
            2057696474683D2231303722204865696768743D223232222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22
            417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D
            2231352220476170583D22332220476170593D22332220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D226A756D6C6168222F3E3C546672784D656D6F56696577204C6566743D2234
            34332220546F703D223632222057696474683D22383022204865696768743D22
            323222205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220
            466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C2F63656C6C68656164
            65726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F5669
            6577204C6566743D223137382C34353637312220546F703D223239392C363835
            3232222057696474683D22363822204865696768743D22323022205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D
            653D22417269616C204E6172726F772220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D223137382C34353637312220
            546F703D223331392C3638353232222057696474683D22333022204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C75
            6D6E746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            223234362C34353637312220546F703D223239392C3638353232222057696474
            683D22373422204865696768743D22343222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D224772616E6420546F74616C222F3E3C546672
            784D656D6F56696577204C6566743D223230382C34353637312220546F703D22
            3331392C3638353232222057696474683D22333822204865696768743D223232
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22546F74
            616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D
            656D6F733E3C546672784D656D6F56696577204C6566743D2234362C34353637
            312220546F703D223239392C3638353232222057696474683D22313332222048
            65696768743D223022205265737472696374696F6E733D223822205669736962
            6C653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
            22417269616C204E6172726F772220466F6E742E5374796C653D223022204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D226A756D6C6168222F3E3C546672784D656D6F56
            696577204C6566743D223137382C34353637312220546F703D223239392C3638
            353232222057696474683D2231343222204865696768743D2230222052657374
            72696374696F6E733D2238222056697369626C653D2246616C73652220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31322220466F6E742E4E616D653D22417269616C204E6172726F7722
            20466F6E742E5374796C653D22302220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2262
            696179612C20736578222F3E3C546672784D656D6F56696577204C6566743D22
            3132392220546F703D223232222057696474683D223131392220486569676874
            3D22323222205265737472696374696F6E733D2238222056697369626C653D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
            7465722220546578743D22222F3E3C546672784D656D6F56696577204C656674
            3D2234362C34353637312220546F703D223239392C3638353232222057696474
            683D22333322204865696768743D22343222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C20
            4E6172726F772220466F6E742E5374796C653D223022204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D2264657361222F3E3C546672
            784D656D6F56696577204C6566743D2237392C34353637312220546F703D2232
            39392C3638353232222057696474683D22343722204865696768743D22343222
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E
            742E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D227361736172616E222F3E3C546672784D656D6F56696577204C6566743D
            223132362C34353637312220546F703D223239392C3638353232222057696474
            683D22353222204865696768743D22343222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E746572222056416C69676E3D22766143656E746572
            2220546578743D2276616B73696E222F3E3C2F636F726E65726D656D6F733E3C
            726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2234362C
            34353637312220546F703D223334312C3638353232222057696474683D223333
            22204865696768743D22343422205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31322220466F6E742E4E616D653D22417269616C204E617272
            6F772220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C73652220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D2237392C34353637312220546F703D223334312C363835323222205769
            6474683D22343722204865696768743D22343422205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22313236
            2C34353637312220546F703D223334312C3638353232222057696474683D2235
            3222204865696768743D22323222205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E746572222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F
            733E3C546672784D656D6F56696577204C6566743D2234362C34353637312220
            546F703D223338352C3638353232222057696474683D22313332222048656967
            68743D22323222205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D224772616E6420546F74616C222F3E3C546672784D656D6F56696577204C
            6566743D22302220546F703D2230222057696474683D22302220486569676874
            3D223022205265737472696374696F6E733D2238222056697369626C653D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22546F74616C222F3E3C546672784D656D
            6F56696577204C6566743D223132362C34353637312220546F703D223336332C
            3638353232222057696474683D22353222204865696768743D22323222205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22546F74616C222F
            3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E
            3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E
            736F72743E3C6974656D20302F3E3C6974656D20302F3E3C2F636F6C756D6E73
            6F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D20302F3E3C
            6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo8: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxdb1Imunisasi."tahun"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 980.410082000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 792.788339450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 792.788339450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 792.788339450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 792.788339450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 792.788339450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
  end
  object frxdb_rujukan1: TfrxDBDataset
    UserName = 'frxdb_rujukan1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'nama_lengkap=nama_lengkap'
      'pulang_tanggal=pulang_tanggal'
      'biaya=BIAYA'
      'provider_rujuk=provider_rujuk'
      'poli_rujuk=poli_rujuk'
      'diagnosa=diagnosa'
      'dokter_panjang=dokter_panjang'
      'tahun=TAHUN'
      'bulan=BULAN'
      'puskesmas=PUSKESMAS')
    DataSet = fdQRujukLengkap
    BCDToCurrency = False
    Left = 232
    Top = 356
  end
  object frxReport_rujukan: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.908761030100000000
    ReportOptions.LastChange = 40862.908761030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 124
    Top = 492
    Datasets = <
      item
        DataSet = frxdb_rujukan0
        DataSetName = 'frxdb_rujukan0'
      end
      item
        DataSet = frxdb_rujukan1
        DataSetName = 'frxdb_rujukan1'
      end
      item
        DataSet = frxDBRujukanDrKader
        DataSetName = 'frxDBRujukanDrKader'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessWidth = True
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 680.315400000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]     [Time]      hal :  [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 23.700680000000000000
        ParentFont = False
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        DataSet = frxdb_rujukan0
        DataSetName = 'frxdb_rujukan0'
        RowCount = 0
        object frxdb_rujukan0BIAYA: TfrxMemoView
          Left = 26.456710000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'biaya'
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdb_rujukan0."biaya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdb_rujukan0COUNT_OF_MR: TfrxMemoView
          Left = 302.362400000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'jml'
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_rujukan0."jml"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 26.456710000000000000
          Top = 25.000000000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Biaya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 302.362400000000000000
          Top = 25.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 26.456710000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'PASIEN DIRUJUK Ke Rumah Sakit')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo45: TfrxMemoView
          Left = 302.362400000000000000
          Top = 1.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_rujukan0."jml">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 23.700680000000000000
        ParentFont = False
        Top = 548.031850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRujukanDrKader
        DataSetName = 'frxDBRujukanDrKader'
        RowCount = 0
        object Memo46: TfrxMemoView
          Left = 26.456710000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'BIAYA'
          DataSet = frxDBRujukanDrKader
          DataSetName = 'frxDBRujukanDrKader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDBRujukanDrKader."BIAYA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 302.362400000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'JML'
          DataSet = frxDBRujukanDrKader
          DataSetName = 'frxDBRujukanDrKader'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRujukanDrKader."JML"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo48: TfrxMemoView
          Left = 26.456710000000000000
          Top = 25.000000000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Biaya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 302.362400000000000000
          Top = 25.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 26.456710000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'PASIEN DIRUJUK KE PUSKESMAS')
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 593.386210000000000000
        Width = 718.110700000000000000
        object Memo51: TfrxMemoView
          Left = 302.362400000000000000
          Top = 1.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan0
          DataSetName = 'frxdb_rujukan0'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRujukanDrKader."JML">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxdb_rujukan0."tahun"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]     [Time]      hal :  [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 19.921150000000000000
        ParentFont = False
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = frxdb_rujukan1
        DataSetName = 'frxdb_rujukan1'
        RowCount = 0
        object frxdb_rujukan1NAMA: TfrxMemoView
          Align = baLeft
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'nama_lengkap'
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Memo.UTF8W = (
            '[frxdb_rujukan1."nama_lengkap"]')
        end
        object frxdb_rujukan1PULANG_TANGGAL: TfrxMemoView
          Align = baLeft
          Left = 204.094620000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'pulang_tanggal'
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Memo.UTF8W = (
            '[frxdb_rujukan1."pulang_tanggal"]')
        end
        object frxdb_rujukan1DIRUJUK_KE: TfrxMemoView
          Align = baLeft
          Left = 328.819110000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'provider_rujuk'
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Memo.UTF8W = (
            '[frxdb_rujukan1."provider_rujuk"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        Condition = 'frxdb_rujukan1."BIAYA"'
        OutlineText = 'frxdb_rujukan1."BIAYA"'
        StartNewPage = True
        object frxdb_rujukan1BIAYA: TfrxMemoView
          Left = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Jenis Biaya : [frxdb_rujukan1."BIAYA"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Top = 30.236240000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Pasien')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 204.094620000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 328.819110000000000000
          Top = 30.236240000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tujuan Rujukan')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object frxdb_rujukan1TAHUN: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Jumlah Pasien Dirujuk [frxdb_rujukan1."BIAYA"] : [COUNT(MasterDa' +
              'ta2)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxdb_rujukan1
          DataSetName = 'frxdb_rujukan1'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Pasien Dirujuk : [COUNT(MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxdb_rujukan1."TAHUN"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 530.488957450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
    end
  end
  object frxdb_rujukan0: TfrxDBDataset
    UserName = 'frxdb_rujukan0'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jml=jml'
      'biaya=biaya'
      'tahun=tahun'
      'bulan=bulan'
      'puskesmas=puskesmas')
    DataSet = fdQRujuk
    BCDToCurrency = False
    Left = 448
    Top = 152
  end
  object frxDBRujukanDrKader: TfrxDBDataset
    UserName = 'frxDBRujukanDrKader'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jml=JML'
      'biaya=BIAYA'
      'puskesmas=puskesmas'
      'tahun=tahun'
      'bulan=bulan')
    DataSet = fdQRujukKePkm
    BCDToCurrency = False
    Left = 16
    Top = 220
  end
  object dsthblDummi: TJvDataSource
    Left = 232
    Top = 560
  end
  object frxDBrptthbl: TfrxDBDataset
    UserName = 'frxdbrptthbl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tahun=TAHUN'
      'bulan_id=BULAN_ID'
      'bulan=BULAN'
      'institusi=INSTITUSI'
      'alamat=ALAMAT'
      'id=id'
      'nama=NAMA'
      'desa=DESA'
      'kecamatan=KECAMATAN'
      'kota=KOTA'
      'prop=PROP'
      'adl_aktif=ADL_AKTIF')
    BCDToCurrency = False
    Left = 340
    Top = 152
  end
  object frxdbDataset1_kunjungan: TfrxDBDataset
    UserName = 'frxDBDataset1_kunjungan'
    CloseDataSource = True
    FieldAliases.Strings = (
      'tahun=tahun'
      'bulan=bulan'
      'biaya=BIAYA'
      'poli_tujuan=poli_tujuan'
      'kategori=kategori'
      'sex=sex'
      'jumlah=jumlah')
    DataSet = fdQKunjungan
    BCDToCurrency = False
    Left = 124
    Top = 152
  end
  object frxReport1_kunjungan: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40862.908761030100000000
    ReportOptions.LastChange = 42682.310473275500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 448
    Top = 424
    Datasets = <
      item
        DataSet = frxdbDataset1_kunjungan
        DataSetName = 'frxDBDataset1_kunjungan'
      end
      item
        DataSet = frxdbThbl
        DataSetName = 'frxDBThbl'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
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
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 14
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessWidth = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1172.410206000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1172.410206000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]'
            'LAPORAN BULANAN KEGIATAN PUSKESMAS'
            '[frxDBThbl."bulan"] - [frxDBDataset1_kunjungan."tahun"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1172.410206000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."idxstr"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 75.968503940000000000
          Width = 984.788463450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 188.976500000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 1172.410206000000000000
        DataSet = frxdbDataset1_kunjungan
        DataSetName = 'frxDBDataset1_kunjungan'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 441.000000000000000000
          Height = 213.000000000000000000
          AutoSize = False
          ColumnLevels = 3
          DownThenAcross = False
          ShowTitle = False
          CellFields.Strings = (
            'jumlah')
          ColumnFields.Strings = (
            'BIAYA'
            'kategori'
            'sex')
          DataSet = frxdbDataset1_kunjungan
          DataSetName = 'frxDBDataset1_kunjungan'
          RowFields.Strings = (
            'poli_tujuan')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232323022
            20546F703D223338382C3436343735222057696474683D223733222048656967
            68743D22343422205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220446973706C6179466F726D6174
            2E466F726D61745374723D2225322E306E2220446973706C6179466F726D6174
            2E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D2243616C696272692220466F6E742E537479
            6C653D223022204672616D652E5479703D223135222046696C6C2E4261636B43
            6F6C6F723D2231363737373231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2220
            30222F3E3C546672784D656D6F56696577204C6566743D223232302220546F70
            3D223433322C3436343735222057696474683D22373322204865696768743D22
            343422205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220446973706C6179466F726D61742E466F72
            6D61745374723D2225322E306E2220446973706C6179466F726D61742E4B696E
            643D22666B4E756D657269632220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F72
            3D2231363737373231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D222030222F3E
            3C546672784D656D6F56696577204C6566743D223239332220546F703D223338
            382C3436343735222057696474683D22333822204865696768743D2234342220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220446973706C6179466F726D61742E466F726D617453
            74723D22232C232220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D223135222046696C6C2E4261636B436F6C6F723D2231363737
            373231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D222030222F3E3C546672784D
            656D6F56696577204C6566743D223239332220546F703D223433322C34363437
            35222057696474683D22333822204865696768743D2234342220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220446973706C6179466F726D61742E466F726D61745374723D222532
            2E306E2220446973706C6179466F726D61742E4B696E643D22666B4E756D6572
            69632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223136373737323135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D222030222F3E3C546672784D656D6F56
            696577204C6566743D223333312220546F703D223338382C3436343735222057
            696474683D22333822204865696768743D22343422205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D222030222F3E3C546672784D656D6F56696577204C65
            66743D223333312220546F703D223433322C3436343735222057696474683D22
            333822204865696768743D22343422205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D2268615269676874222056416C69676E3D22766143656E746572222054
            6578743D222030222F3E3C546672784D656D6F56696577204C6566743D223336
            392220546F703D223338382C3436343735222057696474683D22353222204865
            696768743D22343422205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            5269676874222056416C69676E3D22766143656E7465722220546578743D2220
            30222F3E3C546672784D656D6F56696577204C6566743D223336392220546F70
            3D223433322C3436343735222057696474683D22353222204865696768743D22
            343422205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D226861526967687422
            2056416C69676E3D22766143656E7465722220546578743D222030222F3E3C2F
            63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C54667278
            4D656D6F56696577204C6566743D223137342220546F703D2238352220576964
            74683D2231323222204865696768743D22323222205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D
            22332220476170593D22332220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D226A756D6C6168222F
            3E3C546672784D656D6F56696577204C6566743D223137342220546F703D2231
            3037222057696474683D2231323222204865696768743D223232222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223022204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223136373737323135
            2220476170583D22332220476170593D22332220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D226A
            756D6C6168222F3E3C546672784D656D6F56696577204C6566743D2231373422
            20546F703D22313239222057696474683D2231323222204865696768743D2232
            3222205265737472696374696F6E733D22382220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222056416C69676E3D22766143656E7465722220
            546578743D224A4D4C5F4B554E4A554E47414E222F3E3C546672784D656D6F56
            696577204C6566743D223137342220546F703D22313531222057696474683D22
            31323222204865696768743D22323222205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D226A756D6C6168222F3E3C2F63
            656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672
            784D656D6F56696577204C6566743D223232302220546F703D223330332C3436
            343735222057696474683D2231343922204865696768743D2234312220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D223232302220546F703D223334342C
            3436343735222057696474683D2231313122204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223232302220546F
            703D223336362C3436343735222057696474683D22373322204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C204E6172726F772220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E
            746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D2233
            36392220546F703D223330332C3436343735222057696474683D223532222048
            65696768743D22383522205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31332220466F6E742E4E616D653D2243616C696272692220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D224772616E6420546F74616C222F3E3C546672784D656D6F56
            696577204C6566743D223333312220546F703D223334342C3436343735222057
            696474683D22333822204865696768743D22343422205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
            616C204E6172726F772220466F6E742E5374796C653D223122204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E
            3C546672784D656D6F56696577204C6566743D223239332220546F703D223336
            362C3436343735222057696474683D22333822204865696768743D2232322220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C204E6172726F772220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F
            726E65726D656D6F733E3C546672784D656D6F56696577204C6566743D223230
            2220546F703D223330332C3436343735222057696474683D2232303022204865
            696768743D223022205265737472696374696F6E733D2238222056697369626C
            653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22
            43616C696272692220466F6E742E5374796C653D223022204672616D652E5479
            703D223130222046696C6C2E4261636B436F6C6F723D22313637373732313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D226A756D6C6168222F3E3C546672784D65
            6D6F56696577204C6566743D223232302220546F703D223330332C3436343735
            222057696474683D2232303122204865696768743D2230222052657374726963
            74696F6E733D2238222056697369626C653D2246616C73652220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31332220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D223135222046696C6C2E4261636B
            436F6C6F723D222D31363737373139342220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2242494159412C206B617465676F72692C20736578222F3E3C546672784D656D
            6F56696577204C6566743D223137342220546F703D2230222057696474683D22
            31323222204865696768743D2231303722205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
            72616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D223136
            3737373231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D2232302220546F703D223330332C3436343735
            222057696474683D2232303022204865696768743D2238352220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22706F6C695F74756A75
            616E222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C5466
            72784D656D6F56696577204C6566743D2232302220546F703D223338382C3436
            343735222057696474683D2232303022204865696768743D2234342220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F
            726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D2232302220546F703D223433322C34363437352220
            57696474683D2232303022204865696768743D22343422205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2243
            616C696272692220466F6E742E5374796C653D223122204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
            69676E3D22766143656E7465722220546578743D224772616E6420546F74616C
            222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E
            733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C75
            6D6E736F72743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D2030
            2F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F
            3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 529.134200000000000000
        Width = 1172.410206000000000000
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 1172.410206000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBThbl."nama"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbRawatInap: TfrxDBDataset
    UserName = 'frxdbRawatInap'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tahun=tahun'
      'bulan=bulan'
      'puskesmas=puskesmas'
      'item0=item0'
      'item=item'
      'ket=ket'
      'ket1=ket1'
      'lteks=lteks'
      'l=l'
      'pteks=pteks'
      'p=p'
      'jmlteks=jmlteks'
      'tot=tot'
      'idx=idx')
    DataSet = fdQRI
    BCDToCurrency = False
    Left = 232
    Top = 152
  end
  object frxdb1Imunisasi: TfrxDBDataset
    UserName = 'frxdb1Imunisasi'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jumlah=jumlah'
      'desa=desa'
      'imunisasi=imunisasi'
      'biaya=biaya'
      'sex=sex'
      'vaksin=vaksin'
      'sasaran=sasaran'
      'idx_sasaran=idx_sasaran'
      'tahun=tahun'
      'bulan=bulan')
    DataSet = fdQImunisasi
    BCDToCurrency = False
    Left = 448
    Top = 220
  end
  object frxdb1Tgl: TfrxDBDataset
    UserName = 'frxdb1Tgl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nama=nama'
      'desa=desa'
      'kecamatan=kecamatan'
      'kota=kota'
      'prop=prop'
      'adl_aktif=adl_aktif'
      'provider_bpjs=provider_bpjs'
      'kode_wil=kode_wil'
      'tanggal1=tanggal1'
      'tanggal2=tanggal2')
    BCDToCurrency = False
    Left = 16
    Top = 288
  end
  object frxdb1KesakitanTgl: TfrxDBDataset
    UserName = 'frxdb1KesakitanTgl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'puskesmas=puskesmas'
      'icdx=icdx'
      'kat=kat'
      'jenis_kelamin=jenis_kelamin'
      'kelompok_umur_idx=kelompok_umur_idx'
      'kelompok_umur=kelompok_umur'
      'biaya=biaya'
      'desa=desa'
      'jml=jml'
      'penyakit=penyakit')
    BCDToCurrency = False
    Left = 340
    Top = 220
  end
  object frxReport1KesakitanTgl: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42808.856055601800000000
    ReportOptions.LastChange = 42808.856055601800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 340
    Top = 492
    Datasets = <
      item
        DataSet = frxdb1KesakitanDesa
        DataSetName = 'frxdb1KesakitanDesa'
      end
      item
        DataSet = frxdb1KesakitanTgl
        DataSetName = 'frxdb1KesakitanTgl'
      end
      item
        DataSet = frxdb1Tgl
        DataSetName = 'frxdb1Tgl'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]'
            'LAPORAN DATA KESAKITAN PUSKESMAS'
            '[frxdb1Tgl."tanggal1"] s.d [frxdb1Tgl."tanggal2"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 149.401670000000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 552.788184450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."kecamatan"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 552.788184450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."id"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 552.788184450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 552.788184450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."kota"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 189.186236100000000000
          Top = 75.968503940000000000
          Width = 984.672949900000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."prop"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 17.889610000000000000
        ParentFont = False
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1KesakitanDesa
        DataSetName = 'frxdb1KesakitanDesa'
        RowCount = 0
        object frxdb1KesakitanDesaicdx: TfrxMemoView
          Left = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'icdx'
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Memo.UTF8W = (
            '[frxdb1KesakitanDesa."icdx"]')
        end
        object frxdb1KesakitanDesanm_diag: TfrxMemoView
          Left = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nm_diag'
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Memo.UTF8W = (
            '[frxdb1KesakitanDesa."nm_diag"]')
        end
        object frxdb1KesakitanDesajml: TfrxMemoView
          Left = 506.457020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'jml'
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb1KesakitanDesa."jml"]')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 502.677490000000000000
        Width = 740.409927000000000000
        object Memo36: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 322.960838500000000000
          Top = 5.669295000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]    @   halaman : [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        Condition = 'frxdb1KesakitanDesa."desa"'
        object frxdb1KesakitanDesadesa: TfrxMemoView
          Left = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESA : [frxdb1KesakitanDesa."desa"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'ICD-X')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 86.929190000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nama Diagnosa')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 506.457020000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
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
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Memo39: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1KesakitanDesa
          DataSetName = 'frxdb1KesakitanDesa'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb1KesakitanDesa."jml">,MasterData2)]')
          ParentFont = False
        end
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]'
            'LAPORAN DATA KESAKITAN PUSKESMAS'
            '[frxdb1Tgl."tanggal1"] s.d [frxdb1Tgl."tanggal2"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 117.165430000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KODE PUSKESMAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 149.401670000000000000
          Top = 75.968503940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 38.173228350000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."kecamatan"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."id"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 19.275590550000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Left = 187.621742550000000000
          Top = 57.070866140000000000
          Width = 859.308067450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."kota"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 189.186236100000000000
          Top = 75.968503940000000000
          Width = 984.672949900000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdb1Tgl."prop"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Top = 19.275590551181000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUSKESMAS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 38.173228346457000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 57.070866140000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 75.968503940000000000
          Width = 149.154696100000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROPINSI')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 0.377940550000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 19.275578350000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 38.173216140000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 149.154696100000000000
          Top = 57.070853940000000000
          Width = 38.467046450000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 180.409400000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb1KesakitanTgl
        DataSetName = 'frxdb1KesakitanTgl'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Align = baLeft
          Width = 366.000000000000000000
          Height = 192.000000000000000000
          ColumnLevels = 4
          DownThenAcross = False
          PlainCells = True
          RowLevels = 3
          ShowTitle = False
          CellFields.Strings = (
            'JML')
          ColumnFields.Strings = (
            'kelompok_umur_idx'
            'KELOMPOK_UMUR'
            'KAT'
            'JENIS_KELAMIN')
          DataSet = frxdb1KesakitanTgl
          DataSetName = 'frxdb1KesakitanTgl'
          RowFields.Strings = (
            'desa'
            'icdx'
            'PENYAKIT')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231343622
            20546F703D223338352C3638353232222057696474683D223931222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31312220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223132
            362220546F703D22313038222057696474683D22393122204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313122
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22313436222054
            6F703D223430372C3638353232222057696474683D2239312220486569676874
            3D22323222205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C
            653D223022204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D2231343622
            20546F703D223432392C3638353232222057696474683D223931222048656967
            68743D22323222205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220466F6E742E436861727365743D
            22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
            2D31332220466F6E742E4E616D653D2243616C696272692220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223233
            372220546F703D223338352C3638353232222057696474683D22313322204865
            696768743D22323222205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D2243616C696272692220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3231372220546F703D22313038222057696474683D2231332220486569676874
            3D22323222205265737472696374696F6E733D2232342220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C
            653D223022204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D2231353739303332302220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223233372220546F703D22
            3430372C3638353232222057696474683D22313322204865696768743D223232
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22312220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223233372220546F70
            3D223432392C3638353232222057696474683D22313322204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D223235302220546F
            703D223338352C3638353232222057696474683D22333522204865696768743D
            22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686152696768742220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22323330222054
            6F703D22313038222057696474683D22333522204865696768743D2232322220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D2243616C696272692220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D2230222F
            3E3C546672784D656D6F56696577204C6566743D223235302220546F703D2234
            30372C3638353232222057696474683D22333522204865696768743D22323222
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D223022
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686152696768742220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D223022
            2F3E3C546672784D656D6F56696577204C6566743D223235302220546F703D22
            3432392C3638353232222057696474683D22333522204865696768743D223232
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C73652220466F6E742E436861727365743D22312220466F
            6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133222046
            6F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D2230
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            222F3E3C546672784D656D6F56696577204C6566743D223232342220546F703D
            223836222057696474683D22363222204865696768743D223232222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D2243616C696272692220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D2268615269676874222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22323234
            2220546F703D22313038222057696474683D22363222204865696768743D2232
            3222205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D
            2230222057696474683D223022204865696768743D2230222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223238352220546F703D223338352C3638353232222057696474683D22
            363122204865696768743D22323222205265737472696374696F6E733D223234
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D2243616C6962726922
            20466F6E742E5374796C653D223022204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
            6566743D223236352220546F703D22313038222057696474683D223631222048
            65696768743D22323222205265737472696374696F6E733D2232342220416C6C
            6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
            65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
            743D222D31332220466F6E742E4E616D653D2243616C696272692220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D22
            3238352220546F703D223430372C3638353232222057696474683D2236312220
            4865696768743D22323222205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31332220466F6E742E4E616D653D2243616C696272692220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
            223238352220546F703D223432392C3638353232222057696474683D22363122
            204865696768743D22323222205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D2243616C696272692220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C68
            65616465726D656D6F733E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222056416C69676E3D22766143656E746572222054657874
            3D224A4D4C222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D2231352220476170583D223322204761
            70593D2233222056416C69676E3D22766143656E7465722220546578743D224A
            4D4C222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D
            2230222057696474683D223022204865696768743D2230222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222056416C69676E3D22766143656E7465722220546578743D224A4D4C22
            2F3E3C546672784D656D6F56696577204C6566743D22302220546F703D223022
            2057696474683D223022204865696768743D223022205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2056416C69676E3D22766143656E7465722220546578743D224A4D4C222F3E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F63656C6C68
            65616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223134362220546F703D223239392C363835323222
            2057696474683D2231333922204865696768743D223232222052657374726963
            74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D223134362220546F703D223332312C36383532
            32222057696474683D2231333922204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D2243616C696272692220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223134362220546F703D223334332C3638
            353232222057696474683D2231303422204865696768743D2232322220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D223134362220546F703D223336352C
            3638353232222057696474683D22393122204865696768743D22323022205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C
            546672784D656D6F56696577204C6566743D223238352220546F703D22323939
            2C3638353232222057696474683D22363122204865696768743D223836222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E
            4E616D653D2243616C696272692220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C222F3E3C546672784D656D6F56696577204C6566743D223239302220546F70
            3D223539222057696474683D22333822204865696768743D2236362220526573
            7472696374696F6E733D2238222056697369626C653D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22546F74616C222F3E3C546672784D656D6F56696577204C65
            66743D223235302220546F703D223334332C3638353232222057696474683D22
            333522204865696768743D22343222205265737472696374696F6E733D223822
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31332220466F6E742E4E616D653D2243616C696272692220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22546F74616C222F3E3C546672784D656D6F5669
            6577204C6566743D223233372220546F703D223336352C363835323222205769
            6474683D22313322204865696768743D22323022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31322220466F6E742E4E616D653D2243616C69
            6272692220466F6E742E5374796C653D223022204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E7465722220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2254222F3E3C2F636F6C756D6E746F
            74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56
            696577204C6566743D2232302220546F703D223239392C363835323222205769
            6474683D2231323622204865696768743D223022205265737472696374696F6E
            733D2238222056697369626C653D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D
            223022204672616D652E5479703D2231302220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223134362220546F
            703D223239392C3638353232222057696474683D223230302220486569676874
            3D223022205265737472696374696F6E733D2238222056697369626C653D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2243616C69
            6272692220466F6E742E5374796C653D223022204672616D652E5479703D2231
            35222046696C6C2E4261636B436F6C6F723D2231353739303332302220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D226B656C6F6D706F6B5F756D75725F6964782C204B
            454C4F4D504F4B5F554D55522C204B41542C204A454E49535F4B454C414D494E
            222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D2230
            222057696474683D223022204865696768743D22302220526573747269637469
            6F6E733D2238222056697369626C653D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            6572222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            546672784D656D6F56696577204C6566743D2232302220546F703D223239392C
            3638353232222057696474683D22323922204865696768743D22383622205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E
            616D653D2243616C696272692220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D226465736122
            2F3E3C546672784D656D6F56696577204C6566743D2234392220546F703D2232
            39392C3638353232222057696474683D22333022204865696768743D22383622
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E
            742E4E616D653D2243616C696272692220466F6E742E5374796C653D22302220
            4672616D652E5479703D2231352220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D226963
            6478222F3E3C546672784D656D6F56696577204C6566743D2237392220546F70
            3D223239392C3638353232222057696474683D22363722204865696768743D22
            383622205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2250454E59414B4954222F3E3C2F636F726E65726D656D6F733E3C726F776D65
            6D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F703D
            223338352C3638353232222057696474683D22323922204865696768743D2234
            3422205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220
            466F6E742E4E616D653D2243616C696272692220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C73652220526F746174696F6E3D223930222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D2234392220546F703D223338352C3638353232222057696474683D
            22333022204865696768743D22323222205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D2243616C69627269
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D22332220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C546672784D656D6F56696577204C6566743D2237392220546F703D22333835
            2C3638353232222057696474683D22363722204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D2243616C696272692220466F6E742E5374796C653D2230222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D
            656D6F56696577204C6566743D2232302220546F703D223432392C3638353232
            222057696474683D2231323622204865696768743D2232322220526573747269
            6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
            73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
            22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D
            2243616C696272692220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D224772616E6420546F74
            616C222F3E3C546672784D656D6F56696577204C6566743D2234392220546F70
            3D223430372C3638353232222057696474683D22393722204865696768743D22
            323222205265737472696374696F6E733D22382220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2254
            6F74616C222F3E3C546672784D656D6F56696577204C6566743D223539222054
            6F703D22313038222057696474683D22363722204865696768743D2232322220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223122204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22546F74616C222F3E3C2F726F77746F74616C6D656D
            6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C
            6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F3E
            3C6974656D20322F3E3C6974656D20302F3E3C6974656D20302F3E3C2F636F6C
            756D6E736F72743E3C726F77736F72743E3C6974656D20322F3E3C6974656D20
            302F3E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 521.575140000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 1025.008536000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date][Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 633.449228000000000000
          Width = 413.480582000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 538.960978000000000000
          Top = 1.889765000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1Tgl."nama"]    @   halaman : [Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxdb1KesakitanDesa: TfrxDBDataset
    UserName = 'frxdb1KesakitanDesa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'puskesmas=puskesmas'
      'desa=desa'
      'icdx=icdx'
      'nm_diag=nm_diag'
      'jml=jml')
    BCDToCurrency = False
    Left = 124
    Top = 220
  end
  object dsBpjsEksport: TDataSource
    Left = 16
    Top = 16
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'simpuspg'
    LoginPrompt = False
    Transaction = fdTransaction1
    Left = 232
    Top = 16
  end
  object fdTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 340
    Top = 84
  end
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 340
    Top = 16
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Transaction = fdTransaction1
    Left = 124
    Top = 16
  end
  object fdQKunjungan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.kunjungan_thbl_view where tahun = :tahun' +
        ' and bulan = :bulan')
    Left = 124
    Top = 84
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPuskesmasThbl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reporting.puskesmas_view where bln_id = :bulan')
    Left = 232
    Top = 84
    ParamData = <
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxdbThbl: TfrxDBDataset
    UserName = 'frxDBThbl'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'nama=nama'
      'kd_cabang=kd_cabang'
      'nm_cabang=nm_cabang'
      'adl_aktif=adl_aktif'
      'alamat=alamat'
      'telepon=telepon'
      'provider_bpjs=provider_bpjs'
      'bln_id=bln_id'
      'bulan=bulan')
    DataSet = fdQPuskesmasThbl
    BCDToCurrency = False
    Left = 232
    Top = 220
  end
  object fdQKesakitan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.kesakitan_rpt_view where tahun = :tahun ' +
        'and bulan = :bulan')
    Left = 448
    Top = 16
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKunjunganHarian: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  reporting.kunjungan_view.tanggal,'
      '  reporting.kunjungan_view.biaya,'
      '  reporting.kunjungan_view.kategori,'
      '  reporting.kunjungan_view.sex,'
      '  reporting.kunjungan_view.tahun,'
      '  reporting.kunjungan_view.bulan,'
      '  COUNT(reporting.kunjungan_view.idxstr) AS jumlah'
      'FROM'
      '  reporting.kunjungan_view'
      'where'
      'tahun = :tahun and bulan = :bulan'
      'GROUP BY'
      '  reporting.kunjungan_view.tanggal,'
      '  reporting.kunjungan_view.biaya,'
      '  reporting.kunjungan_view.kategori,'
      '  reporting.kunjungan_view.sex,'
      '  reporting.kunjungan_view.tahun,'
      '  reporting.kunjungan_view.bulan'
      'ORDER BY'
      '  reporting.kunjungan_view.tanggal,'
      '  reporting.kunjungan_view.biaya,'
      '  reporting.kunjungan_view.kategori,'
      '  reporting.kunjungan_view.sex')
    Left = 16
    Top = 84
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQBesar10: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reporting.besar_10_bulanan_fx(:tahun, :bulan)')
    Left = 592
    Top = 32
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQTindakanGigi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.tindakangigi_non_biaya_view where tahun ' +
        '= :tahun and bulan = :bulan')
    Left = 608
    Top = 152
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPoned: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.poned_view where tahun = :tahun and bula' +
        'n = :bulan')
    Left = 592
    Top = 216
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQImunisasi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.imunisasi_view where tahun = :tahun and ' +
        'bulan = :bulan')
    Left = 600
    Top = 296
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKunjunganLuar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.kunjungan_luar_thbl_view where tahun = :' +
        'tahun and bulan = :bulan')
    Left = 616
    Top = 376
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdSpRI: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'reporting.buat_rpt_rawat_inap'
    Left = 616
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'ip_tahun'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ip_bulan'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ip_pkm'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end>
  end
  object fdQRI: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.rawatinap_dummi1 where tahun = :tahun an' +
        'd bulan = :bulan order by idx')
    Left = 616
    Top = 512
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQRujuk: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.rujuk_biaya_view where tahun = :tahun an' +
        'd bulan = :bulan')
    Left = 672
    Top = 40
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQRujukKePkm: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.rujuk_ke_pkm_biaya_view where tahun = :t' +
        'ahun and bulan = :bulan')
    Left = 680
    Top = 112
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQRujukLengkap: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.rujuk_lengkap_view where tahun = :tahun ' +
        'and bulan = :bulan')
    Left = 688
    Top = 184
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
