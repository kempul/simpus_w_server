object Form1_pasienKunjungan: TForm1_pasienKunjungan
  Left = 0
  Top = 0
  Caption = 'Form1_pasienKunjungan'
  ClientHeight = 722
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panelUtama: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 894
    Height = 662
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panelUtama1: TJvPanel
      AlignWithMargins = True
      Left = 474
      Top = 3
      Width = 417
      Height = 656
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object grid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 417
        Height = 416
        Align = alClient
        AllowedOperations = [alopDeleteEh]
        ColumnDefValues.Title.Alignment = taCenter
        DataSource = dataKunjungan.dsKunjungan
        DynProps = <>
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SumList.Active = True
        TabOrder = 0
        OnGetCellParams = grid1GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tanggal'
            Footer.Alignment = taCenter
            Footer.Value = 'Total'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nomor'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '#,0'
            Footer.FieldName = 'nomor'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'mr'
            Footers = <>
          end
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
            FieldName = 'poli_tujuan'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jam'
            Footers = <>
            Visible = False
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
            FieldName = 'kartu_bpjs'
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
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'sdh_dilayani'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '#,0'
            Footer.FieldName = 'sdh_dilayani'
            Footer.ValueType = fvtSum
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'rm_diambil'
            Footer.Alignment = taCenter
            Footer.FieldName = 'rm_diambil'
            Footer.ValueType = fvtSum
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 416
        Width = 417
        Height = 240
        Align = alBottom
        Caption = 'pnl1'
        TabOrder = 1
        Visible = False
        object pageControl1: TJvPageControl
          Left = 1
          Top = 90
          Width = 415
          Height = 149
          ActivePage = ts1
          Align = alClient
          TabOrder = 0
          Visible = False
          object ts1: TTabSheet
            Caption = 'ts1'
            object memoData: TMemo
              Left = 0
              Top = 0
              Width = 407
              Height = 118
              Align = alClient
              Lines.Strings = (
                'memoData')
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object ts2: TTabSheet
            Caption = 'ts2'
            ImageIndex = 1
            object memoResponse: TMemo
              Left = 0
              Top = 0
              Width = 407
              Height = 118
              Align = alClient
              Lines.Strings = (
                'memoResponse')
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object ts3: TTabSheet
            Caption = 'ts3'
            ImageIndex = 2
            object memoOlah: TMemo
              Left = 0
              Top = 0
              Width = 407
              Height = 118
              Align = alClient
              Lines.Strings = (
                'memoOlah')
              TabOrder = 0
            end
          end
          object ts4: TTabSheet
            Caption = 'ts4'
            ImageIndex = 3
            object panel3: TPanel
              Left = 0
              Top = 0
              Width = 407
              Height = 118
              Align = alClient
              TabOrder = 0
              object labelBPJS: TLabel
                Left = 47
                Top = 63
                Width = 54
                Height = 16
                Caption = 'labelBPJS'
              end
              object labelPasien: TLabel
                Left = 41
                Top = 15
                Width = 64
                Height = 16
                Caption = 'labelPasien'
              end
              object check1: TCheckBox
                Left = 46
                Top = 40
                Width = 97
                Height = 17
                Caption = 'check1'
                TabOrder = 0
              end
              object dbeditNama: TDBEdit
                Left = 40
                Top = 88
                Width = 121
                Height = 24
                DataField = 'nama_lengkap'
                DataSource = dataKunjungan.dsKunjungan
                TabOrder = 1
                Visible = False
              end
              object dbeditMR: TDBEdit
                Left = 199
                Top = 82
                Width = 83
                Height = 24
                DataField = 'mr'
                DataSource = dataKunjungan.dsKunjungan
                TabOrder = 2
                Visible = False
                OnChange = dbeditMRChange
              end
              object btn2: TButton
                Left = 296
                Top = 8
                Width = 75
                Height = 25
                Caption = 'btn2'
                TabOrder = 3
                OnClick = btn2Click
              end
              object dtpDaftarAndro: TJvDateTimePicker
                Left = 216
                Top = 39
                Width = 186
                Height = 24
                Date = 43180.248679895830000000
                Time = 43180.248679895830000000
                TabOrder = 4
                DropDownDate = 43180.000000000000000000
              end
            end
          end
        end
        object memoHeader: TMemo
          Left = 1
          Top = 1
          Width = 415
          Height = 89
          Align = alTop
          Lines.Strings = (
            'memoHeader')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 465
      Height = 656
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object panel5: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 137
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl20: TLabel
          Left = 19
          Top = 22
          Width = 110
          Height = 16
          Caption = 'Tanggal Kunjungan'
        end
        object lbl23: TLabel
          Left = 19
          Top = 45
          Width = 60
          Height = 16
          Caption = 'Nomor RM'
        end
        object btn1: TSpeedButton
          Left = 332
          Top = 42
          Width = 34
          Height = 22
          Caption = 'cari'
          OnClick = btn1Click
        end
        object btnCariPasien: TSpeedButton
          Left = 372
          Top = 42
          Width = 34
          Height = 22
          Action = actCariPasien
          ParentShowHint = False
          ShowHint = True
        end
        object lbl27: TLabel
          Left = 19
          Top = 71
          Width = 33
          Height = 16
          Caption = 'Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl28: TLabel
          Left = 19
          Top = 97
          Width = 78
          Height = 16
          Caption = 'Tanggal Lahir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dtPicker1: TJvDateTimePicker
          Left = 152
          Top = 14
          Width = 103
          Height = 24
          Date = 41914.741393113430000000
          Time = 41914.741393113430000000
          TabOrder = 0
          OnChange = dtPicker1Change
          DropDownDate = 41914.000000000000000000
        end
        object editMR: TEdit
          Left = 152
          Top = 41
          Width = 174
          Height = 24
          TabOrder = 2
          Text = '123456789012345678'
          OnChange = editMRChange
          OnKeyPress = editMRKeyPress
        end
        object editNama: TEdit
          Left = 152
          Top = 67
          Width = 308
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = 'editNama'
          OnKeyPress = editNamaKeyPress
        end
        object dateTglLahir: TJvDateEdit
          Left = 152
          Top = 92
          Width = 127
          Height = 27
          DateFormat = 'dfShort'
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ShowNullDate = False
          TabOrder = 4
          OnKeyPress = dateTglLahirKeyPress
        end
        object dtPickerJam: TJvDateTimePicker
          Left = 261
          Top = 14
          Width = 89
          Height = 24
          Date = 41914.778203923610000000
          Time = 41914.778203923610000000
          Kind = dtkTime
          TabOrder = 1
          OnKeyPress = dtPickerJamKeyPress
          DropDownDate = 41914.000000000000000000
        end
        object editNIK: TEdit
          Left = 291
          Top = 94
          Width = 169
          Height = 24
          TabOrder = 5
        end
      end
      object panel6: TPanel
        Left = 0
        Top = 137
        Width = 465
        Height = 519
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object grp2: TGroupBox
          Left = 0
          Top = 41
          Width = 465
          Height = 87
          Align = alTop
          TabOrder = 0
          object lbl3: TLabel
            Left = 19
            Top = 22
            Width = 101
            Height = 16
            Caption = 'Jenis Pembiayaan'
          end
          object lbl5: TLabel
            Left = 19
            Top = 50
            Width = 71
            Height = 16
            Caption = 'Cara Datang'
          end
          object cbbBiaya: TJvComboBox
            Left = 152
            Top = 20
            Width = 145
            Height = 24
            AutoDropDown = True
            TabOrder = 0
            Text = 'cbbBiaya'
            OnChange = cbbBiayaChange
            OnKeyPress = cbbBiayaKeyPress
          end
          object cbbCaraDatang: TJvComboBox
            Left = 149
            Top = 50
            Width = 145
            Height = 24
            AutoDropDown = True
            TabOrder = 2
            Text = 'cbbCaraDatang'
            OnChange = cbbCaraDatangChange
            OnKeyPress = cbbCaraDatangKeyPress
            Items.Strings = (
              'sendiri'
              'dengan rujukan')
          end
          object chkBaru: TJvCheckBox
            Left = 352
            Top = 24
            Width = 88
            Height = 17
            Caption = 'Pasien Baru'
            TabOrder = 1
            OnKeyPress = chkBaruKeyPress
            LinkedControls = <>
          end
          object checkLuarWilayah: TJvCheckBox
            Left = 352
            Top = 51
            Width = 95
            Height = 17
            Caption = 'Luar Wilayah'
            TabOrder = 3
            OnKeyPress = chkBaruKeyPress
            LinkedControls = <>
          end
        end
        object panel7: TPanel
          Left = 0
          Top = 262
          Width = 465
          Height = 52
          Align = alTop
          BevelOuter = bvNone
          Caption = 'panel7'
          TabOrder = 2
          object btn1Simpan: TButton
            Left = 288
            Top = 18
            Width = 75
            Height = 25
            Caption = 'simpan'
            TabOrder = 0
            OnClick = btn1SimpanClick
          end
          object btn1Batal: TButton
            Left = 207
            Top = 18
            Width = 75
            Height = 25
            Caption = 'batal'
            TabOrder = 1
          end
        end
        object grpRawat: TGroupBox
          Left = 0
          Top = 128
          Width = 465
          Height = 134
          Align = alTop
          TabOrder = 1
          object lbl1: TLabel
            Left = 19
            Top = 31
            Width = 92
            Height = 16
            Caption = 'Jenis Kunjungan'
          end
          object lbl29: TLabel
            Left = 19
            Top = 57
            Width = 93
            Height = 16
            Caption = 'Jenis Perawatan'
          end
          object lbl30: TLabel
            Left = 19
            Top = 84
            Width = 64
            Height = 16
            Caption = 'Poli Tujuan'
          end
          object cbbKunjungan: TComboBox
            Left = 152
            Top = 27
            Width = 145
            Height = 24
            AutoDropDown = True
            AutoCloseUp = True
            TabOrder = 0
            Text = 'Kunjungan Sehat'
            OnChange = cbbKunjunganChange
            OnKeyPress = cbbKunjunganKeyPress
            Items.Strings = (
              'Kunjungan Sehat'
              'Kunjungan Sakit')
          end
          object cbbInstalasi: TComboBox
            Left = 152
            Top = 53
            Width = 145
            Height = 24
            AutoDropDown = True
            TabOrder = 1
            Text = 'cbbInstalasi'
            OnKeyPress = cbbInstalasiKeyPress
          end
          object cbbPoli: TJvComboBox
            Left = 152
            Top = 80
            Width = 145
            Height = 24
            AutoDropDown = True
            TabOrder = 2
            Text = 'cbbPoli'
            OnKeyPress = cbbPoliKeyPress
          end
        end
        object panelAntriDisplay: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 421
          Width = 459
          Height = 95
          Align = alBottom
          BevelInner = bvRaised
          TabOrder = 3
          object btnAntrikan: TButton
            Left = 288
            Top = 38
            Width = 156
            Height = 25
            Caption = 'Panggil Antrian Berikutnya'
            TabOrder = 0
            OnClick = btnAntrikanClick
          end
          object grp3: TGroupBox
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 106
            Height = 85
            Align = alLeft
            Caption = 'Antrian'
            TabOrder = 1
            object editAntri: TJvCalcEdit
              Left = 2
              Top = 18
              Width = 102
              Height = 65
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              ExplicitHeight = 72
            end
          end
          object grp4: TGroupBox
            AlignWithMargins = True
            Left = 117
            Top = 5
            Width = 111
            Height = 85
            Align = alLeft
            Caption = 'Loket'
            TabOrder = 2
            object editLoket: TJvCalcEdit
              Left = 2
              Top = 18
              Width = 107
              Height = 65
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ShowButton = False
              TabOrder = 0
              Value = 1.000000000000000000
              DecimalPlacesAlwaysShown = False
              ExplicitHeight = 72
            end
          end
        end
        object panelAntri: TPanel
          Left = 0
          Top = 0
          Width = 465
          Height = 41
          Align = alTop
          Caption = 'panelAntri'
          TabOrder = 4
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
            Left = 291
            Top = 9
            Width = 156
            Height = 25
            Caption = 'Panggil Ulang'
            TabOrder = 1
            OnClick = btnPanggilClick
          end
        end
      end
    end
  end
  object JvPanel2: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 894
    Height = 48
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object JvBevel1: TJvBevel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 279
      Height = 38
      Align = alLeft
      Shape = bsSpacer
      Edges = []
      Inner = bvSpace
      Outer = bvSpace
    end
    object btn_pasienAdd: TJvTransparentButton
      AlignWithMargins = True
      Left = 288
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actNew
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
      Images.ActiveImage = images1
      Images.ActiveIndex = 1
      ExplicitLeft = 79
      ExplicitHeight = 32
    end
    object btn_close: TJvTransparentButton
      AlignWithMargins = True
      Left = 855
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actClose
      Align = alRight
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 3
      ExplicitTop = 10
      ExplicitHeight = 28
    end
    object btnPrint: TJvTransparentButton
      AlignWithMargins = True
      Left = 440
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actPrint
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 2
      Images.GrayIndex = 2
      Images.DisabledIndex = 2
      Images.DownIndex = 2
      Images.HotIndex = 2
      ExplicitLeft = 231
    end
    object btnKunjunganDel: TJvTransparentButton
      AlignWithMargins = True
      Left = 364
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actDel
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 6
      Images.GrayIndex = 5
      Images.DisabledIndex = 5
      Images.DownIndex = 5
      Images.HotIndex = 5
      ExplicitLeft = 226
      ExplicitTop = 0
      ExplicitHeight = 28
    end
    object btnTandaiRm: TJvTransparentButton
      AlignWithMargins = True
      Left = 326
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actRmDiambil
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 9
      Images.GrayIndex = 5
      Images.DisabledIndex = 5
      Images.DownIndex = 5
      Images.HotIndex = 5
      ExplicitLeft = 226
      ExplicitTop = 0
      ExplicitHeight = 28
    end
    object btnRefresh: TJvTransparentButton
      AlignWithMargins = True
      Left = 402
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actRefresh
      Align = alLeft
      AutoGray = False
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 8
      Images.GrayIndex = 2
      Images.DisabledIndex = 2
      Images.DownIndex = 2
      Images.HotIndex = 2
      ExplicitLeft = 250
      ExplicitTop = -2
      ExplicitHeight = 28
    end
  end
  object PipeClient1: TPipeClient
    MemoryThrottle = 10240000
    PipeName = 'pipeSimpus'
    OnPipeMessage = PipeClient1PipeMessage
    Left = 16
    Top = 16
  end
  object frxdb1Cetak: TfrxDBDataset
    UserName = 'frxdb1Cetak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nik=nik'
      'nama_lengkap=nama_lengkap'
      'nama_prop=nama_prop'
      'nama_kab=nama_kab'
      'nama_kec=nama_kec'
      'nama_kel=nama_kel'
      'tmpt_lahir=tmpt_lahir'
      'tgl_lahir=tgl_lahir'
      'jenis_kelamin=jenis_kelamin'
      'gol_drh=gol_drh'
      'alamat=alamat'
      'rt=rt'
      'rw=rw'
      'pekerjaan=pekerjaan'
      'nama_ibu=nama_ibu'
      'nama_ayah=nama_ayah'
      'nomor_kk=nomor_kk'
      'mr=mr'
      'kartu_bpjs=kartu_bpjs'
      'nama=nama'
      'biaya=biaya'
      'hp=hp'
      'idxstr=idxstr')
    DataSet = dataKunjungan.fdQCetak
    BCDToCurrency = False
    Left = 84
    Top = 16
  end
  object frxdb1KK: TfrxDBDataset
    UserName = 'frxdb1KK'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_kk=id_kk'
      'kk=kk'
      'istri=istri'
      'alamat=alamat'
      'rt=rt'
      'rw=rw'
      'desa=desa'
      'kecamatan=kecamatan'
      'kota=kota'
      'prop=prop'
      'telpon=telpon'
      'last_update=last_update'
      'idx=idx'
      'kelompok=kelompok')
    BCDToCurrency = False
    Left = 152
    Top = 16
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.ThumbnailVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41923.933957268500000000
    ReportOptions.LastChange = 42796.856738958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 220
    Top = 16
    Datasets = <
      item
        DataSet = frxdb1Cetak
        DataSetName = 'frxdb1Cetak'
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
      Font.Name = 'Courier New'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 234.330811180000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdb1Cetak."nama"]'
            'REKAM MEDIS'
            'Nomor : [frxdb1Cetak."mr"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nama')
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 97.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Tmpt Lahir')
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 75.590600000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_lengkap"]')
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 97.047310000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."tmpt_lahir"]')
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 75.590600000000000000
          Width = 94.488188976378000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'NKK')
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 434.645888976378000000
          Top = 75.590600000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nomor_kk"]')
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 680.315338976378000000
          Top = 75.590600000000000000
          Width = 94.488188976378000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'NIK')
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 774.803527952756000000
          Top = 75.590600000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nik"]')
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 119.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Tgl Lahir')
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 119.165430000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."tgl_lahir"]')
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Alamat')
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 139.842610000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."alamat"]')
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kecamatan')
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 162.519790000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_kec"]')
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Top = 185.196970000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Pekerjaan')
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 185.196970000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."pekerjaan"]')
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Biaya')
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Top = 207.874150000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."biaya"]')
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 97.047310000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ayah')
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 97.047310000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_ayah"]')
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 97.047310000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Reg')
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 97.047310000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."mr"]')
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 117.165430000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ibu')
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 117.165430000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_ibu"]')
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 117.165430000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Gol. Darah')
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 117.165430000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."gol_drh"]')
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'RT / RW')
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 139.842610000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."rt"] / [frxdb1Cetak."rw"]')
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 139.842610000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Desa')
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 139.842610000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_kel"]')
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 162.519790000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Kab / Kota')
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 162.519790000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_kab"]')
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 162.519790000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Provinsi')
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 162.519790000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."nama_prop"]')
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 185.196970000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telp / HP')
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 185.196970000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."hp"]')
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 185.196970000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 185.196970000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 207.874150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No. Kartu')
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          Left = 434.645888980000000000
          Top = 207.874150000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ': [frxdb1Cetak."kartu_bpjs"]')
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Left = 680.315338980000000000
          Top = 207.874150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 774.803527960000000000
          Top = 207.874150000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ' ([frxdb1Cetak."jenis_kelamin"])')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 442.204863540000000000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        PrintChildIfInvisible = True
        ReprintOnNewPage = True
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 5.669307205000000000
          Width = 83.149660000000000000
          Height = 37.795275590000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 132.283550000000000000
          Top = 5.669307205000000000
          Width = 41.574659130000000000
          Height = 37.795275590000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Suhu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 173.858209130000000000
          Top = 5.669307200000000000
          Width = 64.251839130000000000
          Height = 37.795275590000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TD'
            'S/D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Top = 5.669307205000000000
          Width = 49.133890000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 238.110048260000000000
          Top = 5.669307205000000000
          Width = 139.842610000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Anamnese')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 377.952658260000000000
          Top = 5.669307205000000000
          Width = 151.181102360000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pemeriksaan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 529.133760620000000000
          Top = 5.669307205000000000
          Width = 56.693389380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ICD-X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          Left = 585.827150000000000000
          Top = 5.669307205000000000
          Width = 56.693389380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kasus'
            'B/L')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Left = 642.520539380000000000
          Top = 5.669307205000000000
          Width = 113.386339380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tindakan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          Left = 755.906878760000000000
          Top = 5.669307205000000000
          Width = 124.724929380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Obat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Align = baLeft
          Left = 880.631808140000000000
          Top = 5.669307205000000000
          Width = 83.150099380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Align = baLeft
          Left = 963.781907520000000000
          Top = 5.669307205000000000
          Width = 83.150099380000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pemeriksa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 45.354360000000000000
          Width = 83.149660000000000000
          Height = 393.070973540000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Align = baLeft
          Left = 132.283550000000000000
          Top = 45.354360000000000000
          Width = 41.574659130000000000
          Height = 393.070973540000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Align = baLeft
          Left = 173.858209130000000000
          Top = 45.354360000000000000
          Width = 64.251839130000000000
          Height = 393.070973540000000000
          DataSet = frxdb1KK
          DataSetName = 'frxdb1KK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Align = baLeft
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 393.070924720000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo81: TfrxMemoView
          Align = baLeft
          Left = 238.110048260000000000
          Top = 45.354360000000000000
          Width = 139.842610000000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo82: TfrxMemoView
          Align = baLeft
          Left = 377.952658260000000000
          Top = 45.354360000000000000
          Width = 151.181102360000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo83: TfrxMemoView
          Align = baLeft
          Left = 529.133760620000000000
          Top = 45.354360000000000000
          Width = 56.693389380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo84: TfrxMemoView
          Align = baLeft
          Left = 585.827150000000000000
          Top = 45.354360000000000000
          Width = 56.693389380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo85: TfrxMemoView
          Align = baLeft
          Left = 642.520539380000000000
          Top = 45.354360000000000000
          Width = 113.386339380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo86: TfrxMemoView
          Align = baLeft
          Left = 755.906878760000000000
          Top = 45.354360000000000000
          Width = 124.724929380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo87: TfrxMemoView
          Align = baLeft
          Left = 880.631808140000000000
          Top = 45.354360000000000000
          Width = 83.150099380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo88: TfrxMemoView
          Align = baLeft
          Left = 963.781907520000000000
          Top = 45.354360000000000000
          Width = 83.150099380000000000
          Height = 393.070973540000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 778.583180000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb1Cetak
        DataSetName = 'frxdb1Cetak'
        RowCount = 0
      end
    end
  end
  object actlst1: TActionList
    Images = images1
    Left = 264
    Top = 16
    object actCariPasien: TAction
      Caption = '....'
      ShortCut = 16464
      OnExecute = actCariPasienExecute
    end
    object actNew: TAction
      Hint = 'Pasien Baru'
      ImageIndex = 1
      OnExecute = actNewExecute
    end
    object actPrint: TAction
      Hint = 'Cetak Form Rekam Medis'
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
    object actDel: TAction
      Hint = 'Hapus Batal Berobat'
      ImageIndex = 6
      OnExecute = actDelExecute
    end
    object actEditBPJS: TAction
      Hint = 'Edit Kartu BPJS'
      ImageIndex = 7
    end
    object actRefresh: TAction
      Hint = 'Refresh'
      ImageIndex = 8
      OnExecute = actRefreshExecute
    end
    object actRmDiambil: TAction
      Hint = 'Tandai RM telah diambil'
      ImageIndex = 9
      OnExecute = actRmDiambilExecute
    end
  end
  object images1: TImageList
    Height = 32
    Width = 32
    Left = 372
    Top = 56
    Bitmap = {
      494C01010A009000200220002000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000085604FFF835F4EFF835E4EFF835E4EFF835E4EFF825E4EFF825E4EFF825F
      4EFF825D4DFF825D4DFF815D4DFF815D4DFF815E4DFF805C4CFF805C4CFF7E5B
      4CFF7E5B4BFF7D5C4BFF7D5A4BFF7C5B4AFF7B5949FF7A5A49FF7A5A4AFF7A5A
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805B4AFFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7555
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805948FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7556
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000815B49FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7755
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000825B4AFFF7F1E8FFF7F0E8FFF7F0E8FFF7F1E8FFF7F1E8FFF7F1E8FFF7F0
      E8FFF7F0E8FFF6ECE2FFE1B794FFC7661CFFC86416FFCB895CFFEACEB8FFF5EE
      E3FFF5EDE2FFF5ECE1FFF4ECE0FFF4EBDFFFF4EBDEFFEDDFD0FFE6D1BEFF7856
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFBFF989898FF555555FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF555555FF989898FFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000835D4AFFF8F2E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1
      E9FFF7F1E9FFC06E25FFDA7B22FFFFA23AFFFFA033FFF18920FFC25B0CFFF3E7
      DBFFF5EEE4FFF5EDE2FFF5EDE1FFF4ECE0FFF4EBDFFFEFE1D2FFE6D1BFFF7956
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9CFF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF9A9A9AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855E4BFFF8F3ECFFF8F3EBFFF8F3ECFFF6EBDFFFF1D8BFFFF8F3ECFFEDCD
      ADFFCA6F15FFFFAB50FFFFA64CFFFFA543FFE08023FFC4651AFFBB5F10FFDF73
      11FFC4794AFFF6EEE4FFF5EEE3FFF5EDE2FFF5ECE1FFEEE2D2FFE7D2C0FF7A57
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000525252FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF525252FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875D4AFFF9F4EDFFF8F3EDFFF9F4EDFFD68C3DFFCB7619FFF0DBC2FFC974
      1AFFFFB365FFFFAB55FFFFAB52FFC26814FFDDAC82FFF7F1E9FFF6EEE6FFC577
      42FFA94400FFF6EFE5FFF6EEE4FFF5EDE3FFF5EDE2FFF0E1D3FFE7D3C1FF7A59
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000865F4CFFFAF5F1FFF9F5EFFFF9F5F0FFDA9245FFFFCB96FFE9A65BFFFFC8
      8FFFFFC182FFFFB86AFFCB7315FFF9F4EDFFF8F3EDFFF8F3ECFFF8F2EBFFF7F1
      E9FFF7F1E9FFF7F0E7FFF6EFE6FFF6EEE5FFF5EEE4FFEFE2D4FFE8D3C2FF7B58
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875E4BFFFAF6F1FFFAF6F0FFFAF6F1FFE4AA6BFFFFCE9CFFFFCF9CFFFFC8
      90FFFFC58AFFE2913BFFE5BB8DFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3ECFFF8F2
      EAFFF7F1EAFFF7F0E8FFF7F0E7FFF6EFE5FFF6EEE4FFEFE4D5FFE8D4C3FF7B58
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000895F4CFFFBF8F3FFFCF7F3FFFBF7F3FFF2D8B8FFFFDEBDFFFFD4A9FFFFCD
      9DFFFFCC97FFCC8333FFE5C096FFFAF6F1FFFAF5F0FFF9F5EFFFF9F4EEFFF8F3
      ECFFF8F3ECFFF8F2EAFFF7F1E9FFF7F0E7FFF6EFE6FFF0E3D8FFE9D4C4FF7C59
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B604EFFFBF8F4FFFBF8F4FFFBF8F5FFFAEEE0FFFFEAD4FFFFD7AEFFFFCE
      9EFFFFCB96FFFAB975FFE89943FFF6E8D9FFFAF6F1FFF8F3EEFFF3E6D9FFE1B9
      9FFFD6A182FFC1724AFFC1754EFFF7F0E8FFF7F0E7FFF0E5D7FFE9D5C5FF7D59
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B614FFFFCFAF7FFFCF9F6FFFCFAF7FFFCFAF7FFFACE9DFFFFE4C8FFF3BD
      80FFEBAB5EFFDB8C2CFFD37E1AFFFAF2EBFFE9D1BCFFFFD39AFFFFCD94FFFFD4
      A5FFFFD7ACFFFFD6ADFFFFDEB3FFF5EEE5FFF7F1E8FFF2E4DAFFE9D5C6FF7E5B
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C634EFFFCFBF8FFFCFAF8FFFCFBF8FFFCFBF9FFEAAB51FFEAA747FFEEC0
      82FFF0CC9FFFF7E9D9FFFCF6F1FFFBF8F5FFF7ECE2FFE29D59FFF8C089FFFFCE
      9DFFFFD2A4FFFFD5AAFFFFDBADFFEED9CAFFF7F1E9FFF1E4D9FFE9D6C7FF7E5A
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F634FFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFAFFFDFBF9FFFCFBF9FFFCFAF7FFFCF9F6FFFBF8F4FFC97A38FFFFC8
      91FFFFCB94FFFFCB99FFFFCD9BFFD39F81FFF8F2EAFFF1E5DAFFEAD6C8FF805C
      4BFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F654FFFFEFDFBFFFDFCFBFFFEFDFCFFFEFDFCFFFEFDFDFFFEFDFDFFFEFD
      FCFFFDFCFCFFFDFCFAFFFDFBFAFFFCFAF8FFFCFAF7FFEAC3A0FFD78436FFFFC3
      88FFFFC68DFFFFCA92FFFFC88FFFC7835CFFF8F2EBFFF1E5DCFFEAD6C8FF805B
      4AFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000916650FFFEFEFEFFFEFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFBE
      7DFFFDFDFDFFFEFDFCFFFDFCFCFFFDFBFAFFF9ECDEFFF7A34BFFFFAE5AFFFFB9
      71FFF9B36BFFB86731FFF7BB80FFC16221FFF8F3ECFFF2E6DDFFEAD7C9FF815B
      4AFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000926551FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD076
      00FFE29D44FFFDFDFBFFFEFDFCFFEAC399FFC97317FFFFAB51FFFFAB52FFFFB4
      60FFC06619FFF0DDCDFFBB5E17FFC26A2FFFF8F3ECFFF2E6DCFFEAD7C9FF815D
      4AFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000936652FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
      F6FFDA993FFFFF9A2DFFFF9A2DFFFF9D34FFFF9E38FFFFA74AFFFFAF5AFFE8BD
      99FFFBF8F4FFFAF6F1FFFAF5F0FFF9F4EEFFF8F3EDFFF2E6DCFFEAD7C9FF825C
      4CFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000946752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFAF7FFDB7E0EFFF79832FFFFAE54FFFFB15BFFE4913AFFC8711EFFFBF9
      F5FFFBF8F4FFFAF6F2FFFAF6F0FFF9F4EEFFF9F3EDFFF3E8DEFFEAD7CAFF825C
      4BFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956853FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFFCF9
      F6FFFBF8F4FFFBF7F3FFFAF6F2FFF6F1EBFFF9F5EEFFF3ECE4FFE9D9CEFF8661
      4FFF000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF7E5E
      51F4000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA48372FFC8B3A5FFC6AD9AFFC3A283FFC19C77FFB88F64FF876254FB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF846254F92119163A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000525252FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF525252FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826DFFF2D7AEFFEECD9BFFC59A68FF846154F900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9CFF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF9C9C9CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6A55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58068FFEECE98FFEFC785FF826254F71C15133000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFBFF9E9E9EFF575757FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
      43FF434343FF434343FF434343FF434343FF575757FF9E9E9EFFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996B54FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA37B5DFFBF9464FF826256F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976954FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77E5AFF856358F517121128000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A55FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B74
      64FF846559EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B705CFF9B6E5AFF9A6E59FF996D59FF996D59FF996E5AFF986C58FF976D
      59FF976B57FF956A58FF956B56FF936A57FF936855FF916754FF916855FF745E
      52D5090807150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000171717194B4B4B7A2929
      29FD393939FF626262FF6A6A6AFF696969FF626262FF4C4C4CFF414141FF3232
      32FD464646DB1C1C1C20007200FF23BE42FF23BE41FF21BC40FF21BC40FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E586B35357CB13D3D70952A2A313500000000000000000000
      000000000000007000FF007000FF006E00FF006D00FF006B00FF006A00FF0000
      0000000000000000000000000000000000000000000039408EA8041AC9FF0214
      BBFF1820AAE4000000000000000000000000000000003E3F6F8D0007A7FE3737
      86AD3F3F66790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000085604FFF835F4EFF835E4EFF835E4EFF835E4EFF825E4EFF825E4EFF825F
      4EFF825D4DFF825D4DFF815D4DFF815D4DFF815E4DFF805C4CFF805C4CFF7E5B
      4CFF7E5B4BFF7D5C4BFF7D5A4BFF7C5B4AFF7B5949FF7A5A49FF7A5A4AFF7A5A
      4BFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101011313131F4404040FFC1C1
      C1FFC5C5C5FF9E9E9EFF949494FF828282FF777777FF6A6A6AFF626262FF4C4C
      4CFF3D3D3DFF9A9A9AFB007300FF3ED971FF3DD870FF3BD66EFF22BD41FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1F200016C8FF0021DFFF0016CBFF0208A9FC00000000000000000000
      000000000000007200FF3DD870FF23BE41FF23BE41FF21BC40FF006C00FF0000
      000000000000000000000000000000000000000000000112BFFD2058FFFF1438
      B8FF0A26B6FF4B4BB5FFB6A29FFF845E4EFFB5A097FF010BAEFF0C3BF2FF0215
      AFFF0008AAFFB4A09AFF825E4EFF815C4CFF815D4CFF805B4BFF805B4BFF7D5A
      4BFF7D5A4AFF7C5B4AFF7C594AFF7B5A49FF7A5848FF795948FF795949FF7959
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000805B4AFFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7555
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000333333F84F4F4FFF9C9C9CFFB4B4B4FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FF676767FF5F5F5FFF4E4E
      4EFF464646FF9D9D9DFF007700FF42DD75FF41DC74FF3FDA72FF24BF42FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003739
      4C510023DDFE023AFFFF0138FFFF002BF4FF0026E8FF252592D1000000000000
      000000000000007500FF78EA98FF3FDA72FF3ED971FF23BE42FF006F00FF0000
      000000000000000000000000000000000000000000000616BEF81C4CE8FF2459
      FFFF2459FFFF1437B0FF0519B6FF5B5EC7FF010FB7FF174DFFFF144CFFFF1148
      FFFF0B3AE6FF0408A4FFD5CDDEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FFEEDAC7FFEEDAC6FFEED8C3FFEED8C1FFEDD7BEFFEDD6BCFF7553
      44FF000000000000000000000000000000000000000000000000000000000000
      0000805948FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7556
      46FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F2F2F3B515151FF797979FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FFB1B1B1FFA9A9
      A9FFA5A5A5FF9D9D9DFF007900FF43DE76FF43DE76FF40DB73FF25C044FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E46
      8791063EF8FF0E52FFFF0C4FFFFF0036FFFF002BF4FF0108ABFD111112130000
      000000000000007700FF79EB9AFF41DC74FF40DB73FF24BF42FF007000FF0000
      00000000000000000000000000000000000000000000333C9DB71843E5FF275C
      FFFF265BFFFF2153F9FF1639B2FF0010BBFF1A4CFCFF1A50FFFF174DFFFF124A
      FFFF1148FFFF000DB2FF9694D2FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FFFAF0E1FFFAEFE1FFF9EEDEFFF9EDDBFFF8ECD9FFF2E0CAFF7455
      45FF000000000000000000000000000000000000000000000000000000000000
      0000815B49FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7755
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3F58323232FE646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FF008100FF2CC7
      4BFF2CC74BFF2CC74AFF2BC64AFF47E27AFF46E179FF43DE76FF27C245FF25C0
      44FF24BF42FF22BD41FF21BC40FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000404B
      808A0F51FCFF2682FFFF2277FFFF0E50FFFF023AFFFF007D00FF007D00FF007C
      00FF007C00FF007B00FF7BED9BFF44DF77FF43DE76FF26C145FF007300FF0070
      00FF006F00FF006C00FF006A00FF00000000000000003A4391A40119C8FE3D83
      FFFF3169FFFF295EFFFF285DFFFF2256FCFF2358FFFF1D55FFFF1B52FFFF1445
      F9FF000DB4FFD9CCD3FFDFC6B9FFDABCACFFDABAABFFDAB9A8FFDAB9A6FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFFAF0E1FFF9EFDEFFF2E1CDFF7756
      45FF000000000000000000000000000000000000000000000000000000000000
      0000825B4AFFF7F1E8FFF7F0E8FFF7F0E8FFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFD3B4A6FFD3B3A3FFD8B8A5FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFF4EBDEFFEDDFD0FFE6D1BEFF7856
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000004F4F4FA6383838FF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FF008300FF4DE8
      82FF4DE882FF4CE781FF4BE680FF49E47CFF47E27AFF45E078FF43DE76FF40DB
      73FF3FDA72FF3BD66EFF21BC40FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101022F30
      32FB002EFCFF2E98FFFF2383FFFF0E55FFFF033FFFFF008100FF4BE680FF2CC7
      4BFF2CC74AFF2BC64AFF48E37BFF46E179FF45E078FF27C245FF26C145FF24BF
      42FF23BE42FF21BC40FF006B00FF0000000000000000000001013A3C53590F30
      D7FF3C80FDFF2D62FFFF2A5FFFFF265BFFFF2459FFFF1F56FFFF1E53FFFF000A
      B0FF6765C6FFDCC1B4FFDABDAFFFDABCADFFDABCABFFDABAAAFFDAB9A7FFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFFAF1E3FFF9F0E0FFF2E2CFFF7755
      46FF000000000000000000000000000000000000000000000000000000000000
      0000835D4AFFF8F2E9FFF7F1E9FFF7F1E9FFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFD9BBACFFBFA496FFC2A697FFCBAC9BFFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFF4EBDFFFEFE1D2FFE6D1BFFF7956
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000474747CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FF008700FF52ED
      87FF52ED87FF50EB85FF4FEA84FF4CE781FF4BE680FF47E27AFF46E179FF43DE
      76FF41DC74FF3DD870FF23BE41FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3EDF424242FFAFAE
      ACFF6F6C61CD515C99DFCFCCC5FF272F70F53C408A9B008500FF82F2A1FF4FEA
      84FF4FEA84FF4DE882FF4CE781FF49E47CFF47E27AFF45E078FF43DE76FF40DB
      73FF3ED971FF23BE41FF006D00FF000000000000000000000000000000000000
      00006766BAFF366FFBFF3167FFFF2B60FFFF285DFFFF1B44D2FF0215B7FFEBDE
      D7FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFFDABBACFFDABBAAFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFFBF3E6FFFAF2E6FFF3E4D3FF7857
      46FF000000000000000000000000000000000000000000000000000000000000
      0000855E4BFFF8F3ECFFF8F3EBFFF8F3ECFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFB9A094FF998478FFA28B80FFB79D8FFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFF5ECE1FFEEE2D2FFE7D2C0FF7A57
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000474747CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FF008900FF54EF
      89FF54EF89FF52ED87FF51EC86FF4EE983FF4CE781FF49E47CFF47E27AFF43DE
      76FF42DD75FF3ED971FF23BE42FF000000000000000000000000000000000000
      0000000000002B2B323730303A40000000004848476A666666FFBBBBBBFF5959
      598B06060607706F6C99C4C4C3FF5252508E00000000008700FF84F4A3FF52ED
      87FF51EC86FF4FEA84FF4DE882FF4BE680FF49E47CFF46E179FF44DF77FF41DC
      74FF3FDA72FF23BE41FF006E00FF000000000000000000000000000000000000
      00005256C0FF3A74FFFF3266FFFF2D62FFFF2A60FFFF2050ECFF1333AEFF9692
      D4FFE3D0C8FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FFDBBCADFFDBBCABFFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFFBF3E7FFFAF3E6FFF3E5D5FF7956
      47FF000000000000000000000000000000000000000000000000000000000000
      0000875D4AFFF9F4EDFFF8F3EDFFF9F4EDFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FF746A66FF5F5551FF9C867AFFD3B5A5FFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFF5EDE2FFF0E1D3FFE7D3C1FF7A59
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000474747CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FF008D00FF008D
      00FF008B00FF008900FF008800FF51EC86FF4FEA84FF4BE680FF2BC64AFF0079
      00FF007700FF007300FF007200FF000000000000000000000000000000002525
      2C2E0919BAF5002CF8FF0027E9FF5B5B54FFB6B6B5FF636363AE121212130000
      0000000000007C7C7CAEB9B9B9FF4E4E4E7F00000000008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4DE882FF4CE781FF48E37BFF7BED9BFF79EB
      9AFF78EA98FF3DD870FF007000FF000000000000000000000000000000003F43
      69710B2BD8FF396DFFFF366BFFFF2450F2FF3371F6FF295EFFFF265AFFFF071F
      B9FF363DC1FFDBC3B9FFDBC1B7FFDBBFB4FFDBBEB2FFDBBDAEFFDBBCADFFDBBB
      ABFFDBBAA8FFDAB8A5FFDAB7A3FFDFBFABFFFBF4E8FFFCF4E8FFF5E6D7FF7A57
      46FF000000000000000000000000000000000000000000000000000000000000
      0000865F4CFFFAF5F1FFF9F5EFFFF9F5F0FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FF918987FF6B8B9DFF5F6772FF336A47FF3589
      33FF6E9D59FFDAB8A5FFDAB7A3FFDFBFABFFF5EEE4FFEFE2D4FFE8D3C2FF7B58
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000474747CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FFB5B5B5FFB1B1B1FFA9A9
      A9FFA5A5A5FF9D9D9DFF008900FF52ED87FF50EB85FF4CE781FF2CC74AFF0000
      0000000000000000000000000000000000000000000000000000000000003940
      93A60234F9FF023BFFFF0E33C2FFC1C0B7FF74736FFF00000000000000000000
      000000000000848484BAB5B5B5FF4C4C4C7700000000008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF4FEA84FF4DE882FF2BC64AFF007B00FF0077
      00FF007500FF007200FF007000FF000000000000000000000000000000002335
      B3D42D5AF1FF3B6FFFFF386AFFFF0115C6FF0013C4FF3371FFFF285DFFFF1537
      B0FF0012BBFFE5D4CEFFDBC2B8FFDBC0B5FFDBC0B3FFDBBDB0FFDBBDAEFFDBBB
      ABFFDBBBA9FFDAB8A6FFDAB8A4FFDFBFACFFFBF4E9FFFBF4E8FFF4E6D8FF7A57
      48FF000000000000000000000000000000000000000000000000000000000000
      0000875E4BFFFAF6F1FFFAF6F0FFFAF6F1FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFBAB1B0FF6C8FA4FF24933DFF139629FF229D
      36FF0D7E19FFDAB8A6FFDAB8A4FFDFBFACFFF6EEE4FFEFE4D5FFE8D4C3FF7B58
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000474747CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FF676767FF5F5F5FFF4E4E
      4EFF464646FF9D9D9DFF008B00FF54EF89FF52ED87FF4DE882FF2CC74BFF0000
      000000000000000000000000000000000000000000000000000000000000263E
      CBD01C6EFFFF1E70FFFF135CFFFF002DFFFF0007C2FF4C4C4BA5363636470000
      000000000000939393D0A9A9A9FF464646680000000000000000000000000000
      000000000000008B00FF86F6A4FF51EC86FF4FEA84FF2CC74AFF007C00FF0745
      FFFF002AF2FF0000000000000000000000000000000000000000000000001B43
      E9FF4E86FFFF3D6EFEFF254CE8FFE6E6F6FFE9DDD9FF0218C7FF3374FBFF2458
      FFFF183FC9FF2F36C0FFE5D9D9FFDBC2B7FFDBC1B5FFDBBEB1FFDBBEB0FFDBBB
      ACFFDBBBABFFDBB9A7FFDBB9A5FFDFC0ACFFFBF5EAFFFBF5EBFFF4E7D9FF7B58
      47FF000000000000000000000000000000000000000000000000000000000000
      0000895F4CFFFBF8F3FFFCF7F3FFFBF7F3FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDAC1B8FF65B098FF64FD97FF5CF08AFF47D0
      69FF36BA53FF097813FF91A56FFFDFC0ACFFF6EFE6FFF0E3D8FFE9D4C4FF7C59
      48FF000000000000000000000000000000000000000000000000000000000000
      000000000000484848CB3D3D3DFF646464FF757575FF999999FFB3B3B3FFC8C8
      C8FFB8B8B8FF999999FF909090FF7D7D7DFF757575FF676767FF5F5F5FFF4E4E
      4EFF464646FF9D9D9DFF008D00FF54EF89FF52ED87FF4DE882FF2CC74BFF0000
      0000000000000000000000000000000000000000000000000000000000003F4A
      82821760FAFF2687FFFF1969FFFF0031FFFF080CA5FF5B5B5AFF3E3E3EFF4C4C
      4C8B2727272E999999DBA5A5A5FF434343600000000000000000000000000000
      000013131315008B00FF86F7A5FF52ED87FF4FEA84FF2CC74BFF007C00FF023E
      FFFF0D19B5F1000000000000000000000000000000000000000000000000366A
      F3FF5A9CFFFF3A68F7FF021ED2FFFDFBF8FFDBC8C3FF5F67D6FF051ECCFF2963
      FFFF2053FDFF0317C0FF7B7CCAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFFDBB9A8FFDBB9A5FFDFC0ADFFFBF5EBFFFBF5EAFFF4E7D9FF7C58
      47FF000000000000000000000000000000000000000000000000000000000000
      00008B604EFFFBF8F4FFFBF8F4FFFBF8F5FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FF5DC07CFF64FE97FF62FB95FF52E1
      7AFF45CD66FF229C35FF0D7813FFDFC0ADFFF7F0E7FFF0E5D7FFE9D5C5FF7D59
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4DCB414141FF646464FF757575FF999999FFB3B3B3FFC9C8
      C8FFB9B8B8FF9E9694FF988D8AFF887A76FF7D726EFF6E6562FF645E5BFF4F4E
      4DFF464646FF9D9D9DFF008D00FF008900FF008700FF008300FF008100FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0D0E0E7B766EFF373321FF2A2A3335000000000E0E0E0F4646465E7676
      76FA7B7B7BFF9F9F9FFF999999FF272A6EE70016DCFF0020E9FF131663FE4E4E
      4DFFA2A2A2FF008D00FF86F7A5FF84F4A3FF82F2A1FF4BE680FF007D00FF4E4E
      4C71000000000000000000000000000000000000000000000000000000003235
      46462B41D6FF0223DEFFC5CCF8FFFDFBF8FFDBC7C2FFDCC9C5FFE1D7DEFF0621
      CFFF0012C2FF9190D7FFE1D3D5FFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFFDBB9A8FFDBB8A6FFE0C0AEFFFCF6ECFFFBF6EBFFF4E8DAFF7D5A
      48FF000000000000000000000000000000000000000000000000000000000000
      00008B614FFFFCFAF7FFFCF9F6FFFCFAF7FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFBAC4A6FF50EA7DFF5DF78DFF60F7
      91FF58EB85FF3FC55EFF31B049FF1C7C1DFFD9E3CDFFF2E4DAFFE9D5C6FF7E5B
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000505050CB434343FF646464FF757575FF999898FFB5B2B2FFCDC5
      C5FFB4BDBEFF5FB7CAFF39B4D3FF1EABD0FF1EA0C5FF2788A7FF307690FF4B51
      53FF4C433FFF9D9C9BFF999999FF919191FF8C8C8CFF8E8E8EFF9E9E9EE60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E6E6DFF353532FE000000000000000000000000000000001515
      15174E4E4E6CA4A4A4FE939393FF3F3923FF0D3AD6FF0B2DB8FF4F4B35FF9A9A
      95FF616161DC008D00FF008B00FF008700FF008500FF008100FF007D00FF5252
      5281000000000000000000000000000000000000000000000000000000000000
      0000BAA397FF95A4F5FFFEFCFAFFFEFCF9FFDCC7C2FFDCC8C3FFDECBC7FF4F58
      CDFFB2AFDAFFE2D0CAFFDCC4BCFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFFDBB9A8FFDBB8A6FFE0C0AFFFFCF6EDFFFBF6EDFFF4E8DBFF7D59
      48FF000000000000000000000000000000000000000000000000000000000000
      00008C634EFFFCFBF8FFFCFAF8FFFCFBF8FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FF2EC059FF57F085FF63FE
      97FF5FF58FFF4DD972FF3DC25BFF168C25FF2E8932FFF1E4D9FFE9D6C7FF7E5A
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000565656CB454545FF6A615EFF757675FF4EE9FFFF85FEFFFF94FE
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B2FF0073A9FF0068A1FF006195FF1E1A17FF151210FF171717FF494949CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000616161FF444444DF000000000000000000000000000000000000
      000000000000ADADADFF888888FF1855DBFF2280FFFF0F55FFFF0039FFFF3535
      434C00000000000000000000000000000000000000001D1D1D20B2B2B2FF5555
      559F000000000000000000000000000000000000000000000000000000000000
      00008F624EFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFDBBAA9FFDBB9A6FFE0C1AEFFFCF6EEFFFDF7EEFFF4E8DCFF805B
      4AFF000000000000000000000000000000000000000000000000000000000000
      00008F634FFFFDFCFAFFFDFCFAFFFDFCFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFD8BEB2FF5DC072FF5BF6
      89FF60FA92FF5DF28CFF55E57EFF38BB54FF2AA63FFF50994FFFE7D5C6FF805C
      4BFF000000000000000000000000000000000000000000000000000000000000
      000000000000595959CB484746FF36869DFF00C2FAFF4FE7FFFF88F9FFFF95FD
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B1FF0072A7FF006499FF00659BFF006195FF0F2A36FF181716FF494949CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808095B5B5BFF4C4C4CC5000000000000000000000000000000000000
      000000000000B1B1B1FF828282FF0A36D8FD2D98FFFF155EFFFF033EFFFF0909
      090A000000000000000000000000000000000000000012121213ABABABFE5454
      54AF000000000000000000000000000000000000000000000000000000000000
      00008F644EFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF805A
      49FF000000000000000000000000000000000000000000000000000000000000
      00008F654FFFFEFDFBFFFDFCFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFD0C0ADFF46DD
      71FF5CF68BFF62FC95FF5CF08AFF46CF68FF36B851FF0D7E19FF65A25AFF805B
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000000000005F5C5BCB256987FF00AADEFF00BFF3FF50E6FFFF88F9FFFF95FD
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B1FF0072A7FF006499FF006499FF006499FF00659BFF173645FF4B4949CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      00003434343D4F4F4FFF51515190000000000000000000000000000000000000
      000000000000B9B9B7FF777773FF1F1F1F24545352714A4B40E7060606070000
      0000000000000000000000000000000000000000000003030304A3A3A3F44D4D
      4DCE000000000000000000000000000000000000000000000000000000000000
      000091654FFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF815A
      49FF000000000000000000000000000000000000000000000000000000000000
      0000916650FFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFC0F0
      CAFF2FC55DFF5DF78CFF62FC96FF59EC86FF50DE77FF2FB54AFF2D8F3BFF7264
      52FF000000000000000000000000000000000000000000000000000000000000
      000000000000645F5ECB236F8EFF00AADDFF00BFF3FF50E6FFFF88F9FFFF95FD
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B1FF0072A7FF006499FF006499FF006499FF006499FF165373FF4C4A49CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000046464658494949FF4B4B4B76000000000000000000000000000000000000
      0000000000009F9EB0FF575676FF1919191C575755774C4C49E1000000000000
      00000000000000000000000000000000000000000000000000009F9F9FEB4747
      47DD000000000000000000000000000000000000000000000000000000000000
      0000926450FFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF815C
      49FF000000000000000000000000000000000000000000000000000000000000
      0000926551FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FF9BE3B1FF58F285FF5EF88EFF60F690FF57EB84FF60916AFF716A70FF6765
      65FF1C1C1C410000000000000000000000000000000000000000000000000000
      000000000000696462CB267192FF00AADDFF00BFF3FF50E6FFFF88F9FFFF95FD
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B1FF0072A7FF006499FF006499FF006499FF006499FF195572FF504D4CCB0000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666668F424242FF34343441000000000000000000000000000000003A3D
      81A40016C8FE0025E8FF0023E3FF0017D0FF0000A1FF4F4F4ADA000000000000
      0000000000000000000000000000000000000000000000000000929292D23939
      39F8010101020000000000000000000000000000000000000000000000000000
      0000936551FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF825B
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000936652FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FF4EC36CFF43DB6FFF69EB93FF959596FFE3E3E3FFC5C4C4FF8385
      94FF363E9BFF0000040700000000000000000000000000000000000000000000
      0000000000006C6764CB287394FF00AADDFF00BFF3FF50E6FFFF88F9FFFF95FD
      FFFF6CF0FFFF23D8FFFF01CCFEFF00B8EAFF00AFE1FF009BCEFF0091C4FF007C
      B1FF0072A7FF006499FF006499FF006499FF006499FF1A5675FF53504ECB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000787878AA3F3F3FFF2222222700000000000000000000000000000000001A
      D2FF002EFBFF002BF5FF0029F0FF0021E1FF0019D7FF504F4DD4000000000000
      0000000000000000000000000000000000000000000000000000888888C53333
      33FD0C0C0C0D0000000000000000000000000000000000000000000000000000
      0000946651FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF825B
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000946752FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFC6BFA1FF38C461FFA7A6A7FFE3E0E2FFF1F1EFFFE3E2DCFF1B32
      CBFF192CC2FF0103679E00000000000000000000000000000000000000000000
      000000000000726E6CCB2B7697FF00AADDFF00BFF3FF50E6FFFF88F9FFFF96FD
      FFFF6EF0FFFF24D8FFFF02CCFFFF00B7EAFF00AFE1FF009ACEFF0091C4FF007C
      B1FF0072A7FF006499FF006499FF006499FF006499FF1C5876FF575453CB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000939393E1464646EF0101010200000000000000000000000013131415094B
      FFFF0D50FFFF0B4CFFFF0743FFFF002DF7FF0027EBFF2C2C81D1020202030000
      0000000000000000000000000000000000000000000000000000787876AB3636
      2DFF2424242A0000000000000000000000000000000000000000000000000000
      0000956752FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF8660
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000956853FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFBEBDBDFFE2E2E1FF5D7AEDFF375EEEFF385B
      E7FF263FCFFF050AA2FF000089E4000000000000000000000000000000000000
      000000000000726F6DCB2C7898FF00AADDFF00BFF3FF53E6FFFF90F9FFFF99FD
      FEFF5FF0FEFF14DCF8FF00D4F5FF00C3E7FF00BAE1FF00A8D3FF009DCBFF0084
      B6FF0073A8FF006297FF006398FF006499FF006499FF1D5977FF595653CB0000
      0000000000000000000000000000000000000000000000000000000000000303
      0304A4A498F852524AD70000000000000000000000000909090A4647506E135C
      FFFF1764FFFF1660FFFF1055FFFF0035FFFF002AF3FF0D0A77FE404038E94343
      43631B1B1B1E000000000000000000000000000000000000000065636EA11715
      5FFF41415B760000000000000000000000000000000000000000000000000000
      0000966952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF8165
      5AD7000000000000000000000000000000000000000000000000000000000000
      0000966A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFCFCCCAFFCBC9C3FF355CECFF4B7AFFFF3759
      E5FF253FCEFF0509A1FF000083DA000000000000000000000000000000000000
      000000000000787472CB307A9AFF00AEDFFF00DFF7FF00FFFFFF00FFFFFF66EC
      EBFF92E0E0FFC9D0D0FFD8CBCBFFD4C1BFFFCDBDBAFFB9B2B1FFAAACAEFF71A2
      B0FF529CB2FF068FBFFF0089C0FF0076ACFF00699EFF1F5A79FF5B5856CB0000
      00000000000000000000000000000000000000000000000000003C3E5B640021
      E2FF0024EAFF0014D6FF13139CEA454543D03D3D3DFEA3A3A3FFC8C4B7FF1969
      FFFF2B8CFFFF2681FFFF1C6BFFFF0641FFFF0032FFFFA09EBCFFC2C2BEFF8F8F
      8FFF737373FF464646FF353535FF464646C34949487F0017DDFE002CFFFF0027
      EBFF0024E4FF181895E30E0E0E0F000000000000000000000000000000000000
      0000986A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA48371FFC8B3A5FFC6AD9AFFC3A283FFC19C76FFB88F63FF886557EA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA48372FFC8B3A5FFC6AD9AFFC3A283FFAE9286FF3A5FE9FF416AF4FF2943
      D3FF1B2DC0FF00006FB900000203000000000000000000000000000000000000
      0000000000007C7675CB31789BFF00F5FAFF00FEFEFFA9E8E8FFE9DDDDFFE4D7
      D7FFDDD4D4FFD3D0D0FFCECDCDFFC7C7C7FFC2C1C1FFB5B4B4FFA9A8A7FFA09A
      99FFA59D9CFFA19591FF828D94FF037BAEFF0074ADFF205C7AFF5D5959CB0000
      00000000000000000000000000000000000000000000202024260619C4F8002F
      FBFF002DFCFF131E55FF323227FF979797FFBCBCBCFF828282FF605E59FD083B
      F6F62C8EFFFF2681FFFF1C6BFFFF0643FFFF0023EEFF545448DE707070A2A5A5
      A5FDB4B4B4FF9D9D9DFF858585FF505050FF3D3D3AFF292920FF0933CBFF0030
      FCFF002AF1FF0011C2FF3F3F5E75000000000000000000000000000000000000
      0000986955FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF85655AE3262524290000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF1C29B6FF2944D2FF1828
      BBFF03059FFF0000090E00000000000000000000000000000000000000000000
      000000000000807776CB23BAC4FFFFEBEBFFEEE8E8FFE3E3E3FFE0E0E0FFDCDC
      DCFFD9D9D9FFC0C0C0FFA9A9A9FF808080FF6D6D6DFF525252FF555555FF8E8E
      8EFF8D8D8DFF979797FF959595FF8A8989FF8B8481FF186184FF5E5B59CB0000
      00000000000000000000000000000000000000000000374297AC0D50FEFF145E
      FFFF0F57FFFFA19984FF6E6B5BFF32324AFF3C3C3AEF4A4A4A803D3D3D550505
      05061A1B1E1E263BC9D01D37CFDD292C96CB0C0B96F30707A5F73E3E738F0000
      0000000000003737374A4A4A4A8F414140FF6C6D73FF6F6A65FF1F62DFFF1157
      FFFF0743FFFF0027EDFF2F2F83C0000000000000000000000000000000000000
      0000996B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA6826CFFF2D7AEFFEECD9BFFC59A67FF856559E400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826DFFF2D7AEFFEECD9BFFC59A68FF846154F900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000768485E071BFC5FFEEECECFFEAEAEAFFE4E4E4FFE2E2E2FFDCDC
      DCFFBABABAFFB7B7B7FFB3B3B3FFA3A3A3FF949494FF636363FF3C3C3CFF4848
      48FF8B8B8BFF939393FF979797FF8C8C8CFF878686FF466676FF545A5EDF0000
      000000000000000000000000000000000000000000003D488D98155BFBFF2277
      FFFF1B6CFFFF163DBEFF0730D9FF515082FF6D6D69FF4C4C4CFF414141FF3332
      30F6424034D14746417B393837500016D2FE002BF8FF0025EEFF000EC3FF4747
      4687434343C85B5B5BFF898989FFB5B5B4FF9B9A99FF1F7DFFFF2787FFFF1965
      FFFF0C4EFFFF0022E4FF3E3E6E92000000000000000000000000000000000000
      00009A6954FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58067FFEECE98FFEFC785FF82675BDC1F1E1E2100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6A55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58068FFEECE98FFEFC785FF826254F71C15133000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C5C5B75969595FFF1F1F1FFEEEEEEFFE7E7E7FFE4E4E4FFD2D2
      D2FFF0F0F0FFFDFDFDFFF5F5F5FFDADADAFFCACACAFFACACACFF9E9E9EFF9898
      98FF7A7A7AFF949494FF999999FF929292FF8D8D8DFF5C5C5CFE4F4F4F710000
      0000000000000000000000000000000000000000000000000000384DAAAA2F93
      FFFF237AFFFF0948FFFF0018CAFE00000000030303043D3D3D4C555555777B7B
      7BCA848484F38F8F8EFF959492FF41454BFF115BFFFF0B2B97FFBDB6A0FF7878
      71FF5C5C5BF55454548A4040405200000000000000002744CCCE1961F9FF1969
      FFFF0B4AFDFF3E3F626D00000000000000000000000000000000000000000000
      0000996A53FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA37A5CFFBF9463FF83675BD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996B54FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA37B5DFFBF9464FF826256F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B0C868686D4F2F2F2FFF3F3F3FFE8E8E8FFE6E6E6FFDADA
      DAFFFAFAFAFFFFFFFFFFFEFEFEFFDFDFDFFFCECECEFFAFAFAFFF9E9E9EFF9A9A
      9AFFA0A0A0FFA7A7A7FFA0A0A0FF989898FF909090FF636363CD080808090000
      0000000000000000000000000000000000000000000000000000050506060F39
      E5F10A3FEAFE1B2CB2E03A3B5259000000000000000000000000000000000000
      000001010102393939495151537D236BE0FF2078FFFF094CFFFF132E90FF4241
      536F04040405000000000000000000000000000000000A0A0B0B3F497C7C1E37
      D0DC353F9EB20000000000000000000000000000000000000000000000000000
      0000976853FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77D59FF84685DD41818181A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976954FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77E5AFF856358F517121128000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000057575766909090DFB3B3B3FFCECECEFFEAEA
      EAFFE7E7E7FFDCDCDCFFDBDBDBFFD8D8D8FFD1D1D1FFCDCDCDFFCDCDCDFFC0C0
      C0FFB9B9B9FF969696FF808080FF6D6D6DD74B4B4B6000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000153EE5EA1D6BF9FF0C48F7FF051CC5F90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986954FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B73
      63FF806961BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A55FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B74
      64FF846559EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505067878789C8B8B8BE19A9A
      9AFFA9A9A9FFBABABAFFBEBEBEFFBEBEBEFFBDBDBDFFB1B1B1FFA6A6A6FF8D8D
      8DFF818181FF7C7C7CD46565658F020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000141517173F487D833D44829425262C2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6F5BFF9B6D59FF9A6D58FF996C58FF996C58FF996D59FF986B57FF976C
      58FF976A56FF956957FF956A55FF936956FF936754FF916653FF916754FF6F61
      5A94070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B705CFF9B6E5AFF9A6E59FF996D59FF996D59FF996E5AFF986C58FF976D
      59FF976B57FF956A58FF956B56FF936A57FF936855FF916754FF916855FF745E
      52D5090807150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007100FF007100FF006F00FF006E00FF006C00FF006B00FFD7D7
      D7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D6C6CFF9E6969FF7D4A
      4AFF804C4CFFE0D2D2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007300FF3ED871FF24BE42FF24BE42FF22BC41FF006D00FFD7D7
      D7FF000000000000000000000000000000000000000000000000000000000000
      000085604FFF835F4EFF835E4EFF835E4EFF835E4EFF825E4EFF825E4EFF825F
      4EFF825D4DFF825D4DFF815D4DFF815D4DFF815E4DFF805C4CFF805C4CFF7E5B
      4CFF7E5B4BFF007100FF007100FF006F00FF006E00FF006C00FF006B00FF7A5A
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976565FFFFE4E4FF9C67
      67FF945F5FFF7A4646FF956666FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000FBCEEFF47A3B9FF6868
      68FF838383FFCCCCCCFF00000000000000000000000000000000000000000000
      000000000000007600FF79EA98FF40DA73FF3FD972FF24BE43FF007000FFD6D6
      D6FF000000000000000000000000000000000000000000000000000000000000
      00007E5B4AFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDE
      CEFFEFDECEFFEFDECEFFEFDECEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FF007400FF78E997FF3ED871FF3DD770FF23BD42FF006E00FF7654
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8FF8282
      82FF959595FF909090FF858585FFAEAEAEFFE1E1E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976464FFFFDBDBFF9D68
      68FF9F6A6AFFA06B6BFFA16C6CFF905B5BFF7C4949FF9D7272FFD5C3C3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC8D4FFCDF9FDFF7DE3F9FF27B4
      DAFF578C99FF727272FF949494FFD8D8D8FF000000000000000000000000D7D7
      D7FFD7D7D7FF007800FF7AEB9AFF42DC75FF41DB74FF25BF43FF007100FFB7B7
      B7FFD6D6D6FFD7D7D7FFD7D7D7FF000000000000000000000000000000000000
      0000805948FFFBF4E9FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3
      E8FFFBF3E8FFFBF3E9FFFBF3E7FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FF007600FF79EA98FF40DA73FF3FD972FF24BE43FF007000FF7556
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B1FF858585FFA4A4
      A4FFA0A0A0FF949494FF969696FF878787FF7A7A7AFFC6C6C6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      66FF696969FF646665FF636463FF595959FF575757FF775151FFFFDBDBFF9E68
      68FFA06B6BFFA06B6BFFA06B6BFFA06B6BFFA26D6DFF844F4FFF734040FFBEA3
      A3FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002FB8DFFF87E6FAFFDDFFFFFFDDFFFFFFE3FF
      FFFFECFFFFFF87E5F9FF1FC6F2FF54919FFF60696BFF007E00FF007E00FF007D
      00FF007D00FF007C00FF7CED9BFF45DF78FF44DE77FF27C146FF007400FF0071
      00FF007000FF006D00FF006B00FFD7D7D7FF0000000000000000000000000000
      0000825A49FFFBF5EBFFFBF5EBFFFBF5EBFFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFDABAABFFE5CEC2FFE5CEC1FFE5CC
      BEFFE5CCBEFF007A00FF7BEC9BFF44DE77FF42DC75FF26C045FF007300FFA18A
      7DFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8CFF999999FFACACACFFAAAAAAFF9797
      97FF6F6F6FFF606060FF6F6F6FFF707070FF4B4B4BFF8F8F8FFF8C8C8CFF7575
      75FF929292FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98FF767676FF6B6A6BFF878185FFBCB4BAFFBFB8BDFF976D6FFFFFDADAFFA06A
      6AFFA26D6DFFA26D6DFFA26D6DFFA16C6CFFA16C6CFFA16C6CFFA06B6BFFA16C
      6CFF915C5CFF604242FFB9BABAFF000000000000000000000000000000000000
      00000000000000000000000000003ACBF0FFE4FFFFFFD9FFFFFFDBFFFFFFDDFF
      FFFFDEFFFFFFE8FFFFFFF0FFFFFF59D9F7FF05BDEDFF008100FF4CE680FF2DC7
      4CFF2DC74BFF2CC64BFF49E37CFF47E17AFF46E079FF28C246FF27C146FF25BF
      43FF24BE43FF22BC41FF006C00FFD7D7D7FF0000000000000000000000000000
      0000825B4AFFFBF5ECFFFCF6ECFFFCF6ECFFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFDABCADFFDABCABFF007E00FF007E00FF007D
      00FF007D00FF007C00FF7CED9BFF45DF78FF44DE77FF27C146FF007400FF0071
      00FF007000FF006D00FF006B00FF000000000000000000000000000000000000
      000000000000CACACAFF8F8F8FFFAFAFAFFFB1B1B1FFAEAEAEFF979797FF6C6C
      6CFFA8A8A8FFA4A4A4FF8B8B8BFF5F5F5FFF4D4D4DFF3B3B3BFF5B5B5BFF8B8B
      8BFF838383FF757575FFA7A7A7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF757575FF6E686CFF369D53FF4BB469FF5CB575FF886A62FFFFDADAFFA16B
      6BFFA36E6EFFA36E6EFFA36E6EFFA36E6EFFA26D6DFFA26D6DFFA16C6CFFA26D
      6DFFA16C6CFF603E3EFF5E5F5FFF000000000000000000000000000000000000
      0000000000000000000046C0E4FFD9FFFFFFD2FFFFFFACE2EBFF78BDD3FF9AD3
      E2FFBFECF2FFE0FFFFFFDFFFFFFFDFFFFFFFE1FFFFFF008500FF82F2A1FF50EA
      84FF50EA84FF4EE882FF4DE781FF4AE47DFF48E27BFF46E079FF44DE77FF41DB
      74FF3FD972FF24BE42FF006E00FFD7D7D7FF0000000000000000000000000000
      0000845C49FFFCF6EEFFFCF7EEFFFCF7EEFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFF008300FF81F1A0FF4EE8
      82FF4DE781FF4CE680FF4BE57EFF48E27BFF47E17AFF44DE77FF43DD76FF40DA
      73FF3ED871FF22BC41FF006E00FF000000000000000000000000000000009D9D
      9DFF9A9A9AFFBCBCBCFFBBBBBBFF989898FF717171FFBEBEBEFFDBDBDBFFD2D2
      D2FFD1D1D1FFAAAAAAFFABABABFFAEAEAEFF747474FF2A2A2AFF2F2F2FFF3333
      33FF323232FF505050FF6E6E6EFF787878FF717171FFA5A5A5FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF7D7D7DFF71696FFF289642FF1DA63EFF1DA63EFF786B56FFFFDBDDFFA56F
      6FFFA57070FFA57070FFA57070FFA57070FFA46F6FFFA46F6FFFA36E6EFFA36E
      6EFFA26D6DFF634040FF4E4F4FFF000000000000000000000000000000000000
      000000000000AAD9E4FF11BEECFFD1FFFFFFD0FFFFFF9CD7E5FF79BFD5FF7DC0
      D5FF7BBFD4FFA4D9E6FFCAF3F7FFE0FFFFFFDFFFFFFF008700FF84F4A3FF53ED
      87FF52EC86FF50EA84FF4EE882FF4CE680FF4AE47DFF47E17AFF45DF78FF42DC
      75FF40DA73FF24BE42FF006F00FFD7D7D7FF0000000000000000000000000000
      0000855E4BFFFCF8EFFFFCF7EFFFFCF7EFFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FF008500FF82F2A1FF50EA
      84FF50EA84FF4EE882FF4DE781FF4AE47DFF48E27BFF46E079FF44DE77FF41DB
      74FF3FD972FF24BE42FF006E00FF000000000000000000000000EAEAEAFFB6B6
      B6FFC2C2C2FFBBBBBBFF999999FF959595FFC9C9C9FFD9D9D9FFD7D7D7FFD4D4
      D4FFD2D2D2FFADADADFFADADADFFAEAEAEFFA7A7A7FF4D4D4DFF2E2E2EFF2B2B
      2BFF2E2E2EFF313131FF313131FF585858FF737373FF717171FF6A6A6AFFBFBF
      BFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC98FFF0000000000000000A1A1
      A1FF818181FF736C71FF24903CFF199E36FF199E36FF7A6A56FFFFDBDDFFA670
      70FFA77272FFA67171FFA67171FFA67171FFA67171FFA57070FFA57070FFA46F
      6FFFA36E6EFF664343FF4F5252FF000000000000000000000000000000000000
      00000000000014BEEBFFD3FFFFFFCAFFFFFFCBFFFFFFCEFFFFFFD1FFFFFFBAEE
      F4FF98D4E3FF78BDD4FF7BBFD5FF79BED3FF77BCD2FF008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4EE882FF4DE781FF49E37CFF7CED9BFF7AEB
      9AFF79EA98FF3ED871FF007100FF000000000000000000000000000000000000
      0000865F4CFFFCF9F1FFFCF8F1FFFCF8F2FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FFDBBFB4FFDBBEB2FF008900FF85F5A4FF55EF
      89FF54EE88FF52EC86FF50EA84FF4DE781FF4BE57EFF48E27BFF46E079FF43DD
      76FF41DB74FF24BE43FF007000FF000000000000000000000000D4D4D4FF9C9C
      9CFF838383FFDCDCDCFFE3E3E3FFDDDDDDFFDCDCDCFFDADADAFFD9D9D9FFD6D6
      D6FFD6D6D6FFB1B1B1FFB2B2B2FFB1B1B1FFB1B1B1FFB3B3B3FFB3B3B3FF8484
      84FF686868FF3D3D3DFF292929FF2A2A2AFF2D2D2DFF2F2F2FFF353535FF6565
      65FF6C6C6CFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000379F37FF5DB05DFF00000000A3A3
      A3FF828282FF756E73FF1E822EFF118F27FF118F27FF826759FFFFDBDDFFA871
      72FFA97474FFA97474FFA87373FFA57171FFA87272FFA77272FFA77272FFA671
      71FFA57070FF674545FF565757FF000000000000000000000000000000000000
      00000000000081E6F7FFCBFFFFFFC7FFFFFFC9FFFFFFCBFFFFFFCCFFFFFFD0FF
      FFFFD4FFFFFFB2E6EFFF8FCCDEFF79BED3FF7BBED4FF008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF50EA84FF4EE882FF2CC64BFF007C00FF0078
      00FF007600FF007300FF007100FF000000000000000000000000000000000000
      0000875E4BFFFCF8F2FFFDF9F2FFFDF9F3FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFDBC0B5FFDBC0B3FF008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4EE882FF4DE781FF49E37CFF7CED9BFF7AEB
      9AFF79EA98FF3ED871FF007100FF0000000000000000E9E9E9FFA5A5A5FFB9B9
      B9FFE2E2E2FFE2E2E2FFE0E0E0FFDFDFDFFFDEDEDEFFDBDBDBFFDADADAFFD8D8
      D8FFD7D7D7FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB2B2B2FFB3B3B3FFB4B4
      B4FFB3B3B3FF808080FF666666FF3C3C3CFF282828FF292929FF2C2C2CFF2D2D
      2DFF676767FFD6D6D6FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000379E37FF0E8F1BFF5FB15FFFA4A4
      A4FF838383FF746D73FF197B28FF0E871FFF0E871FFF84695AFFFFDCDEFFA972
      72FFAA7575FFAA7575FFAA7575FFA37070FFA57171FFA87373FFA87373FFA772
      72FFA67171FF694747FF575959FF000000000000000000000000000000000000
      00005FC5E3FFC6FFFFFFC1FFFFFF85CFDEFF88D0E0FFC3FCFDFFCBFFFFFFCBFF
      FFFFCBFFFFFFCDFFFFFFCEFFFFFFD4FFFFFFD7FFFFFF9FD9E5FF7BBFD4FF78BB
      D3FF79BCD2FF008B00FF86F6A4FF52EC86FF50EA84FF2DC74BFF007D00FFF7FF
      FFFFE8FFFFFF6FADBEFFDDDDDDFF000000000000000000000000000000000000
      0000895F4CFFFDF9F4FFFDFAF4FFFDFAF5FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDBC2B7FFDBC1B5FFE6D1C8FFE6D1C8FFE6CF
      C5FFE6CFC4FF008900FF85F5A4FF51EB85FF4FE983FF2DC74BFF007C00FFA48B
      7EFF0000000000000000000000000000000000000000B4B4B4FFCECECEFFE6E6
      E6FFE6E6E6FFE4E4E4FFE4E4E4FFE2E2E2FFE0E0E0FFDEDEDEFFDDDDDDFFDADA
      DAFFDBDBDBFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB8B8B9FFC59B6AFFC88D
      48FFC68F50FFB9A99BFFB4B8BEFFB6B7B8FFB5B5B5FF7B7B7BFF626262FF5E5E
      5EFFA3A3A3FF7B7B7BFF979797FF000000000000000000000000000000000000
      000000000000000000000000000000000000379E37FF3BC469FF3ABD68FF53AE
      53FFB4B4B4FF766F75FF106F18FF067610FF067610FF866C5CFFFFDCDDFFAB74
      75FFAC7777FFAD7676FF986C6CFFA16E6EFFA37070FFA87474FFAB7575FFA974
      74FFA87373FF6D4A4AFF575959FF000000000000000000000000000000000000
      00000FAEE0FFBFFFFFFFC0FFFFFF6EBED4FF71C0D6FF70BED3FF85CDDDFFC1F9
      FBFFCDFFFFFFCCFFFFFFCCFFFFFFCEFFFFFFCFFFFFFFD6FFFFFFD7FFFFFF94D0
      E0FF75BAD2FF008B00FF86F7A5FF53ED87FF50EA84FF2DC74CFF007D00FFF1FF
      FFFF4ED4F6FFD1D2D2FF00000000000000000000000000000000000000000000
      00008B604EFFFDFBF5FFFDFAF5FFFDFAF6FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFF008B00FF86F6A4FF52EC86FF50EA84FF2DC74BFF007D00FF7D59
      48FF0000000000000000000000000000000000000000BCBCBCFFCCCCCCFFE8E8
      E8FFE7E7E7FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2E2FFDFDFDFFFDEDEDEFFDBDB
      DBFFD9D9D9FFBDBDBDFFBCBCBCFFBBBBBBFFBBBCBCFFCE9045FFDB8A27FFE198
      3DFFDD9233FFD4750DFFCD7010FFB6B5B5FFB5B8BAFFB8B8B8FFB4B4B4FFAEAE
      AEFFB5B5B5FF999999FF9B9B9BFF00000000000000002A882AFF167A16FF1B81
      1BFF1C851CFF198719FF148614FF118911FF017801FF45E279FF3DC86CFF0E95
      18FF50AA50FF766F76FF0D6911FF036E08FF036E08FF8C6B5EFFFFDCDDFFAC75
      75FFAD7777FF938181FF808585FF9B6F6FFFA27070FFA77474FFAA7676FFAA75
      75FFA97474FF6F4C4CFF5A5B5BFF0000000000000000000000000000000042BD
      E3FF7EE6F6FFB8FFFFFFB9FFFFFFBFFFFFFFB2F6F9FF7AC9DBFF6CBDD3FF70BF
      D5FF70BFD4FF6EBCD2FF7CC7DAFFBDF5F8FFD0FFFFFFCFFFFFFFCFFFFFFFD0FF
      FFFFD3FFFFFF008D00FF86F7A5FF84F4A3FF82F2A1FF4CE680FF007E00FF15B5
      E2FFA7B7BCFF0000000000000000000000000000000000000000000000000000
      00008B614FFFFDFCF7FFFDFBF7FFFDFBF8FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFF008D00FF86F7A5FF53ED87FF50EA84FF2DC74CFF007E00FF7E5B
      49FF0000000000000000000000000000000000000000D2D2D2FFBEBEBEFFECEC
      ECFFEBEBEBFFE9E9E9FFE8E8E8FFE6E6E6FFE5E5E5FFE2E2E2FFE0E0E0FFDEDE
      DEFFCCCCCCFFC2C2C2FFC1C1C1FFC0C0C1FFBFC3C8FFE6A85AFFEBB56DFFE6A7
      54FFE5A652FFE3A34DFFE4A34CFFDF963AFFCF6B02FFBABBBCFFB9B9B9FFB8B8
      B8FFB8B8B8FF8B8B8BFFB5B5B5FF0000000000000000187318FF3FD170FF38CC
      68FF38CF6AFF3BD06DFF3ED36FFF41D471FF41D773FF47E37AFF4AE57DFF42CA
      6EFF3FBD6BFF52A951FF9ED6C5FF68D1B3FF68D1B3FFA07C78FFFFDBDCFFAE76
      76FFBEA2A2FFD0D0D0FFD2D2D2FFA39C9CFFA87373FFAD7878FFAD7878FFAC77
      77FFAB7676FF725050FF5C5D5DFF0000000000000000000000000000000003AF
      DFFFBAFFFFFFB6FFFFFFB7FFFFFFB9FFFFFFBBFFFFFFC3FFFFFFB5F9FAFF7CC9
      DCFF6CBCD2FF6FBDD4FF6FBED4FF6DBBD1FF79C3D8FFBBF3F7FFD1FFFFFFD0FF
      FFFFD0FFFFFF008D00FF008B00FF008700FF008500FF008100FF007E00FF81A4
      ADFFDEDEDEFF0000000000000000000000000000000000000000000000000000
      00008C634EFFFDFBF8FFFDFBF8FFFEFCF9FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFF008D00FF86F7A5FF84F4A3FF82F2A1FF4CE680FF007E00FF7E5A
      49FF0000000000000000000000000000000000000000E2E2E2FFB4B4B4FFEDED
      EDFFEDEDEDFFEBEBEBFFEAEAEAFFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFDFDF
      DFFFC6C6C6FFC4C4C4FFC4C4C4FFC3C5C7FFC9B094FFEFBD80FFEAB168FFE7A8
      56FFE6A754FFE4A44FFFE3A34CFFE2A34AFFD67C18FFBCBEC0FFBEBDBCFFC4C1
      C0FFBABABAFF7D7D7DFFCBCBCBFF0000000000000000147014FF4FDA80FF3AD6
      6DFF3CD86FFF40DC73FF43DE76FF45E178FF48E37BFF4AE67DFF4BE680FF4EEA
      84FF44CB70FF0B9A13FF5FCE74FFA7FFFFFFA7FFFFFFAA8686FFFFDADAFFAE76
      76FFC5ABABFFE9E9E9FFF8F8F8FFB1A4A4FFAF7979FFAE7979FFAE7979FFAD78
      78FFAC7777FF745353FF5C5E5EFF0000000000000000000000000000000078E6
      F6FFB3FFFFFFB4FFFFFFB5FFFFFFB7FFFFFFB7FFFFFFB8FFFFFFB9FFFFFFBBFF
      FFFFBEFFFFFFC3FFFFFFBCFBFDFF83CDDDFF6BBAD2FF6DBBD2FF6FBCD2FF6BB8
      D0FF73BED3FFB6EDF2FFD1FFFFFFD0FFFFFFD1FFFFFF82E4F7FF30ADD2FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F634FFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFE6CFC3FFE6CEC1FFE9D3C6FFFDF9F3FFFEF9F3FFF7EFE6FF805C
      4BFF000000000000000000000000000000000000000000000000ADADADFFF2F2
      F2FFF0F0F0FFEEEEEEFFEDEDEDFFEAEAEAFFE8E8E8FFE5E5E5FFE3E3E3FFCFCF
      CFFFCACACAFFC9C9C9FFC9C9C9FFCEB391FFDE9231FFEEB976FFEAAD5EFFE8AA
      5AFFE7A957FFE5A652FFE4A450FFE3A44CFFD77D19FFAEACABFF5DA7DEFF4EAC
      F8FFCBC6C2FF777777FF000000000000000000000000116F11FF5ADF89FF3DD8
      70FF3FDA72FF43DE76FF45E078FF48E37BFF4AE57DFF4DE882FF4FEA84FF52ED
      87FF54EF89FF48CD73FF46BE6FFF70D080FFD7FFFFFFAD8282FFFFDADAFFB17B
      7BFFB27B7BFFC6AFAFFFBCB4B4FFB27B7BFFB17C7CFFB07B7BFFB07B7BFFAF7A
      7AFFAE7979FF795555FF626464FF00000000000000000000000000000000AEFF
      FFFFAFFFFFFF82D7E4FF75CCDEFFA3F0F6FFB6FFFFFFB8FFFFFFB8FFFFFFB9FF
      FFFFBAFFFFFFBEFFFFFFBFFFFFFFC4FFFFFFC0FDFEFF85CEDEFF6BBAD1FF6CBA
      D2FF6EBBD1FF6AB7CFFF6FBBD2FFD0FFFFFFD2FFFFFF08B6E6FF95ABB1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F654FFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF805B
      4AFF000000000000000000000000000000000000000000000000D0D0D0FFF6F6
      F6FFF2F2F2FFEFEFEFFFEEEEEEFFEBEBEBFFE9E9E9FFE6E6E6FFE5E5E5FFCECE
      CEFFCECECEFFCCCCCCFFCCCDCDFFD89034FFEBB36BFFECB56EFFEAAE60FFE9AB
      5BFFE8AA59FFE6A754FFE5A551FFE4A54EFFD4760FFF8C8A88FF4BB7FFFF5DB0
      EDFFC6C1BEFFA3A3A3FF0000000000000000000000000F700FFF5BE28BFF3DD9
      70FF40DB73FF44DF77FF46E179FF4AE57DFF4CE781FF4FEA84FF51EC86FF54EF
      89FF55F08AFF57F08CFF45BD6EFF7DD389FFE4FFFFFFB08383FFFFDADAFFB37C
      7CFFB48181FFB47D7DFFB37B7BFFB38080FFB27D7DFFB17C7CFFB17C7CFFB07B
      7BFFAF7A7AFF7B5858FF626464FF0000000000000000000000006BC7E5FFADFF
      FFFFA9FFFFFF76D0E1FF62BFD4FF65C0D5FF66C0D5FF64BDD4FF64BCD3FF86D9
      E5FF9FECF2FFBCFFFFFFBBFFFFFFBBFFFFFFBCFFFFFFBFFFFFFFC1FFFFFFC6FF
      FFFFC5FFFFFF8BD2E1FF84CCDDFFCFFFFFFF94EBF9FFB4B6B8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000916650FFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF815B
      4AFF00000000000000000000000000000000000000000000000000000000E0E0
      E0FFF7F7F7FFF2F2F2FFF0F0F0FFECECECFFEBEBEBFFE8E8E8FFDEDEDEFFD6D6
      D6FFD6D6D6FFD4D6D8FFD5C6B2FFF2BF83FFF0BF83FFECB166FFEBB064FFEAAD
      5EFFE9AB5CFFE7A856FFE6A754FFDC9132FFD09B5CFFA5A3A2FF58768AFFB7B3
      B1FFBBBBBBFF000000000000000000000000000000000F700FFF5EE38EFF41DB
      73FF45DF77FF4AE37DFF4DE581FF51E985FF53EB87FF57EE8BFF55F08AFF58F3
      8DFF5AF590FF0FAA18FF80D380FFFEFEFDFFFEFFFDFFB98989FFFFDADAFFB580
      80FFB68383FFB68383FFB68383FFB58282FFB48181FFB38080FFB38080FFB17C
      7CFFB17C7CFF7C5C5CFF666666FF00000000000000000000000031B5E0FFA6FF
      FFFFA5FFFFFFACFFFFFFA7FDFEFF80D8E4FF69C3D7FF63BDD4FF64BED4FF65BD
      D4FF63BCD3FF78CBDCFF91DFE9FFBEFFFFFFBEFFFFFFBDFFFFFFBFFFFFFFC0FF
      FFFFC2FFFFFFC7FFFFFFC8FFFFFFD0FFFFFF11BAE8FFDDDDDDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000926551FFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF815D
      4AFF00000000000000000000000000000000000000000000000000000000B7B7
      B7FFF7F7F7FFF2F2F2FFF1F1F1FFEDEDEDFFEBEBEBFFE3E3E3FFDCDCDCFFDADA
      DAFFDADADAFFD9D4D0FFDC983AFFF3C389FFF2BD7DFFEDB268FFECB065FFEAAD
      60FFE9AC5DFFE7A957FFE6A755FFD78019FFCFC0AFFFCFCFCFFFC3C1C0FFD1D1
      D1FF8A8A8AFF00000000000000000000000000000000107110FF62E590FF8DEB
      ACFF90ECB0FF97EEB5FF98F1B6FF9FF4BAFFA0F4BCFF83F4A9FF54F18AFF5BF6
      91FF5DF995FF57AB57FFFFFDFCFFFFFBF8FFFFFBF8FFB88687FFFFDADAFFB783
      83FFB88585FFB78484FFB78484FFB68383FFB58282FFB48181FFB48181FFB27D
      7DFFB38080FF7D5E5EFF666767FF0000000000000000B5DCEAFF1EB9E1FFA1FF
      FFFFA1FFFFFFA3FFFFFFA4FFFFFFA6FFFFFFA9FFFFFFACFFFFFFAFFFFFFF9BEE
      F4FF84DAE6FF60BBD1FF62BBD2FF65BCD3FF64BBD1FF61B7D0FF72C5D9FFA9F0
      F5FFBEFFFFFFC0FFFFFFC1FFFFFF09B6E3FF859EA6FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000936652FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF825C
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7FFE8E8E8FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE5E5E5FFE2E4
      E7FFE2DDD8FFEBB166FFF7C995FFF2BC7AFFF0B670FFEEB36AFFEDB268FFEBAF
      62FFEAAD5FFFE9AB59FFE7AA58FFD6C2AAFFD5D7D9FFD3D3D3FFD5D5D5FF8585
      85FFE5E5E5FF00000000000000000000000000000000359435FF1E861EFF1E89
      1EFF1E8B1EFF198C19FF198F19FF199119FF047D04FF66F497FF59F58FFF13A9
      1DFF5BB35BFF6C6D6EFFFFF6EDFFFFF5ECFFFFF5ECFFBA8888FFFFDADAFFB984
      84FFBA8787FFB98686FFB98686FFB88585FFB78484FFB68383FFB68383FFB481
      81FFB38080FF826161FF676868FF000000000000000081CCE4FF46CEEAFF9DFF
      FFFF9FFFFFFFA2FFFFFFA3FFFFFFA4FFFFFFA5FFFFFFA8FFFFFFA9FFFFFFADFF
      FFFFAFFFFFFFA8F9FCFF92E5EEFF65BCD3FF60B9D0FF63BBD2FF63BBD1FF60B7
      CFFF66BBD2FFBDFFFFFFC3FFFFFF3FA7C7FFBCBCBCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000946752FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF825C
      4BFF000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBEFFB1B1B1FFBABBBCFFC2C2C3FFD2D3D4FFD9DBDDFFE7D1
      B4FFE8A957FFF7CC9BFFF6C791FFF1B974FFF0B771FFEEB46BFFEDB269FFEBAF
      63FFEAAE60FFE9AB5CFFE09A3FFFDADEE4FFD9D9DAFFD9D9D9FFD6D6D6FFCECE
      CEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037A237FF5AF691FF5EFA96FF5EB8
      5EFFC0C0C0FF6C6C6DFFFFF3E7FFFFF2E6FFFFF2E6FFBE8B8AFFFFDADAFFBA85
      85FFBB8888FFBA8787FFBA8787FFB98686FFB98686FFB78484FFB68383FFB582
      82FFB48181FF856262FF676969FF000000000000000026AFDEFF86F3FAFF9BFF
      FFFF5EC5D8FF5ABFD4FF5ABED3FF79DBE6FF8DEBF2FFA7FFFFFFA7FFFFFFA7FF
      FFFFA7FFFFFFAAFFFFFFABFFFFFFAEFFFFFFAFFFFFFFB6FFFFFFB1FDFEFF80D3
      E1FF81D3E2FFBDFFFFFF88EAF7FFAEAEAEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956853FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF8661
      4FFF000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDFFFAEAAA5FFFFF4E0FFFFF4E1FFF8BE79FFF6BD79FFFCD3
      A7FFFACE9FFFF7BF82FFF4BD7DFFF2BB77FFF1B974FFEFB66EFFEEB36AFFEDB1
      65FFECAF63FFDB8F2BFFE3D3BEFFE6E6E6FFD2D2D2FF939393FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037A637FF16AA22FF68C368FFB6B6
      B6FF9D9D9DFF6B6C6DFFFFEDDBFFFFECDAFFFFECDAFFBF8B8CFFFFDADAFFBC87
      87FFBC8989FFD3A1A1FFC99595FFBA8686FFB78484FFB88585FFB88585FFB784
      84FFB78484FF876565FF6C6E6EFF000000000000000007A2D4FF9CFFFFFF9BFF
      FFFF67CEDEFF59C0D4FF59C1D5FF5ABFD4FF5ABDD4FF65C7DAFF78D8E5FFA0FB
      FBFFA9FFFFFFA9FFFFFFAAFFFFFFABFFFFFFACFFFFFFAEFFFFFFB1FFFFFFB5FF
      FFFFB6FFFFFFBFFFFFFF33C4EAFFCFCFCFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF7151
      44D7000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C6FFCCC6BCFFFFF3E1FFFFF2E0FFFDE2C2FFF8CD9BFFF0B4
      6AFFEFB269FFEFB36BFFEFB46BFFEEB36BFFEEB36AFFEEB369FFEDB368FFEAAD
      5FFFE2A04AFFAC9A83FF979A9DFF999999FFABABABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037A937FF65B965FF00000000B7B7
      B7FFA0A0A0FF6C6D6FFFFFEAD6FFFFE9D5FFFFE9D6FFC28D8DFFFFDADAFFBE8A
      8AFFBC8888FFFFECECFFFFE2E2FFF4CCCCFFE9BBBBFFCF9C9CFFC59191FFB582
      82FFB68383FF896666FF6D6E6EFF000000000000000025B9DFFFA1FFFFFF99FF
      FFFF9AFFFFFF9BFFFFFF9BFFFFFF89EFF5FF77DDE8FF57BDD3FF57BBD3FF59BD
      D3FF5BBED3FF59BAD2FF59B9D1FF75D2E1FF8AE4EDFFAEFFFFFFAEFFFFFFAEFF
      FFFFAEFFFFFF69DDF1FF459EBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA48372FFC8B3A5FFC6AD9AFFC3A283FFC19C77FFB88F64FF7F5A4BEA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000939594FFFFF9ECFFFFF5E6FFFFF4E5FFFFF2E1FFFFF2DFFFFFF1
      DBFFFFF0DAFFFFEFD6FFFFEED5FFFFEDD2FFFFEDD0FFCDC2B2FFB1B3B8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D297FF0000000000000000B9B9
      B9FFA6A6A6FF6E6F71FFFFE4CAFFFFE3C9FFFFE3CAFFC69292FFFFD9DAFFC08B
      8BFFC08C8CFFFFF0F0FFFFE9E9FFFFE5E5FFFFE3E3FFFFDEDEFFFFDBDBFFF7C8
      C8FFBA8686FF8C6969FF6D6E6EFF00000000000000003EC8E5FF9FFFFFFF99FF
      FFFF99FFFFFF99FFFFFF99FFFFFF9AFFFFFF9BFFFFFF9BFFFFFF8DF0F4FF68CC
      DDFF59BDD3FF59BAD2FF59BBD3FF5ABAD2FF59B9D1FF5FBDD3FF73CFDEFFADFF
      FFFFADFFFFFF27BFE6FF6A8E9AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF79574AE318110D290000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAA9A7FFFFFDF0FFFFF6E8FFFFF5E7FFFFF3E3FFFFF2E0FFFFF0
      DCFFFFEFD9FFFFEED4FFFFEDD2FFFFEBCDFFFFEACAFFA8A198FFD7D7D8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BAFFA7A7A7FF6D7073FFFFE1C4FFFFE0C3FFFFE0C3FFC79493FFFFD9D9FFC18C
      8CFFC18D8DFFFFF3F3FFFFEDEDFFFFE8E8FFFFE5E5FFFFDFDFFFFFDBDBFFF1C4
      C4FFB88585FF8D6C6CFF6E6E6EFF000000000000000036C1E2FF76E9F5FFA1FF
      FFFFA0FFFFFF9CFFFFFF9AFFFFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFF99FF
      FFFF99FFFFFF9EFFFFFFA1FFFFFF93F3F7FF80DFEBFF59BCD2FF56B6CFFF96EF
      F5FFABFFFFFF38A0C2FFA5A5A5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA6826DFFF2D7AEFFEECD9BFFC59A68FF7A574AE400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3DFDAFFFFFBF2FFFFF7EDFFFFF6EAFFFFF4E6FFFFF3E3FFFFF1
      DEFFFFF0DBFFFFEED6FFFFEDD4FFFFEBCEFFFFECCEFFA2A3A4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BCFFA9A9A9FF6F7073FFFFDBB8FFFFDAB7FFFFDAB7FFCA9597FFFFD9D9FFC38E
      8EFFC49191FFEEDDDDFFF8E9E9FFFFF3F3FFFFEFEFFFFFE5E5FFFFE1E1FFE8BC
      BCFFB88484FF906F6FFF707070FF000000000000000073CAE7FF41B7E0FF0CA6
      D4FF2FBEE1FF74E9F5FF97FDFEFFA0FFFFFF9EFFFFFF9AFFFFFF99FFFFFF99FF
      FFFF99FFFFFF99FFFFFF9BFFFFFF9EFFFFFFA0FFFFFFA4FFFFFF96F3F8FFA6FF
      FFFFACFFFFFF5B93A4FFBEBEBEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6A55FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58068FFEECE98FFEFC785FF745547DC140D0B2100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEF9F3FFFFFAF4FFFFF8EEFFFFF7ECFFFFF5E7FFFFF4E4FFFFF2
      DFFFFFF1DCFFFFEFD7FFFFEED4FFFFECCFFFFFEFCEFFC4C5C5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BDFFAAAAAAFF6D7072FFFFD8B1FFFFD7B1FFFFD7B1FFCA9798FFFFD9D9FFC48F
      8FFFC59292FFBB8686FFB68181FFBA8888FFC29393FFD4AAAAFFDDB4B4FFD9AC
      ACFFB98686FF926F6FFF707171FF000000000000000000000000000000000000
      0000000000000000000000000000A4DAEEFF70C7E6FF11A1D3FF0BA7D6FF51D2
      EAFF73E8F5FFA1FFFFFFA0FFFFFF9CFFFFFF9AFFFFFF9BFFFFFF9DFFFFFFA0FF
      FFFFA5FFFFFF808384FFDDDDDDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996B54FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA37B5DFFBF9464FF735345D6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5FFC6C4C3FFCBC9C8FFD9D5D0FFE0DBD3FFEDE6DAFFF4ECDEFFFFF6
      E2FFFFF8E3FFFFF5DCFFFFF3D9FFFFF2D4FFFBE8CBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C1
      C1FFB0B0B0FF747675FF988068FFA48B71FFAE9377FFD39FA0FFFFDADAFFC58F
      8FFFC69191FFC59191FFC49090FFC28F8FFFC18E8EFFBF8C8CFFBE8B8BFFBB88
      88FFBA8787FF957373FF747575FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6EDF6FF6FC9
      E6FF3DB6E0FF0CAAD9FF2EBEE2FF73E8F4FF95FDFEFFA0FFFFFF9FFFFFFFA0FF
      FFFF85F0F9FF949494FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976954FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77E5AFF745346D40F0A091A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFFD8D8D8FFD1D1D1FFC3C3C3FFBEBEBEFFAFAFB0FFA6A7A7FF9697
      98FF909191FF9A9895FFA39F9AFFB2ACA2FFAAA49CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C2FFB1B1B1FF939393FF909192FF8D8E90FF8A8C8DFFD7A0A0FFFFD9D9FFEBCD
      CDFFE6C7C7FFD8B4B4FFD1A9A9FFC49393FFC18D8DFFBE8B8BFFBD8A8AFFBA87
      87FFBA8787FF967474FF747575FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1DBEEFF6CC8E7FF0EA3
      D4FF02A4D5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B74
      64FF6B4C42BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4FFBDBDBDFF9E9E9EFF999999FF939393FF8F8F8FFF888A8AFF868989FF8184
      84FF7D8383FF807D7DFF847C7CFF897B7BFF8E7A7AFF947878FF987979FFA079
      79FFA47A7AFF837676FF6B6D6DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3EDF5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B705CFF9B6E5AFF9A6E59FF996D59FF996D59FF996E5AFF986C58FF976D
      59FF976B57FF956A58FF956B56FF936A57FF936855FF916754FF916855FF543C
      3194040302080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B8FFC8C8C8FFCACACAFFCFCFCFFFCCCCCCFFC8C8C8FFC8C8C8FFC1C1C1FFBBBB
      BBFFBCBCBCFFB2B2B2FFB0B1B1FFA7A8A8FFA5A6A6FF9D9F9FFF969898FF9294
      94FF878888FF787878FF797A7AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
  object pb1: TJvProgressDialog
    ShowCancel = False
    Smooth = True
    Text = 'TUNGGU ...'
    Transparent = True
    OnProgress = pb1Progress
    Left = 424
    Top = 16
  end
  object formStorage1: TJvFormStorage
    AppStorage = Form111.Ini1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'editLoket.Value')
    StoredValues = <>
    Left = 492
    Top = 16
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
