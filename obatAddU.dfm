object Form1_obatAdd: TForm1_obatAdd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1_obatAdd'
  ClientHeight = 398
  ClientWidth = 850
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
  object pnl1: TPanel
    Left = 0
    Top = 346
    Width = 850
    Height = 52
    Align = alBottom
    Caption = 'pnl1'
    TabOrder = 0
    Visible = False
    ExplicitWidth = 611
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 346
    Align = alClient
    Caption = 'pnl2'
    TabOrder = 1
    ExplicitWidth = 611
    object pageControl1: TJvPageControl
      Left = 1
      Top = 1
      Width = 848
      Height = 205
      ActivePage = ts2
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 609
      object ts1: TTabSheet
        Caption = 'non racikan'
        object pnl3: TPanel
          Left = 0
          Top = 0
          Width = 840
          Height = 177
          Align = alClient
          TabOrder = 0
          object lbl1: TLabel
            Left = 40
            Top = 24
            Width = 51
            Height = 13
            Caption = 'nama obat'
          end
          object btnObatCari: TJvSpeedButton
            Left = 543
            Top = 16
            Width = 42
            Height = 25
            Hint = 'cari Obat'
            Caption = 'cari Obat'
            OnClick = btnObatCariClick
          end
          object label2: TLabel
            Left = 40
            Top = 48
            Width = 25
            Height = 13
            Caption = 'signa'
          end
          object label3: TLabel
            Left = 208
            Top = 48
            Width = 6
            Height = 13
            Caption = 'X'
          end
          object label4: TLabel
            Left = 40
            Top = 75
            Width = 18
            Height = 13
            Caption = 'hari'
          end
          object label5: TLabel
            Left = 40
            Top = 102
            Width = 40
            Height = 13
            Caption = 'jml Obat'
          end
          object editObat: TEdit
            Left = 136
            Top = 20
            Width = 401
            Height = 21
            TabOrder = 0
            Text = 'editObat'
          end
          object editSigna1: TJvCalcEdit
            Left = 136
            Top = 47
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            OnChange = editSigna1Change
          end
          object editSigna2: TJvCalcEdit
            Left = 232
            Top = 47
            Width = 57
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object editHari: TJvCalcEdit
            Left = 136
            Top = 74
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            Enabled = False
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
          end
          object editJml: TJvCalcEdit
            Left = 136
            Top = 101
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 4
            DecimalPlacesAlwaysShown = False
            OnChange = editJmlChange
          end
          object editSedia: TJvCalcEdit
            Left = 400
            Top = 47
            Width = 121
            Height = 21
            TabOrder = 5
            Visible = False
            DecimalPlacesAlwaysShown = False
          end
          object btnSimpan: TButton
            Left = 462
            Top = 120
            Width = 75
            Height = 25
            Caption = 'simpan'
            TabOrder = 6
            OnClick = btnSimpanClick
          end
        end
      end
      object ts2: TTabSheet
        Caption = 'racikan'
        ImageIndex = 1
        object pnl5: TPanel
          Left = 0
          Top = 0
          Width = 840
          Height = 177
          Align = alClient
          TabOrder = 0
          object label10: TLabel
            Left = 304
            Top = 23
            Width = 51
            Height = 13
            Caption = 'nama obat'
          end
          object btn1: TJvSpeedButton
            Left = 787
            Top = 18
            Width = 42
            Height = 25
            Hint = 'cari Obat'
            Caption = 'cari Obat'
            OnClick = btn1Click
          end
          object label11: TLabel
            Left = 40
            Top = 48
            Width = 25
            Height = 13
            Caption = 'signa'
          end
          object label12: TLabel
            Left = 208
            Top = 48
            Width = 6
            Height = 13
            Caption = 'X'
          end
          object label13: TLabel
            Left = 40
            Top = 75
            Width = 18
            Height = 13
            Caption = 'hari'
          end
          object label14: TLabel
            Left = 40
            Top = 102
            Width = 59
            Height = 13
            Caption = 'jml Kemasan'
          end
          object label6: TLabel
            Left = 40
            Top = 23
            Width = 37
            Height = 13
            Caption = 'Racikan'
          end
          object label7: TLabel
            Left = 304
            Top = 50
            Width = 54
            Height = 13
            Caption = 'Permintaan'
          end
          object label8: TLabel
            Left = 650
            Top = 50
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Kekuatan'
          end
          object label9: TLabel
            Left = 304
            Top = 77
            Width = 42
            Height = 13
            Caption = 'Jml Obat'
          end
          object editObat1: TEdit
            Left = 380
            Top = 20
            Width = 401
            Height = 21
            TabOrder = 0
            Text = 'editObat'
          end
          object editSigna11: TJvCalcEdit
            Left = 136
            Top = 47
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            OnChange = editSigna11Change
          end
          object editSigna21: TJvCalcEdit
            Left = 232
            Top = 47
            Width = 41
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object editHari1: TJvCalcEdit
            Left = 136
            Top = 74
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            Enabled = False
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
          end
          object editJml1: TJvCalcEdit
            Left = 136
            Top = 101
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 4
            DecimalPlacesAlwaysShown = False
            OnChange = editJml1Change
          end
          object editSedia1: TJvCalcEdit
            Left = 64
            Top = 143
            Width = 121
            Height = 21
            TabOrder = 5
            Visible = False
            DecimalPlacesAlwaysShown = False
          end
          object btnSimpan1: TButton
            Left = 654
            Top = 120
            Width = 75
            Height = 25
            Caption = 'simpan'
            TabOrder = 6
            OnClick = btnSimpan1Click
          end
          object editRacikan: TEdit
            Left = 136
            Top = 20
            Width = 49
            Height = 21
            Enabled = False
            TabOrder = 7
            Text = 'R.01'
          end
          object btnRacikan: TButton
            Left = 573
            Top = 120
            Width = 75
            Height = 25
            Caption = 'Racikan Baru'
            TabOrder = 8
            OnClick = btnRacikanClick
          end
          object editPermintaan: TJvCalcEdit
            Left = 380
            Top = 47
            Width = 61
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 9
            DecimalPlacesAlwaysShown = False
            OnChange = editPermintaanChange
          end
          object editKekuatan: TJvCalcEdit
            Left = 720
            Top = 47
            Width = 61
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Enabled = False
            ShowButton = False
            TabOrder = 10
            DecimalPlacesAlwaysShown = True
          end
          object edit3: TJvCalcEdit
            Left = 380
            Top = 74
            Width = 61
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Enabled = False
            ShowButton = False
            TabOrder = 11
            DecimalPlacesAlwaysShown = True
          end
        end
      end
    end
    object pnl4: TPanel
      Left = 1
      Top = 206
      Width = 848
      Height = 139
      Align = alBottom
      Caption = 'pnl4'
      TabOrder = 1
      ExplicitWidth = 609
      object nav1: TJvDBNavigator
        Left = 1
        Top = 113
        Width = 846
        Height = 25
        DataSource = dataPelayanan.dsObatPasien
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 607
      end
      object grid1: TDBGridEh
        Left = 1
        Top = 1
        Width = 846
        Height = 112
        Align = alClient
        DataSource = dataPelayanan.dsObatPasien
        DynProps = <>
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_obat_sk'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_kunjungan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'racikan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_racikan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'obat_dpho'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_obat'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'signa1'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'signa2'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jml_obat'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jml_permintaan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_obat_non_dpho'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nomor'
            Footers = <>
          end
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
            FieldName = 'nm_obat'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
