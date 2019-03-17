object Form1_ICDXedit: TForm1_ICDXedit
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Edit Diagnosa'
  ClientHeight = 431
  ClientWidth = 759
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
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 387
    Width = 753
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object lblICDX: TLabel
      Left = 32
      Top = 8
      Width = 34
      Height = 13
      Caption = 'lblICDX'
      Visible = False
    end
    object lblPenyakit: TLabel
      Left = 288
      Top = 16
      Width = 51
      Height = 13
      Caption = 'lblPenyakit'
      Visible = False
    end
    object btn1: TBitBtn
      Left = 528
      Top = 0
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
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 431
      Top = 0
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object panel3: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 62
      Width = 26
      Height = 19
      Align = alBottom
      Alignment = taCenter
      Caption = 'lbl1'
      Layout = tlCenter
    end
    object lbl2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 26
      Height = 19
      Align = alClient
      Alignment = taCenter
      Caption = 'lbl2'
      Layout = tlCenter
    end
  end
  object panelU: TPanel
    Left = 0
    Top = 170
    Width = 759
    Height = 86
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object grid1: TDBGridEh
      AlignWithMargins = True
      Left = 12
      Top = 3
      Width = 744
      Height = 80
      Align = alClient
      ColumnDefValues.Title.Alignment = taCenter
      DataSource = dataPelayanan.dsICDXCari
      DrawMemoText = True
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
      OnDblClick = grid1DblClick
      OnKeyPress = grid1KeyPress
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kd_diag'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nm_diag'
          Footers = <>
          Width = 400
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'non_spesialis'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'dieksport'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object splitter1: TJvxSplitter
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 3
      Height = 80
      ControlSecond = grid1
      Align = alLeft
    end
  end
  object panel2Cari: TPanel
    Left = 0
    Top = 81
    Width = 759
    Height = 89
    Align = alTop
    Caption = 'pnl1'
    TabOrder = 3
    object label2: TLabel
      Left = 4
      Top = 40
      Width = 132
      Height = 13
      Caption = 'Mencari Kode / Nama ICD-X'
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
    object btn5: TButton
      Left = 519
      Top = 33
      Width = 75
      Height = 25
      Caption = 'cari'
      TabOrder = 1
      OnClick = btn5Click
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
  object panel4: TPanel
    Left = 0
    Top = 256
    Width = 759
    Height = 128
    Align = alBottom
    Caption = 'panel4'
    TabOrder = 4
    Visible = False
    object memoData: TMemo
      Left = 1
      Top = 1
      Width = 185
      Height = 126
      Align = alLeft
      Lines.Strings = (
        'memoData')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object memoResponse: TMemo
      Left = 573
      Top = 1
      Width = 185
      Height = 126
      Align = alRight
      Lines.Strings = (
        'memoData')
      ScrollBars = ssBoth
      TabOrder = 1
    end
  end
  object pb1: TJvProgressDialog
    Interval = 10
    Left = 368
    Top = 216
  end
end
