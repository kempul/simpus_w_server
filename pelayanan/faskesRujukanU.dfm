object Form1_faskesRujukan: TForm1_faskesRujukan
  Left = 0
  Top = 0
  Caption = 'Form1_faskesRujukan'
  ClientHeight = 591
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 924
    Height = 585
    Align = alClient
    Caption = 'pnl4'
    TabOrder = 0
    object pnl5: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 540
      Width = 916
      Height = 41
      Align = alBottom
      TabOrder = 0
      object btn7: TButton
        Left = 408
        Top = 8
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = btn7Click
      end
      object btn8: TButton
        Left = 327
        Top = 8
        Width = 75
        Height = 25
        Caption = 'cancel'
        TabOrder = 1
      end
      object btn2: TButton
        Left = 489
        Top = 8
        Width = 75
        Height = 25
        Caption = 'close'
        TabOrder = 2
        OnClick = btn2Click
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 922
      Height = 168
      Align = alTop
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 40
      ParentFont = False
      TabOrder = 1
      object pnl19: TPanel
        AlignWithMargins = True
        Left = 44
        Top = 4
        Width = 350
        Height = 160
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object rg1: TRadioGroup
          AlignWithMargins = True
          Left = 232
          Top = 3
          Width = 115
          Height = 154
          Align = alClient
          Caption = 'Jenis Rujukan'
          ItemIndex = 0
          Items.Strings = (
            'Spesialis'
            'Khusus')
          TabOrder = 0
          WordWrap = True
          OnClick = rg1Click
        end
        object grpTgl: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 223
          Height = 140
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Tanggal Kunjungan Rujuk'
          TabOrder = 1
          object dtPickerRujuk: TJvDateTimePicker
            AlignWithMargins = True
            Left = 42
            Top = 61
            Width = 139
            Height = 37
            Margins.Left = 40
            Margins.Top = 40
            Margins.Right = 40
            Margins.Bottom = 40
            Align = alClient
            Date = 43375.249202893520000000
            Time = 43375.249202893520000000
            TabOrder = 0
            OnChange = dtPickerRujukChange
            DropDownDate = 43375.000000000000000000
          end
        end
      end
      object grpTacc: TJvgGroupBox
        AlignWithMargins = True
        Left = 400
        Top = 4
        Width = 518
        Height = 160
        Align = alRight
        Caption = 'Tacc'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Padding.Top = 10
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = True
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clMaroon
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object cbbTacc: TJvComboBox
          AlignWithMargins = True
          Left = 5
          Top = 35
          Width = 508
          Height = 27
          Align = alTop
          TabOrder = 0
          Text = '-'
          OnChange = cbbTaccChange
          Items.Strings = (
            '-'
            'Tme'
            'Age'
            'Complication'
            'Comorbidity')
          ItemIndex = 0
        end
        object pageControlTacc: TJvPageControl
          Left = 2
          Top = 65
          Width = 514
          Height = 93
          ActivePage = ts5
          Align = alClient
          TabOrder = 1
          object ts2: TTabSheet
            Caption = 'ts2'
            object cbbTime: TJvComboBox
              Left = 5
              Top = 16
              Width = 353
              Height = 27
              TabOrder = 0
              Text = '< 3 Hari'
              Items.Strings = (
                '< 3 Hari'
                '>= 3 - 7 Hari'
                '>= 7 Hari')
            end
          end
          object ts3: TTabSheet
            Caption = 'ts3'
            ImageIndex = 1
            object cbbAge: TJvComboBox
              Left = 5
              Top = 16
              Width = 353
              Height = 27
              TabOrder = 0
              Text = '< 1 Bulan'
              Items.Strings = (
                '< 1 Bulan'
                '>= 1 Bulan s/d < 12 Bulan'
                '>= 1 Tahun s/d < 5 Tahun'
                '>= 5 Tahun s/d < 12 Tahun'
                '>= 12 Tahun s/d < 55 Tahun'
                '>= 55 Tahun')
            end
          end
          object ts4: TTabSheet
            Caption = 'ts4'
            ImageIndex = 2
            object staticText1: TJvStaticText
              AlignWithMargins = True
              Left = 3
              Top = 34
              Width = 500
              Height = 22
              Align = alClient
              Alignment = taCenter
              Caption = '-'
              Layout = tlCenter
              TabOrder = 0
              TextMargins.X = 0
              TextMargins.Y = 0
              WordWrap = True
            end
            object btn1Diagnosa: TButton
              AlignWithMargins = True
              Left = 100
              Top = 3
              Width = 306
              Height = 25
              Margins.Left = 100
              Margins.Right = 100
              Align = alTop
              Caption = 'cari diagnosa'
              TabOrder = 1
              OnClick = btn1DiagnosaClick
            end
          end
          object ts5: TTabSheet
            Caption = 'ts5'
            ImageIndex = 3
            object staticText2: TJvStaticText
              AlignWithMargins = True
              Left = 3
              Top = 34
              Width = 500
              Height = 22
              Align = alClient
              Alignment = taCenter
              Caption = '-'
              Layout = tlCenter
              TabOrder = 0
              TextMargins.X = 0
              TextMargins.Y = 0
              WordWrap = True
            end
            object btn2Diagnosa: TButton
              AlignWithMargins = True
              Left = 100
              Top = 3
              Width = 306
              Height = 25
              Margins.Left = 100
              Margins.Right = 100
              Align = alTop
              Caption = 'cari diagnosa'
              TabOrder = 1
              OnClick = btn2DiagnosaClick
            end
          end
        end
      end
    end
    object pnlKhusus: TPanel
      Left = 1
      Top = 169
      Width = 922
      Height = 368
      Align = alClient
      Caption = 'pnlKhusus'
      TabOrder = 2
      object pageControlRujuk: TJvPageControl
        Left = 1
        Top = 1
        Width = 920
        Height = 366
        ActivePage = tsKhusus2
        Align = alClient
        TabOrder = 0
        object tsSubSpesialis: TTabSheet
          Caption = 'Rujukan Sub Spesialis'
          object grpSarana: TGroupBox
            AlignWithMargins = True
            Left = 284
            Top = 3
            Width = 219
            Height = 332
            Align = alLeft
            Caption = 'Sarana'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Padding.Top = 10
            ParentFont = False
            TabOrder = 0
            object pnl8: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 286
              Width = 209
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object chkSarana: TJvCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 203
                Height = 35
                Align = alClient
                Caption = 'Gunakan Sarana'
                TabOrder = 0
                OnClick = chkSaranaClick
                LinkedControls = <>
              end
            end
            object grid1: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 28
              Width = 209
              Height = 252
              Align = alClient
              AutoFitColWidths = True
              DataSource = dataRujukan.ds1Sarana
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
                  FieldName = 'kd_sarana'
                  Footers = <>
                  Visible = False
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nm_sarana'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object grpFaskes: TGroupBox
            AlignWithMargins = True
            Left = 509
            Top = 3
            Width = 400
            Height = 332
            Align = alClient
            Caption = 'Faskes'
            Padding.Top = 10
            TabOrder = 1
            object gridFaskesSub: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 28
              Width = 390
              Height = 252
              Align = alClient
              DataSource = dataRujukan.ds1FaskesSub
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
                  FieldName = 'kdppk'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nmppk'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'alamat_ppk'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'telp_ppk'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kelas'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nmkc'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'distance'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jadwal'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jml_rujuk'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kapasitas'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kd_sub_spesialis'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kd_sarana'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kd_khusus'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object pnl9: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 286
              Width = 390
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'pnl6'
              TabOrder = 1
              object btn12: TButton
                Left = 29
                Top = 8
                Width = 107
                Height = 25
                Caption = 'ambil di pcare'
                TabOrder = 0
                OnClick = btn12Click
              end
            end
          end
          object pnl2: TPanel
            Left = 0
            Top = 0
            Width = 281
            Height = 338
            Align = alLeft
            Caption = 'pnl2'
            TabOrder = 2
            object grpSpesialis: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 273
              Height = 228
              Align = alClient
              Caption = 'Spesialis'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Padding.Top = 10
              ParentFont = False
              TabOrder = 0
              object pnl7: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 182
                Width = 263
                Height = 41
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object btn10: TButton
                  Left = 29
                  Top = 8
                  Width = 107
                  Height = 25
                  Caption = 'ambil di pcare'
                  TabOrder = 0
                  OnClick = btn10Click
                end
              end
              object grid4: TDBGridEh
                AlignWithMargins = True
                Left = 5
                Top = 28
                Width = 263
                Height = 148
                Align = alClient
                AutoFitColWidths = True
                DataSource = dataRujukan.ds1Spesialis
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
                    FieldName = 'kd_spesialis'
                    Footers = <>
                    Visible = False
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_spesialis'
                    Footers = <>
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object grpSubSpesialis: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 238
              Width = 273
              Height = 96
              Align = alBottom
              Caption = 'Sub Spesialis'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Padding.Top = 10
              ParentFont = False
              TabOrder = 1
              object pnl6: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 50
                Width = 263
                Height = 41
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object btn9: TButton
                  Left = 29
                  Top = 8
                  Width = 107
                  Height = 25
                  Caption = 'ambil di pcare'
                  TabOrder = 0
                  OnClick = btn9Click
                end
              end
              object cbbnm_sub_spesialis: TJvDBSearchComboBox
                AlignWithMargins = True
                Left = 5
                Top = 28
                Width = 263
                Height = 21
                DataField = 'nm_sub_spesialis'
                DataResult = 'kd_sub_spesialis'
                DataSource = dataRujukan.ds1SubSpesialis
                Align = alTop
                AutoDropDown = True
                TabOrder = 1
                Text = '-'
              end
            end
          end
        end
        object tsKhusus2: TTabSheet
          Caption = 'Rujukan Khusus'
          ImageIndex = 2
          object pnl13: TPanel
            AlignWithMargins = True
            Left = 271
            Top = 3
            Width = 638
            Height = 332
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object grp2: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 632
              Height = 326
              Align = alClient
              Caption = 'Faskes Rujukan Khusus'
              TabOrder = 0
              object pnl15: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 280
                Width = 622
                Height = 41
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 0
                object btn14: TButton
                  Left = 48
                  Top = 8
                  Width = 75
                  Height = 25
                  Caption = 'ambil di pcare'
                  TabOrder = 0
                  OnClick = btn14Click
                end
              end
              object gridFaskesKhusus: TDBGridEh
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 622
                Height = 256
                Align = alClient
                DataSource = dataRujukan.ds1FaskesKhusus1
                DynProps = <>
                SearchPanel.Enabled = True
                TabOrder = 1
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kdppk'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nmppk'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'alamat_ppk'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'telp_ppk'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kelas'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nmkc'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'distance'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'jadwal'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'jml_rujuk'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kapasitas'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_sub_spesialis'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_sarana'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_khusus'
                    Footers = <>
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
          object pnl3: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 262
            Height = 332
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object grp1: TGroupBox
              Left = 0
              Top = 0
              Width = 262
              Height = 122
              Align = alClient
              Caption = 'Pilih Rujukan Khusus'
              TabOrder = 0
              object grid8: TDBGridEh
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 252
                Height = 68
                Align = alClient
                AutoFitColWidths = True
                DataSource = dataRujukan.ds1Khusus1
                DynProps = <>
                TabOrder = 0
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_khusus'
                    Footers = <>
                    Visible = False
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_khusus'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_app'
                    Footers = <>
                    Visible = False
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object btn2Khusus2: TButton
                AlignWithMargins = True
                Left = 5
                Top = 92
                Width = 252
                Height = 25
                Align = alBottom
                Caption = 'ambil di pcare'
                TabOrder = 1
                OnClick = btn2Khusus2Click
              end
            end
            object grp1MKhusus2: TGroupBox
              Left = 0
              Top = 122
              Width = 262
              Height = 210
              Align = alBottom
              Caption = 'Pilih Rujukan Khusus Sub Spesialis'
              TabOrder = 1
              object grid6: TDBGridEh
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 252
                Height = 109
                Align = alClient
                AutoFitColWidths = True
                DataSource = dataRujukan.ds1Khusus2Sub
                DynProps = <>
                TabOrder = 0
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_sub_spesialis'
                    Footers = <>
                    Visible = False
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_sub_spesialis'
                    Footers = <>
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object grpC2: TGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 164
                Width = 252
                Height = 41
                Align = alBottom
                Caption = 'Catatan'
                Color = clBtnFace
                ParentColor = False
                TabOrder = 1
                object editCatatan: TEdit
                  AlignWithMargins = True
                  Left = 5
                  Top = 18
                  Width = 242
                  Height = 18
                  Align = alClient
                  TabOrder = 0
                  Text = 'editCatatan'
                  ExplicitHeight = 21
                end
              end
              object btn2Khusus2Sub: TButton
                AlignWithMargins = True
                Left = 5
                Top = 133
                Width = 252
                Height = 25
                Align = alBottom
                Caption = 'ambil di pcare'
                TabOrder = 2
                OnClick = btn2Khusus2SubClick
              end
            end
          end
        end
        object ts1: TTabSheet
          Caption = 'ts1'
          ImageIndex = 3
          object mmoHasil: TMemo
            Left = 531
            Top = 0
            Width = 177
            Height = 338
            Align = alLeft
            Lines.Strings = (
              'mmoHasil')
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object mmoDummi: TMemo
            Left = 354
            Top = 0
            Width = 177
            Height = 338
            Align = alLeft
            Lines.Strings = (
              
                '{'#10'   "noKunjungan" : null,'#10'   "noKartu" : "0000043678034",'#10'   "t' +
                'glDaftar" : "13-08-2018",'#10'   "kdPoli" : null,'#10'   "keluhan" : "ke' +
                'luhan",'#10'   "kdSadar" : "01",'#10'   "sistole" : 0,'#10'   "diastole" : 0' +
                ','#10'   "beratBadan" : 0,'#10'   "tinggiBadan" : 0,'#10'   "respRate" : 0,'#10 +
                '   "heartRate" : 0,'#10'   "terapi" : "catatan",'#10'   "kdStatusPulang"' +
                ' : "4",'#10'   "tglPulang" : "19-05-2016",'#10'   "kdDokter" : "73229",'#10 +
                '   "kdDiag1" : "A01.0",'#10'   "kdDiag2" : null,'#10'   "kdDiag3" : null' +
                ','#10'   "kdPoliRujukInternal" : null,'#10'   "rujukLanjut" : null,'#10'   "' +
                'kdTacc" : 0,'#10'   "alasanTacc" : null'#10'}'#10)
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object mmoKhusus1: TMemo
            Left = 177
            Top = 0
            Width = 177
            Height = 338
            Align = alLeft
            Lines.Strings = (
              '{'
              '    "kdppk": "0116R028",'
              '   "tglEstRujuk": "10-10-2017",'
              '    "subSpesialis": null,'
              '    "khusus": {'
              '      "kdKhusus": "HDL",'
              '      "kdSubSpesialis": null,'
              '      "catatan": null'
              '    }'
              '}')
            ScrollBars = ssBoth
            TabOrder = 2
          end
          object mmoSub: TMemo
            Left = 0
            Top = 0
            Width = 177
            Height = 338
            Align = alLeft
            Lines.Strings = (
              '{'
              '    "kdppk": "0116R028",'
              '    "tglEstRujuk": "10-10-2017",'
              '    "subSpesialis": {'
              '      "kdSubSpesialis1": "3",'
              '      "kdSarana": null'
              '    },'
              '    "khusus": null'
              '  }')
            ScrollBars = ssBoth
            TabOrder = 3
          end
          object mmoAkhir: TMemo
            Left = 708
            Top = 0
            Width = 177
            Height = 338
            Align = alLeft
            Lines.Strings = (
              'mmoAkhir')
            ScrollBars = ssBoth
            TabOrder = 4
          end
          object grp3: TJvgGroupBox
            Left = 727
            Top = 0
            Width = 185
            Height = 338
            Align = alRight
            Caption = 'grp3'
            TabOrder = 5
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.FromColor = clMaroon
            CaptionGradient.ToColor = clMaroon
            CaptionGradient.Active = True
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object chk1NonSpesialis: TJvCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 73
              Width = 175
              Height = 17
              Align = alTop
              Caption = 'chk1NonSpesialis'
              TabOrder = 0
              LinkedControls = <>
            end
            object editNoKartu: TEdit
              AlignWithMargins = True
              Left = 5
              Top = 19
              Width = 175
              Height = 21
              Align = alTop
              TabOrder = 1
              Text = 'editNoKartu'
            end
            object editIdxstr: TEdit
              AlignWithMargins = True
              Left = 5
              Top = 46
              Width = 175
              Height = 21
              Align = alTop
              TabOrder = 2
              Text = 'editIdxstr'
            end
            object btn1: TButton
              Left = 48
              Top = 280
              Width = 75
              Height = 25
              Caption = 'btn1'
              TabOrder = 3
              OnClick = btn1Click
            end
            object dbedit1Khusus: TDBEdit
              Left = 2
              Top = 93
              Width = 181
              Height = 21
              Align = alTop
              DataField = 'nm_khusus'
              DataSource = dataRujukan.ds1Khusus1
              TabOrder = 4
              OnChange = dbedit1KhususChange
            end
            object chk1Bpjs: TJvCheckBox
              Left = 2
              Top = 114
              Width = 181
              Height = 17
              Align = alTop
              Caption = 'chk1Bpjs'
              TabOrder = 5
              LinkedControls = <>
            end
          end
        end
      end
    end
  end
  object pb1: TJvProgressDialog
    Interval = 1
    Max = 10
    ShowCancel = False
    Smooth = True
    Text = 'TUNGGU ...'
    Transparent = True
    OnProgress = pb1Progress
    Left = 424
    Top = 16
  end
  object frxdb1Cetak: TfrxDBDataset
    UserName = 'frxDBDataset1Cetak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noRujukan=noRujukan'
      'tglKunjungan=tglKunjungan'
      'nokaPst=nokaPst'
      'nmPst=nmPst'
      'tglLahir=tglLahir'
      'sex=sex'
      'pisa=pisa'
      'ketPisa=ketPisa'
      'kdPPK=kdPPK'
      'nmPPK=nmPPK'
      'kdKC=kdKC'
      'nmKC=nmKC'
      'nmDati=nmDati'
      'kdDati=kdDati'
      'kdKR=kdKR'
      'nmKR=nmKR'
      'kdPoli=kdPoli'
      'nmPoli=nmPoli'
      'kdDiag1=kdDiag1'
      'nmDiag1=nmDiag1'
      'kdDiag2=kdDiag2'
      'nmDiag2=nmDiag2'
      'kdDiag3=kdDiag3'
      'nmDiag3=nmDiag3'
      'kdDokter=kdDokter'
      'nmDokter=nmDokter'
      'nmTacc=nmTacc'
      'alasanTacc=alasanTacc'
      'catatan=catatan'
      'infoDenda=infoDenda'
      'catatanRujuk=catatanRujuk'
      'tglEstRujuk=tglEstRujuk'
      'tglAkhirRujuk=tglAkhirRujuk'
      'jadwal=jadwal'
      'idxstr=idxstr'
      'idxstr_1=idxstr_1'
      'provider_rujuk=provider_rujuk'
      'umur=umur'
      'teks_tacc=teks_tacc')
    DataSet = dataRujukan.fdQ1Cetak
    BCDToCurrency = False
    Left = 456
    Top = 304
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43384.266135578700000000
    ReportOptions.LastChange = 43384.266135578700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 304
    Datasets = <
      item
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baRight
          Left = 415.370347000000000000
          Top = 3.779530000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."kdKR"] - [frxDBDataset1Cetak."nmKR"]')
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 415.370347000000000000
          Top = 26.456710000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."kdKC"] - [frxDBDataset1Cetak."nmKC"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 377.575047000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 377.575047000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 305.763977000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kedeputian')
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 305.763977000000000000
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cabang')
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Top = 66.692950000000000000
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Surat Rujukan FKTP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 45.354360000000000000
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000D500
            00002C08020000007DBF6A05000000097048597300000EC400000EC401952B0E
            1B0000000774494D4507E10109001D1A53AA91DB000000077445587441757468
            6F7200A9AECC480000000C744558744465736372697074696F6E001309212300
            00000A74455874436F7079726967687400AC0FCC3A0000000E74455874437265
            6174696F6E2074696D650035F70F090000000974455874536F66747761726500
            5D70FF3A0000000B74455874446973636C61696D657200B7C0B48F0000000874
            4558745761726E696E6700C01BE6870000000774455874536F7572636500F5FF
            83EB0000000874455874436F6D6D656E7400F6CC96BF00000006744558745469
            746C6500A8EED227000046E84944415478DA8C7C05605447D7F65C5FDF8DBB40
            122409EEEEC1295620410A2DC58AB5140A1528EEEEEED042A1688150A4B80602
            81841077D9249BD5EBF3CFDD40DBEFEDDB977FBB6C37BB77479FF39CE7CCCCB9
            188410A007E420C001C0202020C0C0FB07A6FC01D113BD17254C466F952F954F
            314C0640765F01DD3FC0A1723D460A242A49C6014FA00B95DFA2127108717721
            D05D1C06080CFBAB96FFFA902520CB0092A81601C37842263099002255D32099
            02AC523DD0C2BF9A0031540D1481E86E31A4208E3EC7255C69090668E5972280
            12C051D9B48C51506918209576B9DC651022EA15062480114A7F3012BA7B0980
            848AC580886A92711CC3700C50B2F25BF4018FA3EB018F3E018000901195E681
            9ADEC177A3A5D4E07E07DD1FB9471CC3D018484A09CADFE8431C70CA1829D750
            EED1444F597E5F96FB3A999005F4EAAE814253852E13701107228E93F0DD4F94
            C1713FDDA52A938ABB6709B5DC45008E04265E56BE9341990AA0BEA800A676A0
            3700A277B2523F2480E42E010338212BB52803EDEE9080BF1BE63FA709FECBF4
            29F38B61FFF12DF5CFCBDEE34F54FA87E1EE7AB03FCB5630550332005D001795
            0B944FDC17897F42D33DBCCA5768F61881426F952F48F4E7FBF185F2FB0ADD43
            E26EDCFFC69F32ABE8492230A1A78041843F34D5640D7E116A7837365432AC99
            F03F5B2C61827B842089F0877E22130281A3EA286572457777D03F042D05DAB8
            DBE010FEDC160404376610B4088021FC1112FEAEAF0432028442C048EFB0E236
            36F7F8C077FD92DD08C395AEBEEB9DD2FDF79304F1BF66AB662C14A3A8C19FFB
            E7A8136EFC294FC23D48E8557C7F654D31B2623D72CD05444DCBC59A21C59542
            FFD61880FF3524EFBE227107065C38F096DC9FC8A0824634005400D00EF7E4A9
            DE5F4E28A5C29A36D4E0AFA658F7F860502665197CE8211344CD20FC1D82C43F
            2E7B873FB90685EFACB50655F23BAB03B0E67F2E208A6E36C0146B414824DC7D
            446F48CC4D9E688C51D79C6E66434FD437DC4D00444DA16E38D53488018AE57D
            087F9CF2C46919C724443A504680C01508BA67921021CEA30944DFB9F98254EA
            C16AC0C1821A6E86A4429932251335F621BD9B7A4829F4A03480C76A8859B115
            1160AC1B0FE8C784825DF4140837A2505F154647C480BBDC138266E8FD5892A2
            BB36516905BAD0490006411B95832B4881EF51A170D2DF1082A0A396C1FB117E
            873F097F3FEEEFC1C3FE8903E5151235F4A08CB6ECE6A19A12DD70FBFB3C637F
            7B85EF5E04024346C661C0ABC6C224E0548802B5167DEABE9656FA2883BF4805
            7FE700DD86E41E5BB7F52167C0FF654CFFF178FF21C45500FCE714BFA3AF7FE2
            4F7AE712D0EFA41AFFF67EACB0F743865888971462C631F750D4A0D0FDC46BEC
            0DFD0E51A29D806EE7A590ADBBF54AA5EE2EB98B729745FD7FD01F909C407602
            CC202218E04A196EAE52384929085107C12AAF0A1C912745907A873FE4ACFFC4
            9FE28F6512AF71CEB8F4BE4BE4BB2A70E7BBC1828C9B175107DFCD2FA5601D51
            3CFE8EB8DCF8434F8C472E1AC3DD56E07673182EBA4954544C00998A03E14F42
            AE1D83EFC90CBE1F50F96F13847EA296FE86923FAF04EF9C75CD9FFCFB4B88F7
            DAA8864671659ED058CAA2E2857134E47F2F5C29FFEFC5BE0731021F627183BB
            29C829F3A452329A26548AD257022AD202607F16F4275AFEC4738D189131E1EF
            E0FBAF33894306FB8F6FB0BF95F86FF8C3149D23BFA36CB70F91DEE90A9C905C
            8AB852CC8450061B62FFA76AF75BA490EC94A4D011741B568DF37297F3A7247A
            E7603E883F6805D00660008FE12EB75DE2EEC142028B78C7212E85B494214155
            D102F6CECDB95959410B622A2458D1F7B4D2070451C9FD7FB7B5D4B815C2E216
            08B800B43563F327F7D0F27BEF56D368CA3D2E4A9B79F45B52C6DD9D45A4A278
            60F44FE5760C088E0EE4A3458C76ABA79AA78CBF5363FF87A150917FE20FFB1B
            4CDECD9E62E8D2DF66EB9D3697FEE44F44DD9280C92EA43801A21A52047F411C
            FFDB004B359D800AEC24776328E9BD47C6DE6102958326CE01A046313CF47C7F
            01F8AB0B3536833E1751BD84F41FB8FAB31F7F3E100AB07FCEF13F1CF03FF1C7
            D7385FC5A5C84040164D52AC88912450099056FCB452A8D38E313AE0122401C8
            2E59C629B70687988EC6D4A4A89009CBA970E65DB9242923D74D52180FDD2384
            031DF99785FECB4310AA30DC69177D1D0244AA990390569E686A11F6090A2350
            6842A156493C8FE685A0CA5D420D1B23E354A1E800225B41C0222986F0E0008D
            CB1C852228D2C5095040ED24191C89F60A1E229A63ECB21A0D84284A1254C683
            A6082D89EC0DA34545E1236275622C0745160A3910F7C6B17040513C81E49A83
            019568EE658916253D806A9CA40906FD4DBCD329358EB5C69FB9A74F90703494
            886651B5042212AC861A156921CA1872EAD0EDA514A10B115D31B2E0767C84DB
            E76048D9022504821CCE23A2AD949C55041E8CA90365D2854B8A78C015E58A2C
            87AE01109A4612E7505801310D27415C997F8C70A349E14F14D04016E34A6581
            45134F60C19846074806D522D5683119B92A0988A8701AC112CAB4849893541A
            2BCA5096291A8D274F33F43B3021831465D2ED6F6419A221E49C2E8666DC3115
            543AFEAFF893DFF11406DCF8C36401990B0A380059ED820445D859CC93025AF4
            B52859AD7C89B9222D3DFFDED3F49CA282727BB920B9082D11DBA47EFBF64D9B
            36F4A35CA2B7D1538D185890D18F1D48A8B95BAD13688C406004948AC43E843F
            A44F58B16ACF919C73976FB3980ED314F36CA58E4123ED15E41BDEB37BE7566D
            433C3D557A996301EE9088C16356216AA36942835B786735D228368E6AD6A653
            F3B62DFBC6069A34144B4B08CA53BF9AC75B7C467DDCA35797861ABDC585A242
            114FCD166FDC484B494EAEA82A4766D2BC694C5CA746CD1B456814A2442321BA
            08C1069C277F3B7DB2F26D5CAD86E3EA770C62BC0551B099B459904F4E4BB995
            78B19157C8B841F15A5A8DC26B0A4D8532E92870219488D2CDB24A9F1595E796
            00822069250945C00A9E94409B4001B95504947BB61865C810BED590453E114D
            9D5BE121C4A2C981A860644BD7DF3E3E78F994A649AD714D7A765285B30412C8
            284C730B6109D2021A0C5274B930648B3429C882CAAD4051D42D90E852D4349C
            74F22209AD243BEFA74D76528C6DDE6C4444775F5CAD1100CE498AC8409E9994
            218D640AFA25F27A1823C9B84CE02289605D23EA1135A20BDD81BD1B4938FA1D
            C6212327D0258A312007044585CA718AFA57FCD504346EBBE06BD6335C129234
            B85304F792B2925EBCC92F71D6A96518D8BF435A46D9854BF7EEDE4BAEA87654
            730E955EC5014B60986FDF21DD691D5E5295E752976A25DCDFE8D534A2416040
            786159E9BD9C974080FEDEFE7DA35A7B126A3D063C300DF12107CC02D626D9D6
            6C4ADFB1E7380FB41D7AF87818710DEEB495E8AE5F7DE8EB1F31624C87719F74
            0926253BF2C4321E5C6F9CDACBC3C368E8D43498C4441529DD7AF03AABD4AAF3
            ADB779D280217D1BD9554AC8DCBEEBE0AA42CFF6CD62D62E191B561BE7209D94
            96397FC5A3A4478FFD3C541175C311A7A6BC7CECAD23572D9BDBB65934B24109
            47E073F140DC7068F32636B51EABDD18F779C7D01896C04B1870CD9CB376FF86
            BA1ADF6F068CA9E715ECC16805889A2312287252D40BAC51CCB224AB01852300
            F14A782DE2B253E51014DDA8887B442034047A27A6ACFC2057A2A65C40460CA7
            53620644E484B27C24438A47BA5B59BAB2D1FCA9941BDB2F1ECBF701331BF49D
            1BD38F45F48480812BB21F57B4B1AC54842807B95F1A47919888EA16D1CFC92A
            12354C09D2BD04E4BB380BC58FD8F56D9160F1AB1BB2A6E3CC2826C088080281
            D5C5E15ACA89893C0EED0AB610E830358AE6045CEB50019A78C758A873C86D10
            0ACC1405416212C22881241332311E999CCA6D78CA9A9C628DFF823FF7F2488D
            FC15DC0B48985356DA70F3D19B555BCEBDCD29B50B2A46E56ADC34BC57CF0E4B
            161F742F484880C6789B79507C97611F77AB66AB6FDDBFF830F369416D01738A
            C83F368B6A181C5DFFD6A33B25E65240306A010E6AD26B74EB81BE800E4756F9
            4F2DFA7F1F4EC0A359DFB0317BD7EEE3A2A45EBD6170C736B535846C3183EFBE
            3BF434B900E8AD878F2CEE1A4ED9016313C9BAED66ABD5AAE0A08043EBC76968
            1C85CE3792F2BF5FBAA14A32F50F311CDDF3B5D348A270A373EFD17C4564A49F
            61E38AD1D1319A3CB36DC3EE23C72EC0501FF5D79F776CD4A41649602929690F
            6FDD89AA15323661908C026D5236031B04E4B69F76AD06C9E1E5E2CA6E13FAD4
            6D5A0DE567AE8A35170F5BCA2B66778DEF1ED1C844232F275642A74029DED209
            58A7ECD2601A03A6A79112402A5F96F5C82D880A431611B60AE0B08A4E446FFE
            B8D104D53E82B20247211EC46599A0AD882531AB0DD8D1C75A60D040B55E425E
            50A209C28AF33FA55CDDFFC7E90C1F697C44E7794D863A30500D9D55A2D397D4
            FA600623E255879356A904655911A952B11473482CCBC8844D6350031509681F
            A78DC7C497E6CC1F1F1D4BABCA3306797EDF647C73AFBA21B8C688A1A9E55080
            62817C3525140307EDA63913A00C925A2793144E3978141DE2A8FD5A9516D542
            632A014876E842D5E808BD11575392B2C2A90514D203884609C486FF863FB72C
            AB59AC1314AAC50816124595DCD275C74E5EB80F6913A90DE4A4624AB64E9832
            F3FE8DDB4949AF7CBCBC540C1C3B7AE0907E3114123E502CB6A45F49BBB3B9E8
            866463BD0CA646751BE657552467BE01263D43A905AB33D2424D1F3CB6935F83
            084CF741FC5981CB06B835AB324EFEFC9BAD5ADCBC63489FEEB19CC34CE3866B
            BF177EF1D50EDCE058B1E69BCFDA699C94A1D44635EE398F733A1AC6C61CDFF2
            9951CBA808986FE3868E595A54818554175C3EB71DAF453B31AC7BBF4FD992A8
            304FD5AE0D23EBD6D3BFCE2D9DF8D5F749AFA2C68E895B3DA715221711F1058A
            2F2409992C1A350117708AB062220BE0FAC35BD6834711926149DB51BDA29A64
            D9CBD75D3B7D372D65DCA084D151EDFD6486B5583193BE0477DCCA7F72FDD68D
            92D25234435E3A8FC890DA9D9B7588F1895063944A7181526175E9CF6F125FE5
            6515579A214986E97CEAF8854C68F39141AD4348B560B25D94D22D253FDF399E
            575AE8600506AA626AD5EBD7B8736C509896A4EC98702EE7FEA6DF0EBED1DBC6
            C6F419ECDBF8F28BFB6FF3722C82CB1B57370A8F1ADDAE7788C1077153B5C8A5
            96E75EBA7BFD45759EABC4E2AB327101DE81FE019D1A758EF30C7EF2E6E9E653
            7B9F07B9AA298EC5B9A6E5A14182A95F83D643BAF552E3388BC9390EF3BDECE4
            2BA90FAA2A2B3897D39750D70DAAD521BA45FDC8680DA97D9CFAECD885133A93
            B1EF808F241CBB76EF26D263BC8844A0FC51AD4EDDDB750EF0F6D5200922424A
            5986A0B00FE1AF26EA404C4DDA252CB3A07ADED2C38F5E970B985EC03C69BC84
            C06CFDBAF7E4EC8E9B890FA2437C277EDA3DAE53B49E4208E7516B71C99C031C
            8B5312EF3DFC0395D4B7CF80DB29CFDF1617DA91B1B19291D1D72F05A3BBF48B
            6FD14D8D19F17FB6E5FF3E2CB2C3058415CBD24F1C3BCB39C0C1C3233AB58B52
            E35689F3F8F997DC856B8E5BF89C798BA7CFEEE7E9243C113D47759C850C34A6
            5EDD93DB3ED3AB19E4762C123774EC8A17056C5DDEFAD3BE7586069413C77B0C
            98682BAA5FDB4BB367C3D0D00826A3B06ADAB7CB92325A7E3EB4E9EAAF220992
            42BA5A92440AE91FA8B83DE45924025870658D6CE3919D6B89BB61767C71E709
            CDC3A20EDDF8F5E76777DA356B37B147424BA84322140D9D59259FC8BF79E8FE
            D9F2F28A86751A057804BECD4A2BCD2F8A0C0C9BD07B7494771883FC28CB6D39
            BCE372C563ADBF4F44687D8CA0AA4B8A1C45E689ADFAF668DD0585B27682BCFD
            36E9D8EF179F491975A263820CE125258539A9E94D4DE1A3BAF46D11D5C0863B
            CF66DDD9FDFBC90CA335441DE86D5355AB51B44294396DC06CF726D4A35BC40D
            68D28D80D8CDF487A7EE5DB601C12B322458F2E45DD62B99AF48098B080EDFDD
            6F92C365BF9DF978734162AE39DB23DC7FA8A1978F55D33820B85D7423849852
            9B65F3A5438F73D354117EC1A640A48CCD799979B9B9344D7F3C6C78DBB0F68F
            B39E1FBB75B2BCAA52EBED416AD59CC4EBBC3D8B4B4BAC767B8FECA09E6DBB7D
            DC77100D456475A42C23A3469EF8BFE34F8435CB5B8A30708B65A4A888328B6B
            D6C2DDB792B259A01249132555A8486ED8A03E791969BE9EFAF183FA34890920
            7837A722D2A02481AD82066D96ECBC9EFBF4E8D993BDBA757E50909694FFB6CA
            44A298548DD34116E29B5E09F1E1AD485287611FE03F56E244097EBFE5FAF15F
            CEBA6CAEC37BBE6FDDBC36AA44C29953E733E7CD5F28F2B9278E6FEBD23818CA
            6A51A482DBCC26283C22AAD6C5ED438C7A954374140B86F8892B3333ABC324E9
            F2990D54005D21810143665616F8D40B556D5B3DAA562DEFDC12C78CB9CB9F67
            9201819E8B170DEB522F001764A3B20EC64B22EA1B8D23412F61761A5603B8E3
            97A32BAD57C330EAFBAE639F4B5967AE5F7270F2B6610B9A7A4646B890579538
            025E66D3573F3AFE22F3E5C2C8BEDDBBF55231FA8705297BAF9F7ACD999B0746
            2DEA33AD3E846B0A6FEFFEE550885FE88CF6FD5B07C5A2F8A29C75982B2C7531
            9F60EF0051129260E99AABFB6F55BC8EF76C35BACF503F95298FAB587B7AC72D
            737AA79086B3FA4CA9473387F26E6DFCE364BEA1AA131D3D3AB84744ED3091C6
            9E15A4AFBD7DC2E9E2064435FFAEFD285FA8795E9A939D9D1F1955CB3730D024
            330EAE62FA9B537F3CBA236BF1CBCDA637AFD3C8556DEDF968DDB3B2F4B05A81
            5B5ACC69A8AEAD519020121056D9AB9EBD78ACD6A8036AD7D6694D3C21DEC9CB
            5C766A6D85C1D9DFA7DD571F7D91F5FAD5A26707325DA5F57481A31AF76BE415
            A1A1B589152FF63E3927955A7B04355AD07BA23FE94161087B32023D62C0FF8E
            3F1EA0485CD92B78BFBBA8E0CACE831B8F5FFEB8EC70A15D60A11A7395C7D60B
            DBB866969E628D6AC68761641EC546049414DE84CA921A8A140549ADCEC38562
            5B959AE16F55A46CF9F54081873B703357F56F3560568BA1AD800E50EA0FE24F
            E414EDFEDDA1CBBB0F1F71389C8736AFEADAB60E2602B38B1B3D7E654E7E6A8B
            7A86150BBF8A0C0D21654AE270FFD673301A8FAA1F75694B2F9D96B103E71B97
            D7C8F14BCB72AD11147DE9CC6ADC93B24030E0E3B9C519644C24B369F56775C3
            035909EE3D7A65EDBAC3B8670030FACCFF64C0C7DDA3FC198AC7ADB8A2A96924
            627088BB285885FCEF4F07D639EFF81378BF7AB1A7726F5A581E7711CB5B4C18
            D9B05F8003E96BB99AE016E59D3EF0385104D2EBB81F4DFEDE2200A512B727F9
            FC86A48BDE18B36FCC825EBC2ABEE4C2E9BBD75BFB365ADB717863951F724F76
            82E670CADBA9AA59C0DB5CF0DBBA4BFBF24CD5D73AAF6D13164D4ACE329C3B94
            7AF9FBF44B910EED928FBEEAA70D3850F260D9B5A305BAB229A1FD1636188F26
            D909A4345BC1C757D795592C3D03A3D7B6FB348CF1B6931460A18EA6DCEB0DCA
            0AF414F3A563B7CF566B84DF3C46F66ADE0594D99B3E5A916CCDAD1DECBBBBD5
            378DD4916ABC666750166416E739AD88620F4CD05055D0F54C10BE39B7F40591
            35C0D578E5D81F8A925F7FF1725B165935C0BFE5A2F613EA411FCC855DA1DE7E
            737DFBCBCAF47E1E31AB3B4D8E6042D15CCBA43BD4FAC706F05FF8C321249520
            5A76AFF823FFAB2CFEBFC92BBEF9A8FCE61F37655C53D7DFF0D9D01E750374B2
            246A0849A27951A5B2E372B5B29F46B1A2CD59515ACB334467D7D87422129C7A
            912FC6D95B79C97B5EDD826ACACBDB3FCA10DCC310D90E3712061F8C20FF37FE
            245109A8A6AFBF75F8D869426518FF51FBE8DAA4C4E217EFE7DD7EF49C50310B
            668FE9D7ABBEAF5AD96E1158D1BFFD7448EAC2221B5CDB389C2218143C9D4FAE
            9A326DAB1AC0F8F681AB978EE14D48A11371036794E5EA1AD451AF5BF1596490
            0EE06A09D2B3176EBEF120B3D466F216B8DE5D9A0D1BD030B261B8D684AC04AA
            6417017927E9B400B0E4F8A6BD7C29858CC055C5A801AFA21DA2D412ABBB61C8
            FC36D51A60940BB0AAC1CF77A43E7EE9ABF3BE3C7AB106602A4CF670CA3FE53E
            FDE1DE094C96167F3C299EAF3DBFEAFACA3387B491B5BF88E93C20B0690BB5A7
            8C532866A558B59D9158028C78B0E1CECBBB94079ED86B73B0DAA807BC1317EE
            55BCFAECC28E9062F9DBE113127C9B1EC9B9B3F6F76369BEAE398D867F1B1B4F
            0B1C926BD9AED27E57D7965496C50545AF6D9310A6F6B5303A24FB9109A92401
            773964876349D9959D8927CBFDE93391E3FAB6E88A596CCD6FAF785D99DBC8C7
            7767ECBC264424300141254A4889602229499424A3197710581110EE3ACC8BCE
            AECA5517F573355A35F6FBE2E4D42F5E6CCB262CF1411D16B49F102E19519CF6
            872E77CE954D8FAADFF6F38A59D961721D55288EE102092811E0E4BFE08F75EF
            5529F8ABD9CEC708078A005CE2AAADA75EBFAD0C0A347AFA864A6CDE94717D82
            747A883B0959A8A6C4378ED29796A26A447422129DCEE4DB37C7F78AEFCF3411
            6859C2250D822423E4394BD73CBF229B549576362B3FE3D3A6DDC687B5D653FE
            1FD47FBCA82C447CB7E3F9C123A73996681E429BD44890D95F94D82B9CA2C13F
            E2A3B80E533F6B12CA10C8B2394E08E8364D025AA34FAD15099D680C9494587F
            B99F9F929262A4D94DB347F51BD080D5207DA0EA3E605A4591675428B679CD84
            BA416A923020F329AE76EE3D92F8CBF9FB9CD9E57271DE7EDE9DFAB69CF645DF
            103DC1705612135DB4B31C604B7FD971BC2A1B45C492689BDC7DC093ECD4BBC5
            B9469B6EC5E839135D7525BDF44628897BB4C9916746D1DFE8BA6DD140920CED
            6B834FD9B213F949B228CCEE3D6A8177C75FB9F425C777A5124E3F9C6C1051A7
            6B60BDB0E0C8105548AC6C1071518462F3C4EFF2CBB3557A3C21628446C08C92
            885172BEABECA78C7B3E05D2D45EF13363E28E153E5C9D78E4B5DAFC4DE3F81F
            1B8C22048EC3E55CAEACDFEFEB4AAACA3A0746ADE9383A94F62E24291E0848A2
            3DB3978A05C595AFD32E69F233658B4DCD6D8B1ADB3FB62BE1B2F7B8B122A33C
            B7B197EFC656F31AA8232906B80856C2A10D9359082BA4EAB755D9A5159519F9
            39E5A2EB66DADDAA40471FB6F1CA4FBE2F79913A35795B365639C2B7F5E2EED3
            4311FEACD2035DD1AC8B6BEF3B33FB7AC5ACE830B9AE4AE13F9E5076A1887F8B
            3F5CCA8E19540E24C935FB8FB80383C969E5CB361C7CFCF8AD8A31F22C193FAE
            E5F8CF7BFB31128D2361667F5955B2F2B77D69B2CD4CC91289A3E85CCBF13184
            CF96FAE3C362222559D4592549239749965EBBBFADC005870A6359D7D8D88E3F
            7619E1850793FFE4E2FFFB1020140098BB3979E7AEE324E1B96ED690B82EBE38
            10F258D7EC45475332AC0CA9FF72F2F0B9C36A214FEEE278BFB849A2A8253581
            81E62206A3746ACF7C5ED6E9A989A39A7E36A0935E4BF25AAB05EABA0F9C5952
            E0513B48DABE614A4C10CD90469B15507AC6E2E0DFE6956F5E7FFE5152BAA8F6
            60716BA74EB15BBF1BED4DBB48C8BB287B31C0569E3B70B2F01564609D6631CB
            62075D7BFB60D5FDF350D28E6BD57F4FD020512BBD640B3BDC5E2D155419802A
            9AF1AEC6048BCC07D88952959C6F022AADF6D3465D977B7728A2898BD90F57DC
            3955413A2506F7B04B3E3AEFD8D0FACBEA0FF0D77BC8BC33F2DADCF2B25C8A92
            F4643D95446AEC7612179D802FF761EA98992131ED6647F7385E96B4EEE68954
            AA645EC384850D466148AEE2528EA3A8EFEF6B4AACE6F601B5D7741A13A2F6BE
            6729497AFDECE1F367B7D56C14ADEBD3A8D94BD27221F90A6F048BEB7C3220A2
            0B29D907FDBE32B734B78987EFEA4EF362F5112A858F90F9C30C68BF907EE75A
            DA937C5B397072D1B5EB74886A7AE1F9E547DC8B5E5CE39563BE2F7EF97AFAF3
            1D39A062A46FEB45DD67044123E6808F54055F9E5D714FC843F85BDE7E727D75
            2800384700D587F0A71C29439C23BB8F4E95702023376FC6B71BAA8A9C9C4D6C
            DFB0E57733FB358CF513489B5DB68BB4F4B8386BF1E1F5160C8A3A2DB272BBD3
            4E11C05FE73DB645429D904893866E26699D18E722C4EDF90F765CF9A98CE249
            1F4DA41DCCEFF859FF80760CF880FFE580CB05ECF3363EFAF9D86FD0A539B5F5
            CB76ADBC48D2968F699F66948E9ABA4EB0A9A382C35F1D9C8C91E852C9D0732A
            4E6B8DFEA13BA676232587E4AA368486D4AB13EA475A089717B268D1CB5E2E6B
            BAF6FFB2BCCC3F3A825CB37C6C9310B5C8020D6D74BA7846C5F330C7066AED3E
            727BCDE1073608BCB4F496AF060CE8D080E164CE801540B8E4EC4F670B4E9848
            FA8BB84FA6D66AFCAA3CEFDBF3076EE1966883FFAF9DA6069B7CF32A8BBADCDD
            926F37FB85873E6E3313A35402C0FC008DD434C913E51AE408094A59AC25310C
            3A8B0B57BFF93DB13C255FACACC61110B104559B99DD06C53AE9D867AB3273DF
            F89A54F7BB6CA8A5F2013252E3A24B1272D4B449C235386E00F4EADC6B4BEE9D
            B03125B363C72CAB3392E0040E97B25D25FDAEAECCB794B6AF556F5187E16A8E
            989BB83B2D33C3CFC3777FEF39B5FD7DB438B625F9ECA66B67323DB16D2DC6F4
            6FD04DE21C3D7F5FF1A6223732C07753DBB9CDD491DE4E01E01287095B32AE9E
            B893986629FEA6FBB0C1CDBBD5C2F46C65F5DC331B77689F74921B2E8BFFA1E4
            55EA9CE7DBF261E568DFB673BA4C0A263C352EEC1191FBD5B935087F7DBC6296
            B59F1CAD098540D9C1D7287B81FF823FA79BFFE877F8436E1F544178EFE59BEF
            976E3167554506852FFDEAB376CD6B13BC6833B10552F91FE90F6415FDE8E193
            17AF5206F41EE8EF1FE892F89482B486F59ABEC8CC2A2B2B681211FB75DD6EA8
            42A4F3EEB2E6C34FCEFDFEF67105E5F061F11FDA248C8F1DA8FA10FE10F838E0
            58B02DF9E8E1F35C997C6AE7D76D5B07A8D5B632C2F422B762EC579B9D16D284
            D369A7BF52A9188E83BA2E73498D3628B2CEB50D433DB432893958608050D44B
            364A30492E92F77255484CE7015F9697FAC54450EB968D6E12A62701834B240F
            3182B0D254B90D84943AA8799BAF9EBDFA88B659E68CE9F0D598815A49143C88
            5C0096FEFAD309F3CF4198E6BBEEE3E303A22B79DBDAAB277659920D24BDB8E9
            C8A1912DAA1D96817777BF2ACDA2BD8C05835773EEDD241C694C91D04A3847A2
            580D5218A16C51A1374EAE40256483B2076FEE1F4EFB238562EBE633CB867EDE
            DB18D13E656372F2634F2D75B9FFFABA9A00028A242E21795740907E50A58618
            2DE3EB737E5F71EFA4852E9B193D7C7ECC480D8ABE71398745FE7775417579DB
            B0C885ED87DB2B2AC61F5B0D186A48FF413F867E8C43E454D80359D7D75E385A
            64C477341C35B8494FC26EEF95B832AD3A3F24D87B5BFBB94DD4E10627EF2061
            A5E41C7171557A564668ADF0A383BE0C204C5A19CBE49CF3CEADFE9578D6468A
            5D95F063E1AB94EF53F6E4B3256302DACFEEF68517D47A4AF4633C6FDEC50D37
            1C19BD3D11FF4DAA5F833FE2FF0B7F1048988461482D1649D2C5DB0F7EBD7035
            FDC19B79D3667ED6A7152D29EE39535B713239F1D89D7381017EC33BF4BF73EA
            D2C84E1F356DD802055FAF9CF9FB7E3B99589506582948EB79BCEFCC503FC4BD
            582E905FD8B277FC7EF489335B6371CE6A3BE4AB26091A40FF6FFCB1CABABFEB
            EBB5F78E1D3A27DB5517F7CF6DD7DA1782CA12D298916FFFE49B6DE5059C37A3
            7A7D6A825EEBE574109EDD57901A556044ADDF37F7F6D47214A834733A3DA9D7
            CA22C969100E2AD50E3BC6F41DBE202FC75027046C5F3BA649B8B7C8212E2265
            1227092B050BEC58AD2A41BDE6C8B5AD076F99D4D417BDEB7FF3E910AD047903
            2CC0F1F93F1F3C2E9CA9EDA49777FA7C6048331EF0679F5CFF3AEF7C25E0FAD4
            6AB3AAD9C706899CF0F0D8CDECE73205937A7CEB1D108C205802445FA8F50048
            802BA7097149D9F345A38D2279A013801A8AC036E5C14F7BF29E84F1C66F3A0E
            49086BFEF1DBFD8FEEFD41CAC2E9119BEA78049180D563CAF9C45240F9CA0CC3
            49289ADC597277D5AD9FCC64C5947A0367C60EF5C1141F97C39AFB5D5C8A08B8
            5D64FD456DE39FA63C587CFB2472F19FC78F9FACEF40286733D8038537F65D3D
            534EF0079B7C1617D1C2E480BD2FAF7A5691E557CB7B4FD76F9A6A6A21395F4A
            8A8592ABCDCF5F6B1D62DBE8C6675A7E860B324EAB7F979CF32E2C7A2AA7B5C4
            1B2E1BFE43E1EB94A56F8E6497A6270475F8AEFF6C93ACF196C98778CEDC5FD7
            DD7265F7F16EB0B2FDC43AEA1019E22E12E8DCEBA9FF863F19853B947B1B99C7
            90B3C2330576D3F13DB4CE68CF285BF4C5F4DA2483DCB2CDC51FB4246DBE752C
            476535B0D24791ED47D5ED1851450785858B04DC79F3CC4B4BCE039851546DD1
            41D596F6E33B4636D529FB78A41D082925195F5FDF51999D3BAA6BAF596DC7E9
            08F507F49F0C250017EC7871F8F0195B95B46FD9A49EDD02511BAAD5D8B54719
            53E71E106C42A7D64D2E6EEF804393CBAE36B458466AB5E175EADCDE13E7A141
            94E1BAF4C09A9795D7AF6D031F3F0D0AD1AB5430BB8C8F1FF1B5CB15DA3C46BF
            F8FB8F1B84EA5EBECC799992DFB45DC3B0101F52190CBCA442DA7AF4C6EEFDA7
            0C01C635B3060EEDDA54250B2EB2B28AA07FFC79DB3EF2456DBB7E45EB891F85
            37457E34D75636F0DAB2D77295DECFEB40E3716D0D5107539EAD7D72B81AB37F
            D564F067D15D6BE3B46CE69D0C819CA3566034B44666E5AB84B51C3AA2F4260D
            C96901C6C9551B526F1E7C9AD8B0CA6B7A87C10975DA6D7525AF3DB9C5AA16BE
            F2EB3A326EA081421E9C63686D3E2F9978D253A517496273F6D5A5D70E129875
            529361339AC67B491207A502AEAACFF91525B68AB6A1514B3A27BC487BFADD1F
            C704061B35247EBDAAAF48894E9CDBF8F2DC9EC4B3151EF48ED69FF7A9DBD624
            616DCF2E7C259691111EC763C77760C20C1CEED41279BCB9E3B1F99CCD111D19
            75366E2643AB4588FFE2AA58F7FB86FC8AD44678BD0DE35666BC78B2E8E9EE32
            A1626C50C7697DA7EAA1C65300C9A064E1854D972A937BFB365CDD7962843A54
            963117836BFF07FE5C4022DFE14F3980E520C06BC1FAFDC665EDBA746BE157A7
            61407828F2CA022E4BF0B1DAB62BE9D489B4DFC3A176FD9825758136C8410341
            1028DCA1268A8175FBB353FBEF9D0DF10DDDD06E62EB801813A6646AA0D11731
            B831E7F753A78E0CE8DC6576EB511FC41FCF2B2745E6EF7CBC63D7519C306CFE
            6E5C87567E0C893F2BAA5ABEF1684A6639C97173668E9D393A50E65498ACF16D
            B71490746864D4CDED03742A4AE4EC0BB75D3B7CE86CB7661D7BF46C5EBBAE21
            DB9173E361DEF9DFEEE34EFFB1C35BCE98D445052DD7AE3F5DB878AB6758547C
            42827F4010CED9EE3F7873EAB7FBC5AEB28E1D5B6C9A3F36580351E93C6D3303
            69E52F3B7771AF82ADAAC59DA70C8C688693A41DE3C7DEDA78F9C52DCC5BB7A4
            C9C703EB74CEB549DB1E1CBA9BF1C4DFE835A6795C37FFFA6A1795569A97549E
            13C2AA06C50D61AA9D731E9EB8FE26A9475CB7966151DE3A755E59C6DEC789AF
            AA4A86CA31B3FB8C6940F9DDD53AF6DE3B969872378CD7C675EADE3CBA811FA3
            CDC9CE7D90F136561DD2BD6907AD5EBF27F7FAFA5B3FD10EF3982603A6B71AED
            29414E1672AB4B065FDA687658DA0647FCD879B8CB691D716831CF60A141A1F3
            EB0DC78D744AC6CB6B45CFDFD8CA8B096149C3F8F8667D7C203EE1E9E1138F12
            5913FC367648AF5A4DBD1C805453A45635F6EAD68CC23C82262736EA11151A59
            595E79A13CFDC9AB87A25CDE4CDB64E9270B725FBE58FC606791B3645C78A729
            1F7DA1873A23075F81D26F4FACFE834BEFEDDF6865A7F1A1AA50C47F2C8D6920
            20FECDFFB24024DEE14FE630D94EC0FB7CC18F1B5705D6AE3DB3C7C8089DAF9F
            28339C5AB68959BECE3DCFCF1C7A7821DC236045FC9C28A0F7B3EB30BB139024
            E6415561CE154F8EEC7C7CD1DB277071EBCFBB05373589146355B20C44BBF310
            FFFA8F2737FDFD3C7F683B528733FF1B7FC82D092EF0CDCE5BBB0F1C1521DDAE
            8E8F0A9769C8173889ECC23242AD8DFFA8C3CCC9BDFD3D646431B84C7A369B2C
            63548F5EFD8E7DD79321950312994EB867DFB9F33FDF9404CEDB5F5F22BEA8A8
            A6548C6F9BE8F6CB7E1818EEEF850945ACC49C3EFF70CB91F385A5D5268F5013
            46984B0B09826FDCB9C9B469231A4685A8391743008EA8B660FC9AE35BF696A7
            3530D59ED5E5B3B8E018282393147FAAB8BBEDF4FE02475977FF46B3864C09A2
            439F56BE3A937CE548FE83305E5D9BF20A11354F2A0BC446E113EAF4EA14161B
            06B10BE6F4C3F77FBB5695166632E901340B5565E595A1A1B5B7468C6C5FAB85
            CE22E5F8C20C7BF1C927977FCEBA8BA626243030943066BD4EF7F6099ED67E44
            EBE0582D491FCDBDB1EADCCE20919BDCE393E1B17D8D9C24135885D3F2C98DBD
            CF535F760EAFB7ACEF2886C097275DB8F7EA69597515A9F62318A0D6D20D9AD4
            BFFF2A29D756F9439B71C3EBC70542EC2A5BBA3171F79BA237320BA2832342CC
            42A48F7F42EF61BF5B32F63FBEF82CF78DD6D3538F31C029B78C6AA827F1FB0F
            CF37D037FD71E20F85CF5F2DBEB1D502AC531BF719DE255E0B751A166412152B
            2EECF8A5E44E2FFFC62BBB8C0F5687CB3881F41FE21B92F857FCF1EFF127B930
            6825A4A742D9ACF5DF73241CDBA1F780A61D63300370D118AE7E45556CBC7BE8
            62EA1D9587479BB046263B31B56D8289D6301014541717B94A36DED8F18A16AD
            9CD4DBB3F5F836431A9BC27CADCAA1EE9CD48CE13736B6E91787F864719D9E86
            0FADBF40494610DCF37BD2ADC74F4492367016D1E134503A51EDABF7F46ADB21
            A64984C1534BF0BC5A4763BCD3F5E9922DDEBE7E03FAC575ADC5E0EEB3142852
            29775617E6BE7AF500A6BECA914DF91A5540974EDD1A05FA84FA6B48E5105C39
            C4744E5E7DFF6D656A61E5CD97294C514EEBD8A8360DC2032243D59E2A1C53EB
            252420800B99250D2F3CB899579A1C1DD3AC5EAD1691BC06B22269A02CB8392D
            FBF58B37CF8A5821A1CFB848C143008E6A67E96139C3F6B6802D286F847B0636
            A8A78A080E60FC90B7F5408E92934A9C557F5833AB53529D65A59C175D27BA41
            9DB098BA64A00829802C930084244BD59647CEF4F4DCB7B9F9D901B431A66E6C
            5058DD70DC4F8B29A97C972A9EFD92FC7BAFA090F6319D3D286F9D5346F422E3
            F20ECB8BA4E467F568FD274DBAEA083A09AF7C9A9F92535C44B954613E5EA1BE
            DEAD02439EE4675C4D7DDE37BC5DEBDA4DD556B9DA2817DB8BD352939E998B04
            9A08F2F36B161851CF3B986685126B795A5ED6E5D2740DA16A5CA74147DFE872
            A1F2D8EB0B26BBEFA77D469B33B20EBFB9600AF31C16D23244174E492AC209CC
            1AF6A9356D67CEC586C0675ADDDE1E4420240881560E98E1FFC67FBC2C28391D
            CA7B99C7A00397D304D7842D5F5A3590AEB44E193E26A1765BA368A2792A9BAE
            DEFDE2CCE14797ACA2D317D7C5B7E93BB45E372FB50193A4B97B567519D0FD6D
            D9CB93B7AEE9F51E5F759FD221B8A95AA44D2C5E6965D7ADDC7E30EF5A975143
            E2DA771CE5575BFDA1F37FB2C0CB40AE2619149C0AEE341F1DA52C925B058920
            2502276999A3901E94B5A472EC5FACC2559892202A7B4A16208818AD2E43C137
            0A6C311EE7F59872201CCAEE0442D2C930944C881CAE6645095D42D965CA8623
            672AFB2987F50564A912854BCA5E38CDB84FF1234DC2E3D0063803CE09906471
            CACB493038294211A338D4401917CC4A5691DA8F6350A82001298BC65400AA31
            A0B7B340AB7128A77AD1680B1EA8251C9409DC424B0C6BD7504A6C8842430E8A
            266014DC3B9FCA19524ED040AC8AE6DD87EE05B57B559697D56A96721F01948A
            08879D94FD2087E10C01553A9144613AC04106A31CFEF600B227AF186111C921
            40B392A0255448E233E82BDC6E81C001545E408DA20A9A87829A903111872E1B
            4EB3EE1C1D2D8034266BF99AA41BAC1853926B28809938142A08A58CA005260A
            C37512568A39395C0880042531345041976CA504562565CA56BD2C36C03D3196
            94714C56CE9E12F83F1CF0FBF32FA2ECCED4558E1EC8EEDC9657A263CAFE1F9E
            12254810069A3CBF6E356CA85F077F412D30FC9992E75B9F9C2B3667F66DD93E
            445079E0749D9048522227DE3952CD3A3F6FD24D2C2DABEF171657BF35804651
            64CC023C7CEAF1D67DA7499AEBD3B3D3F4F1FD1A1A980FB09F726C9277412709
            8C1CEF3E8A8B3C2A2929A9AE28BA16D188A93199117980441846D8114361BC0F
            20798CE0A1B285C80089C1A8725999022F25A497D1940A12568D2323E37D4577
            5AB272BC45B61144A5EC0A20184680C85148A2C491241A0C77AE8FACC2944C00
            A89CC4422E42490941BC090882E479892629A5580CCAB284E332E6CE9E457683
            01B5A424CE410CC7700A17589652A944414031B6724293C05D9CC0D0C8DE3959
            46538363CA8179A87412E2A25C73F05839AF4A52142B219F2592C049C89C724A
            9AF7E0D1100099A0384970D004324B3DEA8688E493FB6CBD889CF0BB455EE588
            3C8E2B8A5F1425772AAF13831A0CD238552CC9C8451830A5C54E0CB7C9828F02
            05D28523F8A3C6E00412FA388EA3F621C090A88118547683251E43319A848984
            56D9D29595A3D8A80A341A4A153551A320922481FA458A142A9E4098C55D5049
            0D4036A352D238FE2BFE24E5D88BB2F247C9EE2435085360C5A1FBE7773EBB44
            AA31E487DA9882BF6A33BEB1A98E5610F255E273B6304B282BB357FC7CFA90AC
            5779787A6901F582B488C596993EDD470FF8C893D478421DCB92A8E29389A9F3
            97EC93543A7B65D6C4F143677DD1DF87FA2FA1D07F3C945D4780AC8210443437
            CA64124A5E04149C024DA28880256942399B2EA96560271911728A12C4295E92
            041C6324E41FC92286514BBC5116D0F460B80AC5610E0970221B20217C218822
            AB936C0C83E446A028109492F42B0A224728476F9539008A68711FF355563FD0
            572E9CD2A2111705E5D83982AA1AA19617480A815A540000116C785949536130
            77E61F9A3AD6E5A2199A6539464573024F90CA71608167351481C236841BD451
            0441F450C08C2BBF1125D1BD3FA91CC444575258358D5081D350F444F6E742F6
            A06271C0D108CC8211F507671414286B17A248113470679C285A5E86022FD234
            A5E4AF02270E1859444EA448862AA4D6DD573921B002C95BC92F21584C225C0E
            17A3D5A16620BA96DCA9CC68E4A02851248293922C20703CC568152E578C1B59
            0F81C08760A75231D09D3DC3F38292828B531485A00F690A3954595959C0D4E0
            DFF84F0035C7AE305A92DDB9DBB09814EE14BF9AF3DBD60A87594560413C36B3
            D3F8010D7B78B8F02A12712CCC142AF6DE3E9E54986EC65C84DDC948B8CD087D
            18D3EC80BE833BF7442CA1E26882648A4B6CEDFB2D207546A788845FC5F44923
            C6C5B7D3D31F4C3F42F843BD85161BCFB23C621D4E12BDBD0DA4721C4A46AF38
            720C5070E70DA820AEA4C6E7BD95FD02B58CD69D0526A1E219405629798592B1
            263954C690277720C499CB0D12C63979D6D7DB43A342836503820FB27BF78D10
            24A0644728092B8AF796C99A842B65719744B42A28BB0F6E6420FBE159A1BADA
            EE6132A0B9574E0B42850251DD9C801334A51CF0813594C0518829910F523234
            80B28AAAD8914C2AE401DC89A18A79B971AED08084A60077FF87BCACACE4F490
            B85DF1502CB21A7F972CD95897D64442894576C848A82F08A50821A202625C41
            03A22E4942AF04CB0A1CC7EA7506511448E4CA11A5126A992893651A8726543B
            2FDA11FF51988F883C0281943F850C88A0551C7215045E69713A1DC83EA9005F
            2F49E011FE288A56E809F1A29BC9D01B843004715EE0D56A0D4591A220318C32
            682800B0589C7EBE5A1AF553394B82A8548DFD1BFE5CEFD3EDD44A3E02D25D72
            25E57AEB2A5970ED60BEAD38BA7E3D4DA5ABA9676CE7A8368D6C7A808802C790
            04C874556E4AFCB990B2B70E8BF675B1C88D791B3D3A04350C32F9A8081526AA
            102BDFB9977FF4FC0DDAA4CDCCB556663F5BBBF49B764D83FE5B6EF23FFC2F44
            A6C91D3FF6F0D6ADE750F6D01AF06E3D1A77E9D6802159491219E0A5E4874180
            84AD08ED6896BE9EB17DCAB431B523BD70B7B1238002CA81080E97754AF62E90
            D10C01CAE9B4B3CB97DD335BD27526C9D73B60F8C7DD82828D846C40FA47EBBE
            6D03326C5E542C9854D2F694C140CC829380E3EC4A063169904425851341EEF9
            B3B4D3A7CE4F9934DAD72700CD0B220B5C610A0950A422D924C5DA65E5DCB992
            6C2F29F962324522078F800249E5C0B8929F442AAB8E08734A810AFC2509F107
            C3303539BBEE3B28F0386645252B77F8104DC96F8A7F3A7D6ECC8401C1FE7E68
            F675901665E41A45841205FFEE0CC01A1E922498FE26EBCA951B93268D55AB95
            14245C013C89D34E88C487C42859CCA887048AB0D54808207A550ED022BDAC88
            312C27B7E0C091D3B9B9F9068369F6AC2941015E34D2015659A77593AB3BD943
            D9C711B1B4B48C3B776EC7C7C71B8D2AC5292B42177F9E5E72E5CAD531A3FBF9
            7919D1D0D00A8BE2FF4C3AFB33FE7D977EAA76A7202063B3308E2A5C3A57F1BA
            18AB7E9299042DD608FF885EF57BF495BD919DD1682625915731E9D5656F9DB9
            2D7DEBFA0A0EC46FA86A12D3282BCE1825F20CF249F79E96EC3A7D95E36C0D1B
            B76B112EB76F5EDF5B230242033E74FE8F1325072BADDB7438372FBF5FBF5E49
            C9A9AF5FA7AE5FF7234352E566A786263C8C8CD1405573B0B4BC9256C16103E7
            6ED9BA30A6A17F717135CF619E26AD871756657542516777D81935E1E7A34591
            A9B5CA397CD88E966D023A76ABB771C3C94183BB8C1DDDAFA410B7553A82BCD4
            DEBE14CB2A5ED9EE70712C1FE0EF6BB5F21E1E4845E082C4A2B165215D6E76A9
            68C6D79BBC7DEBF1AE5D3FAF58F6A59F9F7F41A18522706F2F93468B555623B2
            21AA2C9CD148E9B4249A92E2123B4353484879185524012ACCD52E963798BC35
            6AE070C895155524450605A22009B73B208F1E9C53A7A34B4BAC469D97BF2FC9
            9048FC29F4264ADA5B8FB2BFFE76D1D67D4B037CBC2A2B6C8CA0F30B60285AB2
            DB95EC719B9DF5F3559795B138417998488BA53A3F3FBF56AD7A48A20992C361
            934D7AADA71F282F652BCCA25AADF2F2A6299560ADA4D46AD16CA9F6F1366A35
            B4A40C3E58B761D78B9457A3470E0284BA41FDFABE3E064B9560AB163C3D5526
            453AC2A262872C491E1E2A8BC59E9F5FD220360A39FAD4D48280000F6F6FFDC3
            E759BB77EFFF71FED4F0201F042C5249CCC3887FC31F0FDFDD2342D930477E4F
            842E355F24DA7EB3646CFBE350B1B3821091172762C2EA9DE83C597222C9A7A7
            683D624D07922332AB97247F8197285122918860449720F1C80834D7EFA52D5A
            B53BDBAE6254248AAE46F4AA3B7FF6447F35074803F6C1F35732E024B07EDBC9
            ACECF4B973A73D78947670D781CD3BD7FE7123E9ECAF9720B4F5E9DD65E8D05E
            877FBE7BFEE2B1E050AFF497C2EAB5B32BABF30E1E3C5A6D11BA761E34E8E3A6
            1B366DB1566025A5B9D1D175BFFB7EBA8791AAAAB28F19B57FECF84E0307355B
            B9EAB4D39AF7F98CD17366ECC4442ECCDF67C6CC84CB576E3D7D76DF66B321F3
            9E3C696A62E2D52E9D3B47C7866CDEB275F0E03EBF26263D7EF488A454B3664C
            8772F5D62D3F2F5A34ADB8B86AD3C6ED6A35D1B861A34F3F4BD8B4796F45A5A5
            B0A82832AACEF419A39F3EC93C7EFC98C968745A6DD3A74DCECBC93CFBEBAF3E
            7E3E85E5CEAF677D9695559A78E54A5555755C5CF7FE7DDBAF5EBDB7A4B420C0
            DFAF6D9B767FDCBC519053357C58DF51099DF51A1ACD1492307F3CCC5FBC6ACB
            E2B5B3EFDCBCF6E2F9ABBCD7B651A3FBB469DB78D1A25568764BCBCA1B376E9C
            9B936377B05F4CF922244473E0C0F9848451CB972FD719E4A27C7BFFBE23C68E
            6F73F4D8A57BB792CBCDD64FC60E0909D76EDD784EC5E045E5A9BDE3BA7E31F9
            139C5452D4972CDFF6F479DA82F9DF8487FB3214999551BC69E361737991A797
            E7E4C963388E5FBD7A1D62E5B19F7CE2E5ED7FFDDAF5E9D33F5FBC6455A5D982
            DA3073C6242F3F8F9DBB8ECEFF6E727880B7FBFE0DCA314D02FB17FCA1984A49
            B82794438298FBC63F0E159F27572FBAFFD3B9F4DB2C21303A06DA6D6A11CEA9
            D72BAFB8CCC73BA45B6CA7109F105CB9558FAC96A19708AA48D10180CDA5799B
            F6F6E4C9C48888BA4F9FBCB9959CE7D0F823772D495C1859B4E2FBE9033AC4D2
            8A8FFC800376B877A5376EBA7EFCF8A55A61CDB3F3D3FA0F6C37655A17248A0B
            B2B36E5E7FF6F441D5DC398366CDDF336952BFD66D1B7C3C78E9CA95536BD7F1
            2C2B297AF5AA78E7B60B6BD68E5EBD715FBFDEBDFAF7683F66D4F479F326B66B
            1353526EFD7CF4E19E7DA35BB70B59B7E15C6CA35041AEAA2A354D98D077F386
            036D3BB4B1DAAB4A4AB3A74D1DB76DFB31934167B33968DAA3458BDAE72E5CEE
            DCA5DDFA1DC7366F5AFACBC9C4FCBCA22183BBEDDF7BFEBBB9F14B571CE9DCB9
            458FAE4D277C3E7BC9B2E50776EC1A35626860A869EDFA63E33EEDBDEFC0B596
            2D22070C88FB62F2824F3F1975FFCE8D164D9B376B15FAE582FDA346756FD1BC
            415161695252E6899FCEAC5F377BD1C21D53A60C6EDBAA5179395B55694E4E32
            5FBC706AFFDEF91A35492A912F76FD7EF1E2E55B576DFDD6DB809514991FDD2C
            799EFC6CD294118B162DF9F6DB194545856BD7EC4CBCB277FB8E93555562AF9E
            CD8F1D4D1C1E1FBF7CF9D21D3BE73F7B9ABB7BE7D9D3677FB0D9F8A202F3DDBB
            05AF5EDF1D39BAE7A20547F7EF5BFAE0F18D93878F1C39B099516B9040CD2BB4
            AE5CBB272323A775DBF6A3E3FB1C3B96880171EAE4FEDB775DC0549024D5776E
            DFDAB471BE87A7FEFAF5B7172E5C5ABA78BAD5C65756149FFEF5BAC3013E1FD3
            61C78E9FBEFD765278801785BB9369C0BFEFBF014E019FB2ADEDCE59C545E064
            847447C93789BBEE96A772286C179CA49A663030DCB7B10B627752923BD56A3E
            BCE3C07A1EE13A88330266E0411E265821387E2AF3ECA9B355858513A6CEB894
            7827A3A8A21A37C822ABD1323A7BEAAC09832727745213FF5FF843FCBA62F5E9
            BCFCC28484E105A545070F9F99F5F5D8D4D76F73B20B9098C8CECCFB76DEE86F
            171C59BC6472AD5AC67E713FACDB34E74DC6B3A4E7E9DE5E2189BFDD5FB37EFC
            81C3BFF4EB15D7AF6BC384E1F366CFF9AC69D3DA568B6BD4D09D062FC93790B1
            D9E5C953871F3CB6CB6E090D0909CECE79D52DAE03C7DA4A8B52E77C3379F9EA
            6306BDB6458B569B37ED4B48E8F9EC456A5454F8A65DC77BF7EA5354548C34CD
            E0811DF6ECBE306776C2F4E9CBDBB4694912B0C25C3E7ACCC813070ECF98324C
            67D4AD587372DCA7DDAFDF2ECCCA4A6FD62CE6D42F17D7AFF9F2F2C5DB250555
            75EA859DFBE3C9DC39090F1FA71615DA91BA4F7AFA68FD9A395BB79E18FF699F
            C888C0A3477FAF30DB2551FBE64DD2C17DDFEBD5EE94760CBBFDA4E28705EB16
            AEFDE6DEEDBB15E55668319694674C9E3A62D5AAB59B372FCBC9CEDEB071DFE1
            834BF6EEFDA5DC2CF78C6BB47FFF6FA3468F59BD7AD5DEBD3F3EB897B96BE799
            DDFBA61D3972DD6145A4016DF6BC5E7D5BECDD99B86FFFDC5BF71E9ED8BB6FFF
            AEF56AAD46B953870C8BCA9CB7EF251F3EF24BB7AEDD0BF20B5A358F183CA8DB
            8953371F3C7B337AD480DD7B7F9144D7B0610304813977EECC975F4E3C70E00C
            4DABF3F30B8C06D3E7F1ADB66F3FB2F0C7193E1E7A2D43A1E294FBD4FC9BFF45
            025072DF5CAFE6A66084002C98BD0C6717DD3A74252749D06288BD588C27CCE5
            63BB7E9C59597E2B25390AF7ADAB0FFAA4F3A076FEB11A9650D940A6465CB266
            DF85440B2BF1FE9EC6BEBDBAA565175DBFFD94F00A166D164A459AA4BC1FBE1C
            15DF3BD6A0FA2F5B81FFF1402219E16FC9CAE31274CC9835F6555AC5B42FBEFD
            ECF3A9674E5F58BB7AE2B3A7AFCE9C4BFCF187C9B3BED9376DDAE0B66DEB0E1A
            B0FCFB05D377ED5E33F6D34F8C5AEDE21FF62C59397ACFE1533DBB76E9D7A5E5
            A79F7C3B6FDEE78D9B84A3A06C62C2FEB8BEF57AF669C068D56ABD7EF99AF5D5
            95DE53A7F58498AC37992E5C7C5459FE66DAF4092B561FF5326A860E1D3879CA
            022F6F635CCF561E9E5EABD66DDBB87E1EA1AC04920579457BF65C5AF0C3A8E9
            5FAEFF7870D74EED634559A5D3AA16CE5BF5E3BC71844AB378D9B1CF27F73D78
            EC7145457583868D3A750A080D0AD8B4EE348A9043C2821B778EA14866E1B74B
            D76E9857522A2C5FB67ADDAA797BF79C1AF671776F2FF5F7DF6D9E3E75A404BD
            0E1E38BC7ECDA4006F238A8B5D0248FC2373C3D6835FCC1A7170FFA9195F8C60
            CBC453676F7F3E65D88A15AB366D5C9AFE266DFB8EA3070F2E3F74F0D7A26257
            D72ECD7FF92571F090C1DBD063FB8F4F1FBE59B1E2C0C6AD93B76F3D3B32FEE3
            C202F6EE832B2347F75AB3E2E8BE7DF3FFB873F3E7BDFB8F1FDAAED268381156
            59798D0E77BAE4454BB6CA90F2F5F1F134E947C677DB7BF08A85E3274D1C5855
            653B7BF6EA9B3745F123065DBE720319EAC913BF2C5D3AF5D6CD27E919E609C3
            9A6DD97460C9E2AFBC3DF56A9A566E830709EC7FE08F2700EF5E1446C19BCA7D
            E3BD6A8CBF9893B4FDEAD1BCCA6215839598D47E0161C363E3B625EEA8D60060
            91F4A2D647348E6C36AC7D448C2ABF6ACE912B8FEFBFA674F535B2CD5155DCA3
            555493160D8E1EFB0DE95424751D95E6B183DB7FF76542A0CE9D87F2A1F89795
            3919836BD79DB8F8DBADC0E0986A7B4554BD9051E3FAAC5AB3243CBC764509EB
            A826BF9D3761FFFED31596029546CE4E030B177F75FAEC2117EBD2A83C9F3C7C
            BB6EC3D4CDDB770E1E30A45D8B1673E72C1E377660EB96915596CA69630F0F1B
            D57EC0E0F6CAE20C9492D39E2E59FAAB9F9F1FCDC0FEFDBBA6A6A5DAED953367
            4C59B97AB741EB3161C2D0CD9B4E5DBE7265FDFAF9A1A1C1D3BE9AE362E5A8C8
            3ABEDEDE0D6222F7EEF969FE82C9776E275FBC70A95EDD288A22060F1E7060E7
            CE195F7C4669356B361F1F39B6FFDC85070383C219B54EAF550D1ED866C7F6D3
            B82C19741A0F6FEDF061710B176EF0F6F642B14B6A4ACA86750BF6EC3A3A6654
            5F3F1FE3CC198B1BC4C6149931AEBA64F3CE79460DF6F4C9F3EBD7D39EBC48A7
            35F4173312B66F39E8EDE12B98F5B8DA9130AECFCA95AB77EDDA9C969AB669F3
            CEE3C7B6EEDD73BCB4CCD1B367877DFB7E4E4848D8B871FD8143EBAEFF9E7CE2
            A7CBF3E6C72FF861736CBD762525253A033E2CA1FBCAA57B776C5FF338E9EA2F
            878EEFD9B985D1689C9C7CECA75F1F3C7DE170B1790585DF7F3F1BCAFCE62DFB
            62A363B3B3333F1D1F9F9B6B4E4D7B6B369BA3A2229A34699178E9F28081FD57
            AF5EDFAE5D87574949A1B56B8FFB38EEF0A1C35F7EF979B0BF09D19E72AB195C
            F3AFEB7FC8FF720460DDABD3487C6A945B24714E522E245DD7B21EA417663A6D
            553A4340C7267198B9EC7EFE8B4C4B7E8983F5603CBDB581FE4464456AF9939F
            1F2723CD6E3421A5477315E101A661716D7BF7699D9563FE35F12E45533E3E5E
            63FBB78908605450C055FA0FC6BF12546E41939252F436239FA48D848A6AD030
            4A6F22DE66A6A7A6BEF1F30ED730FAD8E8D06A0BFBE4D903AD9EC68580068DEB
            38B98A470F1F78987C19D2A35E038FACAC9CB090281F4FC3C307A9F5EAFAFBF9
            10ACCB7E2FD111DDD8CBCB8FC6288D280B80723C7B5E9D9191C13054974ECD2B
            2CD50E8725BA5EF48B97192A5A03A078F2E40DB3B964D1E2393A1D5E61B1DEB9
            FBD45AEDE8D2B91D43496FDF1636695C17CAF0D9B3D7A5252511B56B47C7D44D
            4B7911593B84D41A52DE16F887788F99B474E0E08FEAD4AFB7F0C7B543070F7E
            F2E87E87D6ADEB44782E5FB26AE68C910181B53333726B87075457D99A36AA93
            93951F12E4EB61D4E564173E79F438A2414B4170346B14ACA144B3B9EAF26F49
            3CA07AF5EBA1F3600A730A9E3F79191DD258C01DE17503DEBC7983622C514423
            F6A663C7E659590548E48585F9666414D60A0F7FF1F2659BB6752D95C2EB94DC
            CEDD625EBEC84D4FCD4792C36052F905E9D35F17B76A196DAE2AC8CF2868D9BC
            A5083192C652D3B39F24A7D12A2A2434B271E35AA284BD7CF1263F2F2F2A2AB2
            6E54ADA2E2F2A4A42492A4DAB76FC1F354595971FDFAB5EEDC4EB2DA2CBEBE01
            1E2663A49F212D3533B66184414F025959F4FC5FEBCF40002C8A64DD21298ABF
            B50AFE781E972B69B61A722E919504473816E8891BB06AB642ED2A10CD65024C
            2B2978929CF122A9A2F8B5D95061B2FA07A93CB50DEBE83B3709681066685C2B
            58AB518BA2586A732031A1D1A83D084EA364823A00E907B00F9C7F46132FF24E
            82D4C91043EE402631418494721353DCE562352A9A6725958AC4644C90ED1485
            435E51CD04A5DCD58975F16A5A0D48872802516008A4DD7188F41906CB91CAE0
            2D412A032A8C95950D600BA9E204D19F260965CB0588E852190A98724B1625B5
            F4C8E1F3172F5C9F38694CA7CE4D705C499426948D32200880A6DEDD66132243
            5136A36492C42459A2080CCAA240AA58A82C297CB3F4407E5191CEE8515A5CB9
            E2FFB57376390DC3301CAF937E3104E2097181DD8967C413E7E04670010E8178
            E50E88B126714C9CB449DB4D0C3469135AFEDA4BD6CD731CAF4DEDEAF7F8F0FC
            F4F2F6FA2EF0E3FAF2E2FEEE76B9BCB1C815D51EEFE7365EC6E325A94065545D
            9525825D3552BBFD93D157C6037D3458B787B60ACEDC0405EADA96522AA585E0
            9D35F5F539115085DC5E012BE4A735B5C5A66A3B773134AA442CEAD69070C61A
            6E364977C239B7DCDD136B43752B98632C8AB542287D5BC673569D6B5518F89A
            099A9E3F149E2D109E7BE75E62855CAB660EEA9790D2030EDACD0760227F3732
            8A07F05FC0C9F457497F9020D164F928B789B4319CDC81C0CC371550957EB961
            0278264A58C39E4CBC13404991320C898C377496B80045C13B18A1EAC288A867
            E3449EDEC8711FA54044A3385B8A78C211FDDA9BD7DA4D119B866FD9E7C6A6EE
            CEFDEFB16B85D2A6EB3AE4EC2C178B56F3505944B727A9DCFFE6A7384C6C425C
            99D17C21CE62F6C1E4E8600A86F0C374B1B768B030F896E8B8C5C6C66993BB4A
            317C935F1A1B4C6FA455FEBBB67E772758FC04657D5BC0179D80064929F7B7FC
            DF95F3EF100A811A47864FDE395039FF0EA659AC729482F6CABFACDF2BE7DF56
            E5FC3B9C62A873F245E5FCCB3AA672FE651D53DF6D5BBCC5683CD2E400000000
            49454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Top = 10.779530000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 21.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Rujukan')
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 44.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 44.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'FKTP')
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 67.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 67.133890000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kabupaten / Kota')
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 21.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 44.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 67.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 21.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."noRujukan"]')
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 44.456710000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmPPK"] ([frxDBDataset1Cetak."kdPPK"])')
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 67.133890000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmDati"] ([frxDBDataset1Cetak."kdDati"])')
        end
        object BarCode1: TfrxBarCodeView
          Left = 495.110607000000000000
          Top = 40.677180000000000000
          Width = 79.000000000000000000
          Height = 30.236240000000000000
          BarType = bcCode128
          Expression = '<frxDBDataset1Cetak."noRujukan">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 97.370130000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 8.897650000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kepada TS Dokter Poli')
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmPoli"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Di')
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 26.456710000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."provider_rujuk"]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo28: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Mohon pemeriksaan dan penanganan lebih lanjut pasien :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo29: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nama')
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmPst"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Umur : [frxDBDataset1Cetak."umur"] tahun')
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '-')
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."tglLahir"]')
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Kartu BPJS')
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nokaPst"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 415.748300000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            
              'Status : [frxDBDataset1Cetak."pisa"] - [frxDBDataset1Cetak."ketP' +
              'isa"]')
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '/')
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 566.929500000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."sex"]')
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Diagnosa')
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 49.133890000000000000
          Width = 188.976500000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmDiag1"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo49: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Left = 415.748300000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Catatan')
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Left = 566.929500000000000000
          Top = 49.133890000000000000
          Width = 173.480427000000000000
          Height = 49.133890000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."catatanRujuk"]')
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 619.842920000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo53: TfrxMemoView
          Align = baRight
          Left = 37.417347000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."teks_tacc"]')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 665.197280000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo54: TfrxMemoView
          Align = baLeft
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 1.779530000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Atas bantuannya, diucapkan terima kasih')
        end
        object Memo56: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 324.661627000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Salam sejawat, [frxDBDataset1Cetak."tglKunjungan"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            'Tgl. Rencana Berkunjung [frxDBDataset1Cetak."tglEstRujuk"]')
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Top = 60.472480000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 60.472480000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Jadwal Praktek : [frxDBDataset1Cetak."jadwal"]')
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 83.149660000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 83.149660000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            
              'Surat rujukan berlaku 1(satu) kali kunjungan, berlaku sampai [fr' +
              'xDBDataset1Cetak."tglAkhirRujuk"]')
          Formats = <
            item
              FormatStr = 'dd mmm yyyy'
              Kind = fkDateTime
            end
            item
            end>
        end
        object Memo63: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 83.149660000000000000
          Width = 324.661627000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."nmDokter"]')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 570.709030000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxDBDataset1Cetak'
        RowCount = 0
        object Memo64: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telah Diberikan')
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo67: TfrxMemoView
          Align = baWidth
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 551.433427000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1Cetak."catatan"]')
        end
      end
    end
  end
  object frxbrcdbjct1: TfrxBarCodeObject
    Left = 464
    Top = 248
  end
  object frxdb1CetakNon: TfrxDBDataset
    UserName = 'frxdb1CetakNon'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nama_lengkap=nama_lengkap'
      'tgl_lahir=tgl_lahir'
      'mr=mr'
      'idxstr=idxstr'
      'nama=nama'
      'penyakit_panjang=penyakit_panjang'
      'pulang_tanggal=pulang_tanggal'
      'provider_rujuk=provider_rujuk'
      'poli_rujuk=poli_rujuk'
      'catatan=catatan'
      'alasan_tacc=alasan_tacc'
      'sex=sex'
      'dokter_panjang=dokter_panjang'
      'tindakan=tindakan'
      'umur=umur')
    DataSet = dataRujukan.fdQ1CetakNon
    BCDToCurrency = False
    Left = 456
    Top = 352
  end
  object frxReport2: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43384.950257662000000000
    ReportOptions.LastChange = 43384.950257662000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 368
    Datasets = <
      item
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 86.929190000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Top = 10.779530000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 21.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Rujukan')
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 44.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 44.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'PUSKESMAS')
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 21.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 44.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 21.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."idxstr"]')
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 44.456710000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."nama"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 74.370130000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 8.897650000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 49.133890000000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kepada TS Dokter Poli')
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."poli_rujuk"]')
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Di')
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Top = 26.456710000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."provider_rujuk"]')
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo28: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            'Mohon pemeriksaan dan penanganan lebih lanjut pasien :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 105.826840000000000000
        ParentFont = False
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo29: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nama')
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."nama_lengkap"]')
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Umur : [frxdb1CetakNon."umur"] tahun')
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '-')
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxdb1CetakNon."tgl_lahir"]')
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Register')
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."mr"]')
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 415.748300000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Formats = <
            item
            end
            item
            end>
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 529.134200000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '/')
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 566.929500000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."sex"]')
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Diagnosa')
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 49.133890000000000000
          Width = 548.031850000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."penyakit_panjang"]')
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 109.606370000000000000
        ParentFont = False
        Top = 718.110700000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo54: TfrxMemoView
          Align = baLeft
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 1.779530000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Atas bantuannya, diucapkan terima kasih')
        end
        object Memo56: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 324.661627000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Salam sejawat, [frxdb1CetakNon."pulang_tanggal"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Top = 60.472480000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 60.472480000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 83.149660000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 83.149660000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
        end
        object Memo63: TfrxMemoView
          Align = baWidth
          Left = 415.748300000000000000
          Top = 83.149660000000000000
          Width = 324.661627000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1CetakNon."dokter_panjang"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 551.811380000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo49: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telah Diberikan')
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 548.031850000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."tindakan"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 105.826840000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 113.385900000000000000
          Top = 2.440940000000000000
          Width = 627.024027000000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PEMERINTAH DAERAH KABUPATEN REMBANG'
            'DINAS KESEHATAN'
            ''
            'Surat Rujukan PUSKESMAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 86.929190000000000000
          Center = True
          Picture.Data = {
            0A544A504547496D61676594330000FFD8FFE000104A46494600010100000100
            010000FFDB00840009060712131215121210151615151918151817151516151D
            1A1815181B1E1518191F181D2822181D251B1F1821312225292B2E2E2E192033
            38332D37282D2E2D010A0A0A0E0D0E1B10101B2D2520252D2D2D2F2F2D2D2D2D
            2D2D2F2D2D352D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D
            2D2D2D2D2D2D2D2D2DFFC000110800E100E103011100021101031101FFC4001C
            0001000105010100000000000000000000000103040506070208FFC4004F1000
            010302030403090C070605050000000102031100040512210613314122516107
            14233233717494B31516344252556273819192C2355354A1D1D2E2244372B1C1
            F06482A2B2C317254463E1FFC4001B0101000203010100000000000000000000
            0001040203050607FFC400391100020103010604050204060301000000000102
            030411310512132141510614337116225261913253243481D11523A1B1C1F042
            E1F143FFDA000C03010002110311003F00EE34028050106A3A822A39A6492291
            4D6A40A90280500A0140280500A0140280500A0140280500A014E608AC7E6D09
            24564B9104D48140280500A0140280F2A150D641CA31DC35DBBC62E9817F74C3
            6D32CAC258794812A107498FDD5CCDABB41D9C2324B39365386F157DE0B9F3D6
            25EB0AAE27C4B55E90377010F780E7CF3897AC2AA7E23ABFB638087BC173E7AC
            4BD65551F1255FDB1C043DE039F3D625EB0AA7C4957F6C7010F780E7CF5897AC
            AAA7E23ABFB638111EF05CF9EB12F58553E23ABFB638088F782E7CF5897AC2A9
            F11D5FDB1C044FBC173E7AC4BD6154F88EAFED8E021EF05CF9EB12F59553E23A
            BFB638111EF01CF9EB12F58553E23ABFB638087BC173E7AC4BD6154F88EAFED8
            E021EF05CF9EB12F58553E23ABFB638111EF05CF9EB12F585547C4957F6C7010
            F782E7CF5897AC2A9F12D5FDB1C088F782E7CF5897AC2A9F12D5FDB1C043DE0B
            9F3D625EB0AA7C4B57F6C70111EF05CF9EB12F58554FC4957F6C70113EF01CF9
            E712F58551F892AAFF00F30A822C1EC15EB2BDC3A312BD792F5C842D0F3EB524
            8009E1307971AEA6CBDAAEF64D358C1AEA4374EC0815D9C73C9A4F7520500A01
            40280500A020D01CE58FD3D7DE8F6F5E63C4FE8C3DCB16FA986EE95B4DDE05B5
            8B74BA5E5B80E771D4C069B648808501F1CD6FD89429CAD62DAEFD118D693522
            9DEDFDF321F5BD6964DB56E94294EAAE6F0214A7121496DB812B5C11A47123AE
            BB1E5697D2BF08D7BCCB11B4579EE77BA7DE16DB924809EF8BA2B202CA0AA01C
            B94281D4AB953CAD1FA57E111BCCCADCBD7C9614F77B5828A18172A6937775BD
            0D11398A5500703CE0C10269E5A8FD2BF086FB2D2FF15BD6AE1CB6559D9E76ED
            557AA22E6ECA776899483C4AF4E111DB4F2B4BE95F8437997171757C8B655C8B
            6B0565605D96937775BD0C94E6CD95503413CFE29024C53CAD2FA57E10DE652B
            CC46F1916AA7ADEC1A45D0252B72EEE92844379C07547449234113A9029E5697
            D2BF089DE65D3EEDDA5E66DF2616A75E3D1426F6ECA82774B7378A1121052823
            3471527AE69E5697D2BF088DE67866E6ED6FA6DDA4618EB8A438B86AF6ED4121
            A28042B4E8925423CC7853CAD2FA57E10DE660317DB1BAB66197DDB0B701E5BC
            D840B8B92A4AADD795C0AE96589E04134F2B4BE95F844EF333F64FDEBACB4F25
            8C381799EF86DA55E5D8714809CC6131A90089D63B6A3CAD2FA57E10DE652389
            5C0B66EE5C4E18DA5D683E843B7B76859494E6800882AE5A189E753E5697D2BF
            088DE65D4621BE658EF5B1CCF216E24F7D5E65486F212166242885A60453CAD2
            FA57E10DE67AB24DF3894AB7187273BAF3084AEEEF12A5AD8716858488D75428
            8ECD4C6B4F2B47E95F84379988C231CBEB8B7B9B8461F6C05A958710AB8BA0A2
            5B12BC904A55001F8D4F2D47E95F843799EDAC5EF956F69729B1B52DDE388650
            7BE2EE50A7579105C1C866F939A9E568FD2BF086FB2E70EBDBD7428A98C3D948
            7D76A92FDE5CA03AEA1452437139B50409827AAA1DAD2FA57E113BCCA7B23B46
            BB8BD7AD1DB669B55B80BCED3EF2C1297DA4692A8292167FDCD53DA36F4E36F3
            692D3B233849EF2337B5FF000CC27D2FF2570BC31EAD4F646EB8D0E942BD9151
            684D00A0140280500A014042AA1839CB1FA7AFBD1EDEBCCF89FD187B962DF534
            FEEE564EBA9B6DD34E390E3F3910A544B76F130349FE3577614BF848FF00531A
            DFA8BDC7F6B937A8B9B37AD6E05B2996F70B16AE95A5F4092A508D04C0D07C5E
            D35DAC9A5E4F0ADA3B5DC9B1EF1BDDC0B416A97CB6E892003E48234257A95CC9
            8A650CA2ADF6D432AB453459BD59559A6D4B02CC84EF12880E67500A80A2349F
            8BC29941732DB13DA061D439786D6FBBF5DB236259EF750402B073399A35198F
            5CC01A0A65771865962DB58FAD1696ADB2FA6D4B0C3176AEF45870A13943C942
            8A4920A730FB6995DC619EF6D7685BBEB4BC6136178DACBADBACA96975616504
            20F472F811BB07A3C248EDA6577270CA0D6300633697DDEF75B966DD2D2CF7BB
            99B30B77106046BD250D6995DC8C33356FB44D357A9B9DE622F0DCDC36779665
            3BB2E29A2D846440912954933C0532BB8E66B1DD0F197310B5B348B3B84BED6F
            14F8DC38139D6132A498332428D32BB93CCD970ADAF4A18B5B55DB5D0426CCDB
            BCB16AE6743A12909C840929F1818239532BB91CCA5758C34E61ECDAEF3116D4
            D5B061486ECCE5714100748AD0A20488D08E34CA05F8DB9482E0169730A76D94
            93DEAEC84250D26E39691BB1039D32BB8E654C376C596DA405377C0B77174F94
            22CD4A2E21F79D5A112B1D1252B499046BA4D3286196181ED55B5AA6DDA46197
            790BAFBABCA87521A0FACC2326487806C8113129D2994342B60DB60D5AB5676C
            9B5BB718694E25CCD6CBCC129595DB3A3400A8108247293D42994496186E36CA
            C8DFB176D9B7BABAB86942D0BC975BB952E52A4A93D15655409D01833D5190B9
            91B10A53B8BDEDD26D5D61975B4E44ADBDDC787B7006832CC051804D50DA6FF8
            69FB19537F3236ADAFF86613E97F92BCEF863D5A9EC8DF71A1D2857B12AAD09A
            90280500A01402805010680E72C7E9EBEF47B7AF31E28F461EE58B7D4CDBAEA1
            2A568AE224CE5921293A6A27A396B95634AF9D24E8CB1136494252C3205D23AD
            5F8C7F355D74B69FD460A29302E53A78FD2504712449980615A4D69ABE7E941C
            E727C8952867182A3AB09E217C35214635E44935A2D6ADFDDFCD4E6F089A9182
            E678EF847D2FC7FD5577CB6D2FA998669761DF08FA5F8FFAA9E5B697D4C6F52E
            C3BE11F4BF1FF553CB6D2FA98CD2EC3BE11F4BF1FF00553CB6D2FA98CD2EC4F7
            CA3E97E3FEAA796DA5F531BD4BB11DF08FA5F8C7F353CB6D2FA98CD2EC3BE11F
            4BF1FF00553CB6D2FA98CD2EC3BE11F4BF1FF553CB6D2FA98CD2EC3BE11F4BF1
            FF00553CB6D2FA98CD2EC3BE11F4BF1FF553CB6D2FA98DEA5D8F4D3A15119FAA
            7312387585686AADD7F885B478929BC194784DE87971E482A07392989D4C7484
            81255C4D4DBCEFAE21BF0931F2A961223BE51F4BF1FF00556FE16D3FA87C9A60
            6F9063451129E79A0E60124C13F1A35AD7734B6870DB9CB9750B8517A181DAFF
            0086613E97F92B3F0C7AB53D9115F43A50AF64565A1340280500A01402805010
            680E72C7E9EBEF47B7AF33E27F461EE58B7EA617BA5233396E98924BF034D494
            DA81C7EE9EDAD9B222DDA470CE9D8EEC6539CFEC5F1EE5A9DC66DEF86898CA8D
            DCF1CB119B8699B371D6390ED3A29475E663FE298A9FA560B1EE7E8012E881E5
            EDF8766F7EFAE6DF67CACD13B4527520E3D519EDB8692AB709500525FB6041D4
            11BC3553C289619C7BE788BC18EF70ED7F666BF027F857BC54E3D8E071259D47
            B876BFB335F8134E147B11C59771EE1DAFECCD7E04D4F0A3D87165DC8F70ED7F
            666BF027F8538505CD8E2CBB9E5CC1AD4027BD9AD3E827F8557AB2A74E94AA3E
            86DA0E539EE6486B05B723A56ACA543452425261438898D6B5DB56A75E82A914
            6774A54A5BB92A7B876BFB335F813FC2AE70A0F42BF165A647B876BFB335F813
            4E147B0E2CBB8F70ED7F666BF027F853851EC47167DC8F70ED7F666BF027F854
            3A715D09E2CB3A979B1B6E842AED28404A77CD984881AB1D95E47C509797676F
            67BCEA5A6DFA4161D91FDF31EC9CAA5B1DB5648ED58C14EE9465A1A2270F25B5
            3C109DDA0A52A2401D25F8A07FBE62ACF1F9E0F42E74A15A34DAD4CEF73E4017
            6A811E04F0D3FF00936D4BA9EFD9CD9CBDAB18ADD715D4D9F6BFE1984FA5FE4A
            E47863D4A9EC8E2D7D0E942BD91551340280500A01402805010680E72C7E9EBE
            F47B7AF33E27F461EE58B7EA586D8DD21ABCB371C12842DF2A113232DACE878D
            6DD8AD2B64D96E95394D4D47EC6E2BC6C6E33A909CBC099E8E4D3A439C4488EB
            ECD6AE436953E26E32AAA35338C1A5EC93E971772E20425774CAD23842545D29
            10341098115AF684B36D5305BBAA73A728465AE0CCED9F904FA45AFB43553C28
            732FD622CA75EF91E77A9152887A8A90438924100907AC448FBC1158C9653C1B
            28C9467992E47AC32D52A500B75DCE9E9653BACAA09235E8A0189CB22471AF07
            E20BCBEA10E14B1BB23D0DAF0AA2E2C56857C5EDD2153BC742D7A84277707280
            0A8E641206A998E67B6A9EC0BDBD97F0F4B4467711A7BBC5922D1841000528A8
            F324247DD940AFA3528B4B327CCF3B7338CE5BD047BAD86914209A8919751B29
            E52EFEB9AF615E3BC51E833BBB3F42C36FBC83BF5CC7B272B9FB2A58B2476AD2
            5BB739FB330394DBDB3F68E14978B8D1004F4B3000C759104C760A8C712A46A4
            7459C96A757895555EC5CEC8D8A99BF71A5995259324703FDA2DB87DA6B74EAC
            6A59CDC74C185E5653A517F7FEE67B6C3E1984FA5FE4AE77863D4A9EC8E657D0
            E922BD915113424500A0140280500A020D01CE58FD3D7DE8F6F5E67C4FE8C3DC
            B16E60FBA6AA16C79EE3FEDB5ACB65E559ADD7CF99D7D9D3DCAB26F4E59FF535
            E36175B80E64737255C255139474F2F0822066ECACE32A6E5C3CADE325B5283B
            8DF51F974363EE7E7A0E11FAEB7FFCB5BAED7F093F635ED592957835D8D8B6CF
            C827D22D7DA1AADE13D1FB9C3BE5C994ABDF23CEBD48A9463D454922984DFB04
            DF34786DD5A54ACA22425398C181A92523AE4C6BD43435C0DA3B31DFD74EA7E8
            475ADAEA36F6CF1A92FBCE1C80F4F2ABC6D02A0820857581A19EC1A1E35AADB6
            2AB2B9556DF4665E7557B66A7A9EABD238ACE4E3E5EEE0500A102A244F527653
            CA5DFD735EC2BC7F899FF92FD8EFECFE48B1DBDF20EFD731EC9CAE6EC859B13B
            1691E25CE3ECCD6B1FC512E5DDB5CA06608C8E3900C255D4A3F178189ACA8D17
            1A724F565BA74D477A32FB998C06F52EE26F2D04149688047302E2D8033531A6
            E1693CF62B56A6D508A977FEE6536C3E1984FA5FE4AA5E18F52A7B22957D0E94
            2BD895113424500A0140280500A020D01CE58FD3D7DE8F6F5E67C4FE8C3DCB16
            E613BA50F08C79EE3F7A6D6B2D9497935FD4EAECF8E6A4B1DBFB98C4FBA06C40
            36EA36D978C49F1A4AFE54669D6232C79EAC2B18678BD4A1E4A1BFB9BEB5D0CA
            EC00E83BF5D6DFE4ED4DDF2B49FB17B6A4776B417D8D836CFC827D22D7DA1AAD
            E13D0E25F3E4CA75EFD1E75EA45118F515248A0CF6158BFF0041BB813FEFCFC2
            9959C2D08787AF2159BE44FD8540142054489EA4ECA794BBFAE6BD8578FF0013
            7A2FD8EF58688B1DBE3E01CFAE63D9395CED8EF163CCEDD93DCB94FECCD6B0F6
            922C2ED2B4E5595A244428666E107B3A5AFD953524DD584968B259B99EF568CA
            3A15F605B526F149520A48608293CBFB4DA913F6559BA69DACDAEC368CD4A10C
            7FDD4D976C3E1984FA5FE4AE57863D4A9EC8E4D7D0E942BD89551340280500A0
            1402805010680E72C7E9EBEF47B7AF33E27F461EE58B72C76C2D03D7966C9887
            1C786A241E8DAC8239F579A6B76C58A95B4560B94EA70D4DAFB1D094F365A994
            6523289D527E2E5FBF48F3D7714FFF00147372F7B273AD93B6DD3972D71C974D
            23844E52F091E789FB6B97B422BCB543A5755253E1C9F6331B67E413E916BED0
            D53F0A1CDBFF00D1929D7BF479CEA45490F5140299CB4984BA9E9A614B50CA12
            72F4D4151AA53E7D0C2B2983C44D73B68CEA429FF948B967BB29F33D5C3252A9
            21233F4D213C32A8F28D2090488ECA8B0AD5274F151137B1846453AE961A48A5
            2E6280508151227A93B29E52EFEB9AF615E3BC4DE8BF63BFB3D65163B7DE41DF
            AE63D9395CED91FC89D7B659B8C7D9981DAA5366FED9C27C13A50B5718CBDB1D
            5AFDF58D052E14F05AA31F964A5AA32D86380E2CFC1E0D149F38B8B69ACE9A7E
            4A7EC56A997456F772FF006C3E1984FA5FE4AA9E18F52A7B22A57D0E942BD895
            5684D00A0140280500A014041A039CB1FA7AFBD1EDEBCCF89FD187B962DCC2F7
            4A510E5BC6905F23CE136A41AD9B21E2CD3F73A9634A352A4A2D76FF0092C95B
            62BDDEEC3403BE3170133E2819BAF372E3C00E42B156D537F8997ED92D7F8752
            E36E6517BDCF930877EBEDFF00C9C9FE3562F39DA4FD8ADB562A35A09698361D
            B3F209F48B5F686ABF84F43877FF00A594EBDFA3CEF53CAC9009092A3C920A41
            27A8662076EA4680D63278E64C63966291B46C4E5522E12BF90A6615C2786699
            8D622AACAED27CD19CA963A959FC69A42825697912336671A291962411049503
            D80D4ABC8B924C854DE705F3588864A6E015292131E0C054A565307B408D6239
            93C2AA6D3954745CA83D0B36D254E7A12ABFEF8517E560292120380263765726
            39039A75EA99A8D932ABC0DEACD326F271A8F922C1BC6D952C2101D7278169A2
            B13CC092098D0C804410662ADBBBC3C155536F964A575B44C208052F663A005A
            00924C00257AEBA6950AF137C9054F2F19326C3999095E55273242B2AD252A4C
            CE8A07C53A70AB7096F73C18CE3BAF07AACA463D49D95F2977F5CD7B0AF1FE27
            F45FB1DFD9DA163B7BE41CFAF63D9395CED8DCEC4EDD87F36B3D99AAE1D87A1C
            B37DE24E74A9296D5CD0020A864EA93A1ACA55376A4638E5CF25ABA58B84E3A3
            2EB60179AEC9CC552CAB551249FED36BA927535BEE562DA7EC46D2DDF9377436
            7DB0F86613E97F92B97E18F52A7B23915F43A50AF62555A1340280500A014028
            05010680E72C7E9EBEF47B7AF33E27F461EE58B7307DD3BC7600D0CDC6BFF2DA
            D65B33F938BF73A76719EFC9C1F4FEE588EF1EF22213BF82F650B3989129E3D7
            944E5F3765631572AB657E9D0E2716A45F164DEF64BFEE783C1B9ACF86B7FF00
            CB56EEFF00959FB1D8BE6F7E9B7D8D8F6CFC827D22D7DA1AADE13D1FB9C8BFFD
            2CA55EFA279DEA45490DF328DE5A36EA72B880A1CA74299E692354EBAFEFE55A
            6ADBC668CDCD98DBA2EB3E338A2D1206F209C93D187D0910FA082533C7873299
            E656B7E1B4CDA9E4A786BBBB7B76D9195D05696D3A84AD212ACE8292A86D680B
            3A9994F00667424E74A7463AC89A134A7CCF78F3E5C710CA8C050DEAC4A49706
            7842124913C14540F0001E008ACB9D28AA5F615A6B279B55B8B252C38021300A
            D20EE9078E4690652E2E4925664703CD339D1A329EA639C2C994B3B26DA24A07
            49524AC925464EB2A3AFD9C38574E95BA81A9CF9E4AF5613306F2F24D2465D46
            CA794BBFAE6BD8578EF137A4FD8EEECED0B1DBE1E01DFAE63D9395CED95FC89D
            7B7CF98E5D9983C7ADF77789B56B2A58B95B729034194E8A1AC0E3F6D4529EF5
            2727AA2D4332E6FA64C9612C2518ABC1000019D00FAFB61F656719C9D94B7BB1
            5EAC9BA69BEE6476C3E1984FA5FE4AA7E18F52A7B22A57D0E942BD8955684D00
            A0140280500A014041A039CB1FA7AFBD1EDEBCCF89FD187B962DFA986EE8E82A
            76DD222497C0930248B589ACF6465DAC525DCE959BDD94A6DE8673FF004DAD3B
            DC82A50732CEF33F4663891C23979BEFAEDAB78A8151DEB73CB4B1EC60F60442
            5D1D4FDB8FB83B5CCBE4D5ACCB5B4671A9520E3D8D836CFC827D22D7DA1AABE1
            4D0E45F2F95E0A01D4E608F8EA05400E494C05133C7520695EEDD45178380A19
            593D05A4F054CC81A18390C39AF010AD279D2159326549A67A29E241047233A1
            07811D608FF4ACB7D3C184A9B47852410411208820F020F8C0F611A54CA09A64
            27866A189D8BD6EB42D04AD0820A1519B2C1D10B8D4EA607220E9C08AE3D6A12
            84F7A062E2F39479B661FBA78B91BB9D14B0140242523A22752A8CB038EB3C24
            88A74E7527BD3D4CF773CD9B7B0D0425284884A40481A6838FEF3AD75E9D3518
            F2316FA15528244F1E51CF5E159B925A92A0DE842D68124AF412A244A8644F8C
            B04687956B957497F433E136F07953C80A0827A4A0549E608490151E69067AAA
            38A9B48974F099EB653CA5DFD735EC2BCAF89BD167676768B2596DEF9073EBD8
            F64E573B632FE04ED587F36B3D99A8AEDDDB8655745409B5096DB1313082A567
            24721111C60D6C5B906A3F5172B2E155705A3327B1570A72F9C71512B6944C08
            126E6DB87656CAF151B5A897446ABCA5C3A504F4FF00E9B16D87C3309F4BFC95
            CBF0C7A953D91CBAFA1D2457B22AA2680500A0140280500A020D01CE58FD3D7D
            E8F6F5E67C4FE8C3DCB16FD4B0DB1BDDCDE59BC5321B5BCA23848CB6B3D7CAB6
            EC5A9BB6A9E0BB42871B7D27D8D8CED38EF70E9DDEEE40CD99127A5A0CB39660
            72593F4674AB0B69E6A6E6E32B793A9BD8EA6B3B1F75BD55CBB119EE995C718C
            E5E5476F1A8BF9E6D6A32D5DD2746508BEC6676CFC827D22D7DA1AABE15D0E5D
            FF0028334BC67178BB0E24C860E41A05EA243BD139415024A6262500CD7A5AD5
            9F15A3CE39B8D4C142CAFDD643612B03739DBE92CA910E0E82D50082DA5402F4
            32AC91CEB4C2A34CDB1ABBDA97B84E22A0E5B20820252AB75051CC7312321811
            90CA5B4EBC1326B7D0AEDCA2897554960DAABB59346801E750D4592A44A944EA
            4927B6A146289723CD668C5733018BE2C5BB88130DB4A060E439DD8235321500
            36476950AE45C576AA346F8D4514624E20F04E5CDE2342DC0492012AE7197C74
            A210A49E25A2471AA73AADE3D8875B964A76B8AEEDE6D654021A4A5827403768
            1954494956600C990654129D04D651ACD4E2699556E691BDECA8F0B79F5CD7B0
            AE6F89B9D16FEC77F67AC2FEA586DF0F00E7D731EC9CAE6EC878B13AF6EF76BE
            7ECCC2E20D0B6715873693170B6F76A2469A42F31E30440D01892674A88B5517
            15FF00E25872753E77D0BDC02C90CE26EB681090C981E7B8B6FBFAE7B6B73A9C
            4B4A92FB1AEE6A4A74639E8CCAED87C3309F4BFC9543C31EA54F6451AFA1D245
            7B22A226848A0140280500A014041A039CB1FA7AFBD1ADEBCCF89FD187B962DF
            A983EE9A616C1EDB8FFB6D6B3D95CACD63EE752C2A28549656518146017259DF
            E4E866D133C465D5CE31C001FEF4C95C51DFE1F5327B6315F7D2F934360EE7AA
            96DD3FFDD6FC74FD6D6EBAFE52661B4E7C4AB06BB1B0EDA7904FA45B7B43557C
            2AF099C5BECEEB343DB257F68514AD1395BE000C864C85722478F27E5750AF45
            5D667947064A4EAC5E0B5BBBB80A0520E67109827A5973A4659CBD0D20660741
            3A69AEAC618A5178795D5970BDDA8899525C782211A74524273A12A0A3D20449
            5126470ACA31F9D3328C24F1C8DDDC7403F1881A1568A19A2609000CC4026001
            CB4EBED2AB151C31C09365F3183BAA5A124E5CC92B58812D241E8A4F225634D7
            810A3A8E8D569DD35A16E166BA9EEFB02710E6468A77642948CDF280D199E027
            5398F21104CA8442E9F526A59AE86352EEBA830084AA63456B083AE8AD0FFB20
            1B6AB45A29BB79459A7E2612976E233128525CE994CACE84823200B6E553A41E
            8E935C6AD1FF003324BA6D37C8B25DDC17529CBD170142B598CA93992482A3D6
            0294233112635D6D6598548BE1BC2E87BC1D73769CCA4A4074EAA00888309238
            13F13B0F68ACA9C71223725C54F1D0DFB654F85BCFAE6BD8573BC4B2FF0021FB
            1DCB0CE39963B7DE41CFAE63D9395CFD8EB362766C16FDCA5F666A1885DBCF65
            BCCB94598420AA492A511A293A1D74133D87AC56DA74E14E3C3FA8B938F067C2
            7D4CCEC8DE97B1071D20A4AD92ACA4CE506E6DA133CEA6A53E1DA548FD8D17B4
            7854A0BEFF00DCCEED87C3309F4BFC95CEF0C7A953D91CCAFA1D2857B22AA268
            48A0140280500A014041A039C32AFF00DFEF47FC35BFEEAF33E27F461EE58A1A
            985EE93AAD93C92A7C1F396ED4FF009565B2E39B34752C33C5925D51881EE8A6
            D0A0B27BD8A0A75418E9AA73E6E333C0447DF567CA413E238F328CB66C252DC8
            D459CE865B60D612D3A490007ADA4930383BD7595C45CED66A25BDA50E1D482F
            B17FDD271440B370B6595A9B2D3F9544292A0DB824100EBC78555F0ED1A94E0F
            7960E656C499C9D7B74A3A9C370C24F5DA7F5D7A2C65F32BEEA3CFBF957CDB86
            F5FC139F5F8FC6A7750DC8992D9DDA276EAE5B61BC3F0B4159F1D56D95280355
            289CFC87DFA512482823B630AB46D01B4164B4D281084AD0378F8208319A0252
            A8224E860E990132DB64AC19AB4BB6120CDC3654A39947789D4FDFC0701C3415
            00F573776EB4949B86C4C410E26410641067883AD094619CB8B621C0E298CAE1
            CB709CCDEAA8010F0E4A90120C8E49E19082C90F071BDB5C6976576B63BCB0C7
            530148705B039D0A9CA550B8CDA1047679A8D648714CC17BF957CDB867AA7DDF
            1FAA9BA88DD44FBF9571F7370C9EBEF4D67AFC7E350D7327751D2BB966321C69
            6EBA1868BEF1210DC3691B96D20E84E933C79D71F6DD3955B76A2B2CDD47932F
            76E5D4AADDD295050DF3025241FEE9CD24556D954E54ECB12583A363250B8CFD
            9981B4CEDB6ED8A843EEBADE507507380957088CA2353A4C56138EF35513E512
            E5C4F892557B173B1D6A5ABD750559B7682D9501124DCDB418E5C2B75796F5AC
            DAEA8D777578B460FEE67F6C0FF6DC247FC59FFB2B99E18F52A3FB1CBAFA1D2D
            35EC4AA89A924500A0140280500A021550C1CD8B2A4ED0DC12212E592149EDCA
            B424FEF9AF3DE258E6D57B9BA8EA586DADB120481E12F9284E6E195568D4FD99
            9114D8ED4ACE3EFF00F2742DABBA53961743A1BC5B2D1429422374401304F448
            00F3D7FC8F9FBCE514B19473139737F7394B6A66D58BECDBB5B2D5CB0997925C
            4A8256E00561B4F48CC701C62B5D28C629C5732F5ECE528C252D70588DB3C37F
            51867A95CFF256E8D35179473F393D7BF4C37F5385FA8DCFF2564623DFA61BFA
            9C2FD46E7F928083B6986FEA70BF51B9FE4A9040DB2C3793185FA8DCF0FC1500
            1DB3C33F5185FA8DCFF250927DF861D015DEF85C12403DE1730488900E4E2247
            DE2A319047BF2C37F5185FA8DCFF00254A400DB3C3470670BF51B9FF00445490
            4FBF4C3BF53867A8DD7F25401EFD30DFD4E17EA373FC95201DB3C37F51867A8D
            CFF2562E317A93CCBA389B2F593AEB286021374CE8C36B6912969520A56019D4
            0262222AA5D452A2E31EA5DB18CA7570BB326FF10427176DE1AA0489E433A129
            CDE601415F657169519F95707AE4E8C694B730CB9D9370BCBBA584F4B7966BD3
            4E8AAE815FFD2893E6ADD523C3B3927D8D5774F87B9032FB56CA978960E94898
            79E70F99094127EE9AA3E175CAA3F639D5CE989AF5BD4AE7AA90280500A01402
            805010AA87A039DED60DD63760E950097987D88ED410A1F795A7EEAE4EDA8712
            D25F6E66CA4F0CB6DBCB6CCD3AA9CC425971083AE5DCBAB4DC39F81E40FB2B95
            B12AEFDACA0968CE8DBB51AF14F47C8D598DABB8434B68F84CDF1D7996A1007C
            A252612120401112731266E56B65392936D60E95D5ADB506A52788E742C5B6F7
            B658820991B80EA469256DB808200E303B2BA967849E0A9B6231F91D3D3072B8
            ABAB9BCB388F90A188A600028B9E433AB6C5772A0A425FC454B42550A45BB7E3
            A84132B3F13879F8EA2AB57BBA547F5CB067183674AB5B0B1B3F83E14D8C8824
            B803598207152D6B39A3FC4493DB06A9DBED185C36A9ACE0970C155AC0ECAF12
            90FDB36E25C438B19D10A4E72DE6CA7C66CF8A2524440E1557675CD4A95EAA7D
            3067512491A06DE771CC8953D874900125851CC78CF8351D4E9F15527B75AEF2
            7948D3838D2924482220C19EB1C47654904500A01458DEE64AD4E97843251855
            AA5293BC75D7DE281C56948010A0071800FDD552E70B99D6D90D46AB9BD3059D
            8E1CEDC2F76D47443AA593C0253044F9C8023989AAB2A91A71DE7D4E857AEA2D
            63B9BF773E63A2160E52A7D4AFAC659614823FE579E06A86D1A8A166DBEBC8A9
            B465BD5D25D11934F85C7ED9295696F6AF3AA1DAE108FCC93F654F8729A85B39
            F7672EB7EAC1D1C0AF428D07AA90280500A014028050106A01A1775E6F2316D7
            A32836972DACA8F10DB8776B03ED283FF2D69B9A6AA52943BA262F0CBCC5EDC3
            C809E21D4A9AE1A94BC9E889F8A33EEC9FF0D78FD875152BA951975C971CB0D4
            FB1CCB66B1262D5C5AEE5282024EA64AA6614122623872FF0059EBDE5BD79D3C
            41F3C93B4A9B52559BDE8C967057C25FB7EFF3BBCA197C167404654DCA6048F9
            725235AB764E5069488B7A139DB4A524F968726C42D14CBAE32B10A696B6D43B
            5B5149E1DA2BADD0A45BD0815317CC1D07B8DECDA2E2E1775703FB3DA0DE1066
            14B825131C42402A23FC320835AAA5450F98CB1967756927C6578CAD55FE83CC
            3869A695F34DA173E62BB6DF52F42092295EA06E9C49D43A72A81D40418465F3
            151E1F494791AF4FB2A518D949C1619A2A7391E30A6776EB6AFEECB651000D16
            B2D993D8729D7AFCFA57D877707526A6F9B26A4791B38AF5916B184563E7CEEF
            1B2E2DEE5378D261BB990B8E01E024F98293AF9D2AEBAD841CB680501518654B
            50420152D442529489254A309007393A5412778B00D32B75ACDD1B1B516E9820
            82A3ADC293CCF4E076106B83B527294A118F7474A9D19D3A4A5DD9AC6CB5EA58
            B5B824F84703694F6EAA83F4B41FE55AAEE94A75A9B5A2D4BF52836E0CE8BB25
            65BB65B4C6A96D262382DF25C5907A8A777A75A6A8F8827FA68AF739D396FD59
            48A7DCEC07EFF12BCE8A805A2D1B57301A4E67079A548FC35E8B66D1E0DB463F
            D4A551E64742157BA9813520500A0140280500A014063368F0C4DCDB3D6EAE0E
            B6A47DA469F6CD638C680D27622F157387A50B3E1592AB7735261D64C493A4C8
            C8A3E715E1F69C1D9DF46A4747CCB749EF44D336C2CB2DC2959212FA77A9D381
            568F37D4149702A52380CB3C6BD1C9EF6ECE2F93E6777663855A5C392D0D6F0E
            5744B4A3D247474D0E58E82847D18D6B64F5DE45EB78EF45D196A7AEE8B605E4
            B789A4795096AE401E2DC369002FB12E20248EDE649ABF4AA29A3C8DD5174AA3
            835A1A256D2B0A6320EF3DC6D82DE10A71B3D272E519B9F477ADA17E6F073F7D
            73F693C5B544BB19D3FD46F4FDD2104052802AE09E67AE00D55F60AF9D50B2AD
            59FCAB9979CD24426021D538080B85A09CA414A12340A048E20AA278289EB8F6
            56F69568D84A135CCAB9529722A84691CA23F75787DE9539E5742D7268B86311
            2830E7891E3F547CAFA3DBCB9F5D7B3D95B62138A8547CCAF529F546A1DDD1A4
            AF0A5ACA412871A524E860950498F3A49FBEBD345EF2CA7934347CDF539E8620
            54926F3DCEB0EDD85E24E2010C4A6DD2B4C85DC91D131CC363A463981A820561
            39A82C962D68F1AAA822E177052728592560E627A4B5C9075275254B0144F589
            35CC51CCB799EA6BC6318C69E3382F76730DDEBCD36B80342E11A04B4D8CCE19
            E420713A66291CC565169CB1D35355DCB85439EBD0E9F8D6282D6C9EBA5A6084
            A9CCA647497A3688D72EA509EC35E59C5DF6D1C2D33FE879DCE219EA657B9CE1
            2AB6B061B5EAE28175C3324ADD254A93CF535EE547925D8AA6CC056609A01402
            80500A01402805403CAA80E6974DF78E32A074631248524F2170CE8B4F38CC92
            0F01C47C9AE26DDB3E3D0DE5AC4DB4A5878EE54DAFC1F7ADA8240CD2A79B2740
            1400DFA3B12A480BD078C851D49154B62DCF1A9F09EA8BB46BBB7ABBDDCD06F6
            F704B7710871C7EE9C1A2DEB7504A133C4207F78267F8D7A58D18EEEE98D6DA3
            5A75B7D72667706C2D97D2E0B47517B6AF2421E67325B7DB9F11791640CC9566
            83D198819AA29D2E1F231B8BC772B33586BFD4D59CD8CB1C3C2978ADC9716677
            56B6E4070A75C8B70A54724C75902789ADC5029B5806117E909B1B955A5CF00C
            DE2FA2E126004AFE512400049E3A1A67049D27B956CFDC5A32F595EA00CCBDEB
            791C042929CA1594A4E610ACA4F0F1C56A9D38CE2D3EA13C17F8CE3C8B25A987
            1B510B254549408C8787020AA6329D6468666A951A6E8D5C25F296E141D486F2
            6B3D8A5718E87DA710CEE17024A52A7824A13948D329C9E36BC20E51CE45B9C5
            4F926699529C354CBD6B120DEB74FEEE049CAD15208D24A551303B469227C613
            C79EC1B6CE5BE66D529F441FDA4C348045EB9D9BA6DD5127900036493E6AD91D
            8F6B07A112E2E39A317DD2F0179FB3EF2B21996B507D685A8265092074661282
            5794C18061678CD7529508528E205767363B23875803EEADDEF5FD62D6D15988
            31233AB8A4C10758E7C78D6F3126CB6670AC4825387DC2AD6E01E93172ACC569
            275DD1246650482607DB1C44126D98AE0790203EA461F636FE0DA4BAE21C5AA0
            F4969436A567717A93A922220EB5A6AD373E4742D6F236F0788FCCFA9AF59E29
            812DE2D855D3598048B970A4A6639A35CA9FDDAD4BA29C374C217F5A13DFC9BA
            6C860610092A6DC2E9F28D994AADD0AE8E53CC3AE012350528235D09E1ED4AF1
            B6A0D2D5F246FBABC7753454DA1477F6236B872756DA50BCB98E012DE8D24F09
            CCA2384F1079568F0ED9B8A75E5D792295578783A726BD3E4D07AA90280500A0
            140280500A0140280D6F6EF67FBF6D94D030EA0875854094BADEA83AE9D9E635
            8C96F2C3D3A8D39982D95C63BF6DA55D0B8695BB753CDB7DBE7AE841D088E224
            4C831E1AEA94F675E6FAFD2F42DC5AA91345DA7D96C29953971789B9425F732F
            F678526DDD206F0281D4856AE24C194A868204FB2B5AF1AF0528BE457927166B
            F7DDCE5E28EF9C2DF45EB3C4168843C8E70A4133980CB2042A4F8A2AD67B9AF5
            3DB1B0ACDAB7DF18CDC16331945B3450E3EE6A2498272E9C7AA7520E94041D91
            C3EF92A384DE10F2413DE9770DA94009F06AE04E9D66275CB424BFD8DD85C52C
            2E9176E966CDB68CB8E3EFB5954851852086D66647230260CC8A820DAF13EEB3
            601611BDB8784C296D3696D194FC94B9AAC79E3871A8DC4CC949AD0AE9B2C3F1
            346F2D548715A48642197504A846F1A748494F8DD204680C6626B5CE8A7A16E8
            5ECA96BCFDC91B3D6587A4BB76B6DB09319DFC84288008DCB2D951598CDE3191
            07A2419AC616E96A4D7BE7574582C1AEEA58617324DC2102322CB2D29093CCEE
            C09481D927B2B7EE1537E58D4C06DAEC85FE27706F6D5D62F9B7004A0B2E21BD
            DA520420A5D50CBA93224992490262862625AD85B6B2407318BBDCA8EA8B5B72
            975D56BC5453294831C66387481D2A482AAB632C6FD0A5E0F72A2EA649B3B9CA
            8708D3A4851307999248D6253424B6B0EE6D7AB976F969B3653A29EBA589D340
            129CD2758E240D742699EC0CCE0BB2B835D129B55DDB8185214EBAB010871254
            21A483073AFC54884F199E47556A8A9C77DE88C97CC74CC53116EC6D5CB87A06
            503A09E6AD12D328EB8E8A479893038787A8E7B46F1461A64B492A712BF738C1
            1C65955CDC08BABC5079DE1A08F06DE9C9293FBCF3AF714A9AA70508E88A8F9B
            C9B9D6C20500A0140280500A0140280500A03C9A808E73B6B87AEC6E7DD5B74A
            94DAE117ACA07140D12F81F293C0F58EAD4D50BFB38DD51707AF43284B75991B
            BB766ED8CE12979A79B00A640DE36750413C1626527803A480491E52C2EE7B3E
            AF0AAE8599C77D651C1368B07B9C35F25B75D4B6E4EE9E6D4B6F7889F1559482
            95A4E8A42B5041E506BDC42AAA9153EE546B7791AE5C5C2DC515B8B52D478A96
            A2A27AA49335B300A751920AF777CEBB1BD75C7328D33AD4B8FF000E63A54828
            5304E3A9EDA754950521452A1A85249491DA08E1F7D0723D5D5CADC515B8E2D6
            A22332D4567EF24FF9D072452A6060AD6976E34ACCD38B6D5C25B5A90639EA93
            C3B28414D6B2A254A249264924924F59278D4025A70A4852494A8190A492920F
            5823854E0933586DADEE22EA5ADEB8E94CA8ADE716A4348F8EE2CAC909481F69
            E001358EFA87CC42E6F077ED9AC15AB665096D395B6C1502A1954A5110B79CF9
            248981F15260C1240F19B5B68CAE67C0A3FD4B74E9EEF366330460E2D769B950
            50B0B4578107C5B87871748E684F2EB27CE2BB9B27672B5A587FA9FF00DC1A6A
            CF799D3C575F4460CF55240A0140280500A0140280500A0140280A4F34140820
            107420F020F10680E577D6EE608F29612A730B79524264AAD56AF1B4E6D13274
            EB8E201571B6A6CB8DDC37E1FAD1B2954C19DC5F0C62F183094BCD3A02CA4280
            0BD3A2E36AE0870723C0C418E2383B3B694ECEA3A371D0DF28292C9C336CB629
            EB22568976DA74742482993E23C9E2DAC76E9FE43D9D2A91AB0DFA6F2559268D
            5A2B627931C11520500A0140280500A6463267F657651FBD5908010D24C38FAF
            4423AFFC4AEA48E3D9C4613928C5CA6F0898E5F23BB6CC6CDB16AC8421042345
            1CFA2DD29E0E3BF27AD2DF04889D640F1FB536BF19F0A816614D2E6CC4DC3EEE
            32EAAD6D5451608545CDC8D0BD1E332CF583C0AB8449D740AE8EC8D91C05C6AD
            FABFDBFF0066156A67923A861F64865B4B4D202508012948E000E15E84D25D50
            0A0140280500A0140280500A0140280500A02D9FB50B4A90B485254082922410
            788239D42CA7CB40FEC737BEC1AE70956F2C92AB8B12A2A5DB4CB8CC9E9298F9
            49FA07A875C8E5ED1D954AED65F29773642A38998B0BDB6BE677B6EE256950CA
            74CC08E687507C61D875D7420C1AF2F4EADDECBABBAD7CA58C466B91CF76AFB9
            7A164B96A52CACCF825125A59E3E09CFEEBFC0BD0723024FAAB4DA946E3AF32B
            4A0D1CC318C1EE2D57BBB8654DAB966100F6A4F057D95D4E58CA66B2C48A9C72
            C924542E63028C60454E082E6C30F75F586D9696E2CF04A125478C7D83B4D639
            24E93B2FDCACC85DEAB31E3DEED2B9C98DEBA346C69C132AFB411542E768D1A0
            BE666518367500DDBDA339DD536D34D6A02521B6DBEBC89D64F699267CC0792B
            ABEB9DA357874D72FB1694631596602DDBB9C6545233DB61A7E3EA1DB94FD19F
            26D9EBE623AF4F43B376353B5C4E5CE5FEC68A9533A1D230DC2DB61A4B2CA128
            6D021291A47FFBDB5DA797CBA1A97DCBD15209A0140280500A0140280500A014
            0280500A0140280F19680D2B6836092A70DD583C6CEE79A9025B73593BD40D09
            27E30FB41AD15EDE15A3BB51722537166191B5AEDB10CE2D6C582A8487D03796
            EB981A9E2899E0748075AF3177E1E941EFDBBFE8588D64F93338ED8B370D7835
            36B695AE55252FB4AE6250780985744A092049AA74769DEDACB76AACA3374E32
            5C8D2F19EE5568E125B4BB6E4F36541F6E071516DD85851F9285102BB343C416
            D3C6F72343A2D1A9DEF726B807C0DD32B2AD5285A5C6551D6ACC0A527EDAEB42
            FA84D7CB346B70678B4EE4D745595DB861A571CA0ADD2471D32263EC9ACA57B4
            60B329221419B4613DC9ED92429D2FDC70500A29B46C8E69504E6767982328AE
            5DC6DEB6A6DE399B1516CDE30FC199B76CA46EDB6B894B490C23AA5664A96488
            04A944180605712BEDABAB878A0B08B11A318EA625FDB24AD46DF0DB755DBA34
            9474596E6355B9C39CC27A95C2B75B6C1AD5DF12E1E0C655631D0BDC276096F2
            D3738B3DDF0E0D536E910C373CB2FF007844713A79F8D7A8B6B3A56F1DDA48AD
            2939337D4B622068069F60E55653C918C1EC5482680500A0140280500A014028
            0500A0140280500A0140280F2A4CD46014AE6D10E2548710168502149500A490
            441041D088A90695887733602B796370F58B878EE152D993265B5683CC981D95
            AAA50A751626B24A6D6858AEDF1DB6E2DDB5F24026504DBB84F2E593FE915C5A
            FE1EB49BCC731372AEFA9E4ED938DA822E30ABD689124A5ADFA44F6B64CFDD5C
            B9F86EAAF4E666AB2EA49DB49506D8C36F9D9E04305A4FDEE6502A21E1BAEFF5
            CD10EB47A12838E5CF93B4B7B3499054FACBEB1F2484A600FB73574A8F872DA3
            CE6DB3175DF42E6DBB9A25D505E257AFDE1E3BBCDB9684C4F45B82751D607657
            6E8DB52A2B108A46A949BD4DDB0FC3196101B65A4B6813086D210912493A2446
            A4935BCC4B909AC7741E85640500A0140280500A0140280500A0140280500A01
            40280500A01402804501E48AC5B79D008A9181141811519E7A0C131590268050
            0A0140280500A0140280500A0140280500A0140280500A0140280500A014041A
            931641AD350C90151025935B8C49A12280500A0140280500A0140280500A0140
            7FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 634.961040000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1CetakNon
        DataSetName = 'frxdb1CetakNon'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Catatan')
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ':')
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 548.031850000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            '[frxdb1CetakNon."catatan"]')
        end
      end
    end
  end
end
