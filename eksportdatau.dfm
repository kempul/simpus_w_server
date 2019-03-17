object Form1_eksportData: TForm1_eksportData
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Eksport Laporan Puskesmas'
  ClientHeight = 109
  ClientWidth = 748
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
  object lblFolder: TLabel
    Left = 67
    Top = 44
    Width = 116
    Height = 13
    Caption = 'Folder Penyimpanan File'
  end
  object spinEdit1: TSpinEdit
    Left = 67
    Top = 16
    Width = 94
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
    OnChange = spinEdit1Change
  end
  object cbb1: TJvComboBox
    Left = 167
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'cbb1'
    OnChange = cbb1Change
  end
  object dirEdit1: TJvDirectoryEdit
    Left = 67
    Top = 61
    Width = 486
    Height = 21
    DialogKind = dkWin32
    TabOrder = 2
    Text = 'D:\ates_simple'
  end
  object btnEkport: TButton
    Left = 575
    Top = 59
    Width = 82
    Height = 25
    Caption = 'eksport data'
    TabOrder = 3
    OnClick = btnEkportClick
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
    Left = 376
    Top = 168
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
    Left = 424
    Top = 168
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
    Left = 432
    Top = 48
  end
  object cipher1: TJvVigenereCipher
    Key = '15754'
    Left = 360
    Top = 240
  end
end
