object Form1_ICDXCari0: TForm1_ICDXCari0
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mencari ICD-X'
  ClientHeight = 431
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 387
    Width = 750
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
    end
    object lblPenyakit: TLabel
      Left = 288
      Top = 16
      Width = 51
      Height = 13
      Caption = 'lblPenyakit'
    end
    object btn1: TBitBtn
      Left = 528
      Top = 0
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = btn1Click
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
      Left = 431
      Top = 0
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object panel3: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Double Klik atau Tekan ENTER untuk memilih ICD-X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object grid1: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 750
    Height = 337
    Align = alClient
    ColumnDefValues.Title.Alignment = taCenter
    DataSource = dataPustu.dsICDXCari
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 2
    OnDblClick = grid1DblClick
    OnKeyPress = grid1KeyPress
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_diag'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_diag'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'non_spesialis'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
