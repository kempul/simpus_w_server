object Form1_obatCari: TForm1_obatCari
  Left = 0
  Top = 0
  Caption = 'Mencari Obat ..'
  ClientHeight = 487
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 89
    Align = alTop
    Caption = 'pnl1'
    TabOrder = 0
    object label2: TLabel
      Left = 88
      Top = 40
      Width = 128
      Height = 13
      Caption = 'Mencari Kode / Nama Obat'
    end
    object edit2: TEdit
      Left = 240
      Top = 35
      Width = 273
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edit2KeyPress
    end
    object btn1: TButton
      Left = 519
      Top = 33
      Width = 75
      Height = 25
      Caption = 'cari'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn4: TButton
      Left = 608
      Top = 33
      Width = 105
      Height = 25
      Caption = 'cari di PCARE'
      TabOrder = 2
      OnClick = btn4Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 416
    Width = 754
    Height = 71
    Align = alBottom
    TabOrder = 1
    object btn2: TBitBtn
      Left = 519
      Top = 24
      Width = 75
      Height = 25
      Caption = 'OK'
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
    object btn3: TBitBtn
      Left = 432
      Top = 24
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 89
    Width = 754
    Height = 327
    Align = alClient
    Caption = 'pnl3'
    TabOrder = 2
    object grid1: TDBGridEh
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 746
      Height = 126
      Align = alClient
      ColumnDefValues.Title.Alignment = taCenter
      DataSource = dataPelayanan.dsObatCari
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kd_obat'
          Footers = <>
          Width = 112
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nm_obat'
          Footers = <>
          Width = 368
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sedia'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'adl_dpho'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sumber'
          Footers = <>
          Width = 205
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idx'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pageControl1: TJvPageControl
      Left = 1
      Top = 133
      Width = 752
      Height = 193
      ActivePage = ts2
      Align = alBottom
      TabOrder = 1
      object ts1: TTabSheet
        Caption = 'ts1'
        object memoResponse: TMemo
          Left = 0
          Top = 0
          Width = 744
          Height = 165
          Align = alClient
          Lines.Strings = (
            'memoResponse')
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object ts2: TTabSheet
        Caption = 'ts2'
        ImageIndex = 1
        object memoData: TMemo
          Left = 0
          Top = 0
          Width = 744
          Height = 165
          Align = alClient
          Lines.Strings = (
            'memoResponse')
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object pb1: TJvProgressDialog
    Left = 368
    Top = 248
  end
end
