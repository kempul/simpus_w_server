object Form1_obatAdd: TForm1_obatAdd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1_obatAdd'
  ClientHeight = 398
  ClientWidth = 908
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
    Top = 373
    Width = 908
    Height = 25
    Align = alBottom
    TabOrder = 0
    object labelIdxstr: TLabel
      Left = 280
      Top = 6
      Width = 51
      Height = 13
      Caption = 'labelIdxstr'
    end
    object labelObat: TLabel
      Left = 496
      Top = 6
      Width = 46
      Height = 13
      Caption = 'labelObat'
    end
    object checkDpho: TCheckBox
      Left = 672
      Top = 4
      Width = 97
      Height = 17
      Caption = 'checkDpho'
      TabOrder = 0
    end
    object checkBpjs: TCheckBox
      Left = 93
      Top = 4
      Width = 97
      Height = 17
      Caption = 'checkBpjs'
      TabOrder = 1
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 47
    Width = 908
    Height = 326
    Align = alClient
    Caption = 'pnl2'
    TabOrder = 1
    object pageControl1: TJvPageControl
      Left = 1
      Top = 1
      Width = 906
      Height = 184
      ActivePage = ts1
      Align = alTop
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'non racikan'
        object pnl3: TPanel
          Left = 0
          Top = 0
          Width = 898
          Height = 156
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -3
          ExplicitTop = -1
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
          object label5: TLabel
            Left = 40
            Top = 102
            Width = 31
            Height = 13
            Caption = 'jumlah'
          end
          object editObat: TEdit
            Left = 136
            Top = 20
            Width = 401
            Height = 21
            ReadOnly = True
            TabOrder = 0
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
          end
          object editSigna2: TJvCalcEdit
            Left = 232
            Top = 47
            Width = 57
            Height = 21
            DecimalPlaces = 1
            DisplayFormat = ',0.0'
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = True
          end
          object editJml: TJvCalcEdit
            Left = 136
            Top = 101
            Width = 49
            Height = 21
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
          end
          object btnSimpan: TButton
            Left = 214
            Top = 99
            Width = 75
            Height = 25
            Caption = 'simpan'
            TabOrder = 4
            OnClick = btnSimpanClick
          end
          object btn2: TButton
            Left = 312
            Top = 99
            Width = 113
            Height = 25
            Caption = 'kirim ulang bpjs'
            TabOrder = 5
            OnClick = btn2Click
          end
        end
      end
      object ts2: TTabSheet
        Caption = 'racikan'
        ImageIndex = 1
        object pnl5: TPanel
          Left = 0
          Top = 0
          Width = 898
          Height = 156
          Align = alClient
          TabOrder = 0
          object panelgrp1: TPanel
            Left = 1
            Top = 1
            Width = 896
            Height = 58
            Align = alTop
            BevelInner = bvSpace
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object label11: TLabel
              Left = 294
              Top = 10
              Width = 25
              Height = 13
              Caption = 'signa'
              Transparent = True
            end
            object label12: TLabel
              Left = 408
              Top = 10
              Width = 6
              Height = 13
              Caption = 'X'
              Transparent = True
            end
            object label14: TLabel
              Left = 584
              Top = 10
              Width = 59
              Height = 13
              Caption = 'jml Kemasan'
              Transparent = True
            end
            object label6: TLabel
              Left = 40
              Top = 10
              Width = 52
              Height = 13
              Caption = 'Racikan Ke'
            end
            object editSigna11: TJvCalcEdit
              Left = 336
              Top = 6
              Width = 49
              Height = 21
              DecimalPlaces = 0
              DisplayFormat = ',0'
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
            end
            object editSigna21: TJvCalcEdit
              Left = 432
              Top = 6
              Width = 41
              Height = 21
              DecimalPlaces = 1
              DisplayFormat = ',0.0'
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = True
            end
            object editJml1: TJvCalcEdit
              Left = 656
              Top = 6
              Width = 49
              Height = 21
              DecimalPlaces = 0
              DisplayFormat = ',0'
              ShowButton = False
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
            end
            object seRacikan: TSpinEdit
              Left = 98
              Top = 6
              Width = 49
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 1
            end
          end
          object panelgrp2: TPanel
            Left = 1
            Top = 59
            Width = 896
            Height = 96
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object label10: TLabel
              Left = 31
              Top = 28
              Width = 51
              Height = 13
              Caption = 'nama obat'
              Transparent = True
            end
            object btn1: TJvSpeedButton
              Left = 674
              Top = 26
              Width = 42
              Height = 25
              Hint = 'cari Obat'
              Caption = 'cari Obat'
              OnClick = btn1Click
            end
            object labelJml: TLabel
              Left = 51
              Top = 58
              Width = 31
              Height = 13
              Caption = 'jumlah'
              Transparent = True
            end
            object editObat1: TEdit
              Left = 98
              Top = 28
              Width = 570
              Height = 21
              ReadOnly = True
              TabOrder = 0
            end
            object editPermintaan: TJvCalcEdit
              Left = 98
              Top = 55
              Width = 90
              Height = 21
              DecimalPlaceRound = True
              DecimalPlaces = 0
              DisplayFormat = ',0'
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
            end
            object btnSimpan1: TButton
              Left = 228
              Top = 55
              Width = 75
              Height = 25
              Caption = 'simpan'
              TabOrder = 2
              OnClick = btnSimpan1Click
            end
          end
        end
      end
    end
    object pnl4: TPanel
      Left = 1
      Top = 185
      Width = 906
      Height = 140
      Align = alClient
      Caption = 'pnl4'
      TabOrder = 1
      object nav1: TJvDBNavigator
        Left = 1
        Top = 114
        Width = 904
        Height = 25
        DataSource = dataPelayanan.dsObatPasien
        VisibleButtons = [nbDelete, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 0
      end
      object grid1: TDBGridEh
        Left = 1
        Top = 1
        Width = 904
        Height = 113
        Align = alClient
        DataSource = dataPelayanan.dsObatPasien
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Width = 194
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'idxstr'
            Footers = <>
            Visible = False
            Width = 95
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
            FieldName = 'kd_obat_sk'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'racikan'
            Footers = <>
            Width = 45
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
            Width = 56
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_obat'
            Footers = <>
            Width = 200
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
            Visible = False
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_obat_non_dpho'
            Footers = <>
            Visible = False
            Width = 214
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'idx_racikan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tanggal'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'racikan_ke'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 902
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object labelTgl: TLabel
      Left = 64
      Top = 14
      Width = 38
      Height = 13
      Caption = 'Tanggal'
    end
    object dtp1: TJvDateTimePicker
      Left = 120
      Top = 10
      Width = 105
      Height = 21
      Date = 43142.548503750000000000
      Time = 43142.548503750000000000
      TabOrder = 0
      DropDownDate = 43142.000000000000000000
    end
  end
end
