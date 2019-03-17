object Form1_aa: TForm1_aa
  Left = 0
  Top = 0
  Caption = 'Form1_aa'
  ClientHeight = 491
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = JvMainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelUtama: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 686
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object JvMainMenu1: TJvMainMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 48
    Top = 16
    object N1: TMenuItem
      Caption = '#'
    end
    object File1: TMenuItem
      Caption = '&File'
      object UbahPasswor1: TMenuItem
        Caption = 'Ubah Password'
        OnClick = UbahPasswor1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Quit1: TMenuItem
        Caption = '&Quit'
        OnClick = Quit1Click
      end
    end
    object MasterData0: TMenuItem
      Caption = 'Master &Data'
      object Puskesmas1: TMenuItem
        Action = actMasterPuskesmas
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Dokter1: TMenuItem
        Action = actMasterDokter
      end
      object MasterPoli1: TMenuItem
        Caption = 'Master P&oli'
        object PoliFKTP1: TMenuItem
          Action = actMasterPoli
        end
        object PoliAntrian0: TMenuItem
          Action = actMasterPoliAntrian
        end
      end
      object MasterInstalasi0: TMenuItem
        Action = actMasterInstalasi
      end
      object MasterICDX1: TMenuItem
        Action = actMasterICDX
      end
      object MasterRSRujukan1: TMenuItem
        Action = actMasterRsRujukan
        Visible = False
      end
      object MasterTindakan1: TMenuItem
        Action = actMasterTindakan
      end
      object MasterKesadaran1: TMenuItem
        Caption = 'Master Kesadaran'
        Visible = False
      end
      object MasterPulang1: TMenuItem
        Caption = 'Master Pulang'
        Visible = False
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object MasterBiaya1: TMenuItem
        Action = masterBiaya
        Caption = 'Master &Biaya'
      end
      object MasterPONED1: TMenuItem
        Action = actMasterPONED
      end
      object MasterImunisasi1: TMenuItem
        Action = actMasterImunisasi
      end
      object N9: TMenuItem
        Caption = '-'
        Visible = False
      end
      object MasterObat2: TMenuItem
        Action = actMasterObat
      end
      object MasterLab2: TMenuItem
        Action = actMasterLab
      end
      object FeeRawat1: TMenuItem
        Action = MasterRawat
        Visible = False
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ServisdanEmbalase1: TMenuItem
        Action = MasterServis
        Visible = False
      end
    end
    object DataPasien0: TMenuItem
      Caption = 'Pasien'
      object Pasien1: TMenuItem
        Action = actPasien
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object pasienLama: TMenuItem
        Action = actPasienLama
        Visible = False
      end
      object MedicalRecord1: TMenuItem
        Action = actPasienMR
        Visible = False
      end
    end
    object RawatInap0: TMenuItem
      Caption = 'Rawat Inap'
      object MasterKelasKamar1: TMenuItem
        Action = actKamarRi
      end
      object JenisPenjualan1: TMenuItem
        Action = actMasterJmlTmpTidur
      end
      object PelayananRI: TMenuItem
        Action = actPasienRI
      end
    end
    object Pustu0: TMenuItem
      Caption = 'Pustu dan Bidan Desa'
      Visible = False
      object MasterPUSTU1: TMenuItem
        Action = actMasterPustu
      end
      object MasterBidanDesa1: TMenuItem
        Action = actMasterBidan
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object DataEntriPustu1: TMenuItem
        Caption = 'Data Entri &Pustu'
        object Kunjungan1: TMenuItem
          Action = actPustuData
        end
        object Kesakitan1: TMenuItem
          Action = actPustuKesakitan
        end
      end
      object DataEntriBidanDesa1: TMenuItem
        Action = actBidanPoned
      end
    end
    object RawatJalan1: TMenuItem
      Caption = 'Rawat Jalan'
      object KunjunganPasien: TMenuItem
        Action = actPasienKunjungan
      end
      object PelayananPasien1: TMenuItem
        Action = actPasienPelayanan
      end
    end
    object InstalasiFarmasi0: TMenuItem
      Caption = 'Instalasi Farmasi'
      Visible = False
      object MasterObat1: TMenuItem
        Action = actMasterObat
      end
      object indakanPasien1: TMenuItem
        Action = actFarmasi
      end
    end
    object InstalasiLab0: TMenuItem
      Caption = 'Instalasi Lab'
      Visible = False
      object MasterLab1: TMenuItem
        Action = actMasterLab
      end
      object LabPasien1: TMenuItem
        Action = actPasienLab
      end
    end
    object Prolanis0: TMenuItem
      Action = actProlanis
    end
    object Tools0: TMenuItem
      Caption = 'Tools'
      object MasterDataBPJS1: TMenuItem
        Action = actBPJSMaster
      end
      object toolBPJS: TMenuItem
        Action = actBPJSTool
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ToolDinkes1: TMenuItem
        Action = actToolsDinkes
      end
      object EksportData1: TMenuItem
        Caption = '&Eksport Laporan'
        Visible = False
      end
      object KirimDataOnline1: TMenuItem
        Action = actKirimDataOnline
        Visible = False
      end
      object ImportMasterData1: TMenuItem
        Action = actImportMaster
        Visible = False
      end
    end
    object Laporan0: TMenuItem
      Caption = 'Laporan'
      object Laporan2: TMenuItem
        Action = actLaporan
      end
    end
    object Setting0: TMenuItem
      Caption = '&Setting'
      object Pemakai1: TMenuItem
        Action = Pemakai
      end
      object DataEntriBidanDesa2: TMenuItem
        Caption = '-'
      end
      object PasswordBPJS1: TMenuItem
        Action = actPasswdPcare
      end
    end
    object Help0: TMenuItem
      Caption = '&Help'
      object tentangAplikasi1: TMenuItem
        Caption = 'Tentang Aplikasi'
        OnClick = tentangAplikasi1Click
      end
    end
  end
  object ActionList1: TActionList
    Left = 16
    Top = 16
    object actMasterPuskesmas: TAction
      Category = 'MasterData'
      Caption = '&Puskesmas'
      OnExecute = actMasterPuskesmasExecute
    end
    object actMasterDokter: TAction
      Category = 'MasterData'
      Caption = '&Dokter'
      OnExecute = actMasterDokterExecute
    end
    object actMasterPoli: TAction
      Category = 'MasterData'
      Caption = 'Master P&oli FKTP'
      OnExecute = actMasterPoliExecute
    end
    object actMasterJmlTmpTidur: TAction
      Category = 'RawatInap'
      Caption = '&Jumlah Tempat Tidur Rawat Inap'
      OnExecute = actMasterJmlTmpTidurExecute
    end
    object MasterServis: TAction
      Category = 'MasterData'
      Caption = 'Jasa &Resep dan Embalase'
    end
    object MasterRawat: TAction
      Category = 'MasterData'
      Caption = 'Master &Rawat Aplikasi'
      OnExecute = MasterRawatExecute
    end
    object Pemakai: TAction
      Caption = '&Pemakai'
      OnExecute = PemakaiExecute
    end
    object actMasterICDX: TAction
      Category = 'MasterData'
      Caption = 'Master &ICD-X'
      OnExecute = actMasterICDXExecute
    end
    object actMasterPONED: TAction
      Category = 'MasterData'
      Caption = 'Master &PONED'
      OnExecute = actMasterPONEDExecute
    end
    object masterBiaya: TAction
      Category = 'MasterData'
      Caption = 'Master &Biaya Pasien'
      OnExecute = masterBiayaExecute
    end
    object actPasien: TAction
      Category = 'DATAPASIEN'
      Caption = '&Data Pasien'
      OnExecute = actPasienExecute
    end
    object actPasienKunjungan: TAction
      Category = 'DATAPASIEN'
      Caption = '&Kunjungan Pasien'
      OnExecute = actPasienKunjunganExecute
    end
    object actPasienMR: TAction
      Category = 'DATAPASIEN'
      Caption = '&Medical Record Pasien'
    end
    object actEksportData: TAction
      Category = 'Tools'
      Caption = '&Eksport Data'
    end
    object actKirimDataOnline: TAction
      Category = 'Tools'
      Caption = '&Kirim Data Online'
    end
    object actImportMaster: TAction
      Category = 'Tools'
      Caption = '&Import Master Data'
    end
    object actLaporan: TAction
      Category = 'Laporan'
      Caption = '&Cetak Laporan'
      OnExecute = actLaporanExecute
    end
    object actMasterPustu: TAction
      Category = 'Pustu'
      Caption = '&Master PUSTU'
    end
    object actMasterBidan: TAction
      Category = 'Pustu'
      Caption = 'M&aster Bidan'
    end
    object actPustuData: TAction
      Category = 'Pustu'
      Caption = '&Kunjungan'
    end
    object actBidanPoned: TAction
      Category = 'Pustu'
      Caption = 'Data Entri &Bidan Desa'
    end
    object actPustuKesakitan: TAction
      Category = 'Pustu'
      Caption = 'Ke&sakitan'
    end
    object actPasienPelayanan: TAction
      Category = 'DATAPASIEN'
      Caption = 'Pelayanan Pasien'
      OnExecute = actPasienPelayananExecute
    end
    object actFarmasi: TAction
      Category = 'Instalasi_Farmasi'
      Caption = 'Obat Pasien'
    end
    object actPasienLab: TAction
      Category = 'Instalasi_Lab'
      Caption = 'Lab Pasien'
    end
    object actBPJSTool: TAction
      Category = 'Tools'
      Caption = 'Tool BPJS'
      OnExecute = actBPJSToolExecute
    end
    object actBPJSMaster: TAction
      Category = 'Tools'
      Caption = '&Master Data BPJS'
      OnExecute = actBPJSMasterExecute
    end
    object actMasterImunisasi: TAction
      Category = 'MasterData'
      Caption = 'Master Imunisasi'
      OnExecute = actMasterImunisasiExecute
    end
    object actPasienLama: TAction
      Category = 'DATAPASIEN'
      Caption = 'Sinkronisasi Data Pasien'
    end
    object actPasienRI: TAction
      Category = 'RawatInap'
      Caption = 'Pelayanan Rawat Inap'
      OnExecute = actPasienRIExecute
    end
    object actMasterLab: TAction
      Category = 'MasterData'
      Caption = 'Master Lab'
      Hint = 'Master Lab'
      OnExecute = actMasterLabExecute
    end
    object actPasswdPcare: TAction
      Caption = 'Password PCare'
      OnExecute = actPasswdPcareExecute
    end
    object actMasterInstalasi: TAction
      Category = 'MasterData'
      Caption = 'Master Instalasi'
      OnExecute = actMasterInstalasiExecute
    end
    object actKamarRi: TAction
      Category = 'RawatInap'
      Caption = 'Kelas Rawat Inap'
      OnExecute = actKamarRiExecute
    end
    object actMasterRsRujukan: TAction
      Category = 'MasterData'
      Caption = 'Master RS Rujukan'
      OnExecute = actMasterRsRujukanExecute
    end
    object actMasterPoliAntrian: TAction
      Category = 'MasterData'
      Caption = 'Master Poli Antrian'
      OnExecute = actMasterPoliAntrianExecute
    end
    object actMasterTindakan: TAction
      Category = 'MasterData'
      Caption = 'Master Tindakan'
      OnExecute = actMasterTindakanExecute
    end
    object actMasterObat: TAction
      Category = 'MasterData'
      Caption = 'Master Obat'
      OnExecute = actMasterObatExecute
    end
    object actToolsDinkes: TAction
      Category = 'Tools'
      Caption = 'Tools Dinkes'
      OnExecute = actToolsDinkesExecute
    end
    object actProlanis: TAction
      Caption = 'Prolanis'
      OnExecute = actProlanisExecute
    end
  end
  object PipeServer1: TPipeServer
    Active = False
    OnPipeMessage = PipeServer1PipeMessage
    PipeName = 'PipeSimpus'
    Left = 344
    Top = 264
  end
  object PipeClient1: TPipeClient
    MemoryThrottle = 10240000
    PipeName = 'PipeSimpus'
    OnPipeMessage = PipeClient1PipeMessage
    Left = 480
    Top = 272
  end
end
