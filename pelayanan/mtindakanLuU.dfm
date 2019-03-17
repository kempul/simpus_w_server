object Form1_tindakanLU: TForm1_tindakanLU
  Left = 0
  Top = 0
  Caption = 'Pilih Tindakan'
  ClientHeight = 388
  ClientWidth = 772
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
    Left = 0
    Top = 336
    Width = 772
    Height = 52
    Align = alBottom
    TabOrder = 0
    object lblTkp: TLabel
      Left = 480
      Top = 16
      Width = 27
      Height = 13
      Caption = 'lblTkp'
      Visible = False
    end
    object btnOK: TBitBtn
      Left = 648
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 567
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btn1: TButton
      Left = 352
      Top = 16
      Width = 75
      Height = 25
      Caption = 'ambil di PCARE'
      TabOrder = 2
      Visible = False
    end
  end
  object grid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 772
    Height = 336
    Align = alClient
    DataSource = dataPelayanan.dsMTindakanLU
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
        FieldName = 'kd_tindakan'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_tindakan'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'max_tarif'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'with_value'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'adl_bpjs'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_tkp'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
