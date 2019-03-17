object Form1_bpjsTool: TForm1_bpjsTool
  Left = 0
  Top = 0
  Caption = 'Form1_bpjsTool'
  ClientHeight = 547
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelUtama: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 703
    Height = 487
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panelUtama1: TJvPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 697
      Height = 314
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 697
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object dtp1: TJvDateTimePicker
          Left = 88
          Top = 16
          Width = 113
          Height = 21
          Date = 42733.906996574070000000
          Time = 42733.906996574070000000
          TabOrder = 0
          OnChange = dtp1Change
          DropDownDate = 42733.000000000000000000
        end
        object dbDTtanggal: TJvDBDateEdit
          Left = 399
          Top = 9
          Width = 121
          Height = 21
          DataField = 'tgl'
          DataSource = dataBPJS.dsbpjs
          ShowNullDate = False
          TabOrder = 1
          Visible = False
        end
        object dbeditNomor: TDBEdit
          Left = 526
          Top = 9
          Width = 59
          Height = 21
          DataField = 'nomor'
          DataSource = dataBPJS.dsbpjs
          TabOrder = 2
          Visible = False
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 164
        Width = 697
        Height = 150
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnl2'
        TabOrder = 1
        object pageControl2: TJvPageControl
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 691
          Height = 144
          ActivePage = tsObat
          Align = alClient
          TabOrder = 0
          object tsObat: TTabSheet
            Caption = 'Obat'
            object gridObat: TDBGridEh
              Left = 0
              Top = 41
              Width = 683
              Height = 75
              Align = alClient
              DataSource = dataBPJS.dsObat
              DynProps = <>
              IndicatorOptions = [gioShowRowIndicatorEh]
              TabOrder = 0
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object pnl1: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 41
              Align = alTop
              TabOrder = 1
              object btn1ObatHapus: TButton
                Left = 16
                Top = 7
                Width = 75
                Height = 25
                Caption = 'hapus obat'
                TabOrder = 0
                OnClick = btn1ObatHapusClick
              end
            end
          end
          object tsTindakan: TTabSheet
            Caption = 'Tindakan'
            ImageIndex = 1
            object gridTindakan: TDBGridEh
              Left = 0
              Top = 41
              Width = 683
              Height = 75
              Align = alClient
              DataSource = dataBPJS.dsTindakan
              DynProps = <>
              IndicatorOptions = [gioShowRowIndicatorEh]
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'tgl'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nomor'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'idx'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kd_tindakan_sk'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'no_kunjungan'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kd_tindakan'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'biaya'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'keterangan'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'hasil'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'tgl_tindakan'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nm_tindakan'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object pnl5: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 41
              Align = alTop
              TabOrder = 1
              object btn1TindakanHapus: TButton
                Left = 16
                Top = 7
                Width = 145
                Height = 25
                Caption = 'hapus Tindakan'
                TabOrder = 0
                OnClick = btn1TindakanHapusClick
              end
              object btnTindakanUpdate: TButton
                Left = 167
                Top = 9
                Width = 145
                Height = 25
                Caption = 'update Tindakan'
                TabOrder = 1
                OnClick = btnTindakanUpdateClick
              end
            end
          end
          object tsDiagnostikPlus: TTabSheet
            Caption = 'Penunj. Diagnosa'
            ImageIndex = 2
            object gridMCU: TDBGridEh
              Left = 0
              Top = 41
              Width = 683
              Height = 75
              Align = alClient
              DataSource = dataBPJS.dsMCU
              DynProps = <>
              IndicatorOptions = [gioShowRowIndicatorEh]
              TabOrder = 0
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object pnl6: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 41
              Align = alTop
              TabOrder = 1
              object btn1MCUHapus: TButton
                Left = 16
                Top = 7
                Width = 178
                Height = 25
                Caption = 'hapus penunjang diagnostik'
                TabOrder = 0
                OnClick = btn1MCUHapusClick
              end
              object btnMCUupdate: TButton
                Left = 200
                Top = 9
                Width = 178
                Height = 25
                Caption = 'update penunjang diagnostik'
                TabOrder = 1
                OnClick = btnMCUupdateClick
              end
            end
          end
        end
      end
      object pnl4: TPanel
        Left = 0
        Top = 57
        Width = 697
        Height = 107
        Align = alClient
        TabOrder = 2
        object gridKontrol: TDBGridEh
          Left = 1
          Top = 1
          Width = 695
          Height = 105
          Align = alClient
          DataSource = dataBPJS.dsbpjs
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          SearchPanel.Enabled = True
          SearchPanel.FilterOnTyping = True
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'tgl'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'nomor'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'rawat_inap'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'no_urut'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'no_kunjungan'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'nama_lengkap'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'no_kartu'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_provider_peserta'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_dokter'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_diag1'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'tgl_daftar'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'keluhan'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_sadar'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'sistole'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'diastole'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'berat_badan'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'tinggi_badan'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'resp_rate'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'heart_rate'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'terapi'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'idx'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_provider_rujuk_lanjut'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_status_pulang'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'tgl_pulang'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_diag2'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_diag3'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_poli_rujuk_internal'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_poli_rujuk_lanjut'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_tacc'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'alasan_tacc'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'idxstr'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ts'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_poli'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'kunj_sakit'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'rujuk_balik'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ts_daftar'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ts_kunjungan'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'bpjs_daftar'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'bpjs_kunjungan'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'idx_diag'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'adl_hapus'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'adl_daftar'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'adl_kunjung'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'adl_daftar_update'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'adl_kunjung_update'
              Footers = <>
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object pnlParam: TPanel
      Left = 0
      Top = 320
      Width = 703
      Height = 167
      Align = alBottom
      Caption = 'pnlParam'
      TabOrder = 1
      object pageControl3: TJvPageControl
        Left = 1
        Top = 1
        Width = 701
        Height = 165
        ActivePage = tsResponse
        Align = alClient
        TabOrder = 0
        object tsData: TTabSheet
          Caption = 'tsData'
          object memoData: TMemo
            Left = 0
            Top = 0
            Width = 693
            Height = 137
            Align = alClient
            Lines.Strings = (
              'memoHeader')
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object tsResponse: TTabSheet
          Caption = 'tsResponse'
          ImageIndex = 2
          object memoResponse: TMemo
            Left = 0
            Top = 0
            Width = 693
            Height = 137
            Align = alClient
            Lines.Strings = (
              'memoHeader')
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object tsKeterangan: TTabSheet
          Caption = 'Keterangan'
          ImageIndex = 2
          object memoKeterangan: TJvMemo
            Left = 0
            Top = 0
            Width = 693
            Height = 137
            Align = alClient
            Lines.Strings = (
              'DATA PASIEN'
              'no_urut lebih besar 0   ==>  Pasien sudah didaftarkan di pcare'
              'no_kunjungan sudah ada    ==>  Pelayanan sudah dikirim ke PCARE'
              ''
              
                'Obat dengan kd_obat_sk   lebih besar  0  ==> Data sudah dikirim ' +
                'ke PCARE'
              
                'Tindakan dengan kd_tindakan_sk lebih besar 0     ==>     Data su' +
                'dah dikirim ke PCARE'
              
                'Penunjang Diagnostik dengan kd_mcu lebih besar 0     ==>     Dat' +
                'a sudah dikirim ke PCARE'
              ''
              
                'UNTUK MENGIRIM DATA KE SERVER PCARE, CUKUP TEKAN TOMBOL PROSES B' +
                'PJS'
              
                'JIKA TERJADI PERUBAHAN DATA CUKUP TEKAN TOMBOL HAPUS, KEMUDIAN T' +
                'EKAN TOMBOL PROSES BPJS     ')
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
  end
  object JvPanel2: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 703
    Height = 48
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object JvBevel1: TJvBevel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 70
      Height = 38
      Align = alLeft
      Shape = bsSpacer
      Edges = []
      Inner = bvSpace
      Outer = bvSpace
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 732
    end
    object btnProsesBPJS: TJvTransparentButton
      AlignWithMargins = True
      Left = 79
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actNew
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 0
      Images.GrayIndex = 0
      Images.DisabledIndex = 0
      Images.DownIndex = 0
      Images.HotIndex = 0
      ExplicitHeight = 32
    end
    object JvTransparentButton1: TJvTransparentButton
      AlignWithMargins = True
      Left = 664
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actClose
      Align = alRight
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 3
      ExplicitLeft = 855
      ExplicitTop = 10
      ExplicitHeight = 28
    end
    object btnPrint: TJvTransparentButton
      AlignWithMargins = True
      Left = 269
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actPrint
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Visible = False
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
      Left = 155
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actDel
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
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
    object btnEditBpjs: TJvTransparentButton
      AlignWithMargins = True
      Left = 117
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actProsesAll
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 7
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
      Left = 231
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actRefresh
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
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
    object btnUpdate: TJvTransparentButton
      AlignWithMargins = True
      Left = 193
      Top = 3
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Action = actUpdate
      Align = alLeft
      AutoGray = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
      FrameStyle = fsLight
      ParentShowHint = False
      ShowHint = True
      Images.ActiveImage = images1
      Images.ActiveIndex = 4
      Images.GrayIndex = 2
      Images.DisabledIndex = 2
      Images.DownIndex = 2
      Images.HotIndex = 2
      ExplicitLeft = 250
      ExplicitTop = -2
      ExplicitHeight = 28
    end
    object btn2: TButton
      Left = 312
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btn2'
      TabOrder = 0
      Visible = False
      OnClick = btn2Click
    end
  end
  object JvFormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredValues = <>
    Left = 16
    Top = 16
  end
  object JvTimer1: TJvTimer
    Enabled = False
    Left = 48
    Top = 16
  end
  object uniQ1: TUniQuery
    Connection = dataBPJS.conn1
    Left = 464
    Top = 296
  end
  object actlst1: TActionList
    Images = images1
    Left = 16
    Top = 16
    object actCariPasien: TAction
      Caption = '....'
      ShortCut = 16464
    end
    object actNew: TAction
      Hint = 'Proses BPJS'
      ImageIndex = 0
      OnExecute = actNewExecute
    end
    object actPrint: TAction
      Caption = 'actPrint'
      Hint = 'Cetak'
      ImageIndex = 2
    end
    object actClose: TAction
      Hint = 'Close'
      ImageIndex = 3
      OnExecute = actCloseExecute
    end
    object actLab: TAction
      Caption = 'actLab'
      Hint = 'Lab Test'
      ImageIndex = 5
    end
    object actDel: TAction
      Hint = 'Hapus Data Pada PCARE'
      ImageIndex = 6
      OnExecute = actDelExecute
    end
    object actProsesAll: TAction
      Hint = 'Proses Semua Data'
      ImageIndex = 7
      OnExecute = actProsesAllExecute
    end
    object actRefresh: TAction
      Hint = 'Refresh'
      ImageIndex = 8
      OnExecute = actRefreshExecute
    end
    object actUpdate: TAction
      Hint = 'Update Pelayanan'
      ImageIndex = 4
      OnExecute = actUpdateExecute
    end
  end
  object images1: TImageList
    Height = 32
    Width = 32
    Left = 356
    Top = 16
    Bitmap = {
      494C010109009000180120002000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
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
      0000855C4BFF835B4AFF835A4AFF835A4AFF835A4AFF825A4AFF825A4AFF825B
      4AFF825949FF825949FF815949FF815949FF815A49FF805848FF805848FF7A57
      48FF7A5747FF795847FF795647FF785746FF775545FF765645FF765646FF7656
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
      0000805746FFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7151
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805544FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7152
      42FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000815745FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7351
      42FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000825746FFF7F1E8FFF7F0E8FFF7F0E8FFF7F1E8FFF7F1E8FFF7F1E8FFF7F0
      E8FFF7F0E8FFF6ECE2FFE1B794FFC76218FFC86012FFCB8958FFEACEB8FFF5EE
      E3FFF5EDE2FFF5ECE1FFF4ECE0FFF4EBDFFFF4EBDEFFEDDFD0FFE6D1BEFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000835946FFF8F2E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1E9FFF7F1
      E9FFF7F1E9FFC06A21FFDA771EFFFFA236FFFFA02FFFF1891CFFC25708FFF3E7
      DBFFF5EEE4FFF5EDE2FFF5EDE1FFF4ECE0FFF4EBDFFFEFE1D2FFE6D1BFFF7552
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855A47FFF8F3ECFFF8F3EBFFF8F3ECFFF6EBDFFFF1D8BFFFF8F3ECFFEDCD
      ADFFCA6B11FFFFAB4CFFFFA648FFFFA53FFFE0801FFFC46116FFBB5B0CFFDF6F
      0DFFC47546FFF6EEE4FFF5EEE3FFF5EDE2FFF5ECE1FFEEE2D2FFE7D2C0FF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875946FFF9F4EDFFF8F3EDFFF9F4EDFFD68C39FFCB7215FFF0DBC2FFC970
      16FFFFB361FFFFAB51FFFFAB4EFFC26410FFDDAC82FFF7F1E9FFF6EEE6FFC573
      3EFFA94000FFF6EFE5FFF6EEE4FFF5EDE3FFF5EDE2FFF0E1D3FFE7D3C1FF7655
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000865B48FFFAF5F1FFF9F5EFFFF9F5F0FFDA9241FFFFCB96FFE9A657FFFFC8
      8FFFFFC182FFFFB866FFCB6F11FFF9F4EDFFF8F3EDFFF8F3ECFFF8F2EBFFF7F1
      E9FFF7F1E9FFF7F0E7FFF6EFE6FFF6EEE5FFF5EEE4FFEFE2D4FFE8D3C2FF7754
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000875A47FFFAF6F1FFFAF6F0FFFAF6F1FFE4AA67FFFFCE9CFFFFCF9CFFFFC8
      90FFFFC58AFFE29137FFE5BB8DFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3ECFFF8F2
      EAFFF7F1EAFFF7F0E8FFF7F0E7FFF6EFE5FFF6EEE4FFEFE4D5FFE8D4C3FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000895B48FFFBF8F3FFFCF7F3FFFBF7F3FFF2D8B8FFFFDEBDFFFFD4A9FFFFCD
      9DFFFFCC97FFCC832FFFE5C096FFFAF6F1FFFAF5F0FFF9F5EFFFF9F4EEFFF8F3
      ECFFF8F3ECFFF8F2EAFFF7F1E9FFF7F0E7FFF6EFE6FFF0E3D8FFE9D4C4FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5C4AFFFBF8F4FFFBF8F4FFFBF8F5FFFAEEE0FFFFEAD4FFFFD7AEFFFFCE
      9EFFFFCB96FFFAB971FFE8993FFFF6E8D9FFFAF6F1FFF8F3EEFFF3E6D9FFE1B9
      9FFFD6A182FFC16E46FFC1714AFFF7F0E8FFF7F0E7FFF0E5D7FFE9D5C5FF7955
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5D4BFFFCFAF7FFFCF9F6FFFCFAF7FFFCFAF7FFFACE9DFFFFE4C8FFF3BD
      80FFEBAB5AFFDB8C28FFD37A16FFFAF2EBFFE9D1BCFFFFD39AFFFFCD94FFFFD4
      A5FFFFD7ACFFFFD6ADFFFFDEB3FFF5EEE5FFF7F1E8FFF2E4DAFFE9D5C6FF7A57
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C5F4AFFFCFBF8FFFCFAF8FFFCFBF8FFFCFBF9FFEAAB4DFFEAA743FFEEC0
      82FFF0CC9FFFF7E9D9FFFCF6F1FFFBF8F5FFF7ECE2FFE29D55FFF8C089FFFFCE
      9DFFFFD2A4FFFFD5AAFFFFDBADFFEED9CAFFF7F1E9FFF1E4D9FFE9D6C7FF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F5F4BFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFAFFFDFBF9FFFCFBF9FFFCFAF7FFFCF9F6FFFBF8F4FFC97634FFFFC8
      91FFFFCB94FFFFCB99FFFFCD9BFFD39F81FFF8F2EAFFF1E5DAFFEAD6C8FF8058
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
      00008F614BFFFEFDFBFFFDFCFBFFFEFDFCFFFEFDFCFFFEFDFDFFFEFDFDFFFEFD
      FCFFFDFCFCFFFDFCFAFFFDFBFAFFFCFAF8FFFCFAF7FFEAC3A0FFD78432FFFFC3
      88FFFFC68DFFFFCA92FFFFC88FFFC78358FFF8F2EBFFF1E5DCFFEAD6C8FF8057
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
      000091624CFFFEFEFEFFFEFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFBE
      79FFFDFDFDFFFEFDFCFFFDFCFCFFFDFBFAFFF9ECDEFFF7A347FFFFAE56FFFFB9
      6DFFF9B367FFB8632DFFF7BB80FFC15E1DFFF8F3ECFFF2E6DDFFEAD7C9FF8157
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
      000092614DFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD072
      00FFE29D40FFFDFDFBFFFEFDFCFFEAC399FFC96F13FFFFAB4DFFFFAB4EFFFFB4
      5CFFC06215FFF0DDCDFFBB5A13FFC2662BFFF8F3ECFFF2E6DCFFEAD7C9FF8159
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
      000093624EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
      F6FFDA993BFFFF9A29FFFF9A29FFFF9D30FFFF9E34FFFFA746FFFFAF56FFE8BD
      99FFFBF8F4FFFAF6F1FFFAF5F0FFF9F4EEFFF8F3EDFFF2E6DCFFEAD7C9FF8258
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094634EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFAF7FFDB7A0AFFF7982EFFFFAE50FFFFB157FFE49136FFC86D1AFFFBF9
      F5FFFBF8F4FFFAF6F2FFFAF6F0FFF9F4EEFFF9F3EDFFF3E8DEFFEAD7CAFF8258
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
      000095644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFFCF9
      F6FFFBF8F4FFFBF7F3FFFAF6F2FFF6F1EBFFF9F5EEFFF3ECE4FFE9D9CEFF865D
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
      000096664FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF9173
      68F4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA4836EFFC8B3A5FFC6AD9AFFC3A283FFC19C73FFB88F60FF8F675CFB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986652FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF8F6C60F93939393A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA68269FFF2D7AEFFEECD9BFFC59A64FF8F6C60F900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6651FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58064FFEECE98FFEFC785FF8F7064F72F2F2F3000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996750FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA37759FFBF9460FF927268F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976550FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77A56FF95756CF527272728000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986651FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B70
      60FF9C8379EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6C58FF9B6A56FF9A6A55FF996955FF996955FF996A56FF986854FF9769
      55FF976753FF956654FF956752FF936653FF936451FF916350FF916451FFA59A
      94D5141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000085604FFF835F4EFF835E4EFF835E4EFF835E4EFF825E4EFF825E4EFF825F
      4EFF825D4DFF825D4DFF815D4DFF815D4DFF815E4DFF805C4CFF805C4CFF7E5B
      4CFF7E5B4BFF7D5C4BFF7D5A4BFF7C5B4AFF7B5949FF7A5A49FF7A5A4AFF7A5A
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006767696B87879FB182828D953434343500000000000000000000
      000000000000006D00FF006D00FF006B00FF006A00FF006800FF006700FF0000
      000000000000000000000000000000000000000000008889A0A80117C9FF0011
      BBFF5156BAE4000000000000000000000000000000007F7F878D0007A7FE8787
      A0AD727276790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A14D17E5A2470EEFA2470EEFA0460EEF9F450EEF9F43
      0EEF9D4614E9984517E5984617E5984317E50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805B4AFFEBCEB9FFEACDB9FFEACDB9FFEACDB9FFEACDBAFFEACDBAFFEACD
      B9FFEACDB9FFEACEB9FFEBCEB9FFE9CDB8FFE9CDB8FFEACDB7FFEACDB7FFEACC
      B6FFE9CCB6FFE9CBB4FFE9CBB4FFE8CBB3FFE8CAB3FFE8CAB1FFE7C9B1FF7555
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1F1F200013C8FF001EDFFF0013CBFF080EACFC00000000000000000000
      000000000000006F00FF3AD86DFF20BE3EFF20BE3EFF1EBC3DFF006900FF0000
      000000000000000000000000000000000000000000000415BFFD1D55FFFF1135
      B8FF0723B6FF4848B5FFB6A29FFF845B4BFFB5A097FF0008AEFF0938F2FF0012
      AFFF0005AAFFB4A09AFF825B4BFF815949FF815A49FF805848FF805848FF7A57
      48FF7A5747FF795847FF795647FF785746FF775545FF765645FF765646FF7656
      47FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AE4800FFC6620BFFC46008FFC15D05FFBD5804FFB553
      00FFB25100FFB15000FFB24F00FFA23A00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000805948FFECDACBFFECDACCFFECDBCCFFECDBCCFFECDBCCFFECDBCCFFECDA
      CCFFECDACCFFECDACBFFEBDACBFFEBDACAFFEBD9CAFFEBD9C9FFEBD9C9FFEAD8
      C8FFEAD8C7FFEAD7C6FFEAD7C6FFE9D6C4FFE9D6C4FFE8D6C3FFE6D0BCFF7556
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005050
      50510023DDFE0037FFFF0035FFFF0028F4FF0023E8FF7171ADD1000000000000
      000000000000007200FF75EA98FF3CDA6FFF3BD96EFF20BE3FFF006C00FF0000
      000000000000000000000000000000000000000000001826C1F81949E8FF2156
      FFFF2156FFFF1134B0FF0216B6FF585BC7FF000CB7FF144AFFFF1149FFFF0E45
      FFFF0837E6FF0105A4FFD5CDDEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FFEEDAC7FFEEDAC6FFEED8C3FFEED8C1FFEDD7BEFFEDD6BCFF7250
      41FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B44C00FFE2A15FFFDC9145FFD17010FFD16E0EFFCF6B
      09FFCE6A07FFD06803FFAF5800FFA54000FE0000000000000000000000000000
      000000000000007200FF3DD870FF23BE41FF23BE41FF21BC40FF006C00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000815B49FFF3E9DDFFF2E8DEFFF2E8DEFFF2E8DDFFF2E8DDFFF2E8DDFFF2E8
      DEFFF2E8DEFFF2E8DCFFF2E8DDFFF2E7DCFFF2E7DCFFF1E8DBFFF1E6DBFFF1E7
      DAFFF2E5D9FFF0E6D8FFF0E4D7FFEFE3D6FFEFE3D5FFEDDECDFFE7D0BCFF7755
      46FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008182
      8E91033BF8FF0B4FFFFF094CFFFF0033FFFF0028F4FF040BABFD121212130000
      000000000000007400FF76EB9AFF3EDC71FF3DDB70FF21BF3FFF006D00FF0000
      000000000000000000000000000000000000000000008589ACB71540E5FF2459
      FFFF2358FFFF1E50F9FF1336B2FF000DBBFF1749FCFF174DFFFF144AFFFF0F47
      FFFF0E45FFFF000AB2FF9694D2FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FFFAF0E1FFFAEFE1FFF9EEDEFFF9EDDBFFF8ECD9FFF2E0CAFF7152
      42FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B64E00FFE2A261FFDE974DFFD37214FFD27112FFD06E
      0DFFD06C0BFFD06A07FFB05904FFA84201FD0000000000000000000000000000
      000000000000007300FF77E997FF3DD870FF3CD76FFF22BD41FF006D00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000825B4AFFF7F1E8FFF7F0E8FFF7F0E8FFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFD3B4A6FFD3B3A3FFD8B8A5FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFF4EBDEFFEDDFD0FFE6D1BEFF7856
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7F
      878A0C4EFCFF2382FFFF1F74FFFF0B4DFFFF0037FFFF007A00FF007A00FF0079
      00FF007900FF007800FF78ED9BFF41DF74FF40DE73FF23C142FF007000FF006D
      00FF006C00FF006900FF006700FF000000000000000087899EA40119C8FE3A83
      FFFF2E66FFFF265BFFFF255AFFFF1F53FCFF2055FFFF1A52FFFF184FFFFF1142
      F9FF000AB4FFD9CCD3FFDFC6B9FFDABCACFFDABAABFFDAB9A8FFDAB9A6FFDAB7
      A3FFDAB7A2FFDAB69FFFD9B49DFFDEBCA5FFFAF0E1FFF9EFDEFFF2E1CDFF7453
      42FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BB5400FFE3A667FFDF9A52FFD5771BFFD47619FFD373
      15FFD27113FFD36F0EFFB25D0AFFAC4801FD0000000000000000000000000000
      000000000000007700FF79EB9AFF41DC74FF40DB73FF24BF42FF007000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000835D4AFFF8F2E9FFF7F1E9FFF7F1E9FFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFD9BBACFFBFA496FFC2A697FFCBAC9BFFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFF4EBDFFFEFE1D2FFE6D1BFFF7956
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101023636
      38FB002BFCFF2B98FFFF2083FFFF0B52FFFF003CFFFF008100FF48E680FF29C7
      48FF29C747FF28C647FF45E378FF43E176FF42E075FF24C242FF23C142FF21BF
      3FFF20BE3FFF1EBC3DFF006800FF000000000000000000000101575758590C2D
      D7FF3980FDFF2A5FFFFF275CFFFF2358FFFF2156FFFF1C53FFFF1B50FFFF0007
      B0FF6462C6FFDCC1B4FFDABDAFFFDABCADFFDABCABFFDABAAAFFDAB9A7FFDAB8
      A4FFDAB7A3FFDAB6A0FFDAB59EFFDEBDA6FFFAF1E3FFF9F0E0FFF2E2CFFF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BC5400FFE4A86AFFE09C55FFD67A1FFFD5781DFFD475
      18FFD37416FFD47212FFB25F0DFFAF4A01FD0000000000000000000000000000
      000000000000007900FF7AEC9BFF43DE76FF41DC74FF25C044FF007200FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000855E4BFFF8F3ECFFF8F3EBFFF8F3ECFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFB9A094FF998478FFA28B80FFB79D8FFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFF5ECE1FFEEE2D2FFE7D2C0FF7A57
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000727272DF3F3F3FFFAFAE
      ACFF9C9A94CD8087AFDFCFCCC5FF3C437DF58586969B008500FF82F2A1FF4CEA
      84FF4CEA84FF4AE882FF49E781FF46E479FF44E277FF42E075FF40DE73FF3DDB
      70FF3BD96EFF20BE3EFF006A00FF000000000000000000000000000000000000
      00006463BAFF336CFBFF2E64FFFF285DFFFF255AFFFF1841D2FF0012B7FFEBDE
      D7FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFFDABBACFFDABBAAFFDAB9
      A7FFDAB8A6FFDAB6A2FFDAB6A1FFDFBEA9FFFBF3E6FFFAF2E6FFF3E4D3FF7554
      43FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C15900FFE7AD73FFE2A25EFFD98126FFD87D24FFD67A
      20FFD6791EFFD67719FFB46313FFB34F01FD00000000008100FF4BE680FF2CC7
      4BFF2CC74AFF2BC64AFF48E37BFF46E179FF45E078FF27C245FF26C145FF24BF
      42FF23BE42FF21BC40FF006B00FF000000000000000000000000000000000000
      0000875D4AFFF9F4EDFFF8F3EDFFF9F4EDFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FF746A66FF5F5551FF9C867AFFD3B5A5FFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFF5EDE2FFF0E1D3FFE7D3C1FF7A59
      47FF000000000000000000000000000000000000000000000000000000000000
      000000000000363636373F3F3F40000000006767676A636363FFBBBBBBFF8282
      828B06060607908F8E99C4C4C3FF8383828E00000000008700FF84F4A3FF4FED
      87FF4EEC86FF4CEA84FF4AE882FF48E680FF46E479FF43E176FF41DF74FF3EDC
      71FF3CDA6FFF20BE3EFF006B00FF000000000000000000000000000000000000
      00004F53C0FF3771FFFF2F63FFFF2A5FFFFF275DFFFF1D4DECFF1030AEFF9692
      D4FFE3D0C8FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FFDBBCADFFDBBCABFFDABA
      A8FFDAB9A6FFDAB7A3FFDAB6A1FFDFBEA9FFFBF3E7FFFAF3E6FFF3E5D5FF7653
      44FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C35B00FFE8B076FFE5A360FFDA832AFFD98228FFD87D
      24FFD77B21FFD87B1DFFB56516FFB65101FD00000000008300FF81F1A0FF4DE8
      82FF4CE781FF4BE680FF4AE57DFF47E27AFF46E179FF43DE76FF42DD75FF3FDA
      72FF3DD870FF21BC40FF006D00FF000000000000000000000000000000000000
      0000865F4CFFFAF5F1FFF9F5EFFFF9F5F0FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FF918987FF6B8B9DFF5F6772FF336A47FF3589
      33FF6E9D59FFDAB8A5FFDAB7A3FFDFBFABFFF5EEE4FFEFE2D4FFE8D3C2FF7B58
      47FF000000000000000000000000000000000000000000000000000000002D2D
      2D2E2230C0F50029F8FF0024E9FF585851FFB6B6B5FF969696AE121212130000
      0000000000009D9D9DAEB9B9B9FF7878787F00000000008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4AE882FF49E781FF45E378FF78ED9BFF76EB
      9AFF75EA98FF3AD86DFF006D00FF000000000000000000000000000000006C6C
      70710828D8FF366AFFFF3368FFFF214DF2FF306EF6FF265BFFFF2357FFFF041C
      B9FF333AC1FFDBC3B9FFDBC1B7FFDBBFB4FFDBBEB2FFDBBDAEFFDBBCADFFDBBB
      ABFFDBBAA8FFDAB8A5FFDAB7A3FFDFBFABFFFBF4E8FFFCF4E8FFF5E6D7FF7754
      43FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C75F00FFEAB580FFE7A868FFDC8832FFDC8730FFDA84
      2BFFD98329FFDA8226FFB6691DFFBA5401FD00000000008700FF84F4A3FF52ED
      87FF51EC86FF4FEA84FF4DE882FF4BE680FF49E47CFF46E179FF44DF77FF41DC
      74FF3FDA72FF23BE41FF006E00FF000000000000000000000000000000000000
      0000875E4BFFFAF6F1FFFAF6F0FFFAF6F1FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFBAB1B0FF6C8FA4FF24933DFF139629FF229D
      36FF0D7E19FFDAB8A6FFDAB8A4FFDFBFACFFF6EEE4FFEFE4D5FFE8D4C3FF7B58
      49FF000000000000000000000000000000000000000000000000000000008789
      A0A60031F9FF0038FFFF0B30C2FFC1C0B7FF71706CFF00000000000000000000
      000000000000A4A4A4BAB5B5B5FF7272727700000000008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF4CEA84FF4AE882FF28C647FF007800FF0074
      00FF007200FF006F00FF006D00FF000000000000000000000000000000006D78
      C0D42A57F1FF386CFFFF3567FFFF0012C6FF0010C4FF306EFFFF255AFFFF1234
      B0FF000FBBFFE5D4CEFFDBC2B8FFDBC0B5FFDBC0B3FFDBBDB0FFDBBDAEFFDBBB
      ABFFDBBBA9FFDAB8A6FFDAB8A4FFDFBFACFFFBF4E9FFFBF4E8FFF4E6D8FF7754
      45FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CB6100FFEBB784FFE7AC6CFFDE8B35FFDD8933FFDB86
      2FFFDB852DFFDB8328FFB56B20FFBE5601FD00000000008900FF85F5A4FF54EF
      89FF53EE88FF51EC86FF4FEA84FF4CE781FF4AE57DFF47E27AFF45E078FF42DD
      75FF40DB73FF23BE42FF006F00FF000000000000000000000000000000000000
      0000895F4CFFFBF8F3FFFCF7F3FFFBF7F3FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDAC1B8FF65B098FF64FD97FF5CF08AFF47D0
      69FF36BA53FF097813FF91A56FFFDFC0ACFFF6EFE6FFF0E3D8FFE9D4C4FF7C59
      48FF000000000000000000000000000000000000000000000000000000007380
      CBD0196BFFFF1B6DFFFF1059FFFF002AFFFF0004C2FF8C8C8BA5464646470000
      000000000000AEAEAED0A9A9A9FF656565680000000000000000000000000000
      000000000000008B00FF86F6A4FF4EEC86FF4CEA84FF29C747FF007900FF0442
      FFFF0027F2FF0000000000000000000000000000000000000000000000001840
      E9FF4B86FFFF3A6BFEFF2249E8FFE6E6F6FFE9DDD9FF0015C7FF3071FBFF2155
      FFFF153CC9FF2C33C0FFE5D9D9FFDBC2B7FFDBC1B5FFDBBEB1FFDBBEB0FFDBBB
      ACFFDBBBABFFDBB9A7FFDBB9A5FFDFC0ACFFFBF5EAFFFBF5EBFFF4E7D9FF7855
      44FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE6500FFEDBC8BFFE9AF73FFE0903DFFDF8E3BFFDE8C
      36FFDD8A34FFDE8831FFB86E26FFC35C00FE00000000008D00FF008D00FF008B
      00FF008B00FF008800FF84F4A3FF4FEA84FF4DE882FF2BC64AFF007B00FF0077
      00FF007500FF007200FF007000FF000000000000000000000000000000000000
      00008B604EFFFBF8F4FFFBF8F4FFFBF8F5FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FF5DC07CFF64FE97FF62FB95FF52E1
      7AFF45CD66FF229C35FF0D7813FFDFC0ADFFF7F0E7FFF0E5D7FFE9D5C5FF7D59
      48FF00000000000000000000000000000000000000000000000000000000787A
      8282145DFAFF2387FFFF1666FFFF002EFFFF0509A5FF585857FF3B3B3BFF8080
      808B2D2D2D2EB1B1B1DBA5A5A5FF5E5E5E600000000000000000000000000000
      000014141415008B00FF86F7A5FF4FED87FF4CEA84FF29C748FF007900FF003B
      FFFF2F39BEF10000000000000000000000000000000000000000000000003367
      F3FF579CFFFF3765F7FF001BD2FFFDFBF8FFDBC8C3FF5C64D6FF021BCCFF2660
      FFFF1D50FDFF0014C0FF7879CAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFFDBB9A8FFDBB9A5FFDFC0ADFFFBF5EBFFFBF5EAFFF4E7D9FF7955
      44FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D06700FFEEBE8FFFEAB377FFE19241FFE1913FFFDF8E
      3AFFDE8D38FFDF8C35FFB77129FFC75E00FF0000000000000000000000000000
      000000000000008900FF85F5A4FF50EB85FF4EE983FF2CC74AFF007B00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B614FFFFCFAF7FFFCF9F6FFFCFAF7FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFBAC4A6FF50EA7DFF5DF78DFF60F7
      91FF58EB85FF3FC55EFF31B049FF1C7C1DFFD9E3CDFFF2E4DAFFE9D5C6FF7E5B
      49FF000000000000000000000000000000000000000000000000000000000000
      00000D0D0E0E78736BFF34301EFF34343435000000000E0E0E0F5C5C5C5E7C7C
      7CFA787878FF9F9F9FFF999999FF56588CE70013DCFF001DE9FF131663FE4B4B
      4AFFA2A2A2FF008D00FF86F7A5FF84F4A3FF82F2A1FF48E680FF007A00FF6D6D
      6D71000000000000000000000000000000000000000000000000000000004545
      4646283ED6FF0020DEFFC5CCF8FFFDFBF8FFDBC7C2FFDCC9C5FFE1D7DEFF031E
      CFFF000FC2FF9190D7FFE1D3D5FFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFFDBB9A8FFDBB8A6FFE0C0AEFFFCF6ECFFFBF6EBFFF4E8DAFF7A57
      45FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D46C00FFF0C295FFECB680FFE49748FFE39646FFE293
      42FFE1923FFFE1913CFFB9732FFFCC6300FF0000000000000000000000000000
      000000000000008B00FF86F7A5FF52ED87FF4FEA84FF2CC74BFF007C00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C634EFFFCFBF8FFFCFAF8FFFCFBF8FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FF2EC059FF57F085FF63FE
      97FF5FF58FFF4DD972FF3DC25BFF168C25FF2E8932FFF1E4D9FFE9D6C7FF7E5A
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6AFF353532FE000000000000000000000000000000001616
      16176969696CA4A4A4FE939393FF3C3620FF0A37D6FF082AB8FF4C4832FF9A9A
      95FF8C8C8CDC008D00FF008B00FF008700FF008500FF008100FF007A00FF7A7A
      7A81000000000000000000000000000000000000000000000000000000000000
      0000BAA397FF95A4F5FFFEFCFAFFFEFCF9FFDCC7C2FFDCC8C3FFDECBC7FF4C55
      CDFFB2AFDAFFE2D0CAFFDCC4BCFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFFDBB9A8FFDBB8A6FFE0C0AFFFFCF6EDFFFBF6EDFFF4E8DBFF7A56
      45FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D86E00FFF1C499FFEDB883FFE59A4BFFE49849FFE396
      45FFE29443FFE49340FFB97532FFCE6500FF0000000000000000000000000000
      000000000000008D00FF86F7A5FF52ED87FF4FEA84FF2CC74BFF007D00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F634FFFFDFCFAFFFDFCFAFFFDFCFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFD8BEB2FF5DC072FF5BF6
      89FF60FA92FF5DF28CFF55E57EFF38BB54FF2AA63FFF50994FFFE7D5C6FF805C
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000000000005E5E5EFF767676DF000000000000000000000000000000000000
      000000000000ADADADFF888888FF1552DBFF1F80FFFF0C52FFFF0036FFFF4B4B
      4B4C00000000000000000000000000000000000000001F1F1F20B2B2B2FF8C8C
      8C9F000000000000000000000000000000000000000000000000000000000000
      00008F5F4BFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFDBBAA9FFDBB9A6FFE0C1AEFFFCF6EEFFFDF7EEFFF4E8DCFF8058
      47FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB7200FFF3C9A0FFEFBD8AFFE79F53FFE79D51FFE59A
      4CFFE4994AFFE59847FFBA7938FFD26900FF0000000000000000000000000000
      000000000000008D00FF008B00FF008700FF008500FF008100FF007D00FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F654FFFFEFDFBFFFDFCFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFD0C0ADFF46DD
      71FF5CF68BFF62FC95FF5CF08AFF46CF68FF36B851FF0D7E19FF65A25AFF805B
      4AFF000000000000000000000000000000000000000000000000000000000000
      000008080809585858FF8C8C8CC5000000000000000000000000000000000000
      000000000000B1B1B1FF828282FF0D39D8FD2A98FFFF125BFFFF003BFFFF0909
      090A000000000000000000000000000000000000000012121213ABABABFE9090
      90AF000000000000000000000000000000000000000000000000000000000000
      00008F614BFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF8057
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DF7500FFF3CBA3FFF0BF8EFFE9A157FFE8A054FFE69D
      50FFE69B4EFFE69B4BFFBB7B3BFFD66C00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000916650FFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFC0F0
      CAFF2FC55DFF5DF78CFF62FC96FF59EC86FF50DE77FF2FB54AFF2D8F3BFF7264
      52FF000000000000000000000000000000000000000000000000000000000000
      00003C3C3C3D4C4C4CFF84848490000000000000000000000000000000000000
      000000000000B9B9B7FF747470FF232323246E6D6D71707068E7060606070000
      0000000000000000000000000000000000000000000003030304ACACACF48989
      89CE000000000000000000000000000000000000000000000000000000000000
      000091624CFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF8157
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E37900FFF5CFAAFFF2C395FFEBA65EFFEAA55CFFE9A2
      58FFE8A055FFEA9F52FFBD8041FFD97000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000926551FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FF9BE3B1FF58F285FF5EF88EFF60F690FF57EB84FF60916AFF716A70FF6765
      65FF1C1C1C410000000000000000000000000000000000000000000000000000
      000056565658464646FF71717176000000000000000000000000000000000000
      0000000000009F9EB0FF545373FF1B1B1B1C737373777A7A77E1000000000000
      0000000000000000000000000000000000000000000000000000AFAFAFEB7A7A
      7ADD000000000000000000000000000000000000000000000000000000000000
      000092614DFFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF8159
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E67C00FFF6D1ADFFF3C798FFECA962FFECA760FFEAA4
      5BFFE9A359FFEBA256FFBD8244FFDD7300FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000936652FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FF4EC36CFF43DB6FFF69EB93FF959596FFE3E3E3FFC5C4C4FF8385
      94FF363E9BFF0000040700000000000000000000000000000000000000000000
      00008787878F3F3F3FFF40404041000000000000000000000000000000008788
      9AA40016C8FE0022E8FF0020E3FF0014D0FF0000A1FF82827FDA000000000000
      0000000000000000000000000000000000000000000000000000ADADADD24646
      46F8010101020000000000000000000000000000000000000000000000000000
      000093624EFFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF8258
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EA8200FFF8D5B3FFF6CBA0FFEFAE69FFEEAC67FFEDA9
      63FFECA861FFEEA75DFFBD854AFFE27800FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000946752FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFC6BFA1FF38C461FFA7A6A7FFE3E0E2FFF1F1EFFFE3E2DCFF1B32
      CBFF192CC2FF0103679E00000000000000000000000000000000000000000000
      00009A9A9AAA3C3C3CFF26262627000000000000000000000000000000000017
      D2FF002BFBFF0028F5FF0026F0FF001EE1FF0016D7FF878786D4000000000000
      0000000000000000000000000000000000000000000000000000A8A8A8C53636
      36FD0C0C0C0D0000000000000000000000000000000000000000000000000000
      000094634EFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF8258
      47FF0000000000000000000000000000000000000000C6862CC6C6862CC6C683
      2CC6C6842CC6C58025D1ED8400FFF9D7B5FFF5C595FFF0B06DFFF0AF6BFFEEAC
      67FFEDAA64FFEFA961FFBF874DFFE57900FFC47821D7C57D26D0C57B26D0C37B
      26D0BD7829CA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000956853FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFBEBDBDFFE2E2E1FF5D7AEDFF375EEEFF385B
      E7FF263FCFFF050AA2FF000089E4000000000000000000000000000000000000
      0000ABABABE1626262EF01010102000000000000000000000000141414150648
      FFFF0A4DFFFF0849FFFF0440FFFF002AF7FF0024EBFF7575A4D1020202030000
      00000000000000000000000000000000000000000000000000009A9A9AAB3333
      2AFF2929292A0000000000000000000000000000000000000000000000000000
      000095644FFFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF865D
      4BFF000000000000000000000000000000000000000008070708AE7D35B2F8BB
      79FFFACA9EFFF8C897FFF7C593FFF5B97BFFF4B879FFF3B575FFF2B473FFF1B1
      6EFFF0AF6CFFF0AE69FFC08A51FFCF9457FFD7995AFFE8A45FFFE99E4BFF9E70
      38AA060505060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000966A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFDFBF9FFFCFAF8FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFCFCCCAFFCBC9C3FF355CECFF4B7AFFFF3759
      E5FF253FCEFF0509A1FF000083DA000000000000000000000000000000000303
      0304AAAA9FF8878782D70000000000000000000000000909090A6A6A6B6E1059
      FFFF1461FFFF135DFFFF0D52FFFF0032FFFF0027F3FF0D0A77FE66665FE96060
      60631D1D1D1E0000000000000000000000000000000000000000919193A11412
      5CFF707073760000000000000000000000000000000000000000000000000000
      000096664FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFFA292
      8CD700000000000000000000000000000000000000000000000008070708F793
      00FFFBC080FFFCD9B8FFFBD1A8FFF6BC81FFF6BA7DFFF4B779FFF3B676FFF2B3
      72FFF1B270FFF1B06BFFF0AE6AFFEFAB66FFEFAA64FFEBA04FFFE68000FF0605
      0506000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFEFDFCFFFDFBF9FFFCFAF8FFC3AE
      A3FFA48372FFC8B3A5FFC6AD9AFFC3A283FFAE9286FF3A5FE9FF416AF4FF2943
      D3FF1B2DC0FF00006FB90000020300000000000000000000000061616364001E
      E2FF0021EAFF0011D6FF4242ADEA848482D03D3D3DFEA3A3A3FFC8C4B7FF1666
      FFFF288CFFFF2381FFFF1968FFFF033EFFFF002FFFFFA09EBCFFC2C2BEFF8F8F
      8FFF707070FF434343FF323232FF8A8A8AC37878787F0017DDFE0029FFFF0024
      EBFF0021E4FF5252ABE30E0E0E0F000000000000000000000000000000000000
      0000986750FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA4836EFFC8B3A5FFC6AD9AFFC3A283FFC19C73FFB88F60FF9E8276EA0000
      0000000000000000000000000000000000000000000000000000000000000908
      0809B37F33B6FBC386FFFDDBBBFFF9C691FFF8BF86FFF7BD82FFF6BB80FFF4B8
      7AFFF4B777FFF2B473FFF1B271FFF0B06FFFEFA95CFFA57537AE070606070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFDFCFBFFFDFBF9FFFCFAF8FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF1C29B6FF2944D2FF1828
      BBFF03059FFF0000090E000000000000000000000000252525261829C7F8002C
      FBFF002AFCFF101B52FF2F2F24FF979797FFBCBCBCFF828282FF605E59FD1F4C
      F6F6298EFFFF2381FFFF1968FFFF0340FFFF0020EEFF82827ADE949494A2A8A8
      A8FDB4B4B4FF9D9D9DFF858585FF4D4D4DFF3A3A37FF26261DFF0630CBFF002D
      FCFF0027F1FF000EC2FF6F6F7275000000000000000000000000000000000000
      0000986652FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFFA08A81E3282828290000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A09090AFC9801FFFCC487FFFBDAB8FFFAC793FFF8BF86FFF7BE84FFF6BB
      7DFFF5B97BFFF3B677FFF3B576FFF1AC61FFEF8B00FF07060607000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFCFCFFFDFCFAFFFCFAF8FFFCFAF7FFDED2
      CAFFA6826DFFF2D7AEFFEECD9BFFC59A68FF846154F900000000000000000000
      00000000000000000000000000000000000000000000878BA4AC0A4DFEFF115B
      FFFF0C54FFFFA19984FF6B6858FF2F2F47FF595958EF79797980545454550505
      05061D1D1E1E737ECBD05E6FD2DD787AAFCB2928A2F31B1BABF78080898F0000
      0000000000004949494A8282828F3E3E3DFF696A70FF6C6762FF1C5FDFFF0E54
      FFFF0440FFFF0024EDFF8181A5C0000000000000000000000000000000000000
      0000996851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA68269FFF2D7AEFFEECD9BFFC59A64FFA08980E400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A09090AC0862FC0FDC78CFFFDDDBEFFFBC894FFFAC38AFFF8C0
      87FFF7BE85FFF6BC83FFF5B46DFFB37D32B90706060700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6A55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFDFDFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9F7FFDED2
      CAFFA58068FFEECE98FFEFC785FF826254F71C15133000000000000000000000
      00000000000000000000000000000000000000000000848695981258FBFF1F74
      FFFF1869FFFF133ABEFF042DD9FF4E4D82FF6A6A66FF494949FF3E3E3EFF4544
      42F6818079D17474747B4F4F4F500016D2FE0028F8FF0022EEFF000BC3FF7D7D
      7C87878787C8585858FF898989FFB5B5B4FF9B9A99FF1C7AFFFF2487FFFF1662
      FFFF094BFFFF001FE4FF82828B92000000000000000000000000000000000000
      00009A6651FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58064FFEECE98FFEFC785FFA19188DC2020202100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0D0D0EFE9B03FFFEC88EFFFDDBB9FFFBC995FFF9C2
      8BFFF9C188FFF8B872FFF89400FF0B0A0A0B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000996B54FFFEFEFDFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFDFCFBFFFDFBF9FFFCFBF8FFFCF9F6FFFBF9F5FFDFD3
      CBFFA37B5DFFBF9464FF826256F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000888EAAAA2C93
      FFFF2077FFFF0645FFFF0018CAFE00000000030303044B4B4B4C73737377A2A2
      A2CA939393F38F8F8EFF959492FF3E4248FF0E58FFFF082897FFBDB6A0FF7575
      6EFF6B6B6AF58080808A5151515200000000000000007484CCCE165EF9FF1666
      FFFF0847FDFF69696B6D00000000000000000000000000000000000000000000
      0000996750FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA37759FFBF9460FFA4948DD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0E0E0FC5882CC5FECC96FFFEDFC1FFFDD7
      B2FFFCC185FFBE8430BE0C0B0B0C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000976954FFFEFDFDFFFDFEFDFFFEFDFEFFFEFDFDFFFEFFFDFFFEFDFDFFFEFD
      FEFFFFFEFCFFFDFCFBFFFDFDFAFFFCFCF8FFFCFAF9FFFBFAF6FFFBF8F5FFDBCD
      C4FFA77E5AFF856358F517121128000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050506063053
      E5F10A3FEAFE5864C0E057575859000000000000000000000000000000000000
      000001010102484848497777777D2068E0FF1D75FFFF0649FFFF102B90FF6B6B
      6C6F04040405000000000000000000000000000000000A0A0B0B74757C7C6071
      D3DC878BABB20000000000000000000000000000000000000000000000000000
      0000976550FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77A56FFA59590D41919191A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0E0E0FFF9C07FFFECC96FFFDC5
      89FFFE9C04FF0C0B0B0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986A55FFFBF0E8FFFAF1E9FFFAF0E9FFFAF0EBFFFAF0EAFFFAF0EAFFFAF1
      E9FFFBF1EAFFFBF0E9FFFBF0E9FFFAEFE7FFFAEFE8FFF9EDE5FFF9EDE5FF9B74
      64FF846559EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004362E5EA1A68F9FF0945F7FF1429C8F90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000986651FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B70
      60FFA49A97BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000100F0F10C88A2AC8C187
      2EC10D0C0C0D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B705CFF9B6E5AFF9A6E59FF996D59FF996D59FF996E5AFF986C58FF976D
      59FF976B57FF956A58FF956B56FF936A57FF936855FF916754FF916855FF745E
      52D5090807150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016161717797A818382838F942D2D2D2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6C58FF9B6A56FF9A6A55FF996955FF996955FF996A56FF986854FF9769
      55FF976753FF956654FF956752FF936653FF936451FF916350FF916451FF8C89
      8894070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000011100F110E0D
      0D0E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      00020030006B137800FF1D7C00FF277600FF2A7300FF287000FF1B6B00FF0034
      007E000200070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D6A6AFF9E6767FF7B48
      48FF804A4AFFE0D2D2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      52A3D09D81FFD09D81FFD09D81FFD09D81FFD09D81FFCF9C80FFCF9C80FFCE9B
      80FFCE9B80FFCD9A7EFFCC997EFFCC997EFFC9967CFFC6937BFFC79782FF3987
      2DFF028700FF009700FF009700FF009300FF078C00FF2A7200FF326C00FF1D6B
      00FF1F6C1AF40000000000000000000000000000000000000000000000000000
      0000855E4DFF835D4CFF835C4CFF835C4CFF835C4CFF825C4CFF825C4CFF825D
      4CFF825B4BFF825B4BFF815B4BFF815B4BFF815C4BFF805A4AFF805A4AFF7C59
      4AFF7C5949FF006F00FF006F00FF006D00FF006C00FF006A00FF006900FF7858
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976363FFFFE4E4FF9C65
      65FF945D5DFF784444FF956464FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000866653A3F6E2
      CEFFFFF3E2FFFFF4E4FFFFF5E5FFFFF5E8FFFFF6E9FFFFF7EBFFFFF7ECFFFFF8
      EEFFFFF9EFFFFFF9F2FFFFFAF3FFFFFBF5FFFFFBF6FFFEFCF9FF49A348FF05A0
      0CFF059F0DFF08A618FF16B83BFF039F0AFF009A00FF009600FF009300FF2A72
      00FF356900FF1E6E1AF400010007000000000000000000000000000000000000
      00007C5948FFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDE
      CEFFEFDECEFFEFDECEFFEFDECEFFEFDDCDFFEFDDCDFFEFDDCCFFEFDDCCFFEFDC
      CBFFEFDCC9FF007200FF76E997FF3CD86FFF3BD76EFF21BD40FF006C00FF7452
      43FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8FF8282
      82FF959595FF909090FF858585FFAEAEAEFFE1E1E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000976262FFFFDBDBFF9D66
      66FF9F6868FFA06969FFA16A6AFF905959FF7A4747FF9D7070FFD5C3C3FF0000
      0000000000000000000000000000000000000000000000000000D4A183FFFFF8
      EDFFFFF3E2FFFFF4E4FFFFF5E5FFFFF5E8FFFFF6E9FFFFF7EBFFFFF7ECFFFFF8
      EEFFFFF9EFFFFFF9F2FFFFFAF3FFFFFBF5FFFFFBF6FFA1D29EFF0E9614FF09A3
      15FF08A314FF66D285FFEFF3F1FF40CE6EFF04A10DFF009901FF009800FF0092
      00FF2B7200FF1D6B00FF0034007E000000000000000000000000000000000000
      0000805746FFFBF4E9FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3E8FFFBF3
      E8FFFBF3E8FFFBF3E9FFFBF3E7FFFBF3E8FFFBF4E6FFFBF2E7FFFBF2E5FFFBF3
      E4FFFAF1E5FF007400FF77EA98FF3EDA71FF3DD970FF22BE41FF006E00FF7354
      44FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1B1B1FF858585FFA4A4
      A4FFA0A0A0FF949494FF969696FF878787FF787878FFC6C6C6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64FF676767FF626463FF616261FF575757FF555555FF754F4FFFFFDBDBFF9E66
      66FFA06969FFA06969FFA06969FFA06969FFA26B6BFF844D4DFF713E3EFFBEA3
      A3FF000000000000000000000000000000000000000000000000D6A384FFFFF3
      E1FFFFF3E2FF857E76FF857E76FF858077FF858078FF85817AFF85817AFFFFF8
      EEFFFFF8EFFF85827DFF85827DFF858380FF92918EFF199D22FF28B439FF08A9
      1BFF53BF60FFF0EFEFFFF4F4F4FFFFFCFEFFF7FEFAFF06A312FF039D08FF0097
      00FF009400FF346C00FF1B6D00FF000000000000000000000000000000000000
      0000825847FFFBF5EBFFFBF5EBFFFBF5EBFFDABEB1FFDABEB1FFDABEB1FFDABE
      B0FFDABEB0FFDABDAEFFDABDADFFDABCACFFDABAABFFE5CEC2FFE5CEC1FFE5CC
      BEFFE5CCBEFF007800FF79EC9BFF42DE75FF40DC73FF24C043FF007100FFA18A
      7BFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8CFF999999FFACACACFFAAAAAAFF9797
      97FF6D6D6DFF5E5E5EFF6D6D6DFF6E6E6EFF494949FF8F8F8FFF8C8C8CFF7373
      73FF929292FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98FF747474FF696869FF878185FFBCB4BAFFBFB8BDFF976B6DFFFFDADAFFA068
      68FFA26B6BFFA26B6BFFA26B6BFFA16A6AFFA16A6AFFA16A6AFFA06969FFA16A
      6AFF915A5AFF5E4040FFB9BABAFF000000000000000000000000D7A484FFFFF3
      E1FFFFF3E2FF857E76FF857E76FF858077FF858078FF85817AFF85817AFFFFF8
      EEFFFFF8EFFF85827DFF85827DFF85827EFFA09E9CFF37B647FF26B53DFF47B5
      4FFFF1E8F0FFEEEDEEFFF6F3F5FFFBFBFBFFFFFEFFFF3FCE6DFF06A312FF009A
      03FF009800FF316F00FF2A7100FF000000000000000000000000000000000000
      0000825948FFFBF5ECFFFCF6ECFFFCF6ECFFDBC0B3FFDBC0B3FFDBC0B3FFDBC0
      B2FFDBBFB2FFDABEB0FFDABDAFFFDABCADFFDABCABFF007C00FF007C00FF007B
      00FF007B00FF007A00FF7AED9BFF43DF76FF42DE75FF25C144FF007200FF006F
      00FF006E00FF006B00FF006900FF000000000000000000000000000000000000
      000000000000CACACAFF8F8F8FFFAFAFAFFFB1B1B1FFAEAEAEFF979797FF6A6A
      6AFFA8A8A8FFA4A4A4FF8B8B8BFF5D5D5DFF4B4B4BFF393939FF595959FF8B8B
      8BFF838383FF737373FFA7A7A7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF737373FF6C666AFF349D51FF49B467FF5AB573FF886860FFFFDADAFFA169
      69FFA36C6CFFA36C6CFFA36C6CFFA36C6CFFA26B6BFFA26B6BFFA16A6AFFA26B
      6BFFA16A6AFF5E3C3CFF5C5D5DFF000000000000000000000000D9A686FFFFF3
      E0FFFFF3E1FFFFF4E4FFFFF4E5FFFFF5E7FFFFF5E8FFFFF6EAFFFFF7EBFFFFF8
      EDFFFFF8EEFFFFF9F0FFFFF9F1FFFFFAF3FFFFFCF8FF5ACB71FF2EBA48FFF0E5
      EFFFE6E4E6FF60BF67FF07AC21FFB6E2BDFFFFFCFFFFFFFFFFFFF7FDFAFF05A2
      11FF029C05FF108A00FF2C7400FF000000000000000000000000000000000000
      0000845A47FFFCF6EEFFFCF7EEFFFCF7EEFFDBC2B7FFDBC3B8FFDBC2B8FFDBC2
      B6FFDBC2B5FFDBC0B4FFDBBFB3FFDBBEB0FFDBBDAEFF008300FF81F1A0FF4CE8
      82FF4BE781FF4AE680FF49E57CFF46E279FF45E178FF42DE75FF41DD74FF3EDA
      71FF3CD86FFF20BC3FFF006C00FF000000000000000000000000000000009D9D
      9DFF9A9A9AFFBCBCBCFFBBBBBBFF989898FF6F6F6FFFBEBEBEFFDBDBDBFFD2D2
      D2FFD1D1D1FFAAAAAAFFABABABFFAEAEAEFF727272FF282828FF2D2D2DFF3131
      31FF303030FF4E4E4EFF6C6C6CFF767676FF6F6F6FFFA5A5A5FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9D
      9DFF7B7B7BFF6F676DFF269640FF1BA63CFF1BA63CFF766954FFFFDBDDFFA56D
      6DFFA56E6EFFA56E6EFFA56E6EFFA56E6EFFA46D6DFFA46D6DFFA36C6CFFA36C
      6CFFA26B6BFF613E3EFF4C4D4DFF000000000000000000000000DBA886FFFFF2
      E0FFFFF3E1FF857E75FF857E76FF858077FF858078FF858079FF85817AFF8581
      7BFF85817BFF85827CFF85827DFF85827EFFFFFCF8FF5FCF79FF44C763FF75B7
      73FFF1E6F0FF0CAE25FF1FBA43FF0BAD25FFB6E2BDFFFCFCFCFFFFFFFFFF3FCC
      6BFF04A10EFF079100FF2A7700FF000000000000000000000000000000000000
      0000855C49FFFCF8EFFFFCF7EFFFFCF7EFFFDBC3BAFFDBC3BAFFDBC3BAFFDBC3
      B8FFDBC2B7FFDBC0B6FFDBC0B4FFDBBEB1FFDBBEB0FF008500FF82F2A1FF4EEA
      84FF4EEA84FF4CE882FF4BE781FF48E47BFF46E279FF44E077FF42DE75FF3FDB
      72FF3DD970FF22BE40FF006C00FF000000000000000000000000EAEAEAFFB6B6
      B6FFC2C2C2FFBBBBBBFF999999FF959595FFC9C9C9FFD9D9D9FFD7D7D7FFD4D4
      D4FFD2D2D2FFADADADFFADADADFFAEAEAEFFA7A7A7FF4B4B4BFF2C2C2CFF2929
      29FF2C2C2CFF2F2F2FFF2F2F2FFF565656FF717171FF6F6F6FFF686868FFBFBF
      BFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC98FFF0000000000000000A1A1
      A1FF818181FF716A6FFF22903AFF179E34FF179E34FF786854FFFFDBDDFFA66E
      6EFFA77070FFA66F6FFFA66F6FFFA66F6FFFA66F6FFFA56E6EFFA56E6EFFA46D
      6DFFA36C6CFF644141FF4D5050FF000000000000000000000000DDAA87FFFFF2
      E0FFFFF3E1FF857E75FF857E76FF858077FF858077FF858079FF858079FF8581
      7AFF85817BFF85817CFF85827CFF85827DFFFFFBF5FF4FC568FF72D88FFF2AC5
      59FF2BC65AFF28C253FF26C04FFF21BC45FF1CB73DFFB4DFBAFFFEF8FEFFFAF7
      F9FFEFF5F3FF039700FF227D00FF000000000000000000000000000000000000
      0000865D4AFFFCF9F1FFFCF8F1FFFCF8F2FFDBC4BEFFDBC5BEFFDBC5BEFFDBC4
      BCFFDBC3BBFFDBC2B8FFDBC1B7FFDBBFB4FFDBBEB2FF008900FF85F5A4FF53EF
      89FF52EE88FF50EC86FF4EEA84FF4BE781FF49E57CFF46E279FF44E077FF41DD
      74FF3FDB72FF22BE41FF006E00FF000000000000000000000000D4D4D4FF9C9C
      9CFF838383FFDCDCDCFFE3E3E3FFDDDDDDFFDCDCDCFFDADADAFFD9D9D9FFD6D6
      D6FFD6D6D6FFB1B1B1FFB2B2B2FFB1B1B1FFB1B1B1FFB3B3B3FFB3B3B3FF8484
      84FF666666FF3B3B3BFF272727FF282828FF2B2B2BFF2D2D2DFF333333FF6363
      63FF6A6A6AFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000359F35FF5BB05BFF00000000A3A3
      A3FF828282FF736C71FF1C822CFF0F8F25FF0F8F25FF826557FFFFDBDDFFA86F
      70FFA97272FFA97272FFA87171FFA56F6FFFA87070FFA77070FFA77070FFA66F
      6FFFA56E6EFF654343FF545555FF000000000000000000000000DEAB88FFFFF2
      DFFFFFF3E0FFFFF3E2FFFFF4E3FFFFF5E5FFFFF5E7FFFFF6E8FFFFF6E9FFFFF7
      ECFFFFF7ECFFFFF8EFFFFFF9EFFFFFF9F2FFFFFAF3FF2FAF3EFF74DA93FF2CC8
      5EFF2FCA5FFF2CC65AFF2BC555FF23BD49FF20BA43FF09AB20FFB2DDB8FFF3F2
      F3FFFDF5FAFF0C9E12FF147C00FF000000000000000000000000000000000000
      0000875C49FFFCF8F2FFFDF9F2FFFDF9F3FFDBC6C0FFDBC6C1FFDBC6C0FFDBC5
      BEFFDBC5BCFFDBC2BAFFDBC2B8FFDBC0B5FFDBC0B3FF008B00FF86F7A5FF86F7
      A5FF86F6A4FF84F4A3FF83F4A2FF4CE882FF4BE781FF47E37AFF7AED9BFF78EB
      9AFF77EA98FF3CD86FFF006F00FF0000000000000000E9E9E9FFA5A5A5FFB9B9
      B9FFE2E2E2FFE2E2E2FFE0E0E0FFDFDFDFFFDEDEDEFFDBDBDBFFDADADAFFD8D8
      D8FFD7D7D7FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB2B2B2FFB3B3B3FFB4B4
      B4FFB3B3B3FF808080FF646464FF3A3A3AFF262626FF272727FF2A2A2AFF2B2B
      2BFF656565FFD6D6D6FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000359E35FF0C8F19FF5DB15DFFA4A4
      A4FF838383FF726B71FF177926FF0C871DFF0C871DFF846758FFFFDCDEFFA970
      70FFAA7373FFAA7373FFAA7373FFA36E6EFFA56F6FFFA87171FFA87171FFA770
      70FFA66F6FFF674545FF555757FF000000000000000000000000E0AD89FFFFF2
      DEFFFFF2E0FF857E74FF857E75FF857E76FF858076FF858078FF858079FF8581
      7AFF85817AFF85817BFFFFF8EEFF85827CFF85827DFF7DAC7BFF32B243FF74DD
      97FF33CC65FF31CB65FF30CA60FF27C150FF23BD48FF1AB439FF15B02FFF4BBD
      5AFF18B131FF0B8804FF0034006C000000000000000000000000000000000000
      0000895D4AFFFDF9F4FFFDFAF4FFFDFAF5FFDBC8C2FFDBC9C4FFDBC8C3FFDBC7
      C1FFDBC6BEFFDBC4BBFFDBC3BAFFDBC2B7FFDBC1B5FFE6D1C8FFE6D1C8FFE6CF
      C5FFE6CFC4FF008900FF85F5A4FF4FEB85FF4DE983FF2BC749FF007A00FFA48B
      7CFF0000000000000000000000000000000000000000B4B4B4FFCECECEFFE6E6
      E6FFE6E6E6FFE4E4E4FFE4E4E4FFE2E2E2FFE0E0E0FFDEDEDEFFDDDDDDFFDADA
      DAFFDBDBDBFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB8B8B9FFC59B68FFC88D
      46FFC68F4EFFB9A99BFFB4B8BEFFB6B7B8FFB5B5B5FF797979FF606060FF5C5C
      5CFFA3A3A3FF797979FF979797FF000000000000000000000000000000000000
      000000000000000000000000000000000000359E35FF39C467FF38BD66FF51AE
      51FFB4B4B4FF746D73FF0E6D16FF04740EFF04740EFF866A5AFFFFDCDDFFAB72
      73FFAC7575FFAD7474FF986A6AFFA16C6CFFA36E6EFFA87272FFAB7373FFA972
      72FFA87171FF6B4848FF555757FF000000000000000000000000E1AE8AFFFFF2
      DEFFFFF2DFFF857E74FF857E75FF857E76FF857E76FF858077FF858078FF8580
      79FF85817AFF85817BFFFFF8EEFF85827CFF85827CFFA8A6A3FF439E42FF7ADF
      9EFF72DC95FF31CC64FF30CB63FF27C151FF23BD49FF1BB53AFF17B130FF0DA9
      1EFF09A416FF388B2CFF00010002000000000000000000000000000000000000
      00008B5E4CFFFDFBF5FFFDFAF5FFFDFAF6FFDBC8C3FFDBC9C5FFDBC8C4FFDBC7
      C1FFDBC6BFFFDBC5BCFFDBC4BAFFDBC2B7FFDBC1B6FFDBBEB2FFDBBEB0FFDBBC
      ADFFDBBBABFF008B00FF86F6A4FF50EC86FF4EEA84FF2BC749FF007B00FF7B57
      46FF0000000000000000000000000000000000000000BCBCBCFFCCCCCCFFE8E8
      E8FFE7E7E7FFE6E6E6FFE5E5E5FFE3E3E3FFE2E2E2FFDFDFDFFFDEDEDEFFDBDB
      DBFFD9D9D9FFBDBDBDFFBCBCBCFFBBBBBBFFBBBCBCFFCE9043FFDB8A25FFE198
      3BFFDD9231FFD4730BFFCD6E0EFFB6B5B5FFB5B8BAFFB8B8B8FFB4B4B4FFAEAE
      AEFFB5B5B5FF999999FF9B9B9BFF0000000000000000288828FF147814FF1981
      19FF1A851AFF178717FF128612FF0F890FFF007600FF43E277FF3BC86AFF0C95
      16FF4EAA4EFF746D74FF0B670FFF016C06FF016C06FF8C695CFFFFDCDDFFAC73
      73FFAD7575FF938181FF808585FF9B6D6DFFA26E6EFFA77272FFAA7474FFAA73
      73FFA97272FF6D4A4AFF585959FF000000000000000000000000E4B18BFFFFF1
      DDFFFFF2DEFFFFF3E0FFFFF3E1FFFFF4E3FFFFF4E4FFFFF5E6FFFFF5E7FFFFF6
      E9FFFFF6EAFFFFF7ECFFFFF7ECFFFFF8EEFFFFF8EFFFFFF9F0FFFFF9F1FF60BC
      5DFF35B446FF76DF9BFF6EDA92FF39C65FFF28BF4DFF1CB53AFF1EB538FF0C9A
      15FF49A848FFC79782FF00000000000000000000000000000000000000000000
      00008B5F4DFFFDFCF7FFFDFBF7FFFDFBF8FFDBC7C2FFDBC7C3FFDBC7C3FFDBC6
      C1FFDBC6C0FFDBC4BDFFDBC4BBFFDBC1B8FFDBC0B6FFDBBFB3FFDBBFB1FFDBBC
      AEFFDBBBABFF008D00FF86F7A5FF51ED87FF4EEA84FF2BC74AFF007C00FF7C59
      47FF0000000000000000000000000000000000000000D2D2D2FFBEBEBEFFECEC
      ECFFEBEBEBFFE9E9E9FFE8E8E8FFE6E6E6FFE5E5E5FFE2E2E2FFE0E0E0FFDEDE
      DEFFCCCCCCFFC2C2C2FFC1C1C1FFC0C0C1FFBFC3C8FFE6A858FFEBB56BFFE6A7
      52FFE5A650FFE3A34BFFE4A34AFFDF9638FFCF6900FFBABBBCFFB9B9B9FFB8B8
      B8FFB8B8B8FF8B8B8BFFB5B5B5FF0000000000000000167116FF3DD16EFF36CC
      66FF36CF68FF39D06BFF3CD36DFF3FD46FFF3FD771FF45E378FF48E57BFF40CA
      6CFF3DBD69FF50A94FFF9ED6C5FF66D1B3FF66D1B3FFA07A76FFFFDBDCFFAE74
      74FFBEA2A2FFD0D0D0FFD2D2D2FFA39C9CFFA87171FFAD7676FFAD7676FFAC75
      75FFAB7474FF704E4EFF5A5B5BFF000000000000000000000000E5B28BFFFFF1
      DDFFFFF2DEFFFFF2E0FFFFF3E1FFFFF3E2FFFFF4E4FFFFF5E5FFFFF5E7FFFFF6
      E8FFFFF6E9FFFFF7EBFFFFF7ECFFFFF8EEFFFFF8EEFFFFF9F0FFFFF9F0FFFFFB
      F6FFB3DFAEFF34B548FF56CC75FF62D482FF5BD078FF3DBB51FF1EA229FFA0D3
      9DFFFEFCF9FFC6937BFF00000000000000000000000000000000000000000000
      00008C614CFFFDFBF8FFFDFBF8FFFEFCF9FFDCC7C2FFDCC8C3FFDCC7C3FFDCC7
      C1FFDCC6C0FFDBC4BDFFDBC3BBFFDBC1B8FFDBC0B7FFDBBFB2FFDBBEB1FFDBBD
      ADFFDBBBACFF008D00FF86F7A5FF84F4A3FF82F2A1FF4AE680FF007C00FF7C58
      47FF0000000000000000000000000000000000000000E2E2E2FFB4B4B4FFEDED
      EDFFEDEDEDFFEBEBEBFFEAEAEAFFE7E7E7FFE6E6E6FFE3E3E3FFE1E1E1FFDFDF
      DFFFC6C6C6FFC4C4C4FFC4C4C4FFC3C5C7FFC9B094FFEFBD80FFEAB166FFE7A8
      54FFE6A752FFE4A44DFFE3A34AFFE2A348FFD67A16FFBCBEC0FFBEBDBCFFC4C1
      C0FFBABABAFF7B7B7BFFCBCBCBFF0000000000000000126E12FF4DDA80FF38D6
      6BFF3AD86DFF3EDC71FF41DE74FF43E176FF46E379FF48E67BFF49E680FF4CEA
      84FF42CB6EFF099A11FF5DCE72FFA7FFFFFFA7FFFFFFAA8686FFFFDADAFFAE74
      74FFC5ABABFFE9E9E9FFF8F8F8FFB1A4A4FFAF7777FFAE7777FFAE7777FFAD76
      76FFAC7575FF725151FF5A5C5CFF000000000000000000000000E7B48CFFFFF1
      DCFFFFF1DDFF857D73FF857D74FF857E74FF857E75FF857E76FF857E76FF8580
      77FFFFF5E8FF858079FF858079FF85817AFF85817BFF85817BFF85817CFF8582
      7CFFFFF9F1FF908E8AFF9E9B98FFFFFCF7FFFFFCF8FFA09E9CFF92918EFFFFFB
      F5FFFFFBF5FFC9967CFF00000000000000000000000000000000000000000000
      00008F614DFFFEFCFAFFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C1FFDCC6
      C0FFDCC6BFFFDCC4BCFFDCC3BBFFDBC1B8FFDBC1B6FFDBBEB3FFDBBEB1FFDBBD
      AEFFDBBCACFFE6CFC3FFE6CEC1FFE9D3C6FFFDF9F3FFFEF9F3FFF7EFE6FF805A
      49FF000000000000000000000000000000000000000000000000ADADADFFF2F2
      F2FFF0F0F0FFEEEEEEFFEDEDEDFFEAEAEAFFE8E8E8FFE5E5E5FFE3E3E3FFCFCF
      CFFFCACACAFFC9C9C9FFC9C9C9FFCEB391FFDE922FFFEEB974FFEAAD5CFFE8AA
      58FFE7A955FFE5A650FFE4A44EFFE3A44AFFD77B17FFAEACABFF5BA7DEFF4CAC
      F8FFCBC6C2FF757575FF0000000000000000000000000F6D0FFF58DF89FF3BD8
      6EFF3DDA70FF41DE74FF43E076FF46E379FF48E57BFF4BE882FF4DEA84FF50ED
      87FF52EF89FF46CD71FF44BE6DFF6ED080FFD7FFFFFFAD8282FFFFDADAFFB179
      79FFB27979FFC6AFAFFFBCB4B4FFB27979FFB17A7AFFB07979FFB07979FFAF78
      78FFAE7777FF775353FF606262FF000000000000000000000000E8B58DFFFFF1
      DBFFFFF1DCFF857D73FF857D73FF857E74FF857E75FF857E76FF857E76FF8580
      77FFFFF5E7FF858079FF858079FF85817AFF85817AFF85817BFF85817BFF8582
      7CFFFFF9F0FF85827DFF85827DFFFFFAF2FFFFFAF3FF85827EFF85827EFFFFFA
      F4FFFFFAF4FFCC997EFF00000000000000000000000000000000000000000000
      00008F634DFFFEFEFBFFFEFDFBFFFEFDFCFFDCC6C0FFDCC6C1FFDCC6C1FFDCC6
      C0FFDCC4BFFFDCC4BCFFDCC3BAFFDCC2B8FFDBC0B6FFDBBFB3FFDBBEB2FFDBBC
      AEFFDBBCACFFDBB9A8FFDBB9A7FFE0C1AEFFFCF7EEFFFDF7EDFFF4E9DCFF8059
      48FF000000000000000000000000000000000000000000000000D0D0D0FFF6F6
      F6FFF2F2F2FFEFEFEFFFEEEEEEFFEBEBEBFFE9E9E9FFE6E6E6FFE5E5E5FFCECE
      CEFFCECECEFFCCCCCCFFCCCDCDFFD89032FFEBB369FFECB56CFFEAAE5EFFE9AB
      59FFE8AA57FFE6A752FFE5A54FFFE4A54CFFD4740DFF8C8A88FF49B7FFFF5BB0
      EDFFC6C1BEFFA3A3A3FF0000000000000000000000000D6E0DFF59E28BFF3BD9
      6EFF3EDB71FF42DF75FF44E177FF48E57BFF4AE781FF4DEA84FF4FEC86FF52EF
      89FF53F08AFF55F08CFF43BD6CFF7BD389FFE4FFFFFFB08383FFFFDADAFFB37A
      7AFFB48181FFB47B7BFFB37979FFB38080FFB27B7BFFB17A7AFFB17A7AFFB079
      79FFAF7878FF795656FF606262FF000000000000000000000000EAB78EFFFFF0
      DAFFFFF1DBFFFFF1DDFFFFF2DEFFFFF2E0FFFFF3E1FFFFF3E2FFFFF4E3FFFFF4
      E5FFFFF5E6FFFFF5E7FFFFF6E8FFFFF6E9FFFFF6EAFFFFF7ECFFFFF7ECFFFFF8
      EEFFFFF8EEFFFFF8EFFFFFF9EFFFFFF9F0FFFFF9F0FFFFF9F1FFFFF9F1FFFFF9
      F2FFFFF9F2FFCC997EFF00000000000000000000000000000000000000000000
      000091644EFFFEFDFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFFDFA
      F5FFFDFAF4FFFDF9F3FFFCF8F2FFFCF7F0FFFCF7EFFFFCF7EEFFF6E9DDFF8159
      48FF00000000000000000000000000000000000000000000000000000000E0E0
      E0FFF7F7F7FFF2F2F2FFF0F0F0FFECECECFFEBEBEBFFE8E8E8FFDEDEDEFFD6D6
      D6FFD6D6D6FFD4D6D8FFD5C6B2FFF2BF83FFF0BF83FFECB164FFEBB062FFEAAD
      5CFFE9AB5AFFE7A854FFE6A752FFDC9130FFD09B5AFFA5A3A2FF56748AFFB7B3
      B1FFBBBBBBFF000000000000000000000000000000000D6E0DFF5CE38EFF3FDB
      71FF43DF75FF48E37BFF4BE581FF4FE985FF51EB87FF55EE8BFF53F08AFF56F3
      8DFF58F590FF0DAA16FF80D380FFFEFEFDFFFEFFFDFFB98989FFFFDADAFFB580
      80FFB68383FFB68383FFB68383FFB58282FFB48181FFB38080FFB38080FFB17A
      7AFFB17A7AFF7A5A5AFF646464FF000000000000000000000000EBB88FFFFFF0
      DAFFFFF0DAFF857D72FF857D72FF857D73FFFFF2E0FF857E75FF857E75FF857E
      76FF857E76FF858077FF858077FF858079FF858079FF85817AFF85817AFF8581
      7AFF85817BFF85817BFF85817BFF85827CFFFFF9EFFFFFF9F0FFFFF9F0FFFFF9
      F0FFFFF9F0FFCD9A7EFF00000000000000000000000000000000000000000000
      000092634FFFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF8FFFDFBF8FFFDFA
      F6FFFDFAF5FFFDF9F3FFFDF9F2FFFCF8F0FFFCF7EFFFFCF7EEFFF5E9DDFF815B
      48FF00000000000000000000000000000000000000000000000000000000B7B7
      B7FFF7F7F7FFF2F2F2FFF1F1F1FFEDEDEDFFEBEBEBFFE3E3E3FFDCDCDCFFDADA
      DAFFDADADAFFD9D4D0FFDC9838FFF3C389FFF2BD7BFFEDB266FFECB063FFEAAD
      5EFFE9AC5BFFE7A955FFE6A753FFD78017FFCFC0AFFFCFCFCFFFC3C1C0FFD1D1
      D1FF8A8A8AFF000000000000000000000000000000000E6F0EFF60E590FF8DEB
      ACFF90ECB0FF97EEB5FF98F1B6FF9FF4BAFFA0F4BCFF83F4A9FF52F18AFF59F6
      91FF5BF995FF55AB55FFFFFDFCFFFFFBF8FFFFFBF8FFB88687FFFFDADAFFB783
      83FFB88585FFB78484FFB78484FFB68383FFB58282FFB48181FFB48181FFB27B
      7BFFB38080FF7B5C5CFF646565FF000000000000000000000000EEBB90FFFFEF
      D7FFFFF0D9FF857D71FF857D72FF857D73FFFFF2DEFF857E74FF857E74FF857E
      75FF857E75FF857E76FF858076FF858077FF858078FF858079FF858079FF8581
      7AFF85817AFF85817AFF85817AFF85817BFFFFF8EEFFFFF8EEFFFFF8EEFFFFF8
      EEFFFFF8EEFFCE9B80FF00000000000000000000000000000000000000000000
      0000936450FFFFFFFFFFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D3D1FFE2D2
      CFFFE2D1CEFFE1CFCAFFE1CEC9FFE1CDC6FFE1CBC3FFE1CAC0FFE1C9BEFFE0C7
      BAFFE0C5B8FFE0C4B4FFE0C2B2FFE4CAB8FFFCF7F0FFFCF7EFFFF5E9DEFF825A
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7FFE8E8E8FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE5E5E5FFE2E4
      E7FFE2DDD8FFEBB164FFF7C995FFF2BC78FFF0B66EFFEEB368FFEDB266FFEBAF
      60FFEAAD5DFFE9AB57FFE7AA56FFD6C2AAFFD5D7D9FFD3D3D3FFD5D5D5FF8585
      85FFE5E5E5FF00000000000000000000000000000000339433FF1C861CFF1C89
      1CFF1C8B1CFF178C17FF178F17FF179117FF027B02FF64F497FF57F58FFF11A9
      1BFF59B359FF6A6B6CFFFFF6EDFFFFF5ECFFFFF5ECFFBA8888FFFFDADAFFB984
      84FFBA8787FFB98686FFB98686FFB88585FFB78484FFB68383FFB68383FFB481
      81FFB38080FF825F5FFF656666FF000000000000000000000000EFBC90FFFFEF
      D6FFFFF0D9FFFFF0DAFFFFF1DBFFFFF1DDFFFFF2DEFFFFF2E0FFFFF3E0FFFFF3
      E2FFFFF3E2FFFFF4E4FFFFF4E5FFFFF5E6FFFFF5E7FFFFF6E8FFFFF6E8FFFFF6
      E9FFFFF6EAFFFFF7EBFFFFF7EBFFFFF7ECFFFFF7ECFFFFF8EDFFFFF8EDFFFFF8
      EDFFFFF8EDFFCE9B80FF00000000000000000000000000000000000000000000
      0000946550FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC9FFDDCBCBFFDDCBCAFFDDC9
      C7FFDDC9C5FFDDC7C2FFDCC5C0FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBBADFFDBBAA9FFDBB9A6FFE0C1AEFFFCF8F0FFFDF8EFFFF6E9DEFF825A
      49FF000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBEFFB1B1B1FFBABBBCFFC2C2C3FFD2D3D4FFD9DBDDFFE7D1
      B4FFE8A955FFF7CC9BFFF6C791FFF1B972FFF0B76FFFEEB469FFEDB267FFEBAF
      61FFEAAE5EFFE9AB5AFFE09A3DFFDADEE4FFD9D9DAFFD9D9D9FFD6D6D6FFCECE
      CEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035A235FF58F691FF5CFA96FF5CB8
      5CFFC0C0C0FF6A6A6BFFFFF3E7FFFFF2E6FFFFF2E6FFBE8B8AFFFFDADAFFBA85
      85FFBB8888FFBA8787FFBA8787FFB98686FFB98686FFB78484FFB68383FFB582
      82FFB48181FF856060FF656767FF000000000000000000000000F1BE92FFFFED
      D2FFFFEED4FF857C70FF857C71FF857D71FF857D72FF857D73FF857D73FF857E
      74FFFFF3E1FF857E75FF857E75FF857E76FF857E76FF858077FF858077FF8580
      78FF858078FF858079FFFFF6E9FF858079FF858079FF85817AFF85817AFFFFF7
      EBFFFFF7EBFFCF9C80FF00000000000000000000000000000000000000000000
      0000956651FFFFFFFFFFFFFFFFFFFFFFFFFFDDCAC8FFDDCBCAFFDDCBC9FFDDC9
      C7FFDDC9C5FFDDC7C2FFDDC6C1FFDCC4BCFFDCC2BAFFDCC0B5FFDCC0B4FFDBBD
      B0FFDBBCADFFDCBBA9FFDBB9A7FFE0C0AEFFF9F5EEFFF3ECE4FFE9D9CEFF865F
      4DFF000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDFFFAEAAA5FFFFF4E0FFFFF4E1FFF8BE77FFF6BD77FFFCD3
      A7FFFACE9FFFF7BF82FFF4BD7BFFF2BB75FFF1B972FFEFB66CFFEEB368FFEDB1
      63FFECAF61FFDB8F29FFE3D3BEFFE6E6E6FFD2D2D2FF939393FFDDDDDDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035A635FF14AA20FF66C366FFB6B6
      B6FF9D9D9DFF696A6BFFFFEDDBFFFFECDAFFFFECDAFFBF8B8CFFFFDADAFFBC87
      87FFBC8989FFD3A1A1FFC99595FFBA8686FFB78484FFB88585FFB88585FFB784
      84FFB78484FF876363FF6A6C6CFF000000000000000000000000F2BF92FFFFEC
      D0FFFFEED3FF857C6FFF857C70FF857C71FF857D71FF857D72FF857D73FF857D
      73FFFFF2E0FF857E74FF857E75FF857E75FF857E76FF857E76FF858076FF8580
      77FF858077FF858078FFFFF6E8FF858079FF858079FF858079FF858079FFFFF6
      EAFFFFF6EAFFCF9C80FF00000000000000000000000000000000000000000000
      0000966851FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFFFFE
      FAFFFFFFFCFFFDFCF7FFF9F5F2FFF1E9E4FFECE5DEFFE5DCD6FFDCCABFFF8E77
      6ED7000000000000000000000000000000000000000000000000000000000000
      000000000000C5C5C6FFCCC6BCFFFFF3E1FFFFF2E0FFFDE2C2FFF8CD9BFFF0B4
      68FFEFB267FFEFB369FFEFB469FFEEB369FFEEB368FFEEB367FFEDB366FFEAAD
      5DFFE2A048FFAC9A83FF979A9DFF999999FFABABABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035A935FF63B963FF00000000B7B7
      B7FFA0A0A0FF6A6B6DFFFFEAD6FFFFE9D5FFFFE9D6FFC28D8DFFFFDADAFFBE8A
      8AFFBC8888FFFFECECFFFFE2E2FFF4CCCCFFE9BBBBFFCF9C9CFFC59191FFB582
      82FFB68383FF896464FF6B6C6CFF000000000000000000000000F4C193FFFFEB
      CCFFFFECCFFFFFEED3FFFFEED5FFFFF0D9FFFFF0DAFFFFF1DBFFFFF1DCFFFFF2
      DEFFFFF2DEFFFFF2E0FFFFF3E0FFFFF3E1FFFFF3E2FFFFF4E3FFFFF4E4FFFFF4
      E5FFFFF4E5FFFFF5E6FFFFF5E6FFFFF5E7FFFFF5E7FFFFF5E7FFFFF5E8FFFFF5
      E8FFFFF5E8FFD09D81FF00000000000000000000000000000000000000000000
      0000986952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFC3AE
      A3FFA48370FFC8B3A5FFC6AD9AFFC3A283FFC19C75FFB88F62FF906F62EA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000939594FFFFF9ECFFFFF5E6FFFFF4E5FFFFF2E1FFFFF2DFFFFFF1
      DBFFFFF0DAFFFFEFD6FFFFEED5FFFFEDD2FFFFEDD0FFCDC2B2FFB1B3B8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097D297FF0000000000000000B9B9
      B9FFA6A6A6FF6C6D6FFFFFE4CAFFFFE3C9FFFFE3CAFFC69292FFFFD9DAFFC08B
      8BFFC08C8CFFFFF0F0FFFFE9E9FFFFE5E5FFFFE3E3FFFFDEDEFFFFDBDBFFF7C8
      C8FFBA8686FF8C6767FF6B6C6CFF000000000000000000000000F6C394FFFFEA
      CBFFFFEBCDFFFFEDD1FFFFEED3FFFFF0D9FFFFF0D9FFFFF0DBFFFFF1DBFFFFF1
      DDFFFFF1DDFFFFF2DFFFFFF2E0FFFFF3E1FFFFF3E1FFFFF3E2FFFFF3E2FFFFF4
      E4FFFFF4E4FFFFF4E5FFFFF4E5FFFFF5E6FFFFF5E6FFFFF5E6FFFFF5E7FFFFF5
      E7FFFFF5E7FFD09D81FF00000000000000000000000000000000000000000000
      0000986854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF9FFCDB9
      B0FFBCA498FFFBF0DEFFF8E6C9FFF2D39FFFF3CC8BFF8F7368E3282828290000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAA9A7FFFFFDF0FFFFF6E8FFFFF5E7FFFFF3E3FFFFF2E0FFFFF0
      DCFFFFEFD9FFFFEED4FFFFEDD2FFFFEBCDFFFFEACAFFA8A198FFD7D7D8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BAFFA7A7A7FF6B6E71FFFFE1C4FFFFE0C3FFFFE0C3FFC79493FFFFD9D9FFC18C
      8CFFC18D8DFFFFF3F3FFFFEDEDFFFFE8E8FFFFE5E5FFFFDFDFFFFFDBDBFFF1C4
      C4FFB88585FF8D6A6AFF6C6C6CFF000000000000000000000000F8C595FFFFE9
      C7FFFFEAC9FF857A6AFF857A6BFF857B6DFF857B6EFF857C70FF857C71FF857D
      71FF857D71FF857D72FF857D72FF857D73FF857D73FFFFF3E0FF857E74FF857E
      74FF857E75FF857E75FF857E75FF857E76FF857E76FF857E76FF857E76FFFFF4
      E4FFFFF4E4FFD09D81FF00000000000000000000000000000000000000000000
      0000996A53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFEFCF8FFDED2
      CAFFA6826BFFF2D7AEFFEECD9BFFC59A66FF8F7267E400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3DFDAFFFFFBF2FFFFF7EDFFFFF6EAFFFFF4E6FFFFF3E3FFFFF1
      DEFFFFF0DBFFFFEED6FFFFEDD4FFFFEBCEFFFFECCEFFA2A3A4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BCFFA9A9A9FF6D6E71FFFFDBB8FFFFDAB7FFFFDAB7FFCA9597FFFFD9D9FFC38E
      8EFFC49191FFEEDDDDFFF8E9E9FFFFF3F3FFFFEFEFFFFFE5E5FFFFE1E1FFE8BC
      BCFFB88484FF906D6DFF6E6E6EFF000000000000000000000000F9C696FFFFE8
      C3FFFFE9C7FF857969FF857A6AFF857B6CFF857B6DFF857C6FFF857C70FF857C
      71FF857C71FF857D72FF857D72FF857D73FF857D73FFFFF2DFFF857D74FF857E
      74FF857E74FF857E75FF857E75FF857E75FF857E75FF857E75FF857E75FFFFF4
      E3FFFFF4E3FFD09D81FF00000000000000000000000000000000000000000000
      00009A6853FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCF9FFFDFBF8FFDED2
      CAFFA58066FFEECE98FFEFC785FF8E776CDC2020202100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEF9F3FFFFFAF4FFFFF8EEFFFFF7ECFFFFF5E7FFFFF4E4FFFFF2
      DFFFFFF1DCFFFFEFD7FFFFEED4FFFFECCFFFFFEFCEFFC4C5C5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BDFFAAAAAAFF6B6E70FFFFD8B1FFFFD7B1FFFFD7B1FFCA9798FFFFD9D9FFC48F
      8FFFC59292FFBB8686FFB68181FFBA8888FFC29393FFD4AAAAFFDDB4B4FFD9AC
      ACFFB98686FF926D6DFF6E6F6FFF000000000000000000000000FBC897FFFFF0
      D9FFFFE7C1FFFFE9C7FFFFEAC9FFFFEBCCFFFFECCEFFFFEDD2FFFFEED4FFFFEF
      D7FFFFF0D9FFFFF0DAFFFFF0DBFFFFF1DCFFFFF1DCFFFFF1DDFFFFF2DEFFFFF2
      DEFFFFF2DFFFFFF2E0FFFFF2E0FFFFF3E0FFFFF3E1FFFFF3E1FFFFF3E1FFFFF3
      E1FFFFF3E1FFD09D81FF00000000000000000000000000000000000000000000
      0000996952FFFEFFFDFFFEFEFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFBF8FFFDFBF7FFDFD3
      CBFFA3795BFFBF9462FF90796FD6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5FFC6C4C3FFCBC9C8FFD9D5D0FFE0DBD3FFEDE6DAFFF4ECDEFFFFF6
      E2FFFFF8E3FFFFF5DCFFFFF3D9FFFFF2D4FFFBE8CBFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1C1
      C1FFB0B0B0FF727473FF988066FFA48B6FFFAE9375FFD39FA0FFFFDADAFFC58F
      8FFFC69191FFC59191FFC49090FFC28F8FFFC18E8EFFBF8C8CFFBE8B8BFFBB88
      88FFBA8787FF957171FF727373FF000000000000000000000000A17F61A3FEF4
      E5FFFFF0D9FFFFE8C3FFFFE8C5FFFFEACAFFFFEBCCFFFFECD0FFFFEDD1FFFFEE
      D5FFFFEFD7FFFFF0D9FFFFF0DAFFFFF0DBFFFFF1DBFFFFF1DCFFFFF1DDFFFFF1
      DDFFFFF2DEFFFFF2DEFFFFF2DFFFFFF2DFFFFFF2E0FFFFF2E0FFFFF2E0FFFFF7
      ECFFF6E1CDFF846352A300000000000000000000000000000000000000000000
      0000976752FFFEFDFCFFFEFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFDFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFCF9FFFDFBF7FFFDFBF7FFDBCD
      C4FFA77C58FF917A71D41919191A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFFD8D8D8FFD1D1D1FFC3C3C3FFBEBEBEFFAFAFB0FFA6A7A7FF9697
      98FF909191FF9A9895FFA39F9AFFB2ACA2FFAAA49CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C2FFB1B1B1FF939393FF909192FF8D8E90FF8A8C8DFFD7A0A0FFFFD9D9FFEBCD
      CDFFE6C7C7FFD8B4B4FFD1A9A9FFC49393FFC18D8DFFBE8B8BFFBD8A8AFFBA87
      87FFBA8787FF967272FF727373FF00000000000000000000000000000000A17F
      61A3FBC897FFF9C696FFF8C595FFF6C394FFF4C193FFF2BF92FFF1BE92FFEFBC
      90FFEEBB90FFEBB88FFFEAB78EFFE8B58DFFE7B48CFFE5B28BFFE4B18BFFE1AE
      8AFFE0AD89FFDEAB88FFDDAA87FFDBA886FFD9A686FFD7A484FFD6A384FFD4A1
      83FF866653A30000000000000000000000000000000000000000000000000000
      0000986853FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B72
      62FF8F7E78BE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4FFBDBDBDFF9E9E9EFF999999FF939393FF8F8F8FFF888A8AFF868989FF8184
      84FF7B8383FF807B7BFF847A7AFF897979FF8E7878FF947676FF987777FFA077
      77FFA47878FF837474FF696B6BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B6E5AFF9B6C58FF9A6C57FF996B57FF996B57FF996C58FF986A56FF976B
      57FF976955FF956856FF956954FF936855FF936653FF916552FF916653FF7E76
      7294070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B8FFC8C8C8FFCACACAFFCFCFCFFFCCCCCCFFC8C8C8FFC8C8C8FFC1C1C1FFBBBB
      BBFFBCBCBCFFB2B2B2FFB0B1B1FFA7A8A8FFA5A6A6FF9D9F9FFF969898FF9294
      94FF878888FF767676FF777878FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    Caption = 'TUNGGU . . . .'
    ShowCancel = False
    OnProgress = pb1Progress
    Left = 360
    Top = 288
  end
end
