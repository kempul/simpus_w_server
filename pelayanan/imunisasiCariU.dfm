object Form1_ImunisasiCari: TForm1_ImunisasiCari
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari Imunisasi'
  ClientHeight = 386
  ClientWidth = 797
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
    Left = 0
    Top = 296
    Width = 797
    Height = 90
    Align = alBottom
    TabOrder = 0
    object btnOk: TBitBtn
      Left = 640
      Top = 32
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TBitBtn
      Left = 552
      Top = 32
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object panel3: TPanel
      Left = 1
      Top = 1
      Width = 480
      Height = 88
      Align = alLeft
      Caption = 'panel3'
      TabOrder = 2
      Visible = False
      object labelKode: TLabel
        Left = 384
        Top = 40
        Width = 46
        Height = 13
        Caption = 'labelKode'
        Visible = False
      end
      object labelText: TLabel
        Left = 16
        Top = 5
        Width = 44
        Height = 13
        Caption = 'labelText'
      end
    end
  end
  object grid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 797
    Height = 296
    Align = alClient
    DataSource = dataPelayanan.dsMImunisasiCari
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 1
    OnDblClick = grid1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'idx'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'vaksin'
        Footers = <>
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'adl_aktif'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sasaran'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'idx_sasaran'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
