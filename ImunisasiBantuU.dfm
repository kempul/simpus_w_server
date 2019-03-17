object Form1_ImunisasiBantu: TForm1_ImunisasiBantu
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Imunisasi'
  ClientHeight = 378
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panel2: TPanel
    Left = 0
    Top = 329
    Width = 307
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 815
    object btn2: TBitBtn
      Left = 111
      Top = 16
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object btn1: TBitBtn
      Left = 200
      Top = 16
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object grpImunisasi: TGroupBox
    Left = 0
    Top = 0
    Width = 307
    Height = 329
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 398
    ExplicitWidth = 417
    object grideh1: TDBGridEh
      Left = 2
      Top = 18
      Width = 303
      Height = 284
      Align = alClient
      DataSource = dataPelayanan.dsImunisasi_pv
      DynProps = <>
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tanggal'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nomor'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'mr'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'imunisasi'
          Footers = <>
          Width = 191
        end
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'pilih'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
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
    object dbnav1: TJvDBNavigator
      Left = 2
      Top = 302
      Width = 303
      Height = 25
      DataSource = dataPelayanan.dsImunisasi_pv
      VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 1
      Visible = False
      ExplicitWidth = 413
    end
  end
end
