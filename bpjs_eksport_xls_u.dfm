object Form1_bpjsEkxportXLS: TForm1_bpjsEkxportXLS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Form1_bpjsEkxportXLS'
  ClientHeight = 399
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btn1: TButton
      Left = 344
      Top = 16
      Width = 89
      Height = 25
      Caption = 'eksport excel'
      TabOrder = 0
      OnClick = btn1Click
    end
    object se1: TSpinEdit
      Left = 88
      Top = 16
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
      Visible = False
    end
    object se2: TSpinEdit
      Left = 456
      Top = 16
      Width = 89
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
      Visible = False
    end
  end
  object grid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 758
    Height = 350
    Align = alClient
    DataSource = Form1_frx.dsBpjsEksport
    DrawMemoText = True
    DynProps = <>
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_urut'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_daftar'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_lengkap'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_kartu'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_diag1'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'peserta_terdaftar'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'peserta_tdk_terdaftar'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dirujuk'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tdk_dirujuk'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object saveDlg1: TFileSaveDialog
    DefaultExtension = '*.xls'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = '*.xls'
        FileMask = '*.xls'
      end>
    Options = [fdoOverWritePrompt]
    Left = 376
    Top = 208
  end
  object saveDlg2: TJvSaveDialog
    DefaultExt = '*.xls'
    Height = 0
    Width = 0
    Left = 504
    Top = 200
  end
end
