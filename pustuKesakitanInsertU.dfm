object Form1_pusKesakitanInsert: TForm1_pusKesakitanInsert
  Left = 0
  Top = 0
  Caption = 'insert data pustu kesakitan'
  ClientHeight = 494
  ClientWidth = 742
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
  object panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 408
    Width = 736
    Height = 83
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btn1: TBitBtn
      Left = 424
      Top = 32
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
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
      NumGlyphs = 2
    end
    object btn2: TBitBtn
      Left = 328
      Top = 32
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object panelU: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 736
    Height = 399
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object panelU1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 390
      Height = 393
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 390
        Height = 19
        Align = alTop
        Caption = 'Penyakit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 59
      end
      object dbgrid1: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 384
        Height = 368
        Align = alClient
        DataSource = dataPustu.ds_pustuKesakitanPv0
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE'
            Footers = <>
            ReadOnly = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PENYAKIT'
            Footers = <>
            ReadOnly = True
            Width = 391
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object panelU2: TPanel
      AlignWithMargins = True
      Left = 408
      Top = 3
      Width = 325
      Height = 393
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lbl2: TLabel
        Left = 0
        Top = 0
        Width = 325
        Height = 19
        Align = alTop
        Caption = 'Entri Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 70
      end
      object dbgrid2: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 319
        Height = 337
        Align = alClient
        ColumnDefValues.Title.Alignment = taCenter
        DataSource = dataPustu.ds_pustuKesakitanPV
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 0
        OnExit = dbgrid2Exit
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TAHUN'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'BULAN'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PUSTU'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PENYAKIT'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 391
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'KELOMPOK_UMUR'
            Footers = <>
            ReadOnly = True
            Visible = False
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'KELOMPOK'
            Footers = <>
            ReadOnly = True
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'KAT'
            Footers = <>
            ReadOnly = True
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'JENIS_KELAMIN'
            Footers = <>
            ReadOnly = True
          end
          item
            Alignment = taRightJustify
            DisplayFormat = '#,0'
            DynProps = <>
            EditButtons = <>
            FieldName = 'JML'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object dbnav2: TJvDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 365
        Width = 319
        Height = 25
        DataSource = dataPustu.ds_pustuKesakitanPV
        VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 1
      end
    end
    object splitter1: TJvxSplitter
      AlignWithMargins = True
      Left = 399
      Top = 3
      Width = 3
      Height = 393
      ControlFirst = panelU1
      ControlSecond = panelU2
      Align = alLeft
    end
  end
  object formStorage1: TJvFormStorage
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredProps.Strings = (
      'panelU1.Width')
    StoredValues = <>
    Left = 432
    Top = 48
  end
end
