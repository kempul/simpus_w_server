object Form1_labPasien: TForm1_labPasien
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Permohonan Pemeriksaan Laborat'
  ClientHeight = 353
  ClientWidth = 789
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
  object panel3: TPanel
    Left = 0
    Top = 289
    Width = 789
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 432
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
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 336
      Top = 24
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object checkBPJS: TCheckBox
      Left = 64
      Top = 32
      Width = 97
      Height = 17
      Caption = 'checkBPJS'
      TabOrder = 2
      Visible = False
    end
  end
  object panel7: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object dbtxt1: TDBText
      Left = 0
      Top = 0
      Width = 241
      Height = 27
      Align = alLeft
      Color = clActiveCaption
      DataField = 'mr'
      DataSource = dataPelayanan.dsKunjungan1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = -6
    end
    object dbtxtNama: TDBText
      Left = 241
      Top = 0
      Width = 106
      Height = 23
      Align = alClient
      AutoSize = True
      Color = clActiveCaption
      DataField = 'nama_lengkap'
      DataSource = dataPelayanan.dsKunjungan1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 27
    Width = 789
    Height = 262
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object grid1: TDBGridEh
      Left = 0
      Top = 41
      Width = 789
      Height = 196
      Align = alClient
      DataSource = dataPelayanan.dsLab
      DynProps = <>
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nama_tes'
          Footers = <>
          HideDuplicates = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'diukur'
          Footers = <>
          Width = 317
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'dipilih'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idx'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idx0'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'format_data'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'hasil'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'gambar'
          Footers = <>
          Visible = False
        end
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
          FieldName = 'adl_bpjs'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tanggal_pelayanan'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sql0'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'idx00'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object dbnav1: TJvDBNavigator
      Left = 0
      Top = 237
      Width = 789
      Height = 25
      DataSource = dataPelayanan.dsLab
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      Flat = True
      TabOrder = 1
    end
    object panel4: TPanel
      Left = 0
      Top = 0
      Width = 789
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object dtp1: TJvDateTimePicker
        Left = 304
        Top = 8
        Width = 121
        Height = 24
        Date = 42843.550230810190000000
        Time = 42843.550230810190000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DropDownDate = 42843.000000000000000000
      end
    end
  end
end
