object Form1_pelayanan: TForm1_pelayanan
  Left = 0
  Top = 0
  Caption = 'Form1_pelayanan'
  ClientHeight = 742
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panelUtama: TJvPanel
    Left = 0
    Top = 49
    Width = 980
    Height = 693
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panelUtama1: TJvPanel
      Left = 0
      Top = 0
      Width = 980
      Height = 693
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 433
        Height = 687
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object grp1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 427
          Height = 89
          Align = alTop
          Color = cl3DLight
          Enabled = False
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object lbl27: TLabel
            Left = 6
            Top = 9
            Width = 60
            Height = 16
            Caption = 'Nomor RM'
          end
          object lbl28: TLabel
            Left = 6
            Top = 35
            Width = 78
            Height = 16
            Caption = 'Tanggal Lahir'
          end
          object lbl29: TLabel
            Left = 6
            Top = 61
            Width = 93
            Height = 16
            Caption = 'Jenis Perawatan'
          end
          object lbl30: TLabel
            Left = 273
            Top = 35
            Width = 64
            Height = 16
            Caption = 'Poli Tujuan'
            Visible = False
          end
          object dbedit1: TDBEdit
            Left = 122
            Top = 5
            Width = 308
            Height = 24
            DataField = 'mr'
            DataSource = dataPelayanan.dsKunjungan
            ReadOnly = True
            TabOrder = 0
          end
          object date1: TDBDateTimeEditEh
            Left = 122
            Top = 30
            Width = 126
            Height = 27
            AutoSize = False
            DataField = 'tgl_lahir'
            DataSource = dataPelayanan.dsKunjungan
            DynProps = <>
            EditButtons = <>
            Kind = dtkDateEh
            ReadOnly = True
            TabOrder = 1
            Visible = True
          end
          object dbeditInstalasi: TDBEdit
            Left = 122
            Top = 57
            Width = 145
            Height = 24
            DataField = 'instalasi'
            DataSource = dataPelayanan.dsKunjungan
            TabOrder = 2
          end
          object dbedit4: TDBEdit
            Left = 273
            Top = 57
            Width = 145
            Height = 24
            DataField = 'poli_tujuan'
            DataSource = dataPelayanan.dsKunjungan
            TabOrder = 3
          end
        end
        object pageControlPelayanan: TJvPageControl
          AlignWithMargins = True
          Left = 3
          Top = 98
          Width = 427
          Height = 417
          ActivePage = ts4
          Align = alClient
          TabOrder = 1
          object ts4: TTabSheet
            Caption = 'pemeriksaan fisik'
            object grpFisik: TGroupBox
              Left = 0
              Top = 0
              Width = 419
              Height = 294
              Align = alTop
              Caption = 'Pemeriksaan Fisik'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object lbl111: TLabel
                Left = 16
                Top = 59
                Width = 60
                Height = 16
                Caption = 'Kesadaran'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl112: TLabel
                Left = 16
                Top = 83
                Width = 74
                Height = 16
                Caption = 'Tinggi Badan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl113: TLabel
                Left = 16
                Top = 104
                Width = 69
                Height = 16
                Caption = 'Berat Badan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl114: TLabel
                Left = 16
                Top = 127
                Width = 73
                Height = 13
                Caption = 'Tekanan Darah'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl115: TLabel
                Left = 16
                Top = 148
                Width = 47
                Height = 16
                Caption = '- Sistole'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl116: TLabel
                Left = 16
                Top = 169
                Width = 54
                Height = 16
                Caption = '- Diastole'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl117: TLabel
                Left = 16
                Top = 196
                Width = 95
                Height = 16
                Caption = 'Respiratory Rate'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl118: TLabel
                Left = 16
                Top = 217
                Width = 61
                Height = 16
                Caption = 'Heart Rate'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl121: TLabel
                Left = 240
                Top = 83
                Width = 17
                Height = 16
                Caption = 'cm'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl122: TLabel
                Left = 240
                Top = 104
                Width = 13
                Height = 16
                Caption = 'kg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl123: TLabel
                Left = 248
                Top = 147
                Width = 37
                Height = 16
                Caption = 'mmHg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl124: TLabel
                Left = 248
                Top = 169
                Width = 37
                Height = 16
                Caption = 'mmHg'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl125: TLabel
                Left = 248
                Top = 196
                Width = 62
                Height = 16
                Caption = 'per minute'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl127: TLabel
                Left = 248
                Top = 217
                Width = 25
                Height = 16
                Caption = 'bpm'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl6: TLabel
                Left = 16
                Top = 27
                Width = 44
                Height = 16
                Caption = 'keluhan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object editTB: TJvCalcEdit
                Left = 113
                Top = 79
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 1
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object editBB: TJvCalcEdit
                Left = 113
                Top = 100
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 2
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object editSistol: TJvCalcEdit
                Left = 113
                Top = 144
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 3
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object editDiastol: TJvCalcEdit
                Left = 113
                Top = 165
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 4
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object editNafas: TJvCalcEdit
                Left = 113
                Top = 192
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 5
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object editHati: TJvCalcEdit
                Left = 113
                Top = 213
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ShowButton = False
                TabOrder = 6
                DecimalPlacesAlwaysShown = False
                OnKeyPress = cbbKesadaranKeyPress
              end
              object panel6: TPanel
                Left = 2
                Top = 248
                Width = 415
                Height = 44
                Align = alBottom
                BevelOuter = bvNone
                Caption = 'panel5'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
                object btn1FisikBatal: TButton
                  Left = 192
                  Top = 12
                  Width = 106
                  Height = 25
                  Caption = 'batal'
                  TabOrder = 0
                end
                object btn1FisikSimpan: TButton
                  Left = 304
                  Top = 12
                  Width = 106
                  Height = 25
                  Caption = 'simpan data fisik'
                  TabOrder = 1
                  OnClick = btn1FisikSimpanClick
                end
              end
              object cbbKesadaran: TComboBox
                Left = 113
                Top = 53
                Width = 145
                Height = 24
                AutoDropDown = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyPress = cbbKesadaranKeyPress
              end
              object edit1Keluhan: TJvEdit
                Left = 113
                Top = 23
                Width = 317
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
                Text = ''
                OnKeyPress = cbbKesadaranKeyPress
              end
            end
          end
          object ts5: TTabSheet
            Caption = 'tindakan'
            ImageIndex = 1
            object grp2: TGroupBox
              Left = 0
              Top = 0
              Width = 419
              Height = 216
              Align = alTop
              Caption = 'Tindakan'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object lbl2: TLabel
                Left = 6
                Top = 47
                Width = 52
                Height = 16
                Caption = 'Diagnosa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl3: TLabel
                Left = 6
                Top = 110
                Width = 37
                Height = 16
                Caption = 'Terapi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl4: TLabel
                Left = 6
                Top = 151
                Width = 80
                Height = 16
                Caption = 'Tenaga Medis'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btn1ICDXCari: TSpeedButton
                Left = 191
                Top = 48
                Width = 26
                Height = 22
                Caption = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = btn1ICDXCariClick
              end
              object lbl1: TLabel
                Left = 6
                Top = 22
                Width = 46
                Height = 16
                Caption = 'Tanggal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object memoTindakan: TJvMemo
                Left = 119
                Top = 94
                Width = 312
                Height = 49
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Lines.Strings = (
                  'memoDiagnosa')
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 4
              end
              object cbbDokter: TJvComboBox
                Left = 119
                Top = 147
                Width = 145
                Height = 24
                AutoDropDown = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                Text = 'cbbDokter'
                OnKeyPress = dtpTindakanKeyPress
              end
              object txt1: TStaticText
                Left = 122
                Top = 72
                Width = 25
                Height = 20
                Caption = 'txt1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object editICDX: TEdit
                Left = 119
                Top = 47
                Width = 66
                Height = 24
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = 'EDITICDX'
                OnChange = editICDXChange
                OnEnter = editICDXEnter
                OnKeyPress = editICDXKeyPress
              end
              object dtpTindakan: TJvDateTimePicker
                Left = 119
                Top = 22
                Width = 98
                Height = 24
                Date = 42679.510039317130000000
                Time = 42679.510039317130000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyPress = dtpTindakanKeyPress
                DropDownDate = 42679.000000000000000000
              end
              object dtpTindakanJam: TJvDateTimePicker
                Left = 223
                Top = 22
                Width = 82
                Height = 24
                Date = 42679.510039317130000000
                Time = 42679.510039317130000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Kind = dtkTime
                ParentFont = False
                TabOrder = 1
                OnKeyPress = dtpTindakanKeyPress
                DropDownDate = 42679.000000000000000000
              end
              object checkKasusBaru: TCheckBox
                Left = 223
                Top = 50
                Width = 127
                Height = 17
                Caption = 'adl Kasus Baru'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnKeyPress = checkKasusBaruKeyPress
              end
              object btn1Batal: TButton
                Left = 194
                Top = 178
                Width = 106
                Height = 25
                Caption = 'batal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object btn1Simpan: TButton
                Left = 306
                Top = 178
                Width = 106
                Height = 25
                Caption = 'simpan tindakan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnClick = btn1SimpanClick
              end
            end
          end
        end
        object grpAntri: TJvgGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 521
          Width = 427
          Height = 163
          Align = alBottom
          Caption = 'Antrian'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          Border.Inner = bvSpace
          Border.Outer = bvNone
          Border.Bold = False
          CaptionBorder.Inner = bvSpace
          CaptionBorder.Outer = bvNone
          CaptionBorder.Bold = False
          CaptionGradient.Active = False
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
          object panelAntri: TPanel
            Left = 2
            Top = 105
            Width = 423
            Height = 41
            Align = alTop
            Caption = 'panelAntri'
            TabOrder = 0
            object labelAntri: TLabel
              Left = 22
              Top = 15
              Width = 83
              Height = 16
              Caption = 'Nomor Antrian'
            end
            object spinAntri: TSpinEdit
              Left = 152
              Top = 9
              Width = 121
              Height = 26
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 0
            end
            object btnPanggil: TButton
              Left = 279
              Top = 9
              Width = 119
              Height = 25
              Caption = 'Panggil'
              TabOrder = 1
              OnClick = btnPanggilClick
            end
          end
          object grp3: TGroupBox
            Left = 2
            Top = 19
            Width = 423
            Height = 45
            Align = alTop
            Caption = 'Poli Layanan'
            TabOrder = 1
            object cbb1PoliAntri: TJvComboBox
              Left = 64
              Top = 14
              Width = 334
              Height = 24
              TabOrder = 0
              Text = 'Umum'
              Items.Strings = (
                'Umum'
                'Gigi'
                'KIA'
                'Mata'
                'KB')
            end
          end
          object Panel1: TPanel
            Left = 2
            Top = 64
            Width = 423
            Height = 41
            Align = alTop
            Caption = 'panelAntri'
            TabOrder = 2
            object Label1: TLabel
              Left = 22
              Top = 15
              Width = 83
              Height = 16
              Caption = 'Nomor Antrian'
            end
            object SpinAntriAuto: TSpinEdit
              Left = 152
              Top = 9
              Width = 121
              Height = 26
              Enabled = False
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 0
            end
            object btnPanggilAuto: TButton
              Left = 279
              Top = 9
              Width = 119
              Height = 25
              Caption = 'Panggil Berikut'
              TabOrder = 1
              OnClick = btnPanggilAutoClick
            end
          end
        end
      end
      object panel4: TPanel
        AlignWithMargins = True
        Left = 442
        Top = 3
        Width = 535
        Height = 687
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object grid1: TDBGridEh
          Left = 0
          Top = 71
          Width = 535
          Height = 423
          Align = alClient
          AllowedOperations = [alopDeleteEh]
          ColumnDefValues.Title.Alignment = taCenter
          DataSource = dataPelayanan.dsKunjungan
          DrawMemoText = True
          DynProps = <>
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SearchPanel.Enabled = True
          SearchPanel.FilterOnTyping = True
          SumList.Active = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nik'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'mr'
              Footer.Alignment = taCenter
              Footer.FieldName = 'mr'
              Footer.ValueType = fvtCount
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
              FieldName = 'tmpt_lahir'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tgl_lahir'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kartu_bpjs'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'umur'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'idxstr'
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
              FieldName = 'biaya'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'datang_rujukan'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'datang_sebab'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'datang_sebab_ket'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'poli_tujuan'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lama'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'instalasi'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'sdh_pulang'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'sdh_dilayani'
              Footer.Alignment = taCenter
              Footer.FieldName = 'sdh_dilayani'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tanggal_pulang'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'periksa_fisik'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'jenis_kunjungan'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'farmasi_ok'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lab_ok'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'bth_lab'
              Footers = <>
              Visible = False
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
              FieldName = 'bpjs_urut'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'bpjs_kunjungan'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'puskesmas'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lengkap'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tanggal_masuk'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pulang_sebab'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'antri'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 529
          Height = 38
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lbl5: TLabel
            Left = 237
            Top = 15
            Width = 26
            Height = 16
            Caption = 'POLI'
          end
          object cbbPoli: TComboBox
            Left = 278
            Top = 11
            Width = 136
            Height = 24
            AutoDropDown = True
            AutoCloseUp = True
            TabOrder = 0
            Text = 'cbbPoli'
            OnChange = cbbPoliChange
            Items.Strings = (
              'Umum'
              'Gigi'
              'Mata'
              'KIA'
              'KB')
          end
          object dtp1: TDateTimePicker
            Left = 32
            Top = 11
            Width = 106
            Height = 24
            Date = 42792.337347361110000000
            Time = 42792.337347361110000000
            TabOrder = 1
            OnChange = dtp1Change
          end
        end
        object panel7: TPanel
          Left = 0
          Top = 44
          Width = 535
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object dbtxt1: TDBText
            Left = 0
            Top = 0
            Width = 535
            Height = 27
            Align = alClient
            Color = clActiveCaption
            DataField = 'nama_lengkap'
            DataSource = dataPelayanan.dsKunjungan
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 503
          end
        end
        object pageControl1: TJvPageControl
          Left = 0
          Top = 494
          Width = 535
          Height = 193
          ActivePage = ts3
          Align = alBottom
          TabOrder = 3
          object ts1: TTabSheet
            Caption = 'diagnosa'
            object gridDiag: TDBGridEh
              Left = 0
              Top = 0
              Width = 527
              Height = 137
              Align = alClient
              DataSource = dataPelayanan.dsRm
              DrawMemoText = True
              DynProps = <>
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'id_diag'
                  Footers = <>
                  Visible = False
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'idxstr'
                  Footers = <>
                  Visible = False
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'idx'
                  Footers = <>
                  Width = 48
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'tanggal_diagnosa'
                  Footers = <>
                  Width = 157
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'dokter'
                  Footers = <>
                  Width = 170
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'penyakit'
                  Footers = <>
                  Width = 90
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'anamnese'
                  Footers = <>
                  Visible = False
                  Width = 621
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'tindakan'
                  Footers = <>
                  Width = 298
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'adl_baru'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'non_spesialis'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object navDiag: TJvDBNavigator
              Left = 0
              Top = 137
              Width = 527
              Height = 25
              DataSource = dataPelayanan.dsRm
              VisibleButtons = [nbDelete, nbPost, nbCancel, nbRefresh]
              Align = alBottom
              TabOrder = 1
            end
          end
          object ts2: TTabSheet
            Caption = 'Pemeriksaan Fisik'
            ImageIndex = 1
            object gridFisik: TDBGridEh
              Left = 0
              Top = 0
              Width = 527
              Height = 137
              Align = alClient
              DataSource = dataPelayanan.dsFisik
              DrawMemoText = True
              DynProps = <>
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'idxstr'
                  Footers = <>
                  Visible = False
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'tinggi_badan'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'berat_badan'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'sistole'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'diastole'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'respiratory'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'heart'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kesadaran'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'keluhan'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object navFisik: TJvDBNavigator
              Left = 0
              Top = 137
              Width = 527
              Height = 25
              DataSource = dataPelayanan.dsFisik
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
              Align = alBottom
              TabOrder = 1
              OnClick = navFisikClick
            end
          end
          object tsData: TTabSheet
            Caption = 'tsData'
            ImageIndex = 5
            object memoData: TMemo
              Left = 0
              Top = 0
              Width = 527
              Height = 162
              Align = alClient
              Lines.Strings = (
                'memoData')
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object tsResponse: TTabSheet
            Caption = 'tsResponse'
            ImageIndex = 6
            object memoResponse: TMemo
              Left = 0
              Top = 0
              Width = 527
              Height = 162
              Align = alClient
              Lines.Strings = (
                'memoData')
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object tsALL: TTabSheet
            Caption = 'tsALL'
            ImageIndex = 7
            object memoAll: TMemo
              Left = 0
              Top = 0
              Width = 527
              Height = 162
              Align = alClient
              Lines.Strings = (
                'memoData')
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object tsOlah: TTabSheet
            Caption = 'tsOlah'
            ImageIndex = 10
            object memoOlah: TMemo
              Left = 209
              Top = 0
              Width = 209
              Height = 162
              Align = alLeft
              Lines.Strings = (
                'memoData')
              ScrollBars = ssBoth
              TabOrder = 0
            end
            object memoSQL: TMemo
              Left = 0
              Top = 0
              Width = 209
              Height = 162
              Align = alLeft
              Lines.Strings = (
                'memoData')
              ScrollBars = ssBoth
              TabOrder = 1
            end
          end
          object ts3: TTabSheet
            Caption = 'ts3'
            ImageIndex = 12
            object panelKontrol: TPanel
              Left = 0
              Top = 0
              Width = 300
              Height = 162
              Align = alLeft
              Caption = 'panelKontrol'
              TabOrder = 0
              object dbDTtanggal: TJvDBDateEdit
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 292
                Height = 24
                Align = alTop
                DataField = 'tanggal'
                ShowNullDate = False
                TabOrder = 0
              end
              object dbeditNomor: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 34
                Width = 292
                Height = 24
                Align = alTop
                DataField = 'nomor'
                TabOrder = 1
              end
              object checkBPJS: TCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 64
                Width = 292
                Height = 17
                Align = alTop
                Caption = 'checkBPJS'
                TabOrder = 2
              end
              object dbeditIdxstr: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 127
                Width = 292
                Height = 24
                Align = alTop
                DataField = 'idxstr'
                DataSource = dataPelayanan.dsKunjungan
                TabOrder = 3
                OnChange = dbeditIdxstrChange
              end
              object checkDirujuk: TJvCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 87
                Width = 292
                Height = 17
                Align = alTop
                Caption = 'checkDirujuk'
                TabOrder = 4
                LinkedControls = <>
              end
              object chk1NonSpesialis: TJvCheckBox
                Left = 1
                Top = 107
                Width = 298
                Height = 17
                Align = alTop
                Caption = 'chk1NonSpesialis'
                TabOrder = 5
                LinkedControls = <>
              end
            end
            object pnlKontrol2: TPanel
              Left = 300
              Top = 0
              Width = 227
              Height = 162
              Align = alClient
              Caption = 'pnlKontrol2'
              TabOrder = 1
              object btn1: TButton
                Left = 152
                Top = 48
                Width = 75
                Height = 25
                Caption = 'btn1'
                TabOrder = 0
                OnClick = btn1Click
              end
              object dbedit1PoliLayanan: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 219
                Height = 24
                Align = alTop
                DataField = 'poli_layanan'
                DataSource = dataPelayanan.dsKunjungan
                TabOrder = 1
                OnChange = dbedit1PoliLayananChange
              end
            end
          end
        end
      end
    end
  end
  object panelMenu: TJvPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object btn_close: TJvTransparentButton
      AlignWithMargins = True
      Left = 941
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actClose
      Align = alRight
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 3
      ExplicitLeft = 812
      ExplicitHeight = 32
    end
    object btnDiagEdit: TJvTransparentButton
      AlignWithMargins = True
      Left = 553
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actEdit
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
      Images.ActiveImage = images1
      Images.ActiveIndex = 4
      ExplicitLeft = 131
      ExplicitHeight = 32
    end
    object btnLabTes: TJvTransparentButton
      AlignWithMargins = True
      Left = 515
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actLab
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 5
      ExplicitLeft = 55
      ExplicitHeight = 32
    end
    object bevel1: TJvBevel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 430
      Height = 39
      Align = alLeft
      Shape = bsSpacer
      Edges = []
      Inner = bvSpace
      Outer = bvSpace
    end
    object btnPulang: TJvTransparentButton
      AlignWithMargins = True
      Left = 591
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actPulang
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 7
      ExplicitLeft = 179
      ExplicitTop = 4
      ExplicitHeight = 30
    end
    object btnRefresh: TJvTransparentButton
      AlignWithMargins = True
      Left = 895
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actRefresh
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 8
      ExplicitLeft = 857
      ExplicitTop = 2
    end
    object btnPindah: TJvTransparentButton
      AlignWithMargins = True
      Left = 629
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actPindah
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 9
      ExplicitLeft = 445
      ExplicitTop = 10
    end
    object btnObat: TJvTransparentButton
      AlignWithMargins = True
      Left = 477
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actObat
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 1
      ExplicitLeft = 55
      ExplicitHeight = 32
    end
    object btnTindakan: TJvTransparentButton
      AlignWithMargins = True
      Left = 439
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actTindakan
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 0
      ExplicitLeft = 55
      ExplicitHeight = 32
    end
    object btnCetakRujukan: TJvTransparentButton
      AlignWithMargins = True
      Left = 705
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actPrint
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 2
      Images.GrayIndex = 10
      Images.DisabledIndex = 10
      Images.DownIndex = 10
      Images.HotIndex = 10
      ExplicitLeft = 667
      ExplicitTop = 4
    end
    object btnImunisasi: TJvTransparentButton
      AlignWithMargins = True
      Left = 743
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actImunisasi
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 11
      ExplicitLeft = 445
      ExplicitTop = 10
    end
    object btnPoned: TJvTransparentButton
      AlignWithMargins = True
      Left = 781
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actPoned
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 12
      ExplicitLeft = 445
      ExplicitTop = 10
    end
    object btnPrintR: TJvTransparentButton
      AlignWithMargins = True
      Left = 667
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actPrintR
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 13
      Images.GrayIndex = 13
      Images.DisabledIndex = 13
      Images.DownIndex = 13
      Images.HotIndex = 13
      ExplicitTop = 4
    end
    object btnTindakanGigi: TJvTransparentButton
      AlignWithMargins = True
      Left = 819
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actTindakanGigi
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 14
      ExplicitLeft = 857
      ExplicitTop = 2
    end
    object btnRujuk: TJvTransparentButton
      AlignWithMargins = True
      Left = 857
      Top = 3
      Width = 32
      Height = 39
      Cursor = crHandPoint
      Action = actRujuk
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 15
      ExplicitTop = 2
    end
  end
  object images1: TImageList
    Height = 32
    Width = 32
    Left = 16
    Top = 16
    Bitmap = {
      494C010110008800280320002000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A000000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9CDC2FFAC9179FFBCA794FFFCFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFAFFBDA795FFAD937BFFD8CEC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000031806230F8520C412A526F31DB2
      32FF2AB940FF42C558FF45C65CFF4AC962FF48C85FFF3BC151FF16AA22FF15AB
      24FF0AA416FF06890DDB0363099E0007000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B3B3B8343434395000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAB99FF7B512CFF7B512CFF7B512CFFA88C
      72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA88C72FF7B512CFF7B512CFF7B512CFFC4B2A1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000108122BC15AC2DFB2CB83FFF5CD375FF7EE4
      98FF81E59AFF81E59AFF80E599FF7CE498FF7AE396FF75E192FF3CBF4CFF69DD
      8AFF61D983FF37C04FFF1FB12FFF04940AED0254048800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002727
      274D575757B4BCBCBCFDA2A2A2FE676767DD3F3F3F8300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD4C6BAFF7B512CFF825733FFCEC0B4FF8D6848FF7B51
      2CFFF0EBE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EB
      E6FF7B512CFF8E6949FFCEBEB0FF7D542FFF7B512CFFD9CDC3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FEFE
      FE009E9E9E0000000000040202000000000021212100FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0002020200010101000000000005050500FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000F6F20A125B941FF7BE397FF80E599FF3DBC46FF89E89FFF8CE9
      A1FF8DE9A2FF8DE9A2FF8CE9A2FF89E89FFF86E79DFF80E599FF5FD273FF6BDC
      88FF6FDF8EFF65DC88FF61DB85FF009A01FF38C355FF039707F5001E00300000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010102242424447E7E7EF8B8B8B8FFFFFF
      FFFFFFFFFFFFFFFFFFFFBDBDBDFF848484FF848484FF7E7E7EFF787878FF5454
      54B3282828560000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F3F1FF845B38FF7B512CFFDBD0C7FFFFFFFFFFBAA390FF7B51
      2CFFC9B7A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAB8
      A9FF7B512CFFB9A28EFFFFFFFFFFD7CABFFF7B512CFF88603EFFFAF8F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF000909
      0900161616002F2F2F00373737002E2E2E001918190000000000FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F2F1000A0A0A002525250039393A00393939001F1E1E000101
      0100FBFBFB00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000F6E229C38C354FF81E59AFF85E69CFF0BA00DFF8CE8A0FF92EB
      A5FF93EBA6FF93EBA6FF92EBA6FF8FEAA3FF8CE9A1FF85E69DFF59CE6AFF75E1
      92FF73E191FF69DD8BFF64DC87FF009900FF40C85FFF0DA417FF0042026B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C15696969D8999999FEFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFFEFEFEFFBEBEBEFF878787FF868686FF858585FF848484FF7B7B
      7BFF767676FE4949499D1E1E1E40000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAE947CFF7B512CFFB69F8AFFFFFFFFFFFFFFFFFFE3DAD3FF7B51
      2CFF9F8165FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA284
      69FF7B512CFFE1D8CFFFFFFFFFFFFFFFFFFFAE947DFF7B512CFFB69F8AFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00EFEFEF001715
      160022222000A3A2A100474442009593910023222100171618006C6C6C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00070808002A2A2900B6B4B100534F4D006E6C6900999693001F1D
      1F0001010100FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000D521A732CBE4AFF89E8A0FF8EE9A2FF22AC26FF70D77CFF9EEF
      ADFFA0EFAEFFA0EFAEFF9EEFADFF9AEDAAFF96ECA8FF8EE9A2FF1CA921FF80E5
      99FF7AE396FF6FE08FFF6ADE8BFF2AB231FF59D87EFF12A91FFF014B05790000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C6A6F6F6FD1D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFCFCFCFFF9F9
      F9FFF7F7F7FFF7F7F7FFBEBEBEFF8E8E8EFF848484FF6E6E6EFF727272FF8282
      82FF888888FF858585FF848484FF777777FE6F6F6FFD333333700A0A0A180000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECE6E1FF7B512CFF855D3BFFFBF9F8FFFFFFFFFFFFFFFFFFFDFCFCFF835A
      37FF805633FFF9F8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9FF8259
      36FF815733FFFBFAF9FFFFFFFFFFFFFFFFFFF7F5F3FF825835FF7C522EFFF1ED
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE003737370008080800211E
      21007D7B7800413D3B00403D3A00433E3B00747371001C1D1D00050605001717
      17001617170017171700161616001C1D1A007977770084848500838383007C7A
      7A00333335001F1D1D007A76750045433F00403D3A00423F3C004E4C48001313
      11001312120018181700BCBCBC00FFFFFF000000000000000000000000000000
      0000000000000A3A145022BA43FF8DE9A2FF92EBA5FF9BEEABFF9FEFAEFFA4F1
      B1FFA6F1B2FFA6F1B2FFA4F1B1FF9FEFAEFF9BEEABFF98EAA2FF2BAF2BFF83E6
      9CFF7DE498FF72E091FF6CDE8CFF55CB65FF5CD982FF11A71DFF0245046F0000
      00000000000000000000000000000000000000000000121212205656569AB2B2
      B2FFEAEAEAFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFAFAFAFFF9F9F9FFF6F6
      F6FFF4F4F4FFF5F5F5FFC0C0C0FF929292FF878787FF656565FF686868FF6C6C
      6CFF717171FF858585FF888888FF858585FF838383FE757575FE6B6B6BF92727
      275A0606060B000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA98D74FF7B512CFFC6B4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68A
      70FF7B512CFFDDD2C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D1FF7B51
      2CFFA18367FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA996FF7B512CFFB199
      83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F0033333300080808001919
      19005C5C580068656300706D6B006C6968005754520012101100101010003334
      320033333300343332002F2F2F00CACAC800D3D0CE00D4D1D100CFD0CE00CDCE
      CD0034343400222324006563600065625E006E6C69006F6D6A00625F5C004241
      3F0022212200100F0F00CECFCE00FEFEFE000000000000000000000000000000
      000000000000000100021DA53DE394EBA6FF99EDAAFFA4F1B1FFA8F2B4FFAFF5
      B9FFB2F5BAFFB2F6BAFFB0F5B9FFA8F2B4FFA4F1B1FF039B04FF60CF6CFF89E8
      9FFF83E69BFF76E294FF71E090FF65DC88FF5FDA84FF07A00FFF012103340000
      0000000000000000000000000000000000000000000044444480C7C7C7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFF9F9F9FFF7F7F7FFF4F4F4FFF4F4F4FFF4F4
      F4FFE7E7E7FF9A9A9AFF848484FF787878FF898989FF979797FF969696FF8080
      80FF6C6C6CFF606060FF636363FF676767FF717171FF878787FF888888FF8585
      85FF828282FE6D6D6DFE2B2B2B6B00000000FFFFFFFFFFFFFFFFFFFFFFFFF0EB
      E7FF7B512CFF855D3BFFFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEBE
      B0FF7B512CFFB79F8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEAA97FF7B51
      2CFFC8B6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6F4FF815834FF7D54
      2FFFF5F2EFFFFFFFFFFFFFFFFFFFFFFFFFFF28282800353532001D1D1D00211F
      2100524E4C008A888600C5C1C000A09D9B004B4744001E1E1E00070707003334
      330033333500313331002F2F2F00D3D3D300D5D4D400D6D4D400D3D4D400E4E3
      E200393939002A262B0051504C006C686700B9B8B600BCBAB900484441000505
      05002725270024242400D5D5D300FEFEFE000000000000000000000000000000
      0000000000000000000014762CA196ECA8FF9CEEACFFA7F2B3FFACF4B7FFB5F7
      BCFFB8F7BEFFB8F8BEFFB5F7BCFFADF4B7FFA6F1B2FF1FAB23FF95ECA7FF8BE8
      A1FF85E69DFF78E295FF72E091FF66DC89FF60DB85FF069A0FF50006000A0000
      0000000000000000000000000000000000000000000044444480C6C6C6FFFEFE
      FEFFFFFFFFFFFBFBFBFFF9F9F9FFF6F6F6FFF4F4F4FFF4F4F4FFEEEEEEFFABAB
      ABFF9C9C9CFFDCDCDCFFC3C3C3FF838383FF6C6C6CFF747474FF888888FF9898
      98FF979797FF7C7C7CFF686868FF5D5D5DFF606060FF666666FF717171FF8A8A
      8AFF878787FF757575FD3131317700000000FFFFFFFFFFFFFFFFFFFFFFFFBAA4
      91FF7B512CFFBDA896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EC
      E8FF7B512CFF8D6848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF947153FF7B51
      2CFFEBE5E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59D88FF7B51
      2CFFC2AF9EFFFFFFFFFFFFFFFFFFFFFFFFFF2A2A2C0035333300303030002826
      28000B0B0A003C393700393430003D383600070707003635360030302F003535
      330035353400353535002E2E2E00D7D5D500D8D7D700DAD5D600D9D7D600D7D5
      D5004C4B4C00161516001D1A1B005A5551003A3735003F3C3700383634002727
      270003030300D2D2CF00DBD8D8006D6BC9000000000000000000000000000000
      00000000000000000000000401065ED67AFF9FEFAEFFABF3B6FFB1F5BAFFBDF9
      C2FFC2FBC5FFC3FBC5FFBEF9C2FFAEF1B2FF069D07FF029A02FF4FC558FF8DE9
      A2FF87E79EFF7AE396FF74E192FF68DD8AFF5ED981FF03410766000000000000
      0000000000000000000000000000000000000000000045454580C5C5C5FFF9F9
      F9FFF9F9F9FFF6F6F6FFF6F6F6FFC7C7C7FFADADADFFD3D3D3FFEAEAEAFFEAEA
      EAFFE6E6E6FFE6E6E6FFC3C3C3FFA2A2A2FFA0A0A0FFA0A0A0FFA0A0A0FF8585
      85FF707070FF717171FF868686FF989898FF979797FF787878FF636363FF5A5A
      5AFF909090FF787878FD3131317700000000FFFFFFFFFFFFFFFFFCFCFBFF865F
      3CFF7C522EFFF3EFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF967355FF7B512CFFE8E1DBFFFFFFFFFFFFFFFFFFF0EBE6FF7B512CFF8E69
      49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE8E4FF7B51
      2CFF8C6646FFFEFEFEFFFFFFFFFFFFFFFFFF9B9B9B00BBBDBD00050504000707
      07002A2829002120200016161600201D1E003634370004040400040404008A89
      8A008C8B8C008484840078787800D8D7D600DAD9D800DCDAD900DCDADA00DBDA
      DA00B7B8B5004E4E4D001716170029262800161615001B1A18002C2A2B000704
      040042424300DBDAD800DCD9DB002E28BD000000000000000000000000000000
      00000000000000000000000000002CC153FE93EAA4FFACF3B6FFB2F6BAFFBEFA
      C3FFC5FCC7FFC5FCC7FFBFFAC3FF3DB83EFF78BE78FF99C899FF049B04FF8EE9
      A2FF87E79EFF7AE396FF74E192FF68DD8AFF3DC457FF000A000F000000000000
      0000000000000000000000000000000000000000000045454580C4C4C4FFF7F7
      F7FFF7F7F7FFD4D4D4FFB9B9B9FFD3D3D3FFE8E8E8FFEBEBEBFFE9E9E9FFE5E5
      E5FFE4E4E4FFE3E3E3FFC9C9C9FFADADADFFA8A8A8FFA2A2A2FFA0A0A0FF9F9F
      9FFFA0A0A0FF878787FF717171FF707070FF848484FF989898FF979797FF7676
      76FF929292FF7A7A7AFD3232327700000000FFFFFFFFFFFFFFFFD9CDC2FF7B51
      2CFFA4876CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC7B4A4FF7B512CFFB29983FFFFFFFFFFFFFFFFFFBCA693FF7B512CFFBEA9
      96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A79
      5DFF7B512CFFDACFC4FFFFFFFFFFFFFFFFFFBAB9B500DCDADA00EFEFEF00DDDD
      DB00B9B9B800030202000202020003030300DCDBDB00E3E0E100B7B6B800D4D4
      D400D6D5D400D6D5D600CDCDCB00DADADA00DEDCDB00DBDDDB00DCDDDB00E1DD
      DC00DEDEDC00B2B2B100A2A2A2002421230003030300050405004E4E4E009C9C
      9C00DCDDDB00DBDCDC00DBDDDB002313F9000000000000000000000000000000
      000000000000000000000000000006250F3125B94DF3A9F3B5FFAFF5B9FFB9F8
      BFFFBDF9C2FFB1F3B5FF45BC46FFC3D2C3FFD6D6D6FFD0D0D0FFCDCDCDFF18A7
      1CFF85E69CFF79E395FF73E191FF2EBA43FF0A9015DD00000000000000000000
      0000000000000000000000000000000000000000000042424278ADADADFFD5D5
      D5FFE6E6E6FFEEEEEEFFEBEBEBFFE8E8E8FFE6E6E6FFE4E4E4FFE2E2E2FFDFDF
      DFFFDDDDDDFFDADADAFFD6D6D6FFCACACAFFC5C5C5FFBBBBBBFFB7B7B7FFADAD
      ADFFA9A9A9FFA2A2A2FFA0A0A0FF9F9F9FFFA0A0A0FF898989FF737373FF6E6E
      6EFF818181FF818181FB3131317700000000FFFFFFFFFFFFFFFFA78B71FF7B51
      2CFFD9CCC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F2F0FF7E5430FF7E5430FFF6F3F1FFFBFAF9FF835A37FF7B512CFFF0EB
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD1
      C7FF926E4FFFE3DAD3FFFFFFFFFFFFFFFFFFB4B5B4000757FB00D9D2C600FDFC
      FC00E9E6E600E0DFDD00DDDDDC00DFDEDB00E6E6E500E1E1E500DAD8D700DBD9
      DA00DADCD900D9D9D700D1D0CE00DBDBDB00DFDFDC00E1E0DC00E1E0DC00E2E1
      DF00E1E1DD00E4E1E400E1E0E000D0CFD000B5B3B500BEBBBA00F0F0EE00E2DE
      DC00E2E1DE00E4E1DE00E3DEDC00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000E431C586ADB85FFABF3B6FFB5F6
      BCFFB7F7BEFF3DB83EFF6AB96AFFD3D3D3FFD0D0D0FFCACACAFFC6C6C6FF0099
      00FF6CD981FF78E295FF72E091FF0CA21BF70327063C00000000000000000000
      0000000000000000000000000000000000000000000042424277B9B9B9FFEFEF
      EFFFEDEDEDFFE9E9E9FFE8E8E8FFE5E5E5FFE4E4E4FFE1E1E1FFDFDFDFFFDCDC
      DCFFDADADAFFDEDEDEFFE7E7E7FFDBDBDBFFD5D5D5FFCACACAFFC5C5C5FFBBBB
      BBFFB7B7B7FFAEAEAEFFA9A9A9FFA2A2A2FFA0A0A0FF9F9F9FFFA0A0A0FF8C8C
      8CFF767676FF6C6C6CFE3232327700000000FFFFFFFFFAF8F7FF805632FF835A
      38FFFCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBEAA97FF7B512CFF916C4DFF947052FF7B512CFFB69E89FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9190000860FB00075DED00716E
      DF005D58D100F5F5F000FAF9FC00E5E5D8005751CC006966DB006F69DB007875
      DB007874E0007875DD00726FD2000000D8000000DC000000DC000000DD000000
      DF000000E2000000E4000000E4000000E1000000E1000000E1000000E0000000
      E1000000DF000000DD000000DD00FCFCFE000000000000000000000000000000
      000000000000000000000000000000000000000000000829103622A243D635BB
      43FF049B04FFCDCECDFFC5CACEFF58A5F1FF3D9CFAFF58A2ECFF98B0C8FF269E
      26FF3BBC47FF2CB941FF0FA220F4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043434377BBBBBBFFE8E8
      E8FFE7E7E7FFE4E4E4FFE3E3E3FFDFDFDFFFDEDEDEFFDADADAFFD8D8D8FFD5D5
      D5FFD8D8D8FFEEEEEEFFECECECFFEBEBEBFFEAEAEAFFEAEAEAFFE7E7E7FFDDDD
      DDFFD6D6D6FFCBCBCBFFC6C6C6FFBCBCBCFFBAB9BAFFAFA8AEFFB3ACB2FFA3A2
      A3FFA0A0A0FF848484FB3232327700000000FFFFFFFFD9CDC3FF7B512CFFA98E
      74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA88C72FF7B512CFF7B512CFFA4876CFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9C9B00086FFB0008B4FC000300
      B30001008E000500D1000500C9000500C2000400BC000500C3000500CD000500
      D1000500D1000500D0000500C7000300D4000600D9000600DB000600DB000600
      DF000600E2000600E2000600E5000500E3000000660001009C000600E4000600
      E0000600DE000600DF000500DA00FDFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000602091DA8
      3DE639B952FE8BB6DDFF409DF9FF3EA0FFFF45A4FFFF3A9EFFFF3399FDFF379E
      39FF10A61BFF0D801BC1011C0429000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043434377BABABAFFE5E5
      E5FFE4E4E4FFE1E1E1FFE0E0E0FFDCDCDCFFDADADAFFD6D6D6FFD5D5D5FFDADA
      DAFFF0F0F0FFEEEEEEFFEEEEEEFFEDEDEDFFECECECFFEBEBEBFFEAEAEAFFEAEA
      EAFFE7E7E7FFDCDCDCFFD7D7D7FFCECDCEFFA09E9FFF4AC35FFF4BBE5CFFC5C3
      C5FFACACACFF858585FC3131317400000000FFFFFFFFB29A84FF7B512CFFD2C3
      B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DDD6FFE5DCD5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFB00F8FAF7000C05C6000500
      D6000502DC000500C6000500C5000400B3000400AC000400BA000500CA000500
      D1000400D1000500CF000500C6000500D6000600DA000600DF000600DF000600
      E2000600E5000600E8000600E6000500E2000805DD000400CD000600E5000600
      E2000600E2000600DE000500DE00FDFDFE000000000000000000000000000000
      00000000000000000000000000000000000000000000000406080025354D0421
      323C297ED3D355AEFFFF5CB3FFFF5AB1FFFF58B0FFFF54AEFFFF52ACFFFF3298
      FEFE164777770000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043434377B9B9B9FFE1E1
      E1FFDEDEDEFFDADADAFFD8D8D8FFD5D5D5FFD3D3D3FFDEDEDEFEF6F6F6FEDDDD
      DDFFE8E8E8FFF5F5F5FFF2F2F2FFF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
      EDFFECECECFFEBEBEBFFEBEBEBFFEFEEEFFF9D989DFF3FE163FF33D450FF29B9
      37FFD0CBCFFF646464E80E0E0E1F00000000FFFFFFFF8E694AFF7B512CFFF1ED
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F5F3FF947052FFB7A08CFFFFFFFFFFFFFFFF00FEFEFE00E1E4E200F3F3
      F6005750DD008B87DD00AAA7D2009995B50086839E00A09FBF00B1B0D200B6B5
      D900BAB7DE00BAB7DF00B2AFD500FEFFD800FFFFDB00FFFFDC00FFFFDC00FFFF
      DD00FFFFDD00FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFFDE00FFFFDE00FEFF
      DF00FFFFDC00FFFFDC00FEFFDD00FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000006790D40080B3FF0B88
      C8FF3D9FFFFF61B6FFFF61B6FFFF5EB4FFFF5DB3FFFF58B0FFFF56AFFFFF44A4
      FFFF3094F9F90000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3A66ACACACFFDEDE
      DEFFDBDBDBFFD7D7D7FFD5D5D5FFCFCFCFFDDFDFDFFCC5C5C5FFA7A7A7FFB1B1
      B1FFBABABAFFD1D1D1FFE0E0E0FFF4F4F4FFF3F3F3FFF1F1F1FFF0F0F0FFEFEF
      EFFFEEEEEEFFEDEDEDFFECECECFFECECECFFF2F1F2FF888B89FF779E7DFFC6C6
      C7FFDEDCDDFD4949499E0000000000000000F3EFECFF7B512CFF8D6747FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F1EFFF7B512CFF835A37FFFEFEFEFFFFFFFF00FFFFFF00FEFEFE00DDDE
      DB00FEFEFD00F9F8F800D1CFCD0063637B0065646100817F7E00B1AEAC00C2BE
      BC00CDCBC800DED9D800D9D6D600E5E3E300E7E5E300E8E7E500E9E7E500ECE7
      E800ECE8E900EDE9E800EAEEDB00EEEEDF00EBECE200EEEEEE00EBE9E800EEE9
      EA00EBE8E800E8E7E500E5E5E5008280D1000000000000000000000000000000
      00000000000000000000000000000000000000010102008CBFFF0097CAFF4BAB
      EBFF6BBCFFFF6BBCFFFF6ABCFFFF67BAFFFF65B9FFFF60B6FFFF5DB4FFFF57B0
      FFFF4DAAFFFF0B253E3E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303067676
      76C48F8F8FF9CACACAFEE6E6E6FFFFFFFFFFD6D7D7FFBAA796FF8B837AFF5759
      5BFF5D5E5FFF79797AFF8D8D8EFFA5A5A5FFAEAEAEFFBEBEBEFFC9C9C9FFE7E7
      E7FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEEEEEEFFEEEEEEFFEFEFEFFFA2A2
      A2FE5B5B5BD0000000000000000000000000DDD2C9FF7B512CFFAA8F76FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF947052FF7B512CFFEEE9E4FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C5C0B100EAE8E80058554B00ECECED00FFFFFF00B39B6700A1823B00A083
      3A00A1823B00A0833900CFCCCC00E7E5E500E8E6E400EAE8E600EBE9E700EDE9
      E900EDF1E600EFEEEA00E7871300E98D1100EA910800EFEEEB00EFECEA00EAE9
      E900E8E8E700E8E6E700E9E7E400332DB7000000000000000000000000000000
      000000000000000000000000000000000000000D141D0093C6FF0093C6FF66BA
      F9FF70BFFFFF70BFFFFF6FBFFFFF6CBDFFFF6ABBFFFF64B8FFFF61B6FFFF5AB2
      FFFF57AFFFFF1F62A3A300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909090F4E4E4E846D6D6DBDA0A0A0FE969697FFFFE8C8FFFFE4C3FFE4C8
      ACFFB9A794FF646563FF595B5DFF6E6F70FF7E8080FF9E9E9EFFA7A7A7FFB7B7
      B7FFC0C0C0FFDDDDDDFFE8E8E8FFF0F0F0FFF1F1F1FFF7F7F7FFC9C9C9FF4949
      499D0707070D000000000000000000000000C8B6A6FF7B512CFFC3B09FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB09781FF7B512CFFD7CABFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F5F000E4E5E50083848900AA904600AA914400A98E4400A98E4400AA90
      4400A98F4300A98F4300B6B5B600E7E6E500E9E6E600EAE9E600E8E8E700EEE8
      E700E1861000E17B1000E8881200EB8E1200ED970B00E6861100DE781000EDE9
      E900EEE9EA00EAE9E900EAE6E6005A58A7000000000000000000000000000000
      000000000000000000000000000000000000002536500098CBFF008CBFFF78C4
      FFFF79C5FFFF79C5FFFF78C4FFFF74C2FFFF72C0FFFF6CBDFFFF68BAFFFF60B6
      FFFF5CB3FFFF2A94F3FE0822373B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000525454BBFFE6CCFFFFE3C9FFFFE1
      C5FFFFE0C3FFFFDFC0FFFFDFBEFFFFE1BDFFFFE1BBFFC4AC95FF9A8C80FF5D5F
      61FF646566FFFFFFFFFFF2F2F2FFA5A5A5FF767676F622222242000000010000
      000000000000000000000000000000000000B69F8AFF7B512CFFD5C8BCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4
      F3FFEEEBE9FFEDE7E1FFE9E2DCFFE6DED7FFE6DED7FFE9E2DCFFEDE7E1FFEEEB
      E9FFF6F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCAB9AAFF7B512CFFC0AC9BFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00BDA75B00F1F1EF00B59E5000B29C4E00B39C4D00B49C4C00B49C
      4C00B39C4C00B39C4D00B6B5B600E8E7E500E9E8E500EAE7E600EDE8E800E4A4
      3700E1851000E68A1200E78D1100EC911300E98E1200E88A1200E5881200EBE4
      D900EEE9E800EBE9E600E8E6E500FAFAFA000000000000000000000000000000
      000000000000000000000000000000000000002F45660099CCFF0089BCFF7DC7
      FFFF7EC8FFFF7EC8FFFF7DC7FFFF79C5FFFF76C3FFFF6FBFFFFF6BBCFFFF63B7
      FFFF5FB5FFFF0584BBFF0045618A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010105666769EEFFE7CFFFFFE5CDFFFFE3
      C9FFFFE2C7FFFFE0C4FFFFDFC2FFFFDDBEFFFFDCBDFFFFDEBAFFFFDFB9FFF6D2
      AEFFA89786FF919191FF707070EC323232610B0B0B1500000000000000000000
      000000000000000000000000000000000000A98E74FF7B512CFFEAE3DDFFFFFF
      FFFFFFFFFFFFF0EBE7FFD8CCC1FFBFAB99FFA98E75FF977558FF896241FF7952
      30FF734925FF724721FF724620FF714620FF714620FF724620FF724721FF7349
      25FF795230FF896241FF977558FFA98E75FFBFAB99FFD8CCC1FFF0EBE7FFFFFF
      FFFFFFFFFFFFE5DDD6FF7B512CFFAD937BFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFC00E5E3E5005B5D5D00BDAB5800BDAB5800BEAB5800BEAB
      5800BDAA5700BEAB5700B3B1B300E8E7E700E9E7E600EDE8E800EEECE900EEED
      E900EEEDE600E5891100E78D1100E88E1200E78D1200E58B1200EEFBFA00EFED
      EA00EDEAE900EDE8E800EAE8E700FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000C641E9406A098FF0085B8FF87CD
      FFFF88CEFFFF89CEFFFF87CDFFFF81C9FFFF7CC7FFFF74C2FFFF70BFFFFF67BA
      FEFF3FA4E4FF0085B8FF0072A2EA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040424283B6ADA5FFFFEAD7FFFFE9D5FFFFE7
      D2FFFFE6D0FFFFE5CCFFFFE4CBFFFFE2C7FFFFE1C5FFFFDFC1FFFFDEBFFFFFE1
      BEFF9F9385FE0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4876CFF7B512CFFC9B7A8FFB79F
      8BFF906B4CFF764A25FF70441FFF70441EFF734823FF7A502BFF835A36FF8D65
      41FF956E4BFF9A7553FF9F7A59FFA17D5BFFA17D5BFF9F7A59FF9A7553FF956E
      4BFF8D6541FF835A36FF7A502BFF734823FF70441EFF70441FFF764A26FF906B
      4CFFB7A08BFFC9B7A8FF7B512CFFA4876CFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EDEBD400EFEDEB0095894800C9BB6500C9BC6900CABD
      6700C9BC6800C9BD6600A8A7A900E9E6E500EAE8E600EDE9E700ECE9E800EAE9
      CB00E1861000E3871100E68A1200E78C1200E78A1200E1871100E0841100EDEF
      F000EEE9E800EDE9E700EDE8E900FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000128C27CA14AE47FF0087B0FF8BCF
      FFFF8DD1FFFF8DD1FFFF8BCFFFFF84CBFFFF80C9FFFF77C3FFFF71C0FEFF2095
      CDFF0082B6FF008FC2FF0072A4F1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000656565D8E8DBCEFFFFEDDCFFFFECDAFFFFEA
      D6FFFFE9D4FFFFE7D0FFFFE6CEFFFFE4CBFFFFE3C9FFFFE1C6FFFFE0C4FFFFE5
      C6FF78726CEC0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A98E74FF7B512CFF754A24FF7043
      1EFF7B522DFF926B48FFAB8B69FFC5AA8BFFD9C2A5FFE9D4B9FFF3E0C6FFF9E8
      CEFFFDECD3FFFFEFD5FFFFF0D7FFFFF1D7FFFFF1D7FFFFF0D7FFFFEFD5FFFDEC
      D3FFF9E8CEFFF3E0C6FFE9D4B9FFD9C2A5FFC5AA8BFFAB8B69FF926B48FF7B52
      2DFF70431DFF754A24FF7B512CFFA98E74FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EDECDF00F6F7F60066614700A89C5700ACA0
      5900AB9E5900988E4D00E1DFDD00E8E7E600EDE8E600EBE8E700ECE9E900EDF5
      F500DE840F00DD851000E1871000E18A1100E4881000E0871000DD851100EEEB
      EA00EFE9E800EEE8E800EAE7E600FEFEFE000000000000000000000000000000
      0000000000000000000000000000041F0A2D1BB53AFF78E090FF25B941FF86D0
      EDFF95D6FFFF8ED2FBFF5AB5E3FF0A8BBDFF0085B8FF008ABDFF008FC2FF0098
      CBFF0099CCFF008ABDFF006883D6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCC6BFFFFFF6EBFFFFF1E5FFFFF0E3FFFFEE
      DFFFFFEDDDFFFFEBD9FFFFEAD7FFFFE8D4FFFFE7D2FFFFE6CEFFFFE5CCFFC9B8
      A6FF272929640000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8A18DFF754A25FF956F4CFFCCB4
      97FFECD9BEFFFEEED5FFFFF5DCFFFFF5DCFFFFF2D8FFFFEFD5FFFEECD3FFFCEA
      D1FFFBE9CFFFFAE9CFFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE9CFFFFBE9
      CFFFFCEAD1FFFEECD3FFFFEFD5FFFFF2D8FFFFF5DCFFFFF5DCFFFEEED5FFECD9
      BEFFCCB497FF956F4CFF754A25FFB8A18DFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00DADAD700CCCDCA00E0E0
      DF00E8E9E800EAEAE800E6E6E600E8E7E500E9E9E700EDE8E700EEECEA00EDED
      E900DA883E00EEEFEF00DC801200DD851000DF870900EDFBF700EDE5DC00EEEB
      E900EDE9E800EEE7E600EEE8E700FEFEFE000000000000000000000000000000
      00000000000000000000000000000833104720B940FF93EBA6FF84E498FF27B8
      4DFF6CCBBCFF118ABCFF0082B5FF0090C3FF0095C8FF0098CBFF0099CCFF0099
      CCFF0099CCFF02966DFF049A0CF9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000016161627FFF9F2FFFFF6EEFFFFF3E9FFFFF2E7FFFFF0
      E3FFFFEFE1FFFFEEDEFFFFEDDCFFFFEBD8FFFFEAD6FFFFE8D2FFFFE7D2FF8982
      7CF6080808150000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4C7BBFF6F431DFFAF8F6DFFFFFF
      E9FFFFEED4FFFBE9D0FFFAE8CEFFF9E7CDFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
      CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
      CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFF9E7CDFFFAE8CEFFFBE9D0FFFFEE
      D4FFFFFFE9FFAF8F6DFF6F431DFFD5C7BBFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00EAE8E600EAE9E600E9E8E700ECE9E700EEE9
      E900EEECE900EFEDEC00D8812800DB872900DF8E2600EFEEEC00EEE9EB00EDE9
      E800EAE8E800EEE9E800EAE7E600FEFEFE000000000000000000000000000000
      0000000000000000000000000000072F114124BC47FFA0F0AFFFA4F1B1FFA7F2
      B3FF91E8A0FF21B73DFF18B23BFF0AA47EFF06A097FF039DA5FF049E9BFF08A2
      53FF0AA41FFF29B83FFF06980DF3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D2D2D4A989997FEFFFCF8FFFFFAF6FFFFF8F2FFFFF7F0FFFFF5
      ECFFFFF4EAFFFFF2E6FFFFF1E5FFFFEFE1FFFFEEDFFFFFECDBFFFFF2E0FF1414
      142F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F5F3FF7C532FFF7D542FFFF1DD
      C2FFFEEED5FFF9E7CDFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
      CEFFFAE8CEFFFAE8CEFFF9E7CDFFFAE8CFFFFAE8CFFFF9E7CDFFFAE8CEFFFAE8
      CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFF9E7CDFFFEEE
      D5FFF1DDC2FF7D542FFF7C532FFFF7F5F3FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00E9E7E400EBE8E700E9E8E500EDE8E800ECE8
      E700EAE8E700EDE8E600EFEDEA00EFEDEA00EFEBE800EDE8E600EAE9E800ECE8
      E700ECE8E700EAE8E500EEE8E600FEFEFE000000000000000000000000000000
      0000000000000000000000000000030F061622B847F9A6F2B3FFAAF3B5FFAFF4
      B8FFAEF4B8FFA1EFADFF74DC87FF31BD49FF1DB335FF14AD29FF14AC28FF2FBB
      44FF49CB64FF33BF4CFF05860CD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C7C7CE4E9E9E9FFFFFDFCFFFFFCFAFFFFFAF6FFFFF9F4FFFFF7
      F0FFFFF6EFFFFFF4EBFFFFF3E9FFFFF1E5FFFFF0E3FFFFF2E2FFE5D8CBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB49C87FF6F431DFFAE8D
      6CFFFFFAE1FFFBE9CFFFF9E7CDFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
      CEFFF9E7CDFFFAE8CEFFFFF2D8FFFFF0D7FFFFF0D7FFFFF2D8FFFAE8CEFFF9E7
      CDFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFF9E7CDFFFBE9CFFFFFFA
      E1FFAE8D6CFF6F431DFFB49C87FFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F2F800E9E8E600EBEAE8007E7C72008D8A7B00EDEB
      EA0078747100837F7D00ECE8E600ECE8E600807D7A0077757100E7E5E4008886
      7900817E7200E8E5E400E9E7E700EBECF5000000000000000000000000000000
      0000000000000000000000000000000000000D411A569BEDA9FFB6F7BDFFBDF9
      C2FFBCF9C1FFB2F6BAFF87CAC6FF0D42F7FF306FE1FF88E79EFF81E59AFF71E0
      90FF6ADE8BFF0AA316FE012D0446000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00016060609AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFEFFFFFC
      F9FFFFFBF8FFFFF9F4FFFFF8F2FFFFF6EEFFFFF5ECFFAEA9A4FE232424590000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF7F4F2FF825936FF7146
      20FFCBB091FFFFFBE3FFFDEBD2FFF9E7CDFFF9E7CDFFFAE8CEFFF9E7CDFFFAE8
      CEFFFFF1D7FFFFF5DDFFDDC6AAFF997351FF997351FFDCC6A9FFFFF5DDFFFFF1
      D8FFFAE8CEFFF9E7CDFFFAE8CEFFF9E7CDFFF9E7CDFFFDEBD2FFFFFBE3FFCBB0
      91FF714620FF825936FFF7F4F2FFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006661D600EBE8E600C8C6AE000500E5000500D800A5A3
      A100FEFEFE00FDFEFD00EAE8E500E8E6E400FBFBFB00FDFDFD00EFEDE9000400
      D9000600ED00F9FAF500ECE9E600170EB2000000000000000000000000000000
      0000000000000000000000000000000000000002000344CC67FFB3F6BAFFC5FC
      C7FFC2FBC5FFB5F7BDFF2C64EDFF0032FFFF134AF3FF87E5A1FF82E59AFF72E0
      91FF6ADE8BFF077F11C600010002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A308E8E8EF0C9C9C9FFDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFFFFFBF8FFFFFAF6FFFFF8F4FFFFFDF7FF3A3A3A93000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFDCD1C7FF774C
      27FF734722FFBA9D7CFFFAEAD0FFFFF6DDFFFFF2D9FFFFF0D7FFFFF4DBFFFFF4
      DBFFE5D1B5FFA3825FFF734721FF70441EFF70441EFF724721FFA3815FFFE5D0
      B5FFFFF4DBFFFFF4DBFFFFF0D7FFFFF2D9FFFFF6DDFFFAEAD0FFBA9D7CFF7347
      22FF774C27FFDCD1C7FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A29FFB00E9E6E500E7E5E1000503DD000501CC00E1DF
      DE00E3E4E300D6D6D600ECE9E800EDE7E700DAD9D900E0E0E000F2F2F0000501
      D1000500D800F5F5F200EEE8E7006964F7000000000000000000000000000000
      000000000000000000000000000000000000000000000517091E209942C969D9
      82FFA2EFADFFB4F6BCFFADF4B7FF0034FEFF8DE0AFFF89E89FFF81E59AFF35BF
      4CFF0EA51EFA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131324262626494848
      48955E5E5EBB9A9A9AFAB0B0B0FFC1C0BFFE444545B300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFD5C8
      BCFF7C532FFF6F421CFF8B623FFFBA9D7DFFD8C1A4FFDFC9ADFFCDB497FFA17E
      5DFF774C27FF6F431DFF8B6545FFD3C5B8FFD3C5B8FF8B6545FF6F431DFF774C
      27FFA17E5CFFCDB496FFDFC9ADFFD8C1A4FFBA9D7DFF8A623FFF6F421CFF7C53
      2FFFD5C8BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00E6E6E400F1EFEE00F1EEEE00F1F0EE00F2F1
      EE00F1F1EE00F2F1EE00F2F1EE00F2F1EE00F2F1EF00F2EEEF00F3F1EE00F2F1
      F000F3F0EE00F0F1EE00DEDFDD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000400051F9F
      41D224BD49FC43C960FF58D171FF3EA19BFF6EDA84FF51CD68FF33BE4AFF0E92
      1EDB032C07420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040C1212122D2424245A0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAE4DEFFA3856AFF744923FF6F431DFF724721FF744924FF71451FFF7145
      1FFF88613FFFC1AE9CFFFBFAF9FFFFFFFFFFFFFFFFFFFCFBFAFFC2AE9DFF8861
      3FFF71451FFF71451FFF744924FF734721FF6F431DFF744923FFA3856AFFEAE4
      DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE8E0DAFFC4B2A1FFAE947CFFA78B72FFB59D89FFD5C8
      BCFFFAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA
      F8FFD6C9BDFFB59E8AFFA78B72FFAE947CFFC4B2A1FFE8E0DAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCC9999FF993200FF993200FF993200FF993200FF996500FFCBCB
      CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855D4CFF835C4BFF835B4BFF835B4BFF835B4BFF825B4BFF825B4BFF825C
      4BFF825A4AFF825A4AFF815A4AFF815A4AFF815B4AFF805949FF805949FF7B58
      49FF7B5848FF7A5948FF7A5748FF795847FF785646FF775746FF775747FF7757
      48FF000000000000000000000000000000000000000000000000000000000000
      0000855D4CFF835C4BFF835B4BFF835B4BFF835B4BFF825B4BFF825B4BFF825C
      4BFF825A4AFF825A4AFF815A4AFF815A4AFF815B4AFF805949FF805949FF7B58
      49FF7B5848FF7A5948FF7A5748FF795847FF785646FF775746FF775747FF7757
      48FF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDDDDDDFFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFCCCC99FF65CC
      32FF99CC65FFF8F8F8FFFFFFFFFF993200FF993200FF993200FF993200FF9932
      00FF993200FF993200FFCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FFE3E3
      E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805847FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7252
      44FF000000000000000000000000000000000000000000000000000000000000
      0000805847FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7252
      44FF00000000000000000000000000000000FFFFFFFFFFFFFFFFF1F1F1FF6599
      00FF659900FF659900FF659900FFF1F1F1FF659900FF659900FF659900FF6599
      00FF659900FF659900FF659900FFFFFFFFFFC0C0C0FF993200FF993200FF9932
      00FF993200FF993200FF993200FF993200FFD7D7D7FF993200FF993200FF9932
      00FF993200FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805645FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7253
      43FF000000000000000000000000000000000000000000000000000000000000
      0000805645FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7253
      43FF00000000000000000000000000000000FFFFFFFFFFFFFFFF659900FF6599
      00FF659900FF659900FF659900FF659900FFFFFFFFFF659900FF659900FF6599
      00FF659900FF99CC65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996500FF9932
      00FF993200FF993200FF993200FFFFFFFFFF993200FF993200FF993200FF9932
      00FF993200FF993200FFFFFFFFFFFFFFFFFF000000005E0E0EFD612323FF1A00
      004E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000815846FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      0000815846FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7452
      43FF00000000000000000000000000000000FFFFFFFFDDDDDDFF659900FF6599
      00FF659900FF659900FF659900FF659900FFFFFFFFFF659900FF659900FF6599
      00FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9965
      00FF993200FF993200FF993200FFD7D7D7FF993200FF993200FF993200FF9932
      00FF993200FF993200FFF8F8F8FFFFFFFFFF0000000029000068590909F85818
      18FB240000730000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000825847FFF7F1E8FFF7F0E8FFF7F0E8FFF7F1E8FFF7F1E8FFF7F1E8FFF7F0
      E8FFF7F0E8FFF6ECE2FFE1B794FFC76319FFC86113FFCB8959FFEACEB8FFF5EE
      E3FFF5EDE2FFF5ECE1FFF4ECE0FFF4EBDFFFF4EBDEFFEDDFD0FFE6D1BEFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000825847FFF7F1E8FFF7F0E8FFF7F0E8FFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFDABAABFFDAB9A8FFDAB9A6FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFF4EBDEFFEDDFD0FFE6D1BEFF7553
      44FF00000000000000000000000000000000FFFFFFFFE3E3E3FF659900FF6599
      00FF659900FF659900FF659900FF659900FFFFFFFFFF659900FF659900FFF8F8
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7FF993200FF993200FFEAEAEAFF993200FF993200FF993200FF9932
      00FF993200FF993200FFFFFFFFFFFFFFFFFF0000000000000000000000004200
      00D15F2525FF390101CD09000023000C001D0000000100000000000000000201
      0002020100020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000835A47FFF8F2E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1
      E9FFF7F1E9FFC06B22FFDA781FFFFFA237FFFFA030FFF1891DFFC25809FFF3E7
      DBFFF5EEE4FFF5EDE2FFF5EDE1FFF4ECE0FFF4EBDFFFEFE1D2FFE6D1BFFF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      0000835A47FFF8F2E9FFF7F1E9FFF7F1E9FFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFDABCADFFDABCABFFDABAAAFFDAB9A7FFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFF4EBDFFFEFE1D2FFE6D1BFFF7653
      44FF00000000000000000000000000000000FFFFFFFFFFFFFFFF659900FF6599
      00FF659900FF659900FF659900FF659900FFFFFFFFFF99CC65FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCBCBCBFFFFFFFFFF993200FF993200FF993200FF9932
      00FF993200FF993200FFFFFFFFFFFFFFFFFF0000000000000000000000000300
      000F350000B3673435FF420B08F6006400FC005200C62112032275430A85BA68
      0FE3BA670EE481460A912816012A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855B48FFF8F3ECFFF8F3EBFFF8F3ECFFF6EBDFFFF1D8BFFFF8F3ECFFEDCD
      ADFFCA6C12FFFFAB4DFFFFA649FFFFA540FFE08020FFC46217FFBB5C0DFFDF70
      0EFFC47647FFF6EEE4FFF5EEE3FFF5EDE2FFF5ECE1FFEEE2D2FFE7D2C0FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000855B48FFF8F3ECFFF8F3EBFFF8F3ECFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFFDABBACFFDABBAAFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FF83B068FFF5EFE6FFEEE2D2FFE7D2C0FF7754
      45FF00000000000000000000000000000000FFFFFFFFFFFFFFFFF8F8F8FF6599
      00FF659900FF659900FF659900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FF993200FF993200FF9932
      00FF993200FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000173700EF425830FF40AE5EFF25B64EFF197113FFEBC9A8FFEBC4
      9DFFE9C097FFE5B88AFFDA9347FF92530BB00B05000D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875A47FFF9F4EDFFF8F3EDFFF9F4EDFFD68C3AFFCB7316FFF0DBC2FFC971
      17FFFFB362FFFFAB52FFFFAB4FFFC26511FFDDAC82FFF7F1E9FFF6EEE6FFC574
      3FFFA94100FFF6EFE5FFF6EEE4FFF5EDE3FFF5EDE2FFF0E1D3FFE7D3C1FF7756
      44FF000000000000000000000000000000000000000000000000000000000000
      0000875A47FFF9F4EDFFF8F3EDFFF9F4EDFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FFDBBCADFFDBBCABFFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FF319729FF55AA50FFF0E1D3FFE7D3C1FF7756
      44FF00000000000000000000000000000000FFFFFFFFFFFFFFFF659932FFFFFF
      FFFFC0DCC0FFC0DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFCBCB
      CBFFFFFFFFFFCC9999FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000005C00D7109125FF31CD64FF23B049FF13962EFF046C06FFFBCC
      ADFFEDC29BFFE6B98BFFE6B788FFD1720BFFA75B0CC900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000865C49FFFAF5F1FFF9F5EFFFF9F5F0FFDA9242FFFFCB96FFE9A658FFFFC8
      8FFFFFC182FFFFB867FFCB7012FFF9F4EDFFF8F3EDFFF8F3ECFFF8F2EBFFF7F1
      E9FFF7F1E9FFF7F0E7FFF6EFE6FFF6EEE5FFF5EEE4FFEFE2D4FFE8D3C2FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      0000865C49FFFAF5F1FFF9F5EFFFF9F5F0FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FFDBBFB4FFDBBEB2FFDBBDAEFFDBBCADFFDBBB
      ABFFDBBAA8FFDAB8A5FFDAB7A3FF319629FF2EB456FF5AAB53FFEDDFD2FF7855
      44FF00000000000000000000000000000000FFFFFFFFC0DCC0FF659900FF6599
      00FF659900FF659900FFC0DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF659900FF65CC32FF99CC65FF99CC65FF99CC65FF99CC65FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF993200FF993200FF9932
      00FF993200FF993200FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000032007C159A32FF2BC15AFF21AC45FF1DA53EFF0585
      1AFF357B24FFE9BF95FFE7B98CFFE5B587FFE7BC8EFFC46D0EEF4626054B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875B48FFFAF6F1FFFAF6F0FFFAF6F1FFE4AA68FFFFCE9CFFFFCF9CFFFFC8
      90FFFFC58AFFE29138FFE5BB8DFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3ECFFF8F2
      EAFFF7F1EAFFF7F0E8FFF7F0E7FFF6EFE5FFF6EEE4FFEFE4D5FFE8D4C3FF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      0000875B48FFFAF6F1FFFAF6F0FFFAF6F1FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFDBC0B5FFDBC0B3FFDBBDB0FFDBBDAEFFDBBB
      ABFFDBBBA9FFDAB8A6FFDAB8A4FF319629FF2DB354FF0D9118FF5AAF50FF7956
      47FF00000000000000000000000000000000FFFFFFFF659900FF659900FF6599
      00FF659900FF659900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF99CC65FF659900FF659900FF659900FF659900FF659900FF659900FF6599
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FF993200FF9932
      00FF993200FF993200FFEAEAEAFFFFFFFFFF0000000000000000000000000000
      000000000000000000002918062C519048FF0E9A2EFF24B14AFF1FA740FF1696
      2EFF006700FFECC39BFFE8BC90FFE4B17CFFECCAA8FFD58225FFCC700CF90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000895C49FFFBF8F3FFFCF7F3FFFBF7F3FFF2D8B8FFFFDEBDFFFFD4A9FFFFCD
      9DFFFFCC97FFCC8330FFE5C096FFFAF6F1FFFAF5F0FFF9F5EFFFF9F4EEFFF8F3
      ECFFF8F3ECFFF8F2EAFFF7F1E9FFF7F0E7FFF6EFE6FFF0E3D8FFE9D4C4FF7956
      45FF000000000000000000000000000000000000000000000000000000000000
      0000895C49FFFBF8F3FFFCF7F3FFFBF7F3FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDBC2B7FFE5D3CAFF137610FF157812FF1881
      14FF158212FF11840EFF11890EFF007700FF38D565FF3BC86AFF3ABE67FF4496
      36FF00000001000000000000000000000000FFFFFFFF659900FF659900FF6599
      00FF659900FFC0DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE3E3E3FF659900FF659900FF659900FF659900FF659900FF659900FF6599
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9965FF9932
      00FF993200FF993200FFCBCBCBFFFFFFFFFF0000000000000000000000000000
      00000000000000000000663F0F73FFFBFAFFFFFAF7FF099123FF1FAD45FF027D
      13FF3E812CFFECC5A1FFE9BF96FFE6B585FFEECDACFFECC8A3FFEDCAA7FFCF70
      0AFE8E500BAF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5D4BFFFBF8F4FFFBF8F4FFFBF8F5FFFAEEE0FFFFEAD4FFFFD7AEFFFFCE
      9EFFFFCB96FFFAB972FFE89940FFF6E8D9FFFAF6F1FFF8F3EEFFF3E6D9FFE1B9
      9FFFD6A182FFC16F47FFC1724BFFF7F0E8FFF7F0E7FFF0E5D7FFE9D5C5FF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      00008B5D4BFFFBF8F4FFFBF8F4FFFBF8F5FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FFE6D4CCFF2BB559FF2BB056FF2DB0
      57FF30B15AFF32B25CFF33B15DFF34B05EFF3AC569FF45E479FF3DC96CFF0C96
      14FF7483748D000000000000000000000000E3E3E3FF659900FF659900FF6599
      00FF659900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FF659900FF6599
      00FFC0DCC0FFCCCC99FF99CC99FFF8F8F8FFF8F8F8FF659900FF659900FF65CC
      32FFFFFFFFFF99CC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9932
      00FF993200FF993200FFD7D7D7FFFFFFFFFF0000000000000000000000000000
      000000000000000000005F3A0E69FFFFFFFFFDF6F2FF71A165FF016E08FF558E
      43FFF1D4B7FFEBC6A2FFE9C097FFE8BE92FFEFCEAFFFECC9A6FFEBC8A3FFE0A3
      64FFD1720AFF180C021B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5E4CFFFCFAF7FFFCF9F6FFFCFAF7FFFCFAF7FFFACE9DFFFFE4C8FFF3BD
      80FFEBAB5BFFDB8C29FFD37B17FFFAF2EBFFE9D1BCFFFFD39AFFFFCD94FFFFD4
      A5FFFFD7ACFFFFD6ADFFFFDEB3FFF5EEE5FFF7F1E8FFF2E4DAFFE9D5C6FF7B58
      46FF000000000000000000000000000000000000000000000000000000000000
      00008B5E4CFFFCFAF7FFFCF9F6FFFCFAF7FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFE6D4CDFF4DDA80FF37D56AFF3AD8
      6DFF3CDA6FFF41DE74FF41DF74FF46E379FF46E479FF49E680FF4AE882FF42CB
      6EFF3FBE6AFF738073890000000000000000659932FF659900FF659900FF6599
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF6599
      00FF659900FFD7D7D7FFEAEAEAFFFFFFFFFFFFFFFFFF659900FF65CC32FFF1F1
      F1FF659900FF659900FF65CC32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF993200FF993200FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000008050108EBC293FFFDFBFAFFF7EADEFFF5E4D3FFF1D8
      C0FFEFD3B6FFEBC6A2FFE9C096FFF1D6BBFFEFD2B6FFEECDADFFEDCBA9FFECC5
      A0FFEBC6A0FFD37A1AFFC66F10F0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C604BFFFCFBF8FFFCFAF8FFFCFBF8FFFCFBF9FFEAAB4EFFEAA744FFEEC0
      82FFF0CC9FFFF7E9D9FFFCF6F1FFFBF8F5FFF7ECE2FFE29D56FFF8C089FFFFCE
      9DFFFFD2A4FFFFD5AAFFFFDBADFFEED9CAFFF7F1E9FFF1E4D9FFE9D6C7FF7B57
      46FF000000000000000000000000000000000000000000000000000000000000
      00008C604BFFFCFBF8FFFCFAF8FFFCFBF8FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFE6D4CDFF56DE88FF39D56DFF3CD9
      6FFF3EDB71FF41DE74FF43E076FF46E379FF48E57BFF4BE882FF4CE983FF4FED
      87FF44CB70FF0C9B14FE717D718400000000659900FF659900FF659900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF6599
      00FF329900FF329900FFD7D7D7FFFFFFFFFFFFFFFFFF99CC65FFFFFFFFFF3299
      00FF659900FF659900FF659900FF65CC32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF996500FFD7D7D7FFC0DCC0FF0000000000000000000000000000
      0000000000000000000000000000D88623FFF6E7D7FFF6E8D9FFF5E2D1FFF1D7
      BDFFEFD1B3FFEBC59FFFEBC49CFFF2D6BDFFF0D4B8FFEECFB0FFEDCCACFFEBC7
      A3FFEAC49FFFE8BD92FFD68325FF6439086C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F604CFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFAFFFDFBF9FFFCFBF9FFFCFAF7FFFCF9F6FFFBF8F4FFC97735FFFFC8
      91FFFFCB94FFFFCB99FFFFCD9BFFD39F81FFF8F2EAFFF1E5DAFFEAD6C8FF8059
      48FF000000000000000000000000000000000000000000000000000000000000
      00008F604CFFFDFCFAFFFDFCFAFFFDFCFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFE6D5CDFF59E28BFF51DC83FF3EDB
      71FF40DD73FF44E177FF46E379FF4AE781FF4CE983FF4FEC86FF50ED87FF53F0
      8AFF55F28CFF43BD6CFF0C9D14FE00000000659900FF659900FF99CC65FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF3299
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF659900FF659900FF99CC65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF659900FF65CC32FF0000000000000000000000000000
      000000000000000000000000000010090210A6681CC3EDCDA8FFF7E7DBFFF2D9
      C0FFF2DAC2FFF4E4D2FFF5DFCCFFF2DAC3FFF1D8BEFFEFD2B5FFEED0B1FFECCA
      A7FFEBC7A2FFE9C199FFE8BF95FFDA9245FFCF6D05FE4326054C020000030000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F624CFFFEFDFBFFFDFCFBFFFEFDFCFFFEFDFCFFFEFDFDFFFEFDFDFFFEFD
      FCFFFDFCFCFFFDFCFAFFFDFBFAFFFCFAF8FFFCFAF7FFEAC3A0FFD78433FFFFC3
      88FFFFC68DFFFFCA92FFFFC88FFFC78359FFF8F2EBFFF1E5DCFFEAD6C8FF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      00008F624CFFFEFDFBFFFDFCFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFE6D4CDFF5BE28BFF5EE08DFF40DD
      73FF42DF75FF46E379FF48E57BFF4CE983FF4DEA84FF51EE88FF52EF89FF55F2
      8CFF57F58FFF0A9B10FE6C746C7A00000000659900FF659900FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF3299
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF659900FF659900FF99CC65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF99CC99FF659900FF659900FF0000000000000000000000000000
      00000000000000000000000000000000000008060009D6821CFEE6B77EFFF8ED
      E2FFF8E9DCFFF5E4D2FFF4E1CEFFF4DFCBFFF4DFCBFFF1D5B9FFEFD1B3FFEDCB
      A9FFECC8A4FFEAC29AFFE9BF95FFE9BE93FFD4945EFFCC6C08FEA65C0BC80000
      0000000000000000000000000000000000000000000000000000000000000000
      000091634DFFFEFEFEFFFEFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFBE
      7AFFFDFDFDFFFEFDFCFFFDFCFCFFFDFBFAFFF9ECDEFFF7A348FFFFAE57FFFFB9
      6EFFF9B368FFB8642EFFF7BB80FFC15F1EFFF8F3ECFFF2E6DDFFEAD7C9FF8158
      47FF000000000000000000000000000000000000000000000000000000000000
      000091634DFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFDFCFF60E590FF8AE9AAFF90EC
      B0FF93EEB1FF98F1B6FF9BF1B8FFA0F4BCFFA4F5C0FF52F18AFF56F38DFF5BF9
      95FF10A819FE000000000000000000000000659900FFEAEAEAFF996500FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0DCC0FF659900FF659900FF6599
      00FFC0DCC0FFFFFFFFFFF1F1F1FFFFFFFFFFFFFFFFFFDDDDDDFFC0DCC0FFC0DC
      C0FF659900FF659900FF99CC65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF659900FF659900FF65CC32FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000033210937DA8D
      32FFF3DAC1FFF8EEE3FFF1D7BBFFC95C00FFC95900FFF1D9C0FFEFD3B6FFEDCD
      ACFFECCAA7FFEAC39DFFE9C097FFE7BA8DFFE6B788FFDEAA79FFBD7959FF6A3D
      0879000000000000000000000000000000000000000000000000000000000000
      000092624EFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD073
      00FFE29D41FFFDFDFBFFFEFDFCFFEAC399FFC97014FFFFAB4EFFFFAB4FFFFFB4
      5DFFC06316FFF0DDCDFFBB5B14FFC2672CFFF8F3ECFFF2E6DCFFEAD7C9FF815A
      47FF000000000000000000000000000000000000000000000000000000000000
      000092624EFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFDFCFF41DD74FF47DD78FF4BE1
      7BFF4FE484FF52E988FF54EB8AFF56EE8CFF76F3A2FF55F38DFF59F691FF10A9
      18FF717C718400000000000000000000000099CC99FFF8F8F8FF993200FFCC99
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF6599
      00FFE3E3E3FF99CC99FF99CC99FFFFFFFFFFFFFFFFFFF8F8F8FF659900FF6599
      00FF659900FF659900FF99CC65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF659900FF659900FF659900FF99CC65FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A066
      1DBDD5811BFFCB5F00FFC85700FFD2781EFFEBC59EFFF2D6BDFFF0D3B7FFEECD
      ADFFECCAA8FFEAC49DFFE9C198FFE7BB8EFFE6B789FFE6B47DFFD1986FFFB268
      0BD9010000010000000000000000000000000000000000000000000000000000
      000093634FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
      F6FFDA993CFFFF9A2AFFFF9A2AFFFF9D31FFFF9E35FFFFA747FFFFAF57FFE8BD
      99FFFBF8F4FFFAF6F1FFFAF5F0FFF9F4EEFFF8F3EDFFF2E6DCFFEAD7C9FF8259
      49FF000000000000000000000000000000000000000000000000000000000000
      000093634FFFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFEADAD3FFEAD9D1FFE9D8
      CFFFE9D7CDFFE9D6CBFFE9D4C9FF329C2BFF68E990FF5CFA96FF12AB1EFFA489
      79FF00000000000000000000000000000000FFFFFFFFCC9999FF993200FF9932
      00FFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FFF8F8
      F8FF99CC65FF659900FF99CC99FFFFFFFFFFFFFFFFFF659900FFFFFFFFFF6599
      00FF659900FF659900FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6599
      00FF659900FF659900FF659900FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC8022F1DE9B48FFF5E5D4FFF4DEC9FFF2D9C0FFF2DAC2FFD57E
      27FFE7B788FFEAC49EFFE9C199FFE7BB8FFFE6B889FFE4B17DFFE2AA70FFD478
      13FFA24202EF1006001700000000000000000000000000000000000000000000
      000094644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFAF7FFDB7B0BFFF7982FFFFFAE51FFFFB158FFE49137FFC86E1BFFFBF9
      F5FFFBF8F4FFFAF6F2FFFAF6F0FFF9F4EEFFF9F3EDFFF3E8DEFFEAD7CAFF8259
      48FF000000000000000000000000000000000000000000000000000000000000
      000094644FFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FF319D2AFF5CE888FF13AB1FFF63BB5AFF8259
      48FF00000000000000000000000000000000FFFFFFFF996565FF993200FF9932
      00FF993200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF659900FF659900FF659900FF329900FF329900FF659900FF659900FFFFFF
      FFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FF6599
      00FF659900FF659900FF659900FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C1C072EBA7421D9EBC8A1FFF4E0CBFFECC9A7FFDC9853FFC95A
      00FFDE9A56FFEAC49EFFE9C199FFE7BB8FFFE6B889FFE4B17DFFE2A96FFFC872
      1CFF893B18FF8F3200E11407001D000000000000000000000000000000000000
      0000956550FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFFCF9
      F6FFFBF8F4FFFBF7F3FFFAF6F2FFF6F1EBFFF9F5EEFFF3ECE4FFE9D9CEFF865E
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000956550FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FF31A12AFF0CA016FFF5F0EBFFE9D9CEFF865E
      4CFF00000000000000000000000000000000FFFFFFFFCC9999FF993200FF9932
      00FF993200FF993200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF659900FF659900FF659900FF659900FF659900FF659900FF659900FF6599
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF6599
      00FF659900FF659900FF329900FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007147167DD68928FBE8BB90FFEECFB0FFEED0
      B2FFECCBA9FFEAC49DFFE9C198FFE7BA8EFFE6B789FFE4B07BFFE0B695FFB05C
      13FF8A4420FF974313FFA33B00FE000000000000000000000000000000000000
      0000966750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF8D6E
      63F4000000000000000000000000000000000000000000000000000000000000
      0000966750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FF34AA32FF5BB157FFE5DCD6FFDCCABFFF8D6E
      63F400000000000000000000000000000000FFFFFFFFF1F1F1FF993200FF9932
      00FF993200FF993200FFCC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCCCC99FF659900FF659900FF659900FF659900FF659900FF659900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CC65FF659900FF6599
      00FF659900FF659900FFE3E3E3FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000492E0C4DDC923BFFEFCEADFFEDCC
      ADFFECC9A6FFEAC39CFFE9C097FFE7BA8DFFE6B788FFE4B27DFFE4CCC4FFA752
      12FFA04F15FFA25015FFA73F00FF000000000000000000000000000000000000
      0000986851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA4836FFFC8B3A5FFC6AD9AFFC3A283FFC19C74FFB88F61FF8D665AFB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA4836FFFC8B3A5FFC6AD9AFFCBAF94FFC19C75FFB88F61FF8D665AFB0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF993200FFF8F8
      F8FFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF329900FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE3E3E3FF659900FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024170626D78A2AFCE4C3
      AFFFECC8A4FFEAC29AFFE9BF95FFE7B889FFE6B786FFECD8CDFFD68425FFC964
      01FFC96401FFCC6701FFB24A00FF000000000000000000000000000000000000
      0000986753FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF8D6A5DF93939393A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986753FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF8D6A5DF93939393A0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9932
      00FF993200FF993200FF996500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF659900FF659900FF6599
      00FF659900FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000098621CA8DEB5
      92FFE4C9BEFFE9C19AFFE8BE93FFEACAAFFFEFE0DBFFD88C31FFD3750FFFD376
      14FFD37614FFD57B18FFB04500FF000000000000000000000000000000000000
      0000996952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826AFFF2D7AEFFEECD9BFFC59A65FF8D6A5DF900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826AFFF2D7AEFFEECD9BFFC59A65FF8D6A5DF900000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF993200FF9932
      00FF993200FF993200FF993200FF993200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1FFFFFFFFFF659900FF659900FF659900FF6599
      00FF659900FF65CC32FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008554
      1993D08528F3DC983FFFDE9E4DFFDD9032FFE09843FFE4A052FFE39F51FFE3A2
      55FFE5A255FFBD570BFF943A00CC000000000000000000000000000000000000
      00009A6752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58065FFEECE98FFEFC785FF8C6D60F72F2F2F3000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58065FFEECE98FFEFC785FF8C6D60F72F2F2F3000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF1F1F1FF993200FF9932
      00FF993200FF993200FF993200FF993200FFFFFFFFFF993200FF996532FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF659900FF659900FFF8F8F8FF659900FF659900FF659900FF6599
      00FF659900FF659900FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000120D02147D4F178985541893DB8C3DFFEDB876FFEBB36FFFEBB36FFFEDB8
      75FFF0BF7DFFB54700FC36170043000000000000000000000000000000000000
      0000996851FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA3785AFFBF9461FF8E6E64F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996851FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA3785AFFBF9461FF8E6E64F6000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFD7D7D7FF993200FF9932
      00FF993200FF993200FF993200FF993200FFF8F8F8FF993200FF993200FF9932
      00FFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1FF659900FF659900FF659900FFC0DCC0FF659900FF659900FF659900FF6599
      00FF659900FF659900FFF1F1F1FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006933007CC05500F4D88537FFDA893EFFBE50
      00FEA64700DD0000000000000000000000000000000000000000000000000000
      0000976651FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77B57FF917167F527272728000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976651FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77B57FF917167F527272728000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF8F8F8FF993200FF9932
      00FF993200FF993200FF993200FF993200FFFFFFFFFF993200FF993200FF9932
      00FF993200FFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FF6599
      00FF659900FF659900FF659900FFFFFFFFFF659900FF659900FF659900FF6599
      00FF659900FF659900FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000160A001C903F00B7944200C0421D
      0057080200090000000000000000000000000000000000000000000000000000
      0000986752FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B71
      61FF977C71EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986752FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B71
      61FF977C71EF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFCC9999FF9932
      00FF993200FF993200FF993200FFCC9999FF996532FF993200FF993200FF9932
      00FF993200FF993200FF993200FFFFFFFFFFC0DCC0FF659900FF659900FF6599
      00FF659900FF659900FF659900FF99CC65FF65CC32FF659900FF659900FF6599
      00FF659900FFD7D7D7FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6D59FF9B6B57FF9A6B56FF996A56FF996A56FF996B57FF986955FF976A
      56FF976854FF956755FF956853FF936754FF936552FF916451FF916552FF9C8F
      88D5141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6D59FF9B6B57FF9A6B56FF996A56FF996A56FF996B57FF986955FF976A
      56FF976854FF956755FF956853FF936754FF936552FF916451FF916552FF9C8F
      88D5141414150000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFD7D7
      D7FF993200FF996532FFEAEAEAFFFFFFFFFFE3E3E3FF993200FF993200FF9932
      00FF993200FF993200FF993200FF993200FFD7D7D7FFFFFFFFFF99CC65FF6599
      00FF659900FF329900FFC0DCC0FFFFFFFFFFFFFFFFFFDDDDDDFF659900FF6599
      00FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC99
      65FF993200FF993200FF993200FF993200FF993200FF993200FF993200FFD7D7
      D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4C4C4C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855E4DFF835D4CFF835C4CFF835C4CFF835C4CFF825C4CFF825C4CFF825D
      4CFF825B4BFF825B4BFF815B4BFF815B4BFF815C4BFF805A4AFF805A4AFF7C59
      4AFF7C5949FF7B5A49FF7B5849FF7A5948FF795747FF785847FF785848FF7858
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363676B757597B1767688953434343500000000000000000000
      000000000000006E00FF006E00FF006C00FF006B00FF006900FF006800FF0000
      00000000000000000000000000000000000000000000787A9CA80218C9FF0012
      BBFF4046B5E4000000000000000000000000000000007475838D0007A7FE7676
      9AAD6B6B74790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805948FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7353
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1F1F200014C8FF001FDFFF0014CBFF060CABFC00000000000000000000
      000000000000007000FF3BD86EFF21BE3FFF21BE3FFF1FBC3EFF006A00FF0000
      000000000000000000000000000000000000000000000314BFFD1E56FFFF1236
      B8FF0824B6FF4949B5FFB6A29FFF845C4CFFB5A097FF0009AEFF0A39F2FF0013
      AFFF0006AAFFB4A09AFF825C4CFF815A4AFF815B4AFF805949FF805949FF7B58
      49FF7B5848FF7A5948FF7A5748FF795847FF785646FF775746FF775747FF7757
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040000074822
      0B995D3113D26D3A19FF6C3A19FF542811C03C1B078600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805746FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7354
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      50510023DDFE0038FFFF0036FFFF0029F4FF0024E8FF5C5CA6D1000000000000
      000000000000007300FF76EA98FF3DDA70FF3CD96FFF21BE40FF006D00FF0000
      000000000000000000000000000000000000000000001221C0F81A4AE8FF2257
      FFFF2257FFFF1235B0FF0317B6FF595CC7FF000DB7FF154BFFFF124AFFFF0F46
      FFFF0938E6FF0206A4FFD5CDDEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FFEEDAC7FFEEDAC6FFEED8C3FFEED8C1FFEDD7BEFFEDD6BCFF7351
      42FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C09012E593A1FFF6D4424FF8954
      2DFF8F582FFF915A30FF8E582EFF82502AFF7C4D29FF643F22FF533319FD0200
      0004000000000000000000000000000000000000000000000000000000000000
      0000815947FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007578
      8D91043CF8FF0C50FFFF0A4DFFFF0034FFFF0029F4FF030AABFD121212130000
      000000000000007500FF77EB9AFF3FDC72FF3EDB71FF22BF40FF006E00FF0000
      000000000000000000000000000000000000000000007278A9B71641E5FF255A
      FFFF2459FFFF1F51F9FF1437B2FF000EBBFF184AFCFF184EFFFF154BFFFF1048
      FFFF0F46FFFF000BB2FF9694D2FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FFFAF0E1FFFAEFE1FFF9EEDEFFF9EDDBFFF8ECD9FFF2E0CAFF7253
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A0F024B62381AF29B6033FFAC6A39FFC176
      3FFFC87C42FFD18245FFCF8145FFB6703CFFA06334FF7C4E29FF724726FF4720
      09B7050100080000000000000000000000000000000000000000000000000000
      0000825948FFF7F1E8FFF7F0E8FFF7F0E8FFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFD3B4A6FFD3B3A3FFD8B8A5FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFF4EBDEFFEDDFD0FFE6D1BEFF7654
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007477
      868A0D4FFCFF2482FFFF2075FFFF0C4EFFFF0038FFFF007B00FF007B00FF007A
      00FF007A00FF007900FF79ED9BFF42DF75FF41DE74FF24C143FF007100FF006E
      00FF006D00FF006A00FF006800FF0000000000000000787B9BA40119C8FE3B83
      FFFF2F67FFFF275CFFFF265BFFFF2054FCFF2156FFFF1B53FFFF1950FFFF1243
      F9FF000BB4FFD9CCD3FFDFC6B9FFDABCACFFDABAABFFDAB9A8FFDAB9A6FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFFAF0E1FFF9EFDEFFF2E1CDFF7554
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000019070028BA743FFFD08344FFD68647FFCD8246FF793D
      18A635150451010000010601000A5E2E1170C47335D1F49A52FFC0763FFF7348
      26FF52331CFF0000000000000000000000000000000000000000000000000000
      0000835B48FFF8F2E9FFF7F1E9FFF7F1E9FFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFD9BBACFFBFA496FFC2A697FFCBAC9BFFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFF4EBDFFFEFE1D2FFE6D1BFFF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101023434
      36FB002CFCFF2C98FFFF2183FFFF0C53FFFF013DFFFF008100FF49E680FF2AC7
      49FF2AC748FF29C648FF46E379FF44E177FF43E076FF25C243FF24C143FF22BF
      40FF21BE40FF1FBC3EFF006900FF000000000000000000000101555557590D2E
      D7FF3A80FDFF2B60FFFF285DFFFF2459FFFF2257FFFF1D54FFFF1C51FFFF0008
      B0FF6563C6FFDCC1B4FFDABDAFFFDABCADFFDABCABFFDABAAAFFDAB9A7FFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFFAF1E3FFF9F0E0FFF2E2CFFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001104001A74421BDCDE8A49FFDF8C49FFAF6E3BFF663715B50000
      00000000000000000000000000000000000000000000EB9F52F2FFA75AFF8452
      2BFF6C4424FF0401000800000000000000000000000000000000000000000000
      0000855C49FFF8F3ECFFF8F3EBFFF8F3ECFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFB9A094FF998476FFA28B80FFB79D8FFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFF5ECE1FFEEE2D2FFE7D2C0FF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000626262DF404040FFAFAE
      ACFF908E87CD727AA9DFCFCCC5FF353D78F57779949B008500FF82F2A1FF4DEA
      84FF4DEA84FF4BE882FF4AE781FF47E47AFF45E278FF43E076FF41DE74FF3EDB
      71FF3CD96FFF21BE3FFF006B00FF000000000000000000000000000000000000
      00006564BAFF346DFBFF2F65FFFF295EFFFF265BFFFF1942D2FF0013B7FFEBDE
      D7FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFFDABBACFFDABBAAFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFFBF3E6FFFAF2E6FFF3E4D3FF7655
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003010006B3713DFFDE8A4AFFD68547FF9F6436FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D321372F399
      51FF975D32FF3E1C09A700000000000000000000000000000000000000000000
      0000875B48FFF9F4EDFFF8F3EDFFF9F4EDFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FF726864FF5D534FFF9C8678FFD3B5A5FFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFF5EDE2FFF0E1D3FFE7D3C1FF7857
      45FF000000000000000000000000000000000000000000000000000000000000
      000000000000363636373F3F3F40000000006363636A646464FFBBBBBBFF7B7B
      7B8B060606078A898899C4C4C3FF7B7B7A8E00000000008700FF84F4A3FF50ED
      87FF4FEC86FF4DEA84FF4BE882FF49E680FF47E47AFF44E177FF42DF75FF3FDC
      72FF3DDA70FF21BE3FFF006C00FF000000000000000000000000000000000000
      00005054C0FF3872FFFF3064FFFF2B60FFFF285EFFFF1E4EECFF1131AEFF9692
      D4FFE3D0C8FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FFDBBCADFFDBBCABFFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFFBF3E7FFFAF3E6FFF3E5D5FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055270C9BDD8A49FFE6904CFFA66839FF50280CAB00000000000000000000
      000000000000000000000000000000000000000000000000000005000009FFB3
      60FFC57840FF4F280EDB00000000000000000000000000000000000000000000
      0000865D4AFFFAF5F1FFF9F5EFFFF9F5F0FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FF918987FF698B9DFF5D6570FF316845FF3389
      31FF6C9D57FFDAB8A5FFDAB7A3FFDFBFABFFF5EEE4FFEFE2D4FFE8D3C2FF7956
      45FF000000000000000000000000000000000000000000000000000000002D2D
      2D2E1A29BEF5002AF8FF0025E9FF595952FFB6B6B5FF8B8B8BAE121212130000
      000000000000969696AEB9B9B9FF7272727F00000000008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4BE882FF4AE781FF46E379FF79ED9BFF77EB
      9AFF76EA98FF3BD86EFF006E00FF000000000000000000000000000000006667
      6F710929D8FF376BFFFF3469FFFF224EF2FF316FF6FF275CFFFF2458FFFF051D
      B9FF343BC1FFDBC3B9FFDBC1B7FFDBBFB4FFDBBEB2FFDBBDAEFFDBBCADFFDBBB
      ABFFDBBAA8FFDAB8A5FFDAB7A3FFDFBFABFFFBF4E8FFFCF4E8FFF5E6D7FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A160
      33FDDB8848FFE18C4AFFB4723EFF0701000D000000000D0300120701000B0000
      000000000000000000000000000000000000000000000000000000000000FFC4
      69FFF49A51FF5B2F13FF00000000000000000000000000000000000000000000
      0000875C49FFFAF6F1FFFAF6F0FFFAF6F1FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFBAB1B0FF6A8FA4FF22933BFF119627FF209D
      34FF0B7C17FFDAB8A6FFDAB8A4FFDFBFACFFF6EEE4FFEFE4D5FFE8D4C3FF7956
      47FF00000000000000000000000000000000000000000000000000000000777A
      9DA60032F9FF0039FFFF0C31C2FFC1C0B7FF72716DFF00000000000000000000
      0000000000009C9C9CBAB5B5B5FF6D6D6D7700000000008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF4DEA84FF4BE882FF29C648FF007900FF0075
      00FF007300FF007000FF006E00FF000000000000000000000000000000005865
      BCD42B58F1FF396DFFFF3668FFFF0013C6FF0011C4FF316FFFFF265BFFFF1335
      B0FF0010BBFFE5D4CEFFDBC2B8FFDBC0B5FFDBC0B3FFDBBDB0FFDBBDAEFFDBBB
      ABFFDBBBA9FFDAB8A6FFDAB8A4FFDFBFACFFFBF4E9FFFBF4E8FFF4E6D8FF7855
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B0F0149D987
      49FFEB934DFFBC7540FF633617D5250E0140643113B08B5329FF8A4F27FC4F24
      0A840C040013000000000000000000000000000000000000000000000000FFC3
      69FFF89D53FF572C10E700000000000000000000000000000000000000000000
      0000895D4AFFFBF8F3FFFCF7F3FFFBF7F3FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDAC1B8FF63B098FF62FD97FF5AF08AFF45D0
      67FF34BA51FF077611FF91A56DFFDFC0ACFFF6EFE6FFF0E3D8FFE9D4C4FF7A57
      46FF000000000000000000000000000000000000000000000000000000005E6E
      CBD01A6CFFFF1C6EFFFF115AFFFF002BFFFF0005C2FF7F7F7EA5454545470000
      000000000000A7A7A7D0A9A9A9FF626262680000000000000000000000000000
      000000000000008B00FF86F6A4FF4FEC86FF4DEA84FF2AC748FF007A00FF0543
      FFFF0028F2FF0000000000000000000000000000000000000000000000001941
      E9FF4C86FFFF3B6CFEFF234AE8FFE6E6F6FFE9DDD9FF0016C7FF3172FBFF2256
      FFFF163DC9FF2D34C0FFE5D9D9FFDBC2B7FFDBC1B5FFDBBEB1FFDBBEB0FFDBBB
      ACFFDBBBABFFDBB9A7FFDBB9A5FFDFC0ACFFFBF5EAFFFBF5EBFFF4E7D9FF7956
      45FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000824A23E7D38547FFEB92
      4EFFC97E44FF1307002A592B0F95C07940FFC27840FFB26E3BFFA06335FF8050
      2AFF734827FF15070020000000000000000000000000000000006734157EFFB6
      60FFE28C49FF3014047700000000000000000000000000000000000000000000
      00008B5E4CFFFBF8F4FFFBF8F4FFFBF8F5FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FF5BC07AFF62FE97FF60FB95FF50E1
      78FF43CD64FF209C33FF0B7611FFDFC0ADFFF7F0E7FFF0E5D7FFE9D5C5FF7B57
      46FF000000000000000000000000000000000000000000000000000000007073
      8282155EFAFF2487FFFF1767FFFF002FFFFF060AA5FF595958FF3C3C3CFF7777
      778B2D2D2D2EAAAAAADBA5A5A5FF5B5B5B600000000000000000000000000000
      000014141415008B00FF86F7A5FF50ED87FF4DEA84FF2AC749FF007A00FF003C
      FFFF242FBBF10000000000000000000000000000000000000000000000003468
      F3FF589CFFFF3866F7FF001CD2FFFDFBF8FFDBC8C3FF5D65D6FF031CCCFF2761
      FFFF1E51FDFF0115C0FF797ACAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFFDBB9A8FFDBB9A5FFDFC0ADFFFBF5EBFFFBF5EAFFF4E7D9FF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A02000FD08346FFF0954FFFD084
      46FF7D4923F34B220B7CC17840FFE8904CFFE08B49FFE08C4AFFE18D4CFFA365
      36FF804F2AFF49200AA40000000000000000000000002A100239F09B50F9FFA8
      5AFFBC733EFF1104001A00000000000000000000000000000000000000000000
      00008B5F4DFFFCFAF7FFFCF9F6FFFCFAF7FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFBAC4A6FF4EEA7BFF5BF78DFF5EF7
      91FF56EB85FF3DC55CFF2FB047FF1A7A1BFFD9E3CDFFF2E4DAFFE9D5C6FF7C59
      47FF000000000000000000000000000000000000000000000000000000000000
      00000D0D0E0E79746CFF35311FFF34343435000000000E0E0E0F5A5A5A5E7A7A
      7AFA797979FF9F9F9FFF999999FF484A83E70014DCFF001EE9FF131663FE4C4C
      4BFFA2A2A2FF008D00FF86F7A5FF84F4A3FF82F2A1FF49E680FF007B00FF6969
      6971000000000000000000000000000000000000000000000000000000004444
      4646293FD6FF0021DEFFC5CCF8FFFDFBF8FFDBC7C2FFDCC9C5FFE1D7DEFF041F
      CFFF0010C2FF9190D7FFE1D3D5FFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFFDBB9A8FFDBB8A6FFE0C0AEFFFCF6ECFFFBF6EBFFF4E8DAFF7B58
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005D2E0FA8C37B43FFF59950FFDC8B4AFF250E
      00523A190760EF9650FFF89B52FFA96A3AFF4E260CAB0000000000000000FFBC
      65FFE68F4CFF5B381BFF0E030016000000002E11033EFFA558FFFFA858FFB26F
      3CFF542B13E30000000000000000000000000000000000000000000000000000
      00008C614CFFFCFBF8FFFCFAF8FFFCFBF8FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FF2CC057FF55F085FF61FE
      97FF5DF58FFF4BD970FF3BC259FF148C23FF2C8930FFF1E4D9FFE9D6C7FF7C58
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6BFF353532FE000000000000000000000000000000001616
      16176666666CA4A4A4FE939393FF3D3721FF0B38D6FF092BB8FF4D4933FF9A9A
      95FF808080DC008D00FF008B00FF008700FF008500FF008100FF007B00FF7474
      7481000000000000000000000000000000000000000000000000000000000000
      0000BAA397FF95A4F5FFFEFCFAFFFEFCF9FFDCC7C2FFDCC8C3FFDECBC7FF4D56
      CDFFB2AFDAFFE2D0CAFFDCC4BCFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFFDBB9A8FFDBB8A6FFE0C0AFFFFCF6EDFFFBF6EDFFF4E8DBFF7B57
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BC7740FFF39750FFE28E4CFF945C30FE3315
      0455BB713CFCFB9C53FFE8904DFF52290EBE020000040000000000000000FFC0
      68FFFCA256FF5C3518FE0C0300103816064EE38C47F9FFA156FFF79952FF6239
      1BF11D0A01360000000000000000000000000000000000000000000000000000
      00008F614DFFFDFCFAFFFDFCFAFFFDFCFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFD8BEB2FF5BC070FF59F6
      89FF5EFA92FF5BF28CFF53E57CFF36BB52FF28A63DFF4E994DFFE7D5C6FF805A
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5FFF676767DF000000000000000000000000000000000000
      000000000000ADADADFF888888FF1653DBFF2080FFFF0D53FFFF0037FFFF4949
      4B4C00000000000000000000000000000000000000001F1F1F20B2B2B2FF8282
      829F000000000000000000000000000000000000000000000000000000000000
      00008F604CFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFDBBAA9FFDBB9A6FFE0C1AEFFFCF6EEFFFDF7EEFFF4E8DCFF8059
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000033150353AF6937FDFF9F55FFEE9650FF3E1C058A230C023AF399
      51FFFF9F55FFB2713DFF532A10C4000000000000000069331288ED944FFFFFA4
      57FFDF8C4AFF2B0E01614E240C6FFFA85AFFFFA456FFB3713DFF5B3016DE0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F634DFFFEFDFBFFFDFCFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFD0C0ADFF44DD
      6FFF5AF68BFF60FC95FF5AF08AFF44CF66FF34B84FFF0B7C17FF63A258FF8059
      48FF000000000000000000000000000000000000000000000000000000000000
      000008080809595959FF7C7C7CC5000000000000000000000000000000000000
      000000000000B1B1B1FF828282FF0C38D8FD2B98FFFF135CFFFF013CFFFF0909
      090A000000000000000000000000000000000000000012121213ABABABFE8383
      83AF000000000000000000000000000000000000000000000000000000000000
      00008F624CFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000A46132F5F49951FFF49850FFB1703DFF1E0A0032AD6432EDFFA1
      56FFF29650FF552B10C50901000D0000000000000000F19650FFFFA357FFE68F
      4BFF955D32FF5A290D7EF89E55FFFFA458FFEC944EFF532A10CF100500190000
      0000000000000000000000000000000000000000000000000000000000000000
      000091644EFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFC0F0
      CAFF2DC55BFF5BF78CFF60FC96FF57EC86FF4EDE75FF2DB548FF2B8F39FF7062
      50FF000000000000000000000000000000000000000000000000000000000000
      00003C3C3C3D4D4D4DFF7B7B7B90000000000000000000000000000000000000
      000000000000B9B9B7FF757571FF232323246B6A6A7165655CE7060606070000
      0000000000000000000000000000000000000000000003030304A9A9A9F47979
      79CE000000000000000000000000000000000000000000000000000000000000
      000091634DFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF8158
      47FF000000000000000000000000000000000000000000000000000000001004
      00188A4C25DBFFA758FFFFA056FF562A10BD17080029F69C53FFFFA558FFBF78
      41FF582E12C80000000000000000793A1699F89C54FFFFA357FFE48E4CFF3914
      028F793D19A1FFAB5BFFFFA458FF925C31FF462009A500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092634FFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FF9BE3B1FF56F285FF5CF88EFF5EF690FF55EB84FF5E9168FF6F686EFF6563
      63FF3E3E3E410000000000000000000000000000000000000000000000000000
      000055555558474747FF6C6C6C76000000000000000000000000000000000000
      0000000000009F9EB0FF555474FF1B1B1B1C70706F776C6C69E1000000000000
      0000000000000000000000000000000000000000000000000000AAAAAAEB6B6B
      6BDD000000000000000000000000000000000000000000000000000000000000
      000092624EFFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF815A
      47FF000000000000000000000000000000000000000000000000000000007B43
      1CCBEC9551FFFFA457FFD38547FF1205001E995628DAFFA859FFFDA054FF5C30
      13CA0A0300100000000000000001FB9F55FFFFA85AFFE38D4BFF85542BFE8948
      1EB3FFAD5CFFFFA458FFE28E4BFF401C048A0100000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000936450FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FF4CC36AFF41DB6DFF67EB93FF959596FFE3E3E3FFC5C4C4FF8385
      94FF343C9BFF0606060700000000000000000000000000000000000000000000
      00008282828F404040FF3F3F3F41000000000000000000000000000000007879
      95A40016C8FE0023E8FF0021E3FF0015D0FF0000A1FF737370DA000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6D24242
      42F8010101020000000000000000000000000000000000000000000000000000
      000093634FFFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF8259
      49FF0000000000000000000000000000000000000000000000005A2D0F9AFFAE
      5DFFFFAC5BFF74411FE015050028F89F56FFFFAD5DFFCF8246FF613415CD0000
      00000000000082431AA6FFA357FFFFA758FFE08C4BFF310E0074A45B29C9FFAF
      5DFFFFA457FF764522F62D100255000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000946550FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFC6BFA1FF36C45FFFA7A6A7FFE3E0E2FFF1F1EFFFE3E2DCFF1930
      CBFF172AC2FF6162899E00000000000000000000000000000000000000000000
      0000939393AA3D3D3DFF26262627000000000000000000000000000000000018
      D2FF002CFBFF0029F5FF0027F0FF001FE1FF0017D7FF787876D4000000000000
      0000000000000000000000000000000000000000000000000000A0A0A0C53535
      35FD0C0C0C0D0000000000000000000000000000000000000000000000000000
      000094644FFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF8259
      48FF000000000000000000000000000000000000000000000000C47036EDFFB0
      5EFFF19852FF1806002C81431DBAFFB15EFFFFA85AFF603517DD1004001B0000
      000002000003FFA659FFFFB05DFFDE8A4AFF754523F9B46932D2FFB561FFFFA4
      57FFCF8145FF230D004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956651FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFBEBDBDFFE2E2E1FF5B78EDFF355CEEFF3659
      E7FF243DCFFF0308A2FF2D2D9AE4000000000000000000000000000000000000
      0000A4A4A4E1595959EF01010102000000000000000000000000141414150749
      FFFF0B4EFFFF094AFFFF0541FFFF002BF7FF0025EBFF61619BD1020202030000
      0000000000000000000000000000000000000000000000000000939392AB3434
      2BFF2929292A0000000000000000000000000000000000000000000000000000
      0000956550FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF865E
      4CFF000000000000000000000000000000000000000000000000000000017D42
      1DA91E0A0044F6A056FFFFB661FFE08B4CFF69391AE000000000000000008547
      1DA9FFAD5CFFFFAA5AFFD88849FF320F0069D0813FE9FFB25FFFFEA156FF572C
      12D51105001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFCFCCCAFFCBC9C3FF335AECFF4978FFFF3557
      E5FF233DCEFF0307A1FF39399ADA000000000000000000000000000000000303
      0304A8A89DF8787872D70000000000000000000000000909090A6666686E115A
      FFFF1562FFFF145EFFFF0E53FFFF0033FFFF0028F3FF0D0A77FE5B5B53E95D5D
      5D631D1D1D1E000000000000000000000000000000000000000089888CA11513
      5DFF6A6A70760000000000000000000000000000000000000000000000000000
      0000966750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF9986
      7ED7000000000000000000000000000000000000000000000000000000000000
      0000632E108AFFB963FFFFB25FFF6C3D1BE1140500210000000004000007FFB0
      5EFFFFB862FFD68548FF653619E9DC8D47F2FFBB65FFFDA156FFAE6D3BFF0C03
      0012000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA48370FFC8B3A5FFC6AD9AFFC3A283FFAE9286FF385DE9FF3F68F4FF2741
      D3FF192BC0FF565691B9020202030000000000000000000000005D5E6264001F
      E2FF0022EAFF0012D6FF3434A8EA737371D03D3D3DFEA3A3A3FFC8C4B7FF1767
      FFFF298CFFFF2481FFFF1A69FFFF043FFFFF0030FFFFA09EBCFFC2C2BEFF8F8F
      8FFF717171FF444444FF333333FF797979C37171717F0017DDFE002AFFFF0025
      EBFF0022E4FF4141A4E30E0E0E0F000000000000000000000000000000000000
      0000986851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA4836FFFC8B3A5FFC6AD9AFFC3A283FFC19C74FFB88F61FF97796CEA0000
      000000000000000000000000000000000000000000000000000000000000F19B
      53FEFFC067FFEF9751FF75411FE30000000000000000944F24B2FFB663FFFFAD
      5CFFCE8146FF4C1C047BEC9F52F7FFB660FFF79C53FF411E0594020000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF1A27B6FF2742D2FF1626
      BBFF01039FFF0D0D0D0E000000000000000000000000252525261224C6F8002D
      FBFF002BFCFF111C53FF303025FF979797FFBCBCBCFF828282FF605E59FD1847
      F6F62A8EFFFF2481FFFF1A69FFFF0441FFFF0021EEFF75756BDE8D8D8DA2A7A7
      A7FDB4B4B4FF9D9D9DFF858585FF4E4E4EFF3B3B38FF27271EFF0731CBFF002E
      FCFF0028F1FF000FC2FF69696F75000000000000000000000000000000000000
      0000986753FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF987F75E3282828290000
      000000000000000000000000000000000000000000000000000002000003FFC3
      69FFFFBD65FF7A4420E416060025000000000802000CFFB963FFFFBF66FFC97D
      44FF51280DCDF3A75AFCFFC267FFF39951FF8E552CFD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826BFFF2D7AEFFEECD9BFFC59A66FF8A675AF900000000000000000000
      00000000000000000000000000000000000000000000767BA1AC0B4EFEFF125C
      FFFF0D55FFFFA19984FF6C6959FF303048FF50504FEF72727280525252550505
      05061D1D1E1E5E6CCBD04B5ED1DD6366A8CB201F9EF31515A9F77575868F0000
      0000000000004848484A7979798F3F3F3EFF6A6B71FF6D6863FF1D60DFFF0F55
      FFFF0541FFFF0025EDFF6D6D9DC0000000000000000000000000000000000000
      0000996952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA6826AFFF2D7AEFFEECD9BFFC59A65FF987E74E400000000000000000000
      000000000000000000000000000000000000000000000000000016060023FFAF
      5EFF985E32FF4C220A780501000600000000A1672FAEFFAF5DFFBD7640FF6A33
      1192FCB863FFFFB761FFE7914DFF270C01480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6853FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58066FFEECE98FFEFC785FF896A5CF72F2E2E3000000000000000000000
      00000000000000000000000000000000000000000000777B93981359FBFF2075
      FFFF196AFFFF143BBEFF052ED9FF4F4E82FF6B6B67FF4A4A4AFF3F3F3FFF3F3E
      3CF6706F66D16E6E6D7B4D4D4D500016D2FE0029F8FF0023EEFF000CC3FF7575
      7487757575C8595959FF898989FFB5B5B4FF9B9A99FF1D7BFFFF2587FFFF1763
      FFFF0A4CFFFF0020E4FF76768692000000000000000000000000000000000000
      00009A6752FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58065FFEECE98FFEFC785FF98857BDC2020202100000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFAF
      5EFFA76637FFB87540FF935124DB0000000024100530B9743FFF451A06AFFFBF
      66FFFFC769FFDE8B4AFF673A1BE8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996952FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA3795BFFBF9462FF8A6A60F6000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007780AAAA2D93
      FFFF2178FFFF0746FFFF0018CAFE00000000030303044A4A4A4C6F6F6F779898
      98CA8E8E8EF38F8F8EFF959492FF3F4349FF0F59FFFF092997FFBDB6A0FF7676
      6FFF666665F57979798A5050505200000000000000005F73CCCE175FF9FF1767
      FFFF0948FDFF64646A6D00000000000000000000000000000000000000000000
      0000996851FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA3785AFFBF9461FF9B887FD6000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000431F
      0954DF8845ECF09650FFD68546FFB7723EFFB16C38FED98944F5FFCA6CFFFFB3
      5FFFC57A43FF0E03001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976752FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77C58FF8D6D62F527272728000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050606264B
      E5F10A3FEAFE4654BCE055555759000000000000000000000000000000000000
      000001010102474747497272727D2169E0FF1E76FFFF074AFFFF112C90FF6666
      696F04040405000000000000000000000000000000000A0A0B0B6D6F7C7C4D60
      D2DC757AA8B20000000000000000000000000000000000000000000000000000
      0000976651FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77B57FF9C8982D41919191A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D030014EB8F4AF7FE9F56FFCB7E44FFE18C4AFFFFD06FFFFFC96BFFB873
      3EFF49250AB60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986853FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B72
      62FF91746AEF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003557E5EA1B69F9FF0A46F7FF0F25C7F90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B71
      61FF9B8E8ABE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007C411BA5B0632FDDAE602CEC693716B70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6E5AFF9B6C58FF9A6C57FF996B57FF996B57FF996C58FF986A56FF976B
      57FF976955FF956856FF956954FF936855FF936653FF916552FF916653FF9181
      79D5141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000161617177173808376788D942D2D2D2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6D59FF9B6B57FF9A6B56FF996A56FF996A56FF996B57FF986955FF976A
      56FF976854FF956755FF956853FF936754FF936552FF916451FF916552FF8782
      8094070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000906060972595977A98181B0DFAAAAFCE0ADADFEEABF
      BFFFEDC6C6FFF3CFCEFFF6D3D1FFF4D0D0FFF2CECEFFEEC6C6FFE9BFBFFFDEAF
      AFFFD4A2A2FEAC8383C57E5F5F8C0C08080C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D6B6BFF9E6868FF7C49
      49FF804B4BFFE0D2D2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001D16161DAE8787B6DBA8A8F3EEC5C5FFF4D1D1FFF1CFCFFFE8BEBEFFFFEA
      EAFFFFE9E9FFFFECE7FFE7D6E9FFFFEAE6FFFFE5E5FFFFE5E5FFFFE4E4FFFFE4
      E4FFFFE3E3FFF5CECEFFE9BDBDFFCB9A9AF59C7676B408060609000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606073D4F
      3C9D284726D1103A0FF1163F14E940513E953236314300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976464FFFFE4E4FF9C66
      66FF945E5EFF794545FF956565FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001813
      1318E5B3B3FDFFE6E6FFFFE6E6FFFFE6E6FFFFE7E7FFF6D6D6FFEDC2C2FFFFE9
      E9FFFFEDE9FF5671F7FF0030FFFF5671F7FFBCB7ECFFFFE4E4FFFFE3E3FFFFE1
      E1FFFFE0E0FFFFDDDDFFFFDCDCFFFFDADAFFFFDADAFFE0AFAFFFD8A5A5FF4232
      3248000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020212026013602FF07440AFF044B
      0BFF054C0CFF054D0EFF064C0FFF074F12FF085013FF024902FE365C34B70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8FF8282
      82FF959595FF909090FF858585FFAEAEAEFFE1E1E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976363FFFFDBDBFF9D67
      67FF9F6969FFA06A6AFFA16B6BFF905A5AFF7B4848FF9D7171FFD5C3C3FF0000
      0000000000000000000000000000000000000000000000000000000000001914
      1419E7B4B4FDFFE5E5FFFFE6E6FFFFE8E8FFFFE9E9FFF8D8D8FFF1C5C5FFFFEB
      EBFFFFF0EBFF0016FFFF002CFFFF0016FFFF8C97F2FFFFE6E6FFFFE6E6FFFFE2
      E2FFFFE1E1FFFFDEDEFFFFDDDDFFFFDADAFFFFD9D9FFE0B1B1FFF3C5C5FFD3A0
      A0FC463434490000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D2F2C39103E10ED054C0CFF054E0CFF064E
      0EFF064F0FFF075011FF085212FF095515FF095616FF0C581AFF075209FF1D1E
      1D22000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B1FF858585FFA4A4
      A4FFA0A0A0FF949494FF969696FF878787FF797979FFC6C6C6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      65FF686868FF636564FF626362FF585858FF565656FF765050FFFFDBDBFF9E67
      67FFA06A6AFFA06A6AFFA06A6AFFA06A6AFFA26C6CFF844E4EFF723F3FFFBEA3
      A3FF00000000000000000000000000000000000000000000000000000000120D
      0D12E8B3B3FBFFE7E7FFFFE9E9FFFFEBEBFFFFECECFFFCE3E3FFF9C8C8FFFFEF
      EFFFFFF0EFFFFFF8EEFF5E78F8FFFFF7ECFFFFEDECFFFEE6E6FFF3CBCBFFEBB7
      B9FFFBD8D9FFFFE0E0FFFFDFDFFFFFDCDCFFFFDADAFFE6B6B6FFF3C6C6FFE5B5
      B5FF694E4E730000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001616151809480BFF065410FF085512FF085613FF0959
      16FF0A5A17FF0B5E1AFF0C5F1BFF0D621DFF0E631EFF0E6620FF0F6621FF0860
      0BFF366735B60000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8CFF999999FFACACACFFAAAAAAFF9797
      97FF6E6E6EFF5F5F5FFF6E6E6EFF6F6F6FFF4A4A4AFF8F8F8FFF8C8C8CFF7474
      74FF929292FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98FF757575FF6A696AFF878185FFBCB4BAFFBFB8BDFF976C6EFFFFDADAFFA069
      69FFA26C6CFFA26C6CFFA26C6CFFA16B6BFFA16B6BFFA16B6BFFA06A6AFFA16B
      6BFF915B5BFF5F4141FFB9BABAFF000000000000000000000000000000000806
      0608E5B6B6F8FFEAEAFFFFEAEAFFFFECECFFFFEDEDFFFEEEEEFFFEEBEBFFFFF0
      F0FFFFF0F0FFFFF2F0FFFFF8EFFFFFF1F0FFFFEBEBFFEDB8B9FFECBABCFFF8A6
      83FFEFBDBFFFFFE2E2FFFFE0E0FFFFDCDCFFFFDBDBFFEEC0C0FFF7CBCBFFE5B5
      B5FF674D4D700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808092D542CC8085713FF085813FF095A16FF0A5C18FF0C60
      1BFF0C621CFF0D651EFF0E671FFF0F6922FF106B23FF116D25FF116E26FF156F
      2AFF026401FF0000000000000000000000000000000000000000000000000000
      000000000000CACACAFF8F8F8FFFAFAFAFFFB1B1B1FFAEAEAEFF979797FF6B6B
      6BFFA8A8A8FFA4A4A4FF8B8B8BFF5E5E5EFF4C4C4CFF3A3A3AFF5A5A5AFF8B8B
      8BFF838383FF747474FFA7A7A7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF747474FF6D676BFF359D52FF4AB468FF5BB574FF886961FFFFDADAFFA16A
      6AFFA36D6DFFA36D6DFFA36D6DFFA36D6DFFA26C6CFFA26C6CFFA16B6BFFA26C
      6CFFA16B6BFF5F3D3DFF5D5E5EFF000000000000000000000000000000000000
      0000D2A7A7D2FFECECFFFFECECFFFFEFEFFFFFF0F0FFFFF2F2FFFFF3F3FFFFF4
      F4FFFFF4F4FFFFF7F7FFFBE5E5FFF3C8C8FFFDEAEAFFEEBDBFFFFDA777FFFF9F
      67FFEDB8B8FFFFCDCDFFFFE2E2FFFFDEDEFFFFDCDCFFFFD9D9FFFFD7D7FFE0B0
      B0FF4737374F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000054D04FE0D5F19FF0C631BFF0C651DFF0E6A20FF0F6C22FF1170
      25FF127226FF137529FF14772AFF157A2DFF167B2EFF167D2FFF168031FF1780
      31FF1A8136FF3137304000000000000000000000000000000000000000009D9D
      9DFF9A9A9AFFBCBCBCFFBBBBBBFF989898FF707070FFBEBEBEFFDBDBDBFFD2D2
      D2FFD1D1D1FFAAAAAAFFABABABFFAEAEAEFF737373FF292929FF2E2E2EFF3232
      32FF313131FF4F4F4FFF6D6D6DFF777777FF707070FFA5A5A5FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF7C7C7CFF70686EFF279641FF1CA63DFF1CA63DFF776A55FFFFDBDDFFA56E
      6EFFA56F6FFFA56F6FFFA56F6FFFA56F6FFFA46E6EFFA46E6EFFA36D6DFFA36D
      6DFFA26C6CFF623F3FFF4D4E4EFF000000000000000000000000000000000000
      0000AE8B8BAEFFEDEDFFFFEDEDFFFFF0F0FFFFF1F1FFFFF4F4FFFFF5F5FFFFF7
      F7FFFFF6F6FFF7D2D2FFF2BBBBFFFFF5F5FFFFF6F6FFF6B19AFFFFA46DFFFFA2
      69FFEFB5ACFFFFD4D4FFFFD3D3FFFFDEDEFFFFDDDDFFFFD9D9FFFFD8D8FFDAA7
      A7FE2E2323320000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003D483C6111621BFF0C661CFF0F6B20FF0F6E22FF117226FF127427FF1379
      2BFF157B2CFF16802FFF168230FF188433FF188534FF198735FF1A8736FF1A88
      37FF1B893AFF4161408900000000000000000000000000000000EAEAEAFFB6B6
      B6FFC2C2C2FFBBBBBBFF999999FF959595FFC9C9C9FFD9D9D9FFD7D7D7FFD4D4
      D4FFD2D2D2FFADADADFFADADADFFAEAEAEFFA7A7A7FF4C4C4CFF2D2D2DFF2A2A
      2AFF2D2D2DFF303030FF303030FF575757FF727272FF707070FF696969FFBFBF
      BFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC98FFF0000000000000000A1A1
      A1FF818181FF726B70FF23903BFF189E35FF189E35FF796955FFFFDBDDFFA66F
      6FFFA77171FFA67070FFA67070FFA67070FFA67070FFA56F6FFFA56F6FFFA46E
      6EFFA36D6DFF654242FF4E5151FF000000000000000000000000000000000000
      000043363643FFF1F1FFFFF0F0FFFFF2F2FFFFF3F3FFFFF6F6FFFFF8F8FFFFFC
      FCFFF5C5C5FFFFFCFCFFFFF7F7FFFFF6F7FFF3C7CAFFFFAA74FFFFA975FFFFA5
      6EFFF3B4A6FFFFE7E7FFFFDADAFFFFE1E1FFFFDDDDFFFFDADAFFFFD9D9FFBF92
      92D1000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000115A
      11EC14631AFF107023FF117326FF147A2AFF157D2CFF178632FF188934FF1A8E
      38FF1B8F39FF1C933CFF1D943DFF1E963FFF1F9740FF1F9842FF209942FF2099
      43FF209A45FF1C7F1BE000000000000000000000000000000000D4D4D4FF9C9C
      9CFF838383FFDCDCDCFFE3E3E3FFDDDDDDFFDCDCDCFFDADADAFFD9D9D9FFD6D6
      D6FFD6D6D6FFB1B1B1FFB2B2B2FFB1B1B1FFB1B1B1FFB3B3B3FFB3B3B3FF8484
      84FF676767FF3C3C3CFF282828FF292929FF2C2C2CFF2E2E2EFF343434FF6464
      64FF6B6B6BFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000369F36FF5CB05CFF00000000A3A3
      A3FF828282FF746D72FF1D822DFF108F26FF108F26FF826658FFFFDBDDFFA870
      71FFA97373FFA97373FFA87272FFA57070FFA87171FFA77171FFA77171FFA670
      70FFA56F6FFF664444FF555656FF000000000000000000000000000000000000
      00000B09090BFEECECFFFFF0F0FFFFF2F2FFFFF4F4FFFFF7F7FFFFF9F9FFFCEF
      EFFFF5C4C4FFFFF9F9FFFFF7F7FFFCE4E6FFF4BAB5FFFFAC78FFFFAB77FFFFA7
      70FFF4B6A7FFFFE5E5FFFFE4E4FFFFD9D9FFFFDFDFFFFFDADAFFFFDADAFF8664
      648E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212141562
      16FF117125FF137728FF147A2BFF16832FFF178732FF1A8E37FF1B913AFF1E99
      3FFF1F9940FF209C43FF219E44FF22A046FF22A147FF23A249FF23A349FF23A0
      48FF23A149FF178515E7000000000000000000000000E9E9E9FFA5A5A5FFB9B9
      B9FFE2E2E2FFE2E2E2FFE0E0E0FFDFDFDFFFDEDEDEFFDBDBDBFFDADADAFFD8D8
      D8FFD7D7D7FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB2B2B2FFB3B3B3FFB4B4
      B4FFB3B3B3FF808080FF656565FF3B3B3BFF272727FF282828FF2B2B2BFF2C2C
      2CFF666666FFD6D6D6FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000369E36FF0D8F1AFF5EB15EFFA4A4
      A4FF838383FF736C72FF187A27FF0D871EFF0D871EFF846859FFFFDCDEFFA971
      71FFAA7474FFAA7474FFAA7474FFA36F6FFFA57070FFA87272FFA87272FFA771
      71FFA67070FF684646FF565858FF000000000000000000000000000000000000
      000000000000F5C3C3FDFFF3F3FFFFF3F3FFFFF5F5FFFFF9F9FFFFFCFCFFFFFF
      FFFFF8CECEFFFFFAFAFFFFFBFBFFF7BDB1FFFFB279FFFFAF7BFFFFAE7AFFFFAA
      73FFF4B9B0FFFFE5E5FFFFE2E2FFFFD8D8FFFFDFDFFFFFDCDCFFF7CDCDFF0101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041603F92096308FF147B
      2CFF16802EFF188833FF198B36FF1C923BFF1D963EFF209E43FF21A146FF24A9
      4CFF26AD4FFF27B152FF28B253FF29B355FF29B355FF2AB254FF2AB153FF2AAD
      51FF2AAC53FF347F32B9000000000000000000000000B4B4B4FFCECECEFFE6E6
      E6FFE6E6E6FFE4E4E4FFE4E4E4FFE2E2E2FFE0E0E0FFDEDEDEFFDDDDDDFFDADA
      DAFFDBDBDBFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB8B8B9FFC59B69FFC88D
      47FFC68F4FFFB9A99BFFB4B8BEFFB6B7B8FFB5B5B5FF7A7A7AFF616161FF5D5D
      5DFFA3A3A3FF7A7A7AFF979797FF000000000000000000000000000000000000
      000000000000000000000000000000000000369E36FF3AC468FF39BD67FF52AE
      52FFB4B4B4FF756E74FF0F6E17FF05750FFF05750FFF866B5BFFFFDCDDFFAB73
      74FFAC7676FFAD7575FF986B6BFFA16D6DFFA36F6FFFA87373FFAB7474FFA973
      73FFA87272FF6C4949FF565858FF000000000000000000000000000000000000
      000000000000BA9696BAF9D9D9FFFFF4F4FFFFF4F4FFFEFBFBFFFCE2E2FFF7C2
      C2FFF9CBCBFFFFFBFBFFFFFAFAFFFEB789FFFFB480FFFFB17DFFFFAF7BFFFFAB
      72FFF3BCB8FFFFE6E6FFFFD1D1FFFFE1E1FFFFDFDFFFFFDDDDFFE4B0B0FE0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000016401FD147A29FF1785
      31FF188833FF1B8F39FF1C933BFF1F9A41FF209E44FF23A649FF25AA4CFF28B1
      52FF29B555FF2CBD5BFF2CBC5CFF2DBB5AFF2DBB5AFF2DBA59FF2DB758FF2DB2
      54FF2FB058FF4164407E000000000000000000000000BCBCBCFFCCCCCCFFE8E8
      E8FFE7E7E7FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2E2FFDFDFDFFFDEDEDEFFDBDB
      DBFFD9D9D9FFBDBDBDFFBCBCBCFFBBBBBBFFBBBCBCFFCE9044FFDB8A26FFE198
      3CFFDD9232FFD4740CFFCD6F0FFFB6B5B5FFB5B8BAFFB8B8B8FFB4B4B4FFAEAE
      AEFFB5B5B5FF999999FF9B9B9BFF0000000000000000298829FF157915FF1A81
      1AFF1B851BFF188718FF138613FF108910FF007700FF44E278FF3CC86BFF0D95
      17FF4FAA4FFF756E75FF0C6810FF026D07FF026D07FF8C6A5DFFFFDCDDFFAC74
      74FFAD7676FF938181FF808585FF9B6E6EFFA26F6FFFA77373FFAA7575FFAA74
      74FFA97373FF6E4B4BFF595A5AFF000000000000000000000000000000000000
      0000000000000000000062565662FEF0F0FFFFF5F5FFFDE6E6FFFBCFCFFFFFF9
      F9FFFFF8F8FFFFF3F4FFF7C2C4FFFFB986FFFFB784FFFFB481FFFFB27EFFFEB0
      7DFFF4C3C6FFFFE5E5FFFFE1E1FFFFDFDFFFFFE0E0FFD4A3A3ED261D1D260000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1E1E219E6B6FE9067B15FF1B8D39FF1C94
      3CFF1E983FFF219F45FF22A347FF25AA4DFF27AE50FF2AB656FF2BBA59FF2EC1
      5FFF30C461FF33CC65FF34CE66FF35CC65FF34C864FF33C260FF33BF5FFF34BA
      5FFF1EA832FF00000000000000000000000000000000D2D2D2FFBEBEBEFFECEC
      ECFFEBEBEBFFE9E9E9FFE8E8E8FFE6E6E6FFE5E5E5FFE2E2E2FFE0E0E0FFDEDE
      DEFFCCCCCCFFC2C2C2FFC1C1C1FFC0C0C1FFBFC3C8FFE6A859FFEBB56CFFE6A7
      53FFE5A651FFE3A34CFFE4A34BFFDF9639FFCF6A01FFBABBBCFFB9B9B9FFB8B8
      B8FFB8B8B8FF8B8B8BFFB5B5B5FF0000000000000000177217FF3ED16FFF37CC
      67FF37CF69FF3AD06CFF3DD36EFF40D470FF40D772FF46E379FF49E57CFF41CA
      6DFF3EBD6AFF51A950FF9ED6C5FF67D1B3FF67D1B3FFA07B77FFFFDBDCFFAE75
      75FFBEA2A2FFD0D0D0FFD2D2D2FFA39C9CFFA87272FFAD7777FFAD7777FFAC76
      76FFAB7575FF714F4FFF5B5C5CFF000000000000000000000000000000000000
      0000000000000000000000000000F7C6C6FEFEEEEEFFFFF7F7FFFBC6C6FFFFF9
      F9FFFFF8F8FFFED3D4FFFFC1A1FFFFBD7EFFFFBC7CFFFFB779FFFFB47BFFFDB4
      8BFFF6CACDFFFFE5E5FFFFE0E0FFFFDFDFFFF9D3D3FF42333342000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000916C6CD3B28187FF0C8621FF1E963FFF1F9C
      42FF21A045FF24A74BFF25AB4EFF28B354FF2AB757FF2DC05EFF2EC25FFF32C8
      63FF35CB66FF36D169FF38D46CFF38CF69FF37CC67FF36C664FF36C362FF36BB
      5BFF08A00EFD00000000000000000000000000000000E2E2E2FFB4B4B4FFEDED
      EDFFEDEDEDFFEBEBEBFFEAEAEAFFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFDFDF
      DFFFC6C6C6FFC4C4C4FFC4C4C4FFC3C5C7FFC9B094FFEFBD80FFEAB167FFE7A8
      55FFE6A753FFE4A44EFFE3A34BFFE2A349FFD67B17FFBCBEC0FFBEBDBCFFC4C1
      C0FFBABABAFF7C7C7CFFCBCBCBFF0000000000000000136F13FF4EDA80FF39D6
      6CFF3BD86EFF3FDC72FF42DE75FF44E177FF47E37AFF49E67CFF4AE680FF4DEA
      84FF43CB6FFF0A9A12FF5ECE73FFA7FFFFFFA7FFFFFFAA8686FFFFDADAFFAE75
      75FFC5ABABFFE9E9E9FFF8F8F8FFB1A4A4FFAF7878FFAE7878FFAE7878FFAD77
      77FFAC7676FF735252FF5B5D5DFF000000000000000000000000000000000000
      0000000000000000000000000000000000002E28282EF9C8C8FEFBE2E2FFFFCF
      CDFFFFF7F2FF2194FFFF339FFFFF4FACFFFF54B0FFFF48A9FFFF339FFFFF8EAA
      DCFFFFCCC6FFFFD9D9FFF6CECEFFAB8484B01C16161C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A666698BA9E9CFFC6A3A7FF09911BFF24A54CFF26AC
      4FFF27B052FF2AB858FF2CBC5CFF2FC25FFF30C561FF34CB66FF35CF68FF4AD7
      79FF38D46CFF3CD76FFF3DD870FF3ED970FF3ED46EFF3DCF6DFF40CB6EFF358C
      3CC2080808090000000000000000000000000000000000000000ADADADFFF2F2
      F2FFF0F0F0FFEEEEEEFFEDEDEDFFEAEAEAFFE8E8E8FFE5E5E5FFE3E3E3FFCFCF
      CFFFCACACAFFC9C9C9FFC9C9C9FFCEB391FFDE9230FFEEB975FFEAAD5DFFE8AA
      59FFE7A956FFE5A651FFE4A44FFFE3A44BFFD77C18FFAEACABFF5CA7DEFF4DAC
      F8FFCBC6C2FF767676FF000000000000000000000000106E10FF59DF89FF3CD8
      6FFF3EDA71FF42DE75FF44E077FF47E37AFF49E57CFF4CE882FF4EEA84FF51ED
      87FF53EF89FF47CD72FF45BE6EFF6FD080FFD7FFFFFFAD8282FFFFDADAFFB17A
      7AFFB27A7AFFC6AFAFFFBCB4B4FFB27A7AFFB17B7BFFB07A7AFFB07A7AFFAF79
      79FFAE7878FF785454FF616363FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000463C3C46B18F8FB1F5C4
      C7FF3B9AFAFF53AFFFFF5AB1FFFF5EB4FFFF5FB4FFFF61B6FFFF62B6FFFF2E9C
      FFFF56A8FCFFEEB6B4FBB28B8BB5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F55556EA26F6FFEC1A3A2FFCBA7AAFF008F08FF29B054FF29B5
      55FF2AB858FF2EC15FFF2FC360FF32C964FF34CC66FF36D16AFF49D877FF3AD6
      6EFF3CD76FFF3ED971FF3FDA72FF41DB75FF41D873FF41D06DFF16AD28FF1010
      1011000000000000000000000000000000000000000000000000D0D0D0FFF6F6
      F6FFF2F2F2FFEFEFEFFFEEEEEEFFEBEBEBFFE9E9E9FFE6E6E6FFE5E5E5FFCECE
      CEFFCECECEFFCCCCCCFFCCCDCDFFD89033FFEBB36AFFECB56DFFEAAE5FFFE9AB
      5AFFE8AA58FFE6A753FFE5A550FFE4A54DFFD4750EFF8C8A88FF4AB7FFFF5CB0
      EDFFC6C1BEFFA3A3A3FF0000000000000000000000000E6F0EFF5AE28BFF3CD9
      6FFF3FDB72FF43DF76FF45E178FF49E57CFF4BE781FF4EEA84FF50EC86FF53EF
      89FF54F08AFF56F08CFF44BD6DFF7CD389FFE4FFFFFFB08383FFFFDADAFFB37B
      7BFFB48181FFB47C7CFFB37A7AFFB38080FFB27C7CFFB17B7BFFB17B7BFFB07A
      7AFFAF7979FF7A5757FF616363FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003A9F
      FFFF59B2FFFF60B5FFFF64B8FFFF69BBFFFF6BBCFFFF6CBDFFFF6BBCFFFF68BB
      FFFF67BAFFFF103F626200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C2A2A2FB89493FFC5A8A7FFCCAEAEFFD0B3B2FF209919FF17AE34FF30C3
      60FF31C662FF34CC66FF36CF69FF39D46CFF39D56DFF50DC7DFF3DD971FF40DB
      73FF41DC74FF43DE76FF45E078FF4AE681FF3CD165FF47704B83010101020000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FFF7F7F7FFF2F2F2FFF0F0F0FFECECECFFEBEBEBFFE8E8E8FFDEDEDEFFD6D6
      D6FFD6D6D6FFD4D6D8FFD5C6B2FFF2BF83FFF0BF83FFECB165FFEBB063FFEAAD
      5DFFE9AB5BFFE7A855FFE6A753FFDC9131FFD09B5BFFA5A3A2FF57758AFFB7B3
      B1FFBBBBBBFF000000000000000000000000000000000E6F0EFF5DE38EFF40DB
      72FF44DF76FF49E37CFF4CE581FF50E985FF52EB87FF56EE8BFF54F08AFF57F3
      8DFF59F590FF0EAA17FF80D380FFFEFEFDFFFEFFFDFFB98989FFFFDADAFFB580
      80FFB68383FFB68383FFB68383FFB58282FFB48181FFB38080FFB38080FFB17B
      7BFFB17B7BFF7B5B5BFF656565FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005121A1A56AF
      FFFF5CB2FFFF65B8FFFF69BBFFFF6FBFFFFF73C0FFFF72C1FFFF72C0FFFF6DBD
      FFFF6CBCFFFF2988DFDF01030606000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1415966F6FDEC8ABAAFFCCACABFFD3B5B4FFD7BAB9FF9FB68AFF009900FF33C9
      65FF35CD67FF38D26BFF39D46CFF3DD770FF61DF8DFF3EDA71FF40DB73FF43DE
      76FF44DF77FF46E179FF47E37BFF35CA59FF17A728F700000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FFF7F7F7FFF2F2F2FFF1F1F1FFEDEDEDFFEBEBEBFFE3E3E3FFDCDCDCFFDADA
      DAFFDADADAFFD9D4D0FFDC9839FFF3C389FFF2BD7CFFEDB267FFECB064FFEAAD
      5FFFE9AC5CFFE7A956FFE6A754FFD78018FFCFC0AFFFCFCFCFFFC3C1C0FFD1D1
      D1FF8A8A8AFF000000000000000000000000000000000F700FFF61E590FF8DEB
      ACFF90ECB0FF97EEB5FF98F1B6FF9FF4BAFFA0F4BCFF83F4A9FF53F18AFF5AF6
      91FF5CF995FF56AB56FFFFFDFCFFFFFBF8FFFFFBF8FFB88687FFFFDADAFFB783
      83FFB88585FFB78484FFB78484FFB68383FFB58282FFB48181FFB48181FFB27C
      7CFFB38080FF7C5D5DFF656666FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004E77BF1F77C5D25EB4
      FFFF63B7FFFF6FBEFFFF73C1FFFF7BC6FFFF7EC8FFFF80C9FFFF7EC8FFFF78C4
      FFFF73C1FFFF4DAAFFFF1E5C8C8C000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A874
      74FFCCAEAEFFD3B5B4FFD8B9B8FFE0C2C1FFE5C7C6FFF0D1D2FFE2D1C8FF28C4
      4EFF3ED973FF3CD870FF49DB79FF4FDE80FF41DD74FF44DF77FF45E078FF48E3
      7BFF49E57DFF4DE782FF25BB42FF202320250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7FFE8E8E8FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE5E5E5FFE2E4
      E7FFE2DDD8FFEBB165FFF7C995FFF2BC79FFF0B66FFFEEB369FFEDB267FFEBAF
      61FFEAAD5EFFE9AB58FFE7AA57FFD6C2AAFFD5D7D9FFD3D3D3FFD5D5D5FF8585
      85FFE5E5E5FF00000000000000000000000000000000349434FF1D861DFF1D89
      1DFF1D8B1DFF188C18FF188F18FF189118FF037C03FF65F497FF58F58FFF12A9
      1CFF5AB35AFF6B6C6DFFFFF6EDFFFFF5ECFFFFF5ECFFBA8888FFFFDADAFFB984
      84FFBA8787FFB98686FFB98686FFB88585FFB78484FFB68383FFB68383FFB481
      81FFB38080FF826060FF666767FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006496FF0870B3FF61B6
      FFFF66B9FFFF71C0FFFF77C3FFFF81C9FFFF86CCFFFF88CDFFFF85CCFFFF7DC7
      FFFF79C4FFFF5EB5FFFF277DC1C1000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003030304C19C
      9AFFD2B4B3FFDABBBAFFDEC0BFFFE7C9C8FFEBCECDFFF5D8D7FFFFDDE0FF009E
      05FF2CC853FF4EDD7DFF69E394FF42DE75FF44DF77FF47E27AFF48E37BFF4AE5
      7DFF4CE883FF1FB83AFF40924DBD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBEFFB1B1B1FFBABBBCFFC2C2C3FFD2D3D4FFD9DBDDFFE7D1
      B4FFE8A956FFF7CC9BFFF6C791FFF1B973FFF0B770FFEEB46AFFEDB268FFEBAF
      62FFEAAE5FFFE9AB5BFFE09A3EFFDADEE4FFD9D9DAFFD9D9D9FFD6D6D6FFCECE
      CEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000036A236FF59F691FF5DFA96FF5DB8
      5DFFC0C0C0FF6B6B6CFFFFF3E7FFFFF2E6FFFFF2E6FFBE8B8AFFFFDADAFFBA85
      85FFBB8888FFBA8787FFBA8787FFB98686FFB98686FFB78484FFB68383FFB582
      82FFB48181FF856161FF666868FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000102007BAFFF006194FF64B8
      FFFF69BBFFFF76C3FFFF7CC7FFFF8BCEFFFF90D3FFFF95D6FFFF91D4FFFF84CB
      FFFF7DC7FFFF72C0FFFF2D90F0F0000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000077646497DCBE
      BDFFDFBFBEFFE7C9C8FFEBCDCCFFF4D6D5FFF5D8D7FFFADEDDFFFCE0DFFFFFE6
      EAFFEEE3DAFF0BB027FF35D260FF4AE580FF4CE782FF4DE883FF50EB85FF3AD6
      65FF1DB53AFC0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDFFFAEAAA5FFFFF4E0FFFFF4E1FFF8BE78FFF6BD78FFFCD3
      A7FFFACE9FFFF7BF82FFF4BD7CFFF2BB76FFF1B973FFEFB66DFFEEB369FFEDB1
      64FFECAF62FFDB8F2AFFE3D3BEFFE6E6E6FFD2D2D2FF939393FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000036A636FF15AA21FF67C367FFB6B6
      B6FF9D9D9DFF6A6B6CFFFFEDDBFFFFECDAFFFFECDAFFBF8B8CFFFFDADAFFBC87
      87FFBC8989FFD3A1A1FFC99595FFBA8686FFB78484FFB88585FFB88585FFB784
      84FFB78484FF876464FF6B6D6DFF000000000000000000000000000000000000
      00000000000000000000000000000000000000070C110084B7FF006295FF66B9
      FFFF6DBDFFFF77C3FFFF7DC7FFFF8BCFFFFF91D5FFFF9BD9FFFF94D4FFFF87CC
      FFFF7EC8FFFF71C0FFFF2D8FF2F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000937070D2E2C3
      C2FFE5C6C5FFEFD0CFFFF0D2D1FFF5D8D7FFF7DBDAFFFCE1E0FFFEE3E2FFFFE9
      E8FFFFEAECFFA1CF9AFF21B235FF27C84FFF38D664FF3CD969FF30D15CFF33AC
      48F03C483E4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C6FFCCC6BCFFFFF3E1FFFFF2E0FFFDE2C2FFF8CD9BFFF0B4
      69FFEFB268FFEFB36AFFEFB46AFFEEB36AFFEEB369FFEEB368FFEDB367FFEAAD
      5EFFE2A049FFAC9A83FF979A9DFF999999FFABABABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000036A936FF64B964FF00000000B7B7
      B7FFA0A0A0FF6B6C6EFFFFEAD6FFFFE9D5FFFFE9D6FFC28D8DFFFFDADAFFBE8A
      8AFFBC8888FFFFECECFFFFE2E2FFF4CCCCFFE9BBBBFFCF9C9CFFC59191FFB582
      82FFB68383FF896565FF6C6D6DFF000000000000000000000000000000000000
      000000000000000000000000000000000000001D2C3F0089BBFF006B9FFF0069
      9BFF006294FF77C3FFFF7BC6FFFF89CDFFFF8CD0FFFF90D4FFFF8ED2FFFF84CA
      FFFF7CC7FFFF67BAFDFF005B8AF9000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F7070F0EFD2
      D1FFEFD2D1FFF3D6D5FFF6D9D8FFFADFDEFFFCE1E0FFFFE5E4FFFFE9E8FFFFE7
      E6FFFFE7E6FFFFE8E7FFFFE8E9FFFFEDF1FFFFF0F7FFD8A2A8FFA37C7FC90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000939594FFFFF9ECFFFFF5E6FFFFF4E5FFFFF2E1FFFFF2DFFFFFF1
      DBFFFFF0DAFFFFEFD6FFFFEED5FFFFEDD2FFFFEDD0FFCDC2B2FFB1B3B8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D297FF0000000000000000B9B9
      B9FFA6A6A6FF6D6E70FFFFE4CAFFFFE3C9FFFFE3CAFFC69292FFFFD9DAFFC08B
      8BFFC08C8CFFFFF0F0FFFFE9E9FFFFE5E5FFFFE3E3FFFFDEDEFFFFDBDBFFF7C8
      C8FFBA8686FF8C6868FF6C6D6DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000026364C008BBEFF0070A4FF008A
      BDFF006B9EFF74C3FFFF78C4FFFF83CCFFFF87CDFFFF8BCFFFFF89CDFFFF7EC8
      FFFF79C6FFFF409AD6FF006092FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000997272DAF3D8
      D7FFF2D7D6FFF6DAD9FFF8DDDCFFFEE3E2FFFEE5E4FFFFEAE9FFFFEAE9FFFFE7
      E6FFFFE7E7FFFFE9E8FFFFE9E9FFFFEEEDFFFCE7E7FF8D7575AE0909090A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAA9A7FFFFFDF0FFFFF6E8FFFFF5E7FFFFF3E3FFFFF2E0FFFFF0
      DCFFFFEFD9FFFFEED4FFFFEDD2FFFFEBCDFFFFEACAFFA8A198FFD7D7D8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BAFFA7A7A7FF6C6F72FFFFE1C4FFFFE0C3FFFFE0C3FFC79493FFFFD9D9FFC18C
      8CFFC18D8DFFFFF3F3FFFFEDEDFFFFE8E8FFFFE5E5FFFFDFDFFFFFDBDBFFF1C4
      C4FFB88585FF8D6B6BFF6D6D6DFF000000000000000000000000000000000000
      000000000000000000000000000000000000002F435B008EC1FF008EC1FF008F
      C2FF006EA1FF6EBEFFFF70BFFFFF79C4FFFF7BC7FFFF80C9FFFF7CC7FFFF76C2
      FFFF77C4FFFF006296FF006293F0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000514A4A5CFDE6
      E7FFF9E2E0FFFBE6E5FFFDE9E9FFFFEEEFFFFFEEEFFFFFEAE9FFFFE8E7FFFFE8
      E7FFFFE9E8FFFFEBEBFFFFF2F1FFB68383FA5E55556600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3DFDAFFFFFBF2FFFFF7EDFFFFF6EAFFFFF4E6FFFFF3E3FFFFF1
      DEFFFFF0DBFFFFEED6FFFFEDD4FFFFEBCEFFFFECCEFFA2A3A4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BCFFA9A9A9FF6E6F72FFFFDBB8FFFFDAB7FFFFDAB7FFCA9597FFFFD9D9FFC38E
      8EFFC49191FFEEDDDDFFF8E9E9FFFFF3F3FFFFEFEFFFFFE5E5FFFFE1E1FFE8BC
      BCFFB88484FF906E6EFF6F6F6FFF000000000000000000000000000000000000
      000000000000000000000000000000000000002636490091C4FF0090C3FF0090
      C3FF007AADFF72C0FFFF73C1FFFF7BC6FFFF7DC7FFFF5EB1ECFF76C4FFFF77C5
      FFFF65B7F8FF006EA2FF00608FDA000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008080809E4C8
      C7FFFDE9E9FFFDECEBFFFEF2F1FFFFF5F4FFFFF4F3FFFFEBEAFFFFEAE9FFFFE9
      E8FFFFE9E9FFFFF2F2FFDDBCBCFF413C3C440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEF9F3FFFFFAF4FFFFF8EEFFFFF7ECFFFFF5E7FFFFF4E4FFFFF2
      DFFFFFF1DCFFFFEFD7FFFFEED4FFFFECCFFFFFEFCEFFC4C5C5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BDFFAAAAAAFF6C6F71FFFFD8B1FFFFD7B1FFFFD7B1FFCA9798FFFFD9D9FFC48F
      8FFFC59292FFBB8686FFB68181FFBA8888FFC29393FFD4AAAAFFDDB4B4FFD9AC
      ACFFB98686FF926E6EFF6F7070FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008ABDFF0097CAFF0093
      C6FF0093C6FF008BBEFF0086B9FF0083B6FF0084B7FF0082B5FF007CB0FF0073
      A7FF0076AAFF0070A4FF00395579000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000806F
      6F96BE9191FEFFF2F1FFFFF0F1FFFFF4F4FFFFF0F0FFFFEDECFFFFECEBFFFFF0
      EFFFFDE8E8FF9D7D7DC817171718000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5FFC6C4C3FFCBC9C8FFD9D5D0FFE0DBD3FFEDE6DAFFF4ECDEFFFFF6
      E2FFFFF8E3FFFFF5DCFFFFF3D9FFFFF2D4FFFBE8CBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C1
      C1FFB0B0B0FF737574FF988067FFA48B70FFAE9376FFD39FA0FFFFDADAFFC58F
      8FFFC69191FFC59191FFC49090FFC28F8FFFC18E8EFFBF8C8CFFBE8B8BFFBB88
      88FFBA8787FF957272FF737474FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007EB0F80095C8FF0096
      C9FF0093C6FF008FC2FF008EC1FF0088BBFF0086B9FF0081B4FF007EB2FF007A
      AEFF0078ACFF006FA3F9000F1721000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      03047A696992EBD2D1FFFFF7F5FFFFF1F1FFFFEFEFFFFFF0F0FFFFF2F1FFE0BF
      BFFFBA8888FD0808080900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFFD8D8D8FFD1D1D1FFC3C3C3FFBEBEBEFFAFAFB0FFA6A7A7FF9697
      98FF909191FF9A9895FFA39F9AFFB2ACA2FFAAA49CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C2FFB1B1B1FF939393FF909192FF8D8E90FF8A8C8DFFD7A0A0FFFFD9D9FFEBCD
      CDFFE6C7C7FFD8B4B4FFD1A9A9FFC49393FFC18D8DFFBE8B8BFFBD8A8AFFBA87
      87FFBA8787FF967373FF737474FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003144540089
      BCFF0090C3FF0091C4FF008EC1FF008ABDFF0088BBFF0082B5FF0081B4FF0079
      ADFF0079ADFE0001040500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000909090A514B4B5AA58181D8B08282EC9A7B7BC47868688E0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4FFBDBDBDFF9E9E9EFF999999FF939393FF8F8F8FFF888A8AFF868989FF8184
      84FF7C8383FF807C7CFF847B7BFF897A7AFF8E7979FF947777FF987878FFA078
      78FFA47979FF837575FF6A6C6CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000043
      5D750074A1D20085B8FF0086B9FF0084B7FF0082B5FF007EB2FF007CAFFE005C
      83B3002838470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B8FFC8C8C8FFCACACAFFCFCFCFFFCCCCCCFFC8C8C8FFC8C8C8FFC1C1C1FFBBBB
      BBFFBCBCBCFFB2B2B2FFB0B1B1FFA7A8A8FFA5A6A6FF9D9F9FFF969898FF9294
      94FF878888FF777777FF787979FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000}
  end
  object actlst1: TActionList
    Images = images1
    Left = 84
    Top = 16
    object actCariPasien: TAction
      Caption = '....'
      ShortCut = 16464
    end
    object actNew: TAction
      Caption = 'actNew'
      Hint = 'Pasien Baru'
      ImageIndex = 1
    end
    object actPrint: TAction
      Hint = 'Cetak Rujukan'
      ImageIndex = 2
      OnExecute = actPrintExecute
    end
    object actClose: TAction
      Hint = 'Close'
      ImageIndex = 3
      OnExecute = actCloseExecute
    end
    object actLab: TAction
      Hint = 'Lab Test'
      ImageIndex = 5
      OnExecute = actLabExecute
    end
    object actEdit: TAction
      Hint = 'Edit Diagnosa'
      ImageIndex = 4
      OnExecute = actEditExecute
    end
    object actPulang: TAction
      Hint = 'Pasien Pulang'
      ImageIndex = 7
      OnExecute = actPulangExecute
    end
    object actRefresh: TAction
      Hint = 'Refresh'
      ImageIndex = 8
      OnExecute = actRefreshExecute
    end
    object actPindah: TAction
      Hint = 'Pindah Ke RAWAT INAP'
      ImageIndex = 9
      OnExecute = actPindahExecute
    end
    object actObat: TAction
      Hint = 'Obat'
      ImageIndex = 1
      OnExecute = actObatExecute
    end
    object actTindakan: TAction
      Hint = 'Tindakan'
      ImageIndex = 0
      OnExecute = actTindakanExecute
    end
    object actBPJS: TAction
      Hint = 'Proses BPJS'
      ImageIndex = 10
      OnExecute = actBPJSExecute
    end
    object actImunisasi: TAction
      Hint = 'Imunisasi'
      ImageIndex = 11
      OnExecute = actImunisasiExecute
    end
    object actPoned: TAction
      Hint = 'PONED'
      ImageIndex = 12
      OnExecute = actPonedExecute
    end
    object actPrintR: TAction
      Hint = 'Cetak Register Harian'
      ImageIndex = 13
      OnExecute = actPrintRExecute
    end
    object actTindakanGigi: TAction
      Hint = 'Tindakan Gigi'
      ImageIndex = 14
      OnExecute = actTindakanGigiExecute
    end
    object actRujuk: TAction
      Hint = 'Rujuk Lanjut'
      ImageIndex = 15
      OnExecute = actRujukExecute
    end
  end
  object pipeClient1: TPipeClient
    MemoryThrottle = 10240000
    PipeName = 'pipeServerSimpus'
    OnPipeMessage = pipeClient1PipeMessage
    Left = 152
    Top = 16
  end
  object pb1: TJvProgressDialog
    Caption = 'TUNGGU ...'
    OnProgress = pb1Progress
    Left = 220
    Top = 16
  end
  object frxdb1_puskesmas: TfrxDBDataset
    UserName = 'frxdb1_puskesmas'
    CloseDataSource = True
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'nama=nama'
      'kd_cabang=kd_cabang'
      'nm_cabang=nm_cabang'
      'adl_aktif=adl_aktif'
      'alamat=alamat'
      'telepon=telepon')
    DataSet = dataPelayanan.fdQueryPuskesmas
    BCDToCurrency = False
    Left = 288
    Top = 16
  end
  object frxdb1RegisterResume: TfrxDBDataset
    UserName = 'frxdb1RegisterResume'
    CloseDataSource = True
    FieldAliases.Strings = (
      'resume=resume'
      'biaya=biaya'
      'jumlah=jumlah')
    DataSet = dataPelayanan.fdQueryRegisterResume
    BCDToCurrency = False
    Left = 356
    Top = 16
  end
  object frxdb1Register: TfrxDBDataset
    UserName = 'frxDB1Register'
    CloseDataSource = True
    FieldAliases.Strings = (
      'tanggal=tanggal'
      'biaya=biaya'
      'nik=nik'
      'kartu_bpjs=kartu_bpjs'
      'nama_lengkap=nama_lengkap'
      'mr=mr'
      'tgl_lahir=tgl_lahir'
      'umur=umur'
      'jenis_kelamin=jenis_kelamin'
      'poli_tujuan=poli_tujuan'
      'keluhan=keluhan'
      'sistole=sistole'
      'diastole=diastole'
      'penyakit=penyakit'
      'penyakit_panjang=penyakit_panjang'
      'tindakan=tindakan'
      'dokter=dokter'
      'lama=lama'
      'nomor=nomor')
    DataSet = dataPelayanan.fdQueryRegisterHarian
    BCDToCurrency = False
    Left = 424
    Top = 16
  end
  object frxdb1RegisterByPoli: TfrxDBDataset
    UserName = 'frxdb1RegisterByPoli'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'tanggal=tanggal'
      'biaya=biaya'
      'nik=nik'
      'kartu_bpjs=kartu_bpjs'
      'nama_lengkap=nama_lengkap'
      'mr=mr'
      'tgl_lahir=tgl_lahir'
      'umur=umur'
      'jenis_kelamin=jenis_kelamin'
      'poli_tujuan=poli_tujuan'
      'keluhan=keluhan'
      'sistole=sistole'
      'diastole=diastole'
      'penyakit=penyakit'
      'penyakit_panjang=penyakit_panjang'
      'tindakan=tindakan'
      'dokter=dokter'
      'lama=lama'
      'nomor=nomor')
    DataSet = dataPelayanan.fdQueryRegisterByPoli
    BCDToCurrency = False
    Left = 492
    Top = 16
  end
  object frxReport1Register: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42824.809320451400000000
    ReportOptions.LastChange = 42943.442171759300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 560
    Top = 40
    Datasets = <
      item
        DataSet = frxdb1_puskesmas
        DataSetName = 'frxdb1_puskesmas'
      end
      item
        DataSet = frxdb1Register
        DataSetName = 'frxDB1Register'
      end
      item
        DataSet = frxdb1RegisterByPoli
        DataSetName = 'frxdb1RegisterByPoli'
      end
      item
        DataSet = frxdb1RegisterResume
        DataSetName = 'frxdb1RegisterResume'
      end
      item
        DataSet = frxdb1ResumePoli
        DataSetName = 'frxdb1ResumePoli'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 14
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 275.905690000000000000
        Width = 1172.410206000000000000
        DataSet = frxdb1Register
        DataSetName = 'frxDB1Register'
        RowCount = 0
        object Memo19: TfrxMemoView
          Align = baLeft
          Width = 26.456692910000000000
          Height = 37.795275590000000000
          DataField = 'nomor'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."nomor"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 26.456692910000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataField = 'nama_lengkap'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."nama_lengkap"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 147.401652910000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1Register."nik"]'
            '[frxdb1Register."mr"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 272.126142910000000000
          Width = 60.472480000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1Register."umur"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 332.598622910000000000
          Width = 30.236240000000000000
          Height = 37.795275590000000000
          DataField = 'jenis_kelamin'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 362.834862910000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          DataField = 'poli_tujuan'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."poli_tujuan"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 438.425462910000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1Register."biaya"]'
            '[frxdb1Register."kartu_bpjs"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 540.472772910000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1Register."sistole"]'
            '[frxdb1Register."diastole"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 574.488542910000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataField = 'keluhan'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."keluhan"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 699.213032910000000000
          Top = 1.000000000000000000
          Width = 211.653680000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."penyakit"]'
            '[frxDB1Register."penyakit_panjang"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 910.866712910000000000
          Width = 128.504020000000000000
          Height = 37.795275590000000000
          DataField = 'tindakan'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."tindakan"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 1039.370732910000000000
          Width = 117.165430000000000000
          Height = 37.795275590000000000
          DataField = 'dokter'
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB1Register."dokter"]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1172.410206000000000000
        object Memo33: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 1172.410206000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTER RAWAT JALAN PUSKESMAS'
            '[frxdb1Register."tanggal"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baWidth
          Top = 47.795300000000000000
          Width = 1172.410206000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdb1_puskesmas."nama"] ([frxdb1_puskesmas."idxstr"])       - ' +
              '      [frxdb1_puskesmas."nm_cabang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 200.315090000000000000
        Width = 1172.410206000000000000
        ReprintOnNewPage = True
        object Memo35: TfrxMemoView
          Align = baLeft
          Top = 3.779527560000000000
          Width = 26.456710000000000000
          Height = 37.795275590551200000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Top = 3.779527560000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Left = 147.401670000000000000
          Top = 3.779527560000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'No. RM / NIK')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 272.126160000000000000
          Top = 3.779527560000000000
          Width = 60.472480000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Umur '
            '(T/B/H)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 332.598640000000000000
          Top = 3.779527560000000000
          Width = 30.236240000000000000
          Height = 37.795275590551200000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'L/P')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 362.834880000000000000
          Top = 3.779527560000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Poli')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 438.425480000000000000
          Top = 3.779527560000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Biaya / Kartu')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 540.472790000000000000
          Top = 3.779527560000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'TD'
            'S/D')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Top = 3.779527560000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Keluhan')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 699.213050000000000000
          Top = 3.779527560000000000
          Width = 211.653680000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'ICD-X'
            'Diagnosis')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 910.866730000000000000
          Top = 3.779527560000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tindakan')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 1031.811690000000000000
          Top = 3.779527560000000000
          Width = 113.385900000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 1172.410206000000000000
        Condition = 'frxDB1Register."biaya"'
        ReprintOnNewPage = True
        OutlineText = 'frxDB1Register."biaya"'
        StartNewPage = True
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDB1Register."biaya"]')
        end
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTER RAWAT JALAN PUSKESMAS'
            '[frxdb1Register."tanggal"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 47.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Puskesmas : [frxdb1_puskesmas."nama"]        -       [frxdb1_pus' +
              'kesmas."nm_cabang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxdb1RegisterResume
        DataSetName = 'frxdb1RegisterResume'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1RegisterResume."biaya"]')
        end
        object frxdb1RegisterResumejumlah: TfrxMemoView
          Left = 275.905690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'jumlah'
          DataSet = frxdb1RegisterResume
          DataSetName = 'frxdb1RegisterResume'
          Memo.UTF8W = (
            '[frxdb1RegisterResume."jumlah"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Resume')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Biaya')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Top = 34.015770000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1RegisterResume
          DataSetName = 'frxdb1RegisterResume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total Kunjungan')
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1RegisterResume
          DataSetName = 'frxdb1RegisterResume'
          Memo.UTF8W = (
            '[SUM(<frxdb1RegisterResume."jumlah">,MasterData1)]')
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxdb1RegisterResume."resume"'
        OutlineText = 'frxdb1RegisterResume."resume"'
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.200000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 14
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 275.905690000000000000
        Width = 1171.654300000000000000
        DataSet = frxdb1RegisterByPoli
        DataSetName = 'frxdb1RegisterByPoli'
        RowCount = 0
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 26.456692910000000000
          Height = 37.795275590000000000
          DataField = 'nomor'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."nomor"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 26.456692910000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataField = 'nama_lengkap'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."nama_lengkap"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 147.401652910000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."nik"]'
            '[frxdb1RegisterByPoli."mr"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 272.126142910000000000
          Width = 60.472480000000000000
          Height = 37.795275590000000000
          DataField = 'umur'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."umur"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 332.598622910000000000
          Width = 30.236240000000000000
          Height = 37.795275590000000000
          DataField = 'jenis_kelamin'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 362.834862910000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          DataField = 'poli_tujuan'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."poli_tujuan"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 438.425462910000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."biaya"]'
            '[frxdb1RegisterByPoli."kartu_bpjs"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 540.472772910000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."sistole"]'
            '[frxdb1RegisterByPoli."diastole"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 574.488542910000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataField = 'keluhan'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."keluhan"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 699.213032910000000000
          Top = 1.000000000000000000
          Width = 211.653680000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."penyakit"]'
            '[frxdb1RegisterByPoli."penyakit_panjang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 910.866712910000000000
          Width = 128.504020000000000000
          Height = 37.795275590000000000
          DataField = 'tindakan'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."tindakan"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 1039.370732910000000000
          Width = 117.165430000000000000
          Height = 37.795275590000000000
          DataField = 'dokter'
          DataSet = frxdb1RegisterByPoli
          DataSetName = 'frxdb1RegisterByPoli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."dokter"]')
          ParentFont = False
        end
      end
      object PageHeader3: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo42: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 1171.654300000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTER RAWAT JALAN PUSKESMAS'
            '[frxdb1Register."tanggal"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          Top = 47.795300000000000000
          Width = 1171.654300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[frxdb1_puskesmas."nama"] ([frxdb1_puskesmas."idxstr"])       - ' +
              '      [frxdb1_puskesmas."nm_cabang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 200.315090000000000000
        Width = 1171.654300000000000000
        ReprintOnNewPage = True
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 3.779527560000000000
          Width = 26.456710000000000000
          Height = 37.795275590551200000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Top = 3.779527560000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          Left = 147.401670000000000000
          Top = 3.779527560000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'No. RM / NIK')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Left = 272.126160000000000000
          Top = 3.779527560000000000
          Width = 60.472480000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Umur '
            '(T/B/H)')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Left = 332.598640000000000000
          Top = 3.779527560000000000
          Width = 30.236240000000000000
          Height = 37.795275590551200000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'L/P')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 362.834880000000000000
          Top = 3.779527560000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Poli')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          Left = 438.425480000000000000
          Top = 3.779527560000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Biaya / Kartu')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Left = 540.472790000000000000
          Top = 3.779527560000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'TD'
            'S/D')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Top = 3.779527560000000000
          Width = 124.724490000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Keluhan')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Left = 699.213050000000000000
          Top = 3.779527560000000000
          Width = 211.653680000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'ICD-X'
            'Diagnosis')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 910.866730000000000000
          Top = 3.779527560000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tindakan')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Left = 1031.811690000000000000
          Top = 3.779527560000000000
          Width = 113.385900000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1Register
          DataSetName = 'frxDB1Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 1171.654300000000000000
        Condition = 'frxdb1RegisterByPoli."poli_tujuan"'
        ReprintOnNewPage = True
        OutlineText = 'frxdb1RegisterByPoli."poli_tujuan"'
        StartNewPage = True
        object Memo62: TfrxMemoView
          Left = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxdb1RegisterByPoli."poli_tujuan"]')
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader4: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo63: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTER RAWAT JALAN PUSKESMAS'
            '[frxdb1Register."tanggal"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Align = baWidth
          Top = 47.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Puskesmas : [frxdb1_puskesmas."nama"]        -       [frxdb1_pus' +
              'kesmas."nm_cabang"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxdb1ResumePoli
        DataSetName = 'frxdb1ResumePoli'
        RowCount = 0
        object Memo65: TfrxMemoView
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'poli_tujuan'
          DataSet = frxdb1ResumePoli
          DataSetName = 'frxdb1ResumePoli'
          Memo.UTF8W = (
            '[frxdb1ResumePoli."poli_tujuan"]')
        end
        object Memo66: TfrxMemoView
          Left = 275.905690000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'jumlah'
          DataSet = frxdb1ResumePoli
          DataSetName = 'frxdb1ResumePoli'
          Memo.UTF8W = (
            '[frxdb1ResumePoli."jumlah"]')
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo67: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Resume')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 37.795300000000000000
          Top = 34.015770000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Poli')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 275.905690000000000000
          Top = 34.015770000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1RegisterResume
          DataSetName = 'frxdb1RegisterResume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo70: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total Kunjungan')
        end
        object Memo71: TfrxMemoView
          Left = 275.905690000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxdb1RegisterResume
          DataSetName = 'frxdb1RegisterResume'
          Memo.UTF8W = (
            '[SUM(<frxdb1ResumePoli."jumlah">,MasterData4)]')
        end
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 302.362400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxdb1ResumePoli."resume"'
        OutlineText = 'frxdb1ResumePoli."resume"'
      end
    end
  end
  object frxdb1_RujukanNon: TfrxDBDataset
    UserName = 'frxdb1_RujukanNon'
    CloseDataSource = False
    FieldAliases.Strings = (
      'provider_rujuk=provider_rujuk'
      'poli_rujuk=poli_rujuk'
      'bpjs_kunjungan=bpjs_kunjungan'
      'puskesmas=puskesmas'
      'nama=nama'
      'alamat=alamat'
      'telepon=telepon'
      'nama_lengkap=nama_lengkap'
      'jenis_kelamin=jenis_kelamin'
      'tgl_lahir=tgl_lahir'
      'umur=umur'
      'kartu_bpjs=kartu_bpjs'
      'alasan_tacc=alasan_tacc'
      'kd_tacc=kd_tacc'
      'nm_tacc=nm_tacc'
      'idxstr=idxstr'
      'nik=nik'
      'mr=mr'
      'pulang_tanggal=pulang_tanggal'
      'dokter=dokter')
    DataSet = dataPelayanan.fdQueryRujukanMaster
    BCDToCurrency = False
    Left = 628
    Top = 40
  end
  object frxDB1_RujukanRm: TfrxDBDataset
    UserName = 'frxdb1_RujukanRm'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idxstr=idxstr'
      'penyakit=penyakit'
      'tindakan=tindakan'
      'nm_diag=nm_diag')
    DataSet = dataPelayanan.fdQueryRujukanRm
    BCDToCurrency = False
    Left = 16
    Top = 84
  end
  object frxReport1RujukanNon: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42744.310649294000000000
    ReportOptions.LastChange = 42744.310649294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   // if length(memo12.value) >= 5 then picture2.visible := true' +
        ' else picture2.visible := false;                                ' +
        '                                    '
      'end;'
      ''
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 84
    Top = 84
    Datasets = <
      item
        DataSet = frxdb1_RujukanNon
        DataSetName = 'frxdb1_RujukanNon'
      end
      item
        DataSet = frxDB1_RujukanRm
        DataSetName = 'frxdb1_RujukanRm'
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
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 109.606370000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Left = 60.472480000000000000
          Top = 11.338590000000000000
          Width = 612.283860000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1_RujukanNon."nama"]'
            'Surat Rujukan'
            
              'Nomor :  [frxdb1_RujukanNon."bpjs_kunjungan"] - [frxdb1_RujukanN' +
              'on."idxstr"] -')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          Left = -3.779530000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 64.252010000000000000
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
        object Picture2: TfrxPictureView
          Left = 672.756340000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 64.252010000000000000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000CC00
            0000CC080300000008FCBCC00000010B504C5445FFFFFF00A651083F8800A652
            00A44DFBFCFC00A24A003D87FFFEFF003B8600A75315AB5BFDFAFCFAFBFCC4E9
            D5CFE1D824B066ACE0C579CFA2BED5C989D3AD56C48B5BC28C3EBA79F7FCF906
            9E41E6F6EE6ECC9A0B4189EEF9F465C99565C089D9F2E588D4ACB1D6C2003784
            EEF1F56889B5CED7E626549416488DB3E0C634B672E5E9EF91C0A4C4D1E2EFF3
            F118AD60B1BFD87997BE3F68A04D75A8335F9BC7E2D489A2C4446CA3DAE2ED6D
            8AB498DAB896ACCBE4ECE8809CC0BAC7D9587BABA0B3CEADD6C172BF97D7D7D7
            92CCADE7E6E7174F92325B9C88C9A0D8DEDAD2EFDEC8D0D981BE9ABDE7CF002E
            80AECDBDACB8C887D8A95DCC8CA9E1BEDEDFEE8C9DB644B16F728EBC59B68885
            9849430000276B4944415478DACD7D8977DB469A67016011070192E221429025
            52314D5BA2CC38763BB13B763CDD71667A92D76FF7CDFE9DF3DEBEB773F44E7A
            BB3B9D64E2D8B1231FB212596E49964C512229F1000F1004B02890122F1C25CB
            E9A49E139B1200D60FF5D5777F5F11E0AD0E018044EC900B3755C62FFB5412D4
            93AF0098DF367F4E75F9BCA870952654F601A8BFDDEFED0DE22D3E2B4DAB622D
            AC925D3F4040A25B49005EF57E350F8009488726209ED761450BD4956DF59709
            0632F38B4F682AD00CB6C3DB9BA494473FD481395B38F43F52270190F2FA9D43
            A326527AA7AEECBFDD057A3B60D2340C1C442A2649C900E43D809BFFA9129F2C
            06A8BCFE7657E78C6018001331A61AAC3792AFE43C54AD35700772E73020E629
            FD080440E997B4328C89A441F98F84D8F32250A1D75B96006F84195D6F688AC5
            041636DBD13200E83F73B198F64F0EC6ED554326C146EB72A388472B120001B1
            5B239EA05B292D8A9649B37E43995840D97D5199DE5FAE881DC140F3EE046DB2
            D43A7A89EAC443CC556159B61179EEB5474EC6554817CD6721CA825152A6C21D
            D520A3002C7F010C46BE74B4F054750004411440CD0F408732413B637600232C
            70FE5A4055CD17E2536023D8298D6DD51CE76F1F098D4611E02C0B8C2F95EA57
            F63BAB75EBD9E7A8F20F7C8B8CE6931B468B34BF23BD2D950DE8AFDC7AAAA985
            09248BB5436A71AF0A58D02233339DA7C13587EFB40523CCABA2513077026D7E
            C82B170242B7D184AFDAEAF1E39331BFE6DBDF24752C029378C009DDE2A66A2D
            B870E59BB0ACD6291D1C5399456726E3362E160D4D8B04D7865F10FC20B8D9D6
            78F8A26B7ED0FD17D452A0727345B75D1F3B303003593582D8AC4541E6BE0586
            00E9F6C3FE03043023B52A848C4B5F70C19809FCB88FDE0513D752DB0D734114
            7DF23AD25C22B5A4F35A613053180F3578B8018C56EF334B98CB18BCFEB05DB0
            F9A2493042B61DAA9BEC69883B992C37BE74589D2DBEB2F6CE476D8D90B1A148
            4B6586CA5B4C188AD5A8AC269F385F4C691CA455838DF52809CE56610C3E23B4
            916B40D684ECD727E14C8011E62151CC4FB25948CE8B55A6B461FEF37DF625DE
            5641236388DDE29E254F44F2DA3754BDA3B9DF40814C49BDF974C7C2C236CA0A
            98BC81E2E18DA7AF27A6300E26D74E1C74376DBF8506B75BC4234505EF91DF03
            4FA172BC2C55FFE17AEF2DC7AF7D3DB70A34EF9B28529B4D3C6D835C4DAF3555
            874BB8000CAE8FF1D83130C24C8092379D262A4DD3657D03DC606A07584406E3
            014E28F71887C8C8646CBB89F50AD8D481AAB4C5B997A2F30D5CB27063778C60
            47C1083361BDE0324F297B54D137E042A0D9C04023F1A18EF4E3461F57CB2F3E
            D3BD6F4223576ACF3E112E95D8AD96F345E4C5D6A13EAA0E8D8011E6C3ADEAAE
            2B015D25C9876A5A22F6D7BDA1244B4271B5F781D13E596B82685E3540CBEB46
            92E15BA9272025557E7405CF5E78ED1F553E46C0A4796ADF4337C984D8DD0DF8
            0FCDD296A72616E0BAAD812629A6770F97B7BBE28B8ED7B6A13255D264CE0B72
            C30B77ECA3FB3B4E60842C5D78A578BDEFA9D60A48C7E8C20BB7CB601CB05776
            5647A940241B998D7053A903B7374E32D1F37F0673544B91BD50672B47DC3083
            1E06938D32AF36BD5E389DEB7C6FEA6502B1EA722554333C1DFEF7C95F30F1EA
            AF9ECD6C34299779E66AB10740BAF627E0C92DA87FD9DD195E9A61305788DAAE
            37C7BD0B6AA6B4F99FFB3BCE2C4002A2D6707C2DA202635B8AE3E2709CD25261
            BA51C060FE5C32F5686869066020B3483C513CEF870BEBB73AF7C067C5AA2343
            93789E6CB51C0D2FF8C19328BBDD7642C3D1E71FC00FF497650C89C4828F1F0E
            CD620046481094278B426321DA7A0AB2903C70E015A6A09C6FFE97DB7B85DCDC
            41A763BFBD4961692B0FAFE463AB1860000C2E3C185875033039CEC058180486
            0CACAAF05264DF8190EE567DFB1B1ECFC845573B55DBDF70FCFB2B3B42BC7E88
            2593A0589707B31880C942DF2A16187A91ADBCAA67A247B6602410172A6B9EF4
            CE2FC2C746C756EB0AB42B99E9A707385331D978A13E501307606EE8552FBEDC
            07F351535DADDFD0C37FB4C3324DCBFA2AC653E628999026F5678A0F44D7409C
            66D7F0C0644B5AD90E8CD2F41484BD71B71EF96B3D1BDFB3E100522002BFC17B
            0A1349BD94DBE322C77CD51D19CEAA8D2AD64300CBD3854930A605B5F005D634
            609C9DF9BE6E5265619C0398CA98CFA440BC6900189D2A37C6991A15E58A726E
            8B997982F7102A4A15EDC0CCD07FC47B00B86D5860C6D46BA85EE0356615DF15
            661A05F7D431314F45B5F6E9C0B0C1934B87C1782B8FC360A27273E47A53BAC0
            C4B353B928198DE71A9D11F9F9CB00434797366730B7CB004D78AA34AA4EBE2D
            30C6021E999DEC99613293961402DE3BBDB755B8F110CA434AD8E9C1500367C0
            1098A880C700404663B64C6E269F8081719EA307DE9BD3A1217EFDBDAC9C6C1C
            8B0108B79FD530B9198831057B3983C79A618A93FE4BBD41958E59B3040281F3
            8FF7DED4091E82947CE27AEAB3E69A8E092677D4B19333E6AB7E8A05865EF435
            D6D513A169AAFB06173ADC6CBF69740272D2A178AC8921A1F98489B7A6318566
            A6E0B7039366393CDD8C7E9FD8DD003D7506AA1272A8053A9FBF21120BCDE20E
            21C29E83C052670AE2E2333CDD8C8AA4FF7BF069486B9E8FED7B9A66682C0485
            6F5421652A9A71C0CF97841693F7D22BBD8678F53ED9512D5AE3F85668075ED9
            2F63397220FFE1FFB10303994F57B094B305B1B88E88F211AD2FF094BFA2AF63
            7B041D8770E33BA1A69ADFAEF54C8059E2C8CB68EE4D3A10DAB203C3B44D4B73
            D3FBF63BDB53A6A5F9595107865F6B054AFB6FBC59461E1B25E5E517A4B8D1E4
            A2156469D670A23E8E96A6C972A56FE2DEEEB0AB46D534223FAB1CF0507AA9AF
            BFB5A02414C556EA5B5201FE365700D7E17DBFA7530A8482DD61CCA3DE994ECC
            4B6E4ABC36FB17F3EFAC70F896A3ABD60C6E6FCEEA4F3AA11D30A7358127A171
            81B6A377062613CA238FD71717E922D26204B0B0469D3D0A39FEF8451004BB28
            E004E950D7CB0B40655ACA08318E3801E1358572B53691F3B8DB3A2BEFF2188C
            663194DF7FADD73D3C9A3B373E77F6680278738F720DBC641255F927C6723CE6
            F8F28C9B739A64F8C8D1688C662C0A002FB529176173B7DCF9A9D7E5643099E4
            E3B26238C2C9E56F6CBB46014C3D409A79E91807B810A177DF721E82CB807199
            8939F9CE293E18A88E73EF7130CCB9E5D550216F174BCA18E2D40B1C5FC55B43
            B3B823D43AB6BE4F0E44CFC9133E209B006D46AA351A63D17DC9545CCA14790A
            9BF8EDC099955E2A9DB12808A9B317F21A8313D334296D41AD92F20B2B610785
            FB20A9934983F7B798D5B30A7BCCE0E1E0FAC5E02A01954E07F4C3EC28C6EEBF
            50F06598AFDAAA389EE030C6CD3242FD551D66D4A53CDBD6403D095ECD6F0341
            8787627D76EBEC2426920DB670BA5BA459FE294944F32069729EF43690CA46D7
            48D35FA1A03A783D223327C28022A82016912625AD103448504F158190E70DAD
            F516763E13BF521E894160DD9439C73E6A18A489C744A21381AB9F736845C4A6
            409DDB710C3621305CF0184CF328E83317C75C16A6E3ABBF35305B87A7D51B72
            B52AC5B54EC0E89A86C030992D0F30E984DE16CAAFEA4048C41A53A4AAD2328F
            526784721DDBB7E736A4D486CA9F7669E0E276465EDA5B37B95A68664DE4D703
            88254BB20F46ABEF3E72D2CD00B2B8E615A22CEE5B5C2F4D0BE0305207BD6C4A
            C89C59D787F1765B885471733B86C79C061A0004402F692617FC5B87AB753A99
            B063E40CA4CFD5565569F630D0F74B42D3C861DA7DD34B4880B30A7F26DE90B5
            A87A74AA1770927D640DEB1323564D3BDBDC0EB9025B18A2DA7113E00B15C679
            3ED092D472E964EE42821413DB1DE6DE99C1F85EEB34DF99C3748A210CB387D7
            B6CB97BF3D260A264C22F616832F9030655B617B4B1305680FE4A2E5A4088499
            16674AA588F5F3437A4A6B9280A99C99378BDD8A0672154AFA0A1BBF28ED6AC9
            35ED62B1F7392E96F73445390EBB413E31E4C619B134E3D17F3BF970F79062F2
            3CAF00BA5B92DA1562FD6EC3331ED61BBCCBAFD81D0DD95437FF9F8C0D86086E
            405A27608B044295558D387C31D0089C824D007CE8BB3F3066A4DEA4E67B69D6
            723E139AF9DF582F9F0C4D39FAAC85A6657071A7A034C8CF6C1BD634D3C0DAB4
            C6887243460236BE66D3765C56472C33686556F793ACE11D85FF77AF2F4691E4
            BCB86BBE43A7A1588E4A2ABB77731317CD3BF5A68BD789CAEC654F6876C80918
            539F39F35E29DB54BDF7BF10955EC4B7149794DC7EBA2CCD09B8FB2644B95A9C
            B923F224F16C088C24AF399ACC303EABA8DEFB3F97A764A3457A3B2359229CF9
            331E985BFACBBA8B9F8615DE7F702C383103B4F0CED4F7DEEECE94F45CC5CB28
            43222280B736900D4FB99164AE661C2FCD20A4718D700B695CA5354F2A33BFF6
            35664619B0323176B034E81471E41612E002EDD6381821050F1C9D88F0CE66D4
            DB304BC92DDC753107E51796CADE0903E6ABDFA2DD58007B21F0B74A7B144C9A
            4FFCC5F1C9F412B5E65DBFF39B97256F27E4F02CF672CF319CB042B821AE3BBB
            D0487D2AD8A7B31330D9B0633E9CA9E00499BF7A7E29BCF3B4844F6568E4F24A
            084387665821EFECA501301CDDE8F9234FC0640271C72D73B77A84111783B70B
            EB389EFBC160FD048BA34287C8F90D6742A332AD566FF39D80B9CC0B0E7E6618
            9F66713419130C5EB8EBE4062E00DB383C40BCFA50744E72A2B2796667048CF0
            9E630E29CCFAB0DC32A75D1936D55A7C54C6B291E6E6DC640D9B6AF6DEC90998
            F354C3018CC4063670F4C2D382C91DBDFB00D3BB013F79E6266B427A6FEB0DC0
            D0557B307737991FF0A2D0A7026372D47C01DB1DC0FFE671C9251372DAD81A05
            63BF32F04E5953F1224AF0F62A4E2A62FFE2B44C6A386998FDCBE3A98A73C636
            175DFE53DB1B8C8945286246C72657869A509FF5FE05AC7F6AF973F4FD70D1FA
            BCE6111665B42B2FF58E131A3675FE0F2A0698ACEF10D7C734090695578D8EE3
            FD1E0AF4FC2A50A4ACCF1DAAE0012777EE81E4B86DB879E41170DF337061BE5D
            F6D4957374C1A21753681E0D4D88027EC18063D776AD8A13C84D2D222C8270E9
            597F02FAC7A5FB9C2B3B30B51AC714742AAC564FC088A061B7329990FFD0CB5F
            C64442EDAB0F2D7DE27A695823A4001D6E8EEDA13B8F2A0AD0C88B851BA83E46
            BC5AA9E4D5F406486FA4C136D40C567781636E9B17470E8A0015ECD68EC18850
            2BDE9C943352806B78E9FDCCEDDDF28CBAC7223FA538556A0E65F65134CBBF1E
            BD3AFACE63134C6EE7C33F98FA871095A7D74E52CF296359DDD31537FE16F437
            1D381A15B9FDAFC760A42BE0F385F71E8F83B930AD7A0ACBB9B917CD2615F559
            699FE2D567B541881881D91ABD5A446032E13C9271F0937B632624155519F7B5
            E9C61C98FFF47B7F380613A4342E05D951DD4CE2D9E3E217E7712BDF503A2D2A
            AB86F3E5BAC99A928F0699A214DD67FF2360D429CE689BC8E1079BDD31A94E79
            B9D4C4A98683EC5CACBEEE8161DA7757E247D1F8DEA8D67C81F78C5FC2C5E8FA
            110A059120763EFFDA72CDFBC4E3C89D1D98EEECF65218C904F809BB31A13C52
            D9C5FFD4DD6801056D6DD1E4F2956859B55626020C9AE77D23195AA60973E895
            B52044F5E324378E3F6F9948B9E4A33C75ECB5B00353EAE996F0FA8BA3498AE1
            F84ED6CD9686E2DC733BAB93A405021610181835F48FBE2E8FE6684AB3ECAE27
            8DADFA8E59BF291D2F560D646989641BF638B41D98A942082DA010AD893F1293
            60C8E592EC9E35776BEA4B3B3703C5FF1AACE40964C909E5F37F2B2F048692B4
            A5A54AC52BFD740E2A8D815026970B1D6BA230BDDF93D576601860AD8B947A29
            DB1A28B9A346D9F54B73252264636850FC6DF01081C96D91D281AF908DCB031F
            E0DD32F4606428145C1E49B1262F86B7D0DA203685D0D880E939150521F5DC41
            35E138DD1D8C29CD5ECE3D99706651FCC7E0D553138CD432A4AA56489353A593
            0CADEB9E4436276E8FD759703CD742FB46BC7A7F7A4323801D1814E411DF71B4
            4E30C088D71FBF06936096D617109814110405FF8E90208EF3E791FBD22315F6
            167C39F5626C4624930C5B3C2D57239AF58E1D1801B455D3D21A4A973D351826
            72EDBE38CED2A8EC0E388FC07CFAB8626A4B450AE6DACF7B74964918EEE9D630
            BAB81EB3496C2163E7B790D8637E7B7FFA470ADAAD8CFAABA9972EA5A4DE606C
            ED4E2A5BA27C68CF5CDF6EB4192AF5047CD416FFAF85E142CC231493A3B76C55
            5892E16F59D586E2D5B583E074CD064C7D79BFE1567086018689B427646B6ECF
            100E4C3041B6DE62AFAC5641969C41D58012AF65DC1DFE520BCEBC98A47ACAE4
            D0DAFFFA63C04203E5E0EBB97130300E6E52FF4A0D7EA08F156D628141EEC6EE
            98339DE3C8A5EF0846FBDD9755408AED3210B26AD4DC35D252C3DD157B2BDF45
            5A053929284C71B3ACA656101F54C5EA27BBF931302273F949A9098E6D361DFD
            6B6452986072B22C8FBE4C8E0726183027CF3F31D92AB9D166CE9D6B3D30770C
            EF2BB9B2B2DF7F2D226F5772541D3155FE249A48F400B15D53F912F9F4C331AF
            98D88C8E6E97281C7521618231C5C9B9D18DC725F3E77E244C01F6D8E42DDC07
            9D6F5561C658F802A4F8757757AC7485326D10F0352C0DBD5692884F153EFCC2
            B459B495BAA5C88B54675C0786F12BA3DA4AB479A40FA3C10503A35468448146
            60B608868E1C9860C8084A454BF35465F74AE77BAF274D0370D0F0C1F2308DC0
            A8DEE1D57274601B8B934E313866472BC14EF14DC0983B3D7A301C1064FD490D
            81A19426F2714AEDAF00BC0637F3B7BB5FE33C8D8736604E997D01F937060359
            76582322973716B609E672BE827EC806AE7F6E6A1AA9762B2E783BC97F7E30E6
            5E9F194A132419E31D04A697764F5E3CB8F41560CE438A29625538FDDC60900A
            581D28695C0FCC76C302B39CEF9816B890D5196F87CC2F018C69A91DD6953130
            52BDE7C161C13F7F9347A925FB786DE17E763000C4A67F1C07D3E8293A241083
            C85280983517BF0030D75F2A273CC00203E71AC75ADB62E11C4E8CF197032627
            37E463936A1C0C17F0E9F81994BF003020F4CF6BCF1CC0986814DC22BC5F0618
            2892A51EA1F584E60898CF8A2A76F2D4CF0A8669A7C1B6A9FF453BE25A1F0C38
            370A067051DF0EEEAEF999C17C74A42337F81457B026D1533447C090CB3B7EBC
            28E3CF4E6637DB02AADB935A8A9590CEF1D1C477A360908785C424B49F158C50
            BFDAE0EB7919303463754DEA1967A360A8EC5E9BC3E3683F1198D4039C1BD334
            2B1B96717FEBB9B56BB880B1FC600C0C20055253B0E2A66360480A81198B528E
            B79364DA50058CA632BDAE8B303A6102043EF843EF5FEEC49E25691904B49775
            904BDE476655CE72689CA833FDC1FA3FFE062BF1781C8C699C1D742260093C3F
            F933DEAD90D144D0EBC82892FEA5E7002CDD277CA36078AD7307808DD7BC7B52
            CD0D3DFC1CE4DF6D988476CBFFA80E886CAD7AFEA9A9686E8DE40C9174ECDC23
            9CA51927338A5C2CF846AE48861F8D51ACD8A46E1A1DF34BF66BD236FA415769
            EAC3D130D64FD36D54C5937FED0AE6B3756A1DD04BC2EE06C8A14E287D27E0B1
            09309854B640C5D6BDE18C83E979670643FF97C3EA7842D9DCDC46D40AA5C245
            E99E4C4E7A67AC67E87EE1F203575A4F9F931F598963C45E5DB8B45DD6299E00
            BA320906F50D1B8F78E181E995B7F407997E47696D8CAF4CB7FB8FAD15C425F8
            45785FA36CBB835186B014FACA5573FF2CDFB49A785D09EEEE6A62436922C7F9
            D382096648F5EC4D035C3CE05F7B4A1B3B308309D170265A9BC86013BB2D25AA
            5D42F9E3B9E0EB6689B003C371EFB61FBB6211728A8C0C48981295D53A58D6D7
            C88B4DA0ED580E8D716F2917C0A8A57005C3A6E46E3E97182FAC476068FEFD87
            56B080F58936491724C39F5F75D710E135256E6560C105C3DFDA00FFE3BF0F41
            CCAFE91502489DD6A41B3B76E3CF5D8F6DE30CC6A4FAC5969207F66080B11C58
            453B82F9D50FDDC9C80697DCCB7A88ED4F4A54BF6011FE532DBF6E9A3547B9BD
            03B1000830F7FEC6A4DB38E4E7BC32C15C5686147CBC79BB131886D7FCF53ACA
            6DC84EC469D8C00572C3FD9BD3E454E838356E61BAB50242D96F16AB654D35C1
            88537B93AB6A3281F7BF74B79EF9B9B26CEF0167FDE4F9156B5B4C328016EAF1
            C90AE7AD1D9E0B6E86460B3139DE838F9923130E9FA476D28B8115F55753FF36
            ADC96D146D86EC39BBCACED0D256DEB51F344F0A15C32E66C4A60A8C15DD6496
            9E8EEDBC3E18D42893B7563E94AD0C35A143FBC55335446D1506558599C4EBFD
            C0D5BFC4EAA828A71F05B09952C0F0B92AD0CC6FD78236A100142AE90594A59B
            7F1A2E6E190643327029FC1F00D5CCDF6F9DBC11CA9F92E0571EDE14E19A311C
            488657E656B6678BF4879F5B2B033E7D66D7AFC2949DEE05554CFCFD351B6EC4
            81779F5949D39F565E6A13191A7D30E698F6410DE5CFA47FA0FAEF9205B14CFB
            5B0F919025FDF270BE029DE52A6BF1F0A2A5822130F714DB48164777DD15E8C5
            5273920F86A414222E18FDF0CB864D1EC00918D64FF4A2E897F2B1DE0273E980
            EAA532C385786024171AFE83D2FD36AEC6E49D1E1829F5DCBE2702CBF3BC5BF6
            C7AD55FF44003C440651B2229C959EB335BB74939326BF14DD7F59B7742BC92F
            97BFF0372FE3439809B4D647CA70E19D22BD45D2BD720013CCADF29E2D18924E
            CDFFE0A60908241C1714B992A43C41F548D7BE9255689F08D4FF2E9249162C34
            391A9A1C9A8CBCFBA0E9A576DCA05ACD31DF71468B6E912DB6D80793AB710EF9
            C8ACC0096E9EB4DCF6B5D541672273035F28D1682D516AD8A1153A1F6387B0D5
            1A6ABF4C5EACBE8B48D2E4D05DB170F981E691A32B2412ED8976B299407D2FC0
            9CA40243B15372907EB9ED5F3F75D56BAE6F4EE7D536D049EB4FAE803AE022C3
            DC7F402230E5B1FA333F7130DC4B9A64FA6B17F453DCA5FFF45816535A0623E3
            89E4303EDBDCAAC3935A00A84E3BB481342DAEA96ED78D570A0BE72ADB1DB217
            422A73B11FDAAAF9FC8EE50336396D911DBB5E196DA44D0A84D539525828C536
            3D78324C26DACF265BC94822F7FDF19DBDAC26D129EF9DE2C91B8F5CB7A5C81C
            DE398E802E58CB98AAFAFAE61E379EA209D4B11E80B9006EE1364C4A7BA45DE9
            C527AD5130BF7E51727CC8E2811FF34486FE9746DFD9A8F46EA0C8F1E45950D6
            47594DEEB51FB33838CD4668BBCA0B984A8C82F9FDD735C7EC6A36E5A9C58E3C
            7BB66A0C42F45ED567E472600B0F0CAA55B0CD178597C7C82C257DE3F27D7BED
            1676BB1C53BEBCC06BE6753A3042CAE7D489FCEA181871CAFFC231379DBD30A8
            50C3C0F2D2B357FE1B801166122D874E72D2343F0AC641D7EC7F21887CF43566
            A443547C9EBDBCDF044CFA5CDDA186042E844CD63C0C861189039712352EF001
            5E6DC8A7F7675F9C060B2E986CB4E9D8DF3F93D83BF9556F65A4D6BC4B7B6456
            D0B0780EFCDDB7F2A9B02030DEAC99695F66F34E07C32077D3181891E15CDAD6
            535935F5086369203FB3E5DD297F180B1088AE673458480884636D2F4C4D0FCA
            947B60A0D8965CF46396F8DD1F71426A29A9B2AD9CA2B88904B18877995A5A6A
            441DDBAEC1CBFCA07F67BF4842EC522E853C2421D5717A45E482FA0B09BF0B83
            A99BD137FEC3EB22784D693AB7EDA717F941DA421F8C49EE872EAF74B45DA5F3
            6022A9D3A0E19286777790344F579DCB2BE0321CE49311C7B368D70CB75DB3C7
            05712689DAC61F50989406B9E045EFFE9BC7AE58FB91D18C41B1D27131104C1F
            CA2EDC99BC88A9D4C0B8CC7A1EB5D01B5CB26594BDB7BF63651F1A74CE581B74
            9039293ABDBE5F76DBBB21DF253C0D0D2ED6E5932A1A47DD8CA4897441FDF081
            37EDA6134AC159D35D20032B70124C6EC7986458A4CE02A517CD0DB40DCCDA33
            2974D83F9C854B6F3B5E54F407AB189D8EE0255FCB6AEC27591FC7769844CFE5
            D76DCE0580EC68A13A8A4E68ACF96BC3EA22E1173AB8CAB36934F7B2B0399E76
            32844333516DF700477665435F5A6724AA1980FA9240B27780621F0C78673805
            6BD0A9414A0D5773987695540404A301AA8D3A5825D5D6216EF686F06EAF7C23
            B713760C1D5FAEE1A5E9C0F788953BDB023A8C33064A12900DB24E1CEF2178A7
            4A0C972C0CC0CC5D7E70ACBCB3445A2DFA5B97D680F8FACE466111EC3508A06A
            D8A92882D0A1E426C52FE186E15DC0DCE854C2873C072B41F3530D0454CA5F8F
            BDEAB5948497D9C397B6ED8D2010FA3D04C88BA5402514FCDBD033833275EBE8
            1433BB552E3595EC64C6F9A98770AD096BBA32B4F792B1B64036105380F14467
            6B78230F775559DC9735DD542B8DDB9F473AA367BC895003A7C878426DE14C9A
            781B60E685B1932A619216FC9AAE46BE04D9D185190193AAD650C6B868A835E4
            FC6216CC9F25C03E009BA73F32162EE629B166E097623B81E97DB390005CC2FC
            7BBF693521CE71E26AA4BA7EBBFA72646223BD67671B2A08D65104100210BFB2
            69EE96759099E9682B7AE3D4CDCDA496EF421ED744757D2F20094874B82DFAA7
            7EA42B169E6C742F445746CBAE87C130F1F71F68F5DCE33A72ADF1F453E40FCB
            4BA0ACB3F2BB32EDE59F9F78A7EFAE6AFC9BF4651B7FCE7CAAD13C92DA2A8AB4
            C32E3ABDD6EA8D376FF2D83D97A3C160FCDA175CC1D4998CE5ED2E3AC74BD129
            60D004948AECB942FB349BC67A1AA59EB235E3C46060D6AF3549039D0A5B04A4
            9299DF168CDA34D531B5CB34AD8C952C8CB55512CBA84ED747C0F1DA218EF735
            D953F7263CF351AC42822788D8F3910596C06C47B04D571E6FA40B501F44FE07
            1B30743D54F28A40BFF56107066438BA65DB7061B2E115E4A232218E57B7B27E
            A99A5C3D6D47CFB38E74ACDD88548831AD590A046852B3298B1907232CD0A566
            BD3569925080E6B505E51476E4990764522C51DD9C4CD7826492A7A98A67235D
            E1F63DD1A95905EB2789D3E4B69E75085942756CB77C556B4C34F61905C384AF
            DF939CDB5793A6E89DFDBBAD4D5ADA5B78EEC8DBA58068545C9B4F8B57D78E3A
            2ECE225220CFEF54FE3E5C204D265A2E661990B207D25F5DE48C69ECB0EEAD63
            4861AA778825037E6A483728A5E02A73A5A5868B0680AA39BD8E1763536154E2
            07E39E07B49F6D40F53DBF67EAE915767FD749D1149986E475881DC9846FA076
            15416A31FE55F7F2E3B7DD5A3BA7A5ACD6AA699A6E789DEC01EF6C328E2640AA
            5A613DBDAB54A6D85254F09BF506AD6B9756712D468C0199042DAA1A49B557DA
            E046FBC7A8E7D2D3A60DF0CAD6D204CC27CF30945C2ABBCD513BE01DE5880090
            FE4DA58CD7D80F67A42552F1D749ADB10EE0CD7A4DF1A6E3BB25FF7041F9B0A5
            798EC5691CC57604BDDA4BAB204D1D147EF05C7A0BC4063351ADE9D722AF8011
            D3EEA1C370D7308E8F91CA1787BBFB0E811195064E7F42920A2E3C00E2F5FB28
            3E45691CAF7EF8F094FAF4C4101274D4201BB2A9192FF05D7515FE631EEB6C3F
            F84FE5DA533B30735516AF09160C75E90248A9951E74CA9FAA4A6B67514121B8
            D60E350AF42E2A22B67248858F779EE31EB9F4B55D235DA93583D79E8C8A9E27
            BF555344B0AF2AB04452FC5E3EC3E9406932102CF4CF81A7B35563BF9E4E74B1
            4A02AC4C4030E16B46A140BC938550A283D654A5CEA08A9D14E8485E7FC38D93
            4E0ADB8353BCE1656DA30E3391D623AC9BE19DFA331B5FB370FB31DE49A9A864
            28B1A24AA34D3DA6CFBF99BD2F24C844A3390859D08BBEEF5561267AF802EB76
            A8DE7E3D190500F093EF708FB06379BE5837A972B8881DB9F44BB81DA5874636
            4A30AB43CA049D334C30A936890706D04BED57936084DBDF61313334E2FC8E3A
            06C6D473AA52E1B45DF2C167151FFDBC38B4DFE89CEFBE9A3322B8C761D2B921
            07ED1B81890926981031DA5E80F52FE5BDC32D23032623E3E73B5B2B733A3013
            91338BCCCEB4328847F3D9EF4EE15E83493EB4BF3E7656C81B8059B5DD33B860
            C8A82D1893D24AEE499DA3230B1BA1C2B8EEDD6300F87B66216CB767E0278F63
            9813E1C2D20437EBA121A2EF95319D85693AC0D25F4C9AF788359F999B31624D
            C79433D99DF32B6A4A9EB5E1E4B9FC7219EF95DC68B7089B2032BC0C9FCA4256
            A1F0E40C0AD06E9F4D03D0FC45D554676C62A024C3677FC0E9C1FCDEDE3BB681
            6698D2A3ABF574A4BB8285C5490388E3EA66D45477EE096419DB2D462EABE167
            9E4D98B3D13A253B748745077609E7A97DACFCC38573C4431B0D0088A45AC2B8
            DDD49AF96EA79D530F1DB2BA283E6039DF9D075C0C134EDC0A5A5AB3B9709887
            C84BC450C38F211320CA9EC29EB95E0A3A666371C9825BC850980F1055E7A3E1
            EEB6D47B3013EEE29C542AD1B3F6015A54F48CB3B4B9ED70270FDEE93A9FDE49
            324951F88B53FA783AA6F8432E52249338DCAA0BE7D903EFE330C1DDC39A3EE4
            A51DF501740CEF0CABC562C5DC61771EB8F8714820D0EAF9F5A48D7B40988FB6
            C3AF5C5A8DC2B8C8B7EF810CB786731C267BB86E6B36A35EB55BDBDE7233C66F
            825CA9DB718F3D73E9BDC0A24D925A9A8D14DC4588C4B3C25F41560802CF9397
            E91C3D7262ECA8DF4CF67BF58F67850E9B07B7F4E775E07A2509682259F62DBE
            E65F0F857AE1255E69AE7B9D7676C5A8EFABEDF7D92F3DB02C84855D47BF1910
            999AE8E5D124BB2D559CCB7B6B0B2460D26A512335F678270A09962542CF3DA9
            E782B867EE84CB61EE7337D830BED4DADF730CD05A3ACD91E2F2C6D90B47899D
            8240468EEA38C9CB2886E80F92FDE4AE1CD7A643388776C33B2DFF5F4D058D17
            DC804B017DD405380126DA0C979CF392A96C5E493D0129E9A58CA79352DA62AB
            CCF5C9ECB362B72963F9743321B6B86A6EAF36B5EDC89FE9DB8A91778F69A276
            AB0D87B76ECEACF06E79B30E3EBDDFAD6225C8B129F9FA1F7B3C2D37078F1A05
            5CF77426515557619234424E877C2F8468981F6F273B11069CABFAA06CC7A14D
            45A5D0B5CA635255411137BCD6862592457E79A5D7EE209B2A12552C99DE0313
            624DF60CC1CD763766476AD2D221C954264AE327C0C0E8D56F8C4E571F2F6D27
            C194E6EF3126115EFEC627AD01DD2DAB93544364A2D52EF7CA08DE67E957B858
            2029F9FA27DDA6634CED80CEEBEAD8EF77AFF8558C98A635D72AC585D6287052
            EA6652280C24C32B270A8208A9C34F1EF05B1D605F040FE86449D5F83E53CEC4
            F5C3A43713EBCDD4A4A044AB12593D4E3321395639289B84AF5AAD5E212093A6
            1D9A8776EDCA6D8F579AA3AA048592CC3680010874EE63513342C161810E45EA
            DA9F295249BE180BE652C08F9220B44BF95EDBFFF4829F3B28E0F85AAD210502
            F5E9DAC9A98A0C80D9B640B6B57AD23AD56B7E3B55146A0653B2EDBE6C7F5614
            A381B8BCFC038FCEC5D259F952D4CE9B8C4EF4F6D35D25D93FB2ABF7AC34508B
            B7FE126A5B8B22241694FAF4F626A6BB53E28D8061C8E3BDFB8579354E76FDB2
            AFCBE779AE165875CA4B7238F80A0226ACF9975086D92DF0BC43A97699A1300A
            A9A5AFA8450B346A6C08C087DF5DDB8F7E719CE005AF89FB1D429671826C9004
            928FA798027C35EE14114022060E010D800222A004B69DCA799C4FF16280769C
            2D42390630CD255C2C5DF9EACE4601FC1680E707EFAC5F061B56FF12613E058B
            7A27FACA537BB1A0A819DEF0938DF48A43F76E8826644DC3E5692E4792E10E13
            50BFB6ACCC18FDE7254C96E1D7640207098C037E7E3B409B5CCB54C9CE3293B7
            0066308444EC900653B500598854083C698FD22D0C7DAAD54F233BD378AB6080
            906D44ADDCB0B8F1CA030B44AC964C262B8722A51722F557A7CF36FC89C1C08C
            2A35358344C70ACBA0D83B57D01AC3FF420243E2119B2D1B35B1DED44DF675E6
            64AEB70F06A0143324E8FC6AB06EAE8EF593D1D840EF2C48940237C5E99D339F
            04FDD382E985C0179F00DADC3B2A3A8C138131AC5F744D28791E40082BC12325
            B75BA736DBEA5B59939F0C4C7F206E20F6F0008032AC51C266ACCDEB503F0A94
            CEBEDBFF9E6090A4730103305B8F9E6AFC7F57CF2428DCC13C2D000000004945
            4E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 180.535552680000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1_RujukanNon
        DataSetName = 'frxdb1_RujukanNon'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Kepada Yth. TS dr. Poli')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 266.362400000000000000
          Top = 3.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897637800000000000
          DataField = 'poli_rujuk'
          DataSet = frxdb1_RujukanNon
          DataSetName = 'frxdb1_RujukanNon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1_RujukanNon."poli_rujuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 25.616441430000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Di RSU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 266.362400000000000000
          Top = 23.236240000000000000
          Width = 343.937230000000000000
          Height = 18.897637800000000000
          DataField = 'provider_rujuk'
          DataSet = frxdb1_RujukanNon
          DataSetName = 'frxdb1_RujukanNon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1_RujukanNon."provider_rujuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Align = baWidth
          Left = 37.795300000000000000
          Top = 69.290264290000000000
          Width = 702.614627000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Mohon pemeriksaan dan penanganan lebih lanjut penderita :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 91.127175710000000000
          Width = 117.165332360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 112.964087140000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'NIK / No. Kartu BPJS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 266.362400000000000000
          Top = 91.127175710000000000
          Width = 468.661720000000000000
          Height = 18.897637800000000000
          DataSet = frxdb1_RujukanNon
          DataSetName = 'frxdb1_RujukanNon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            
              ':   [frxdb1_RujukanNon."nama_lengkap"] -- [frxdb1_RujukanNon."je' +
              'nis_kelamin"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          Left = 266.362400000000000000
          Top = 112.964087140000000000
          Width = 472.441250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            ':   [frxdb1_RujukanNon."nik"] / [frxdb1_RujukanNon."kartu_bpjs"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Top = 25.616441430000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Top = 47.453352860000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Top = 69.290264290000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Top = 91.127175710000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Top = 112.964087140000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 47.453352860000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 136.063080000000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Tanggal Lahir / Umur')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 266.362400000000000000
          Top = 136.063080000000000000
          Width = 555.590910000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            
              ':   [frxdb1_RujukanNon."tgl_lahir"] -- [frxdb1_RujukanNon."umur"' +
              '] Tahun')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Top = 136.063080000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 438.425480000000000000
        Width = 740.409927000000000000
        DataSet = frxDB1_RujukanRm
        DataSetName = 'frxdb1_RujukanRm'
        RowCount = 0
        object Memo27: TfrxMemoView
          Left = 266.362400000000000000
          Top = 3.779530000000000000
          Width = 434.645950000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1_RujukanRm."nm_diag"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 200.315090000000000000
        ParentFont = False
        Top = 631.181510000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1_RujukanNon
        DataSetName = 'frxdb1_RujukanNon'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 41.574830000000000000
          Top = 11.338590000000000000
          Width = 668.976810000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Demikian atas bantuannya, diucapkan banyak terima kasih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Top = 34.118120000000000000
          Width = 260.787570000000000000
          Height = 105.826827800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Teman Sejawat, [frxdb1_RujukanNon."pulang_tanggal"]'
            ''
            ''
            ''
            '[frxdb1_RujukanNon."dokter"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = 'dd mmmm yyyy'
              Kind = fkDateTime
            end
            item
            end>
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 574.488560000000000000
        Width = 740.409927000000000000
        DataSet = frxdb1_RujukanNon
        DataSetName = 'frxdb1_RujukanNon'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Alasan Non Spesialis : [frxdb1_RujukanNon."nm_tacc"] - [frxdb1_R' +
              'ujukanNon."alasan_tacc"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        Condition = 'frxdb1_RujukanRm."idxstr"'
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Diagnosa :')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 529.134200000000000000
        Width = 740.409927000000000000
        DataSet = frxDB1_RujukanRm
        DataSetName = 'frxdb1_RujukanRm'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 266.362400000000000000
          Top = 3.779530000000000000
          Width = 434.645950000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          DataField = 'tindakan'
          DataSet = frxDB1_RujukanRm
          DataSetName = 'frxdb1_RujukanRm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdb1_RujukanRm."tindakan"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 483.779840000000000000
        Width = 740.409927000000000000
        Condition = 'frxdb1_RujukanRm."idxstr"'
        object Memo8: TfrxMemoView
          Left = 37.795300000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telah Diberikan :')
          ParentFont = False
        end
      end
    end
  end
  object frxdb1ResumePoli: TfrxDBDataset
    UserName = 'frxdb1ResumePoli'
    CloseDataSource = False
    FieldAliases.Strings = (
      'resume=resume'
      'poli_tujuan=poli_tujuan'
      'jumlah=jumlah')
    DataSet = dataPelayanan.fdQueryResumePoli
    BCDToCurrency = False
    Left = 152
    Top = 84
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
    DataSet = dataPelayanan.fdQ1Cetak
    BCDToCurrency = False
    Left = 456
    Top = 304
  end
  object frxdb1CetakNon: TfrxDBDataset
    UserName = 'frxdb1CetakNon'
    CloseDataSource = False
    DataSet = dataPelayanan.fdQ1CetakNon
    BCDToCurrency = False
    Left = 456
    Top = 352
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
          Height = 52.913420000000000000
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
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            
              'Surat rujukan berlaku 1(satu) kali kunjungan, berlaku sampai [fr' +
              'xDBDataset1Cetak."tglAkhirRujuk"]')
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Height = 98.267780000000000000
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
          Top = 83.370130000000000000
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
        Top = 306.141930000000000000
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
        Top = 377.953000000000000000
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
        Top = 434.645950000000000000
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
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
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
        Height = 113.385900000000000000
        ParentFont = False
        Top = 729.449290000000000000
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
        Top = 563.149970000000000000
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
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 646.299630000000000000
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
  object formStorage1: TJvFormStorage
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'cbb1PoliAntri.ItemIndex')
    StoredValues = <>
    Left = 616
    Top = 192
  end
  object idTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 560
    Top = 16
  end
end
