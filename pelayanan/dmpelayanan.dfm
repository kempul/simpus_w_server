object dataPelayanan: TdataPelayanan
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 754
  Width = 749
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 16
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 84
    Top = 16
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 152
    Top = 16
  end
  object fdQueryBuka: TFDQuery
    Connection = FDConnection1
    Left = 220
    Top = 16
  end
  object fdQueryKunjungan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT capil.capil_nik.mr, capil.capil_nik.nik, capil.capil_nik.' +
        'nama_lengkap, capil.capil_nik.tmpt_lahir, capil.capil_nik.tgl_la' +
        'hir, '
      
        'capil.capil_nik.kartu_bpjs, age(capil.capil_nik.tgl_lahir) as um' +
        'ur ,simpus.pasien_kunjungan.* FROM simpus.pasien_kunjungan '
      
        '    INNER JOIN capil.capil_nik ON (simpus.pasien_kunjungan.id_pa' +
        'sien = capil.capil_nik.idxstr) '
      '    where ( '
      
        '      ((simpus.pasien_kunjungan.instalasi = '#39'RAWAT JALAN'#39') or (s' +
        'impus.pasien_kunjungan.instalasi = '#39'GAWAT DARURAT'#39')) and '
      '      ((simpus.pasien_kunjungan.tanggal = current_date or'
      '       (simpus.pasien_kunjungan.sdh_pulang = 0 ) or '
      
        '      (cast(simpus.pasien_kunjungan.tanggal_pulang as date) = cu' +
        'rrent_date)) and '
      '      (simpus.pasien_kunjungan.poli_tujuan is not null)))'
      '  order by sdh_dilayani, tanggal desc, nomor;'
      '')
    Left = 288
    Top = 16
  end
  object dsKunjungan: TJvDataSource
    DataSet = fdQueryKunjungan
    Left = 356
    Top = 16
  end
  object fdQueryFisik: TFDQuery
    BeforeDelete = fdQueryFisikBeforeDelete
    MasterSource = dsKunjungan
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.pemeriksaan_fisik where idxstr = :idxstr')
    Left = 424
    Top = 16
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsFisik: TJvDataSource
    DataSet = fdQueryFisik
    Left = 492
    Top = 16
  end
  object fdQueryRm: TFDQuery
    BeforeDelete = fdQueryRmBeforeDelete
    MasterSource = dsKunjungan
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.rekam_medis where idxstr = :idxstr')
    Left = 560
    Top = 16
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRm: TJvDataSource
    DataSet = fdQueryRm
    Left = 628
    Top = 16
  end
  object fdQueryIcdxCek: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(*) as jumlah, nm_diag, non_spesialis from jkn.m_dia' +
        'gnosis where kd_diag = :kd_diag group by nm_diag, non_spesialis')
    Left = 16
    Top = 84
    ParamData = <
      item
        Name = 'KD_DIAG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryDiagnosaTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_diag from simpus.rekam_medis where idxstr = :idxstr an' +
        'd '
      
        'idx = (select max(idx) from simpus.rekam_medis where idxstr = :i' +
        'dxstr)')
    Left = 84
    Top = 84
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryCariIdcx: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from jkn.m_diagnosis where upper(nm_diag) like :paramic' +
        'dx  or upper(kd_diag) like :paramicdx order by upper(nm_diag)')
    Left = 152
    Top = 84
    ParamData = <
      item
        Name = 'PARAMICDX'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsCariIcdx: TJvDataSource
    DataSet = fdQueryCariIdcx
    Left = 220
    Top = 84
  end
  object fdQueryCheckSpesialis: TFDQuery
    MasterSource = dsKunjungan
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  COUNT(jkn.m_diagnosis.kd_diag) AS jml'
      'FROM'
      '  simpus.rekam_medis'
      
        '  INNER JOIN jkn.m_diagnosis ON (simpus.rekam_medis.penyakit = j' +
        'kn.m_diagnosis.kd_diag)'
      'WHERE'
      
        '  jkn.m_diagnosis.non_spesialis = false and simpus.rekam_medis.i' +
        'dxstr = :idxstr ')
    Left = 288
    Top = 84
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryIdxGigi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idx from simpus.m_gigi where jenis = :jenis and ket = :ke' +
        't limit 1')
    Left = 356
    Top = 84
    ParamData = <
      item
        Name = 'JENIS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KET'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryTindakanGigiTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_tindakangigi from simpus.tindakangigi where idxstr = :' +
        'idxstr and '
      
        'idx = (select max(idx) from simpus.tindakangigi where idxstr = :' +
        'idxstr)'
      '')
    Left = 424
    Top = 84
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryMTindakanLU: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from simpus.m_tindakan where kd_tkp = :kd_tkp order by ' +
        'upper(nm_tindakan)')
    Left = 492
    Top = 84
    ParamData = <
      item
        Name = 'KD_TKP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsMTindakanLU: TJvDataSource
    DataSet = fdQueryMTindakanLU
    Left = 560
    Top = 84
  end
  object fdQueryTindakanTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_tindakan from simpus.tindakan where idxstr = :idxstr a' +
        'nd '
      
        'nomor = (select max(nomor) from simpus.tindakan where idxstr = :' +
        'idxstr)')
    Left = 628
    Top = 84
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryObatPasien: TFDQuery
    BeforeDelete = fdQueryObatPasienBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'select pasien_obat.*, m_obat.nm_obat from farmasi.pasien_obat '
      
        'inner join farmasi.m_obat on (pasien_obat.kd_obat = m_obat.kd_ob' +
        'at)'
      'where idxstr = :idxstr order by idx desc')
    Left = 16
    Top = 152
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsObatPasien: TJvDataSource
    DataSet = fdQueryObatPasien
    Left = 84
    Top = 152
  end
  object fdQueryObatCari: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from farmasi.m_obat where upper(kd_obat) like :paramoba' +
        't or upper(nm_obat) like :paramobat order by nm_obat')
    Left = 152
    Top = 152
    ParamData = <
      item
        Name = 'PARAMOBAT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsObatCari: TJvDataSource
    DataSet = fdQueryObatCari
    Left = 220
    Top = 152
  end
  object fdQueryObatPasienTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id from farmasi.pasien_obat where idxstr = :idxstr and '
      
        'idx = (select max(idx) from farmasi.pasien_obat where idxstr = :' +
        'idxstr)')
    Left = 288
    Top = 152
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryImunisasi: TFDQuery
    BeforeDelete = fdQueryImunisasiBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      
        'select simpus.imunisasi.*, m_imunisasi.vaksin  from simpus.imuni' +
        'sasi'
      
        'inner join simpus.m_imunisasi on (imunisasi.imunisasi = m_imunis' +
        'asi.idx)'
      'where idxstr = :idxstr'
      'order by nomor desc')
    Left = 356
    Top = 152
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsImunisasi: TJvDataSource
    DataSet = fdQueryImunisasi
    Left = 424
    Top = 152
  end
  object fdQueryMImunisasiCari: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_imunisasi order by upper(vaksin)')
    Left = 492
    Top = 152
  end
  object dsMImunisasiCari: TJvDataSource
    DataSet = fdQueryMImunisasiCari
    Left = 560
    Top = 152
  end
  object fdQueryImunisasiTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id from simpus.imunisasi where idxstr = :idxstr and '
      
        'nomor = (select max(nomor) from simpus.imunisasi where idxstr = ' +
        ':idxstr)')
    Left = 628
    Top = 152
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryTindakanGigi: TFDQuery
    BeforeDelete = fdQueryTindakanGigiBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  simpus.tindakangigi.id_tindakangigi,'
      '  simpus.tindakangigi.idxstr,'
      '  simpus.tindakangigi.idx,'
      '  simpus.tindakangigi.tgl_tindakan,'
      '  simpus.tindakangigi.tindakan,'
      '  simpus.m_gigi.jenis,'
      '  simpus.m_gigi.ket'
      'FROM'
      '  simpus.tindakangigi'
      
        '  INNER JOIN simpus.m_gigi ON (simpus.tindakangigi.idx = simpus.' +
        'm_gigi.idx)'
      'WHERE idxstr = :idxstr'
      'ORDER BY'
      '  simpus.tindakangigi.idx DESC')
    Left = 16
    Top = 220
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsTindakanGigi: TJvDataSource
    DataSet = fdQueryTindakanGigi
    Left = 84
    Top = 220
  end
  object fdQueryTindakan: TFDQuery
    BeforeDelete = fdQueryTindakanBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  simpus.tindakan.id_tindakan,'
      '  simpus.tindakan.idxstr,'
      '  simpus.tindakan.nomor,'
      '  simpus.tindakan.kd_tindakan,'
      '  simpus.tindakan.biaya,'
      '  simpus.tindakan.keterangan,'
      '  simpus.tindakan.hasil,'
      '  simpus.tindakan.kd_tindakan_sk,'
      '  simpus.tindakan.tanggal,'
      '  simpus.m_tindakan.nm_tindakan'
      'FROM'
      '  simpus.tindakan'
      
        '  INNER JOIN simpus.m_tindakan ON (simpus.tindakan.kd_tindakan =' +
        ' simpus.m_tindakan.kd_tindakan)'
      'WHERE idxstr = :idxstr'
      'ORDER BY'
      '  simpus.tindakan.nomor DESC')
    Left = 152
    Top = 220
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsTindakan: TJvDataSource
    DataSet = fdQueryTindakan
    Left = 220
    Top = 220
  end
  object fdQueryIdxPoned: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idx from simpus.m_poned where kelompok = :kelompok and je' +
        'nis_penyakit = :jenis_penyakit limit 1')
    Left = 288
    Top = 220
    ParamData = <
      item
        Name = 'KELOMPOK'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'JENIS_PENYAKIT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryPoned: TFDQuery
    BeforeDelete = fdQueryPonedBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  simpus.pasien_poned.idxstr,'
      '  simpus.pasien_poned.poned,'
      '  simpus.pasien_poned.tanggal,'
      '  simpus.m_poned.kelompok,'
      '  simpus.m_poned.jenis_penyakit'
      'FROM'
      '  simpus.pasien_poned'
      
        '  INNER JOIN simpus.m_poned ON (simpus.pasien_poned.poned = simp' +
        'us.m_poned.idx)'
      'WHERE idxstr = :idxstr')
    Left = 356
    Top = 220
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsPoned: TJvDataSource
    DataSet = fdQueryPoned
    Left = 424
    Top = 220
  end
  object fdQueryRujukanMaster: TFDQuery
    MasterSource = dsKunjungan
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * from simpus.rujukan_view'
      'WHERE'
      '  idxstr = :idxstr')
    Left = 492
    Top = 220
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRujukanMaster: TJvDataSource
    DataSet = fdQueryRujukanMaster
    Left = 560
    Top = 220
  end
  object fdQueryRujukanRm: TFDQuery
    MasterSource = dsKunjungan
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  simpus.rekam_medis.idxstr,'
      '  simpus.rekam_medis.penyakit,'
      '  simpus.rekam_medis.tindakan,'
      '  jkn.m_diagnosis.nm_diag'
      'FROM'
      '  jkn.m_diagnosis'
      
        '  INNER JOIN simpus.rekam_medis ON (jkn.m_diagnosis.kd_diag = si' +
        'mpus.rekam_medis.penyakit)'
      'WHERE'
      '  simpus.rekam_medis.idxstr = :idxstr'
      'order by id_diag')
    Left = 628
    Top = 220
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsRujukanRm: TJvDataSource
    DataSet = fdQueryRujukanRm
    Left = 16
    Top = 288
  end
  object fdQueryRegisterHarian: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.register_harian_view where tanggal = :ta' +
        'nggal')
    Left = 84
    Top = 288
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryPuskesmas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.puskesmas where adl_aktif = 1 limit 1')
    Left = 152
    Top = 288
  end
  object fdQueryRegisterResume: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select '#39'Resume Biaya'#39' as resume, biaya, count(idxstr) as jumlah ' +
        'from reporting.register_harian_view'
      'where tanggal = :tanggal'
      'group by biaya ')
    Left = 220
    Top = 288
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryLab: TFDQuery
    BeforeDelete = fdQueryLabBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM'
      '  lab.pasien_lab'
      'WHERE idxstr = :idxstr')
    Left = 288
    Top = 288
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsLab: TJvDataSource
    DataSet = fdQueryLab
    Left = 356
    Top = 288
  end
  object dsMLabCari: TJvDataSource
    DataSet = fdQueryMLabCari
    Left = 424
    Top = 288
  end
  object fdQueryMLabCari: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from lab.m_lab order by upper(jenis_pemeriksaan)')
    Left = 492
    Top = 288
  end
  object fdQueryPasienLabTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id from lab.pasien_lab where idxstr = :idxstr and idx = (' +
        'select max(idx) from lab.pasien_lab where idxstr = :idxstr)')
    Left = 560
    Top = 288
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryRegisterByPoli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from reporting.register_harian_poli_view where tanggal ' +
        '= :tanggal')
    Left = 628
    Top = 288
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryResumePoli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select '#39'Resume Poli'#39' as resume, poli_tujuan, count(idxstr) as ju' +
        'mlah from reporting.register_harian_poli_view'
      'where tanggal = :tanggal'
      'group by poli_tujuan ')
    Left = 16
    Top = 356
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDConnection1: TFDConnection
    LoginPrompt = False
    Left = 84
    Top = 356
  end
  object fdQ1Cetak: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  jkn.rujukan.*,'
      '  jkn.rujukan.idxstr,'
      '  simpus.pulang.provider_rujuk,'
      'extract (year from age(jkn.rujukan."tglLahir")) as umur,'
      
        '  case when "nmTacc" = null then null else '#39'# Alasan Rujuk Diagn' +
        'osa Non-Spesialistik :'#39' || '
      '  "nmTacc" || '#39' '#39' || "alasanTacc" end as teks_tacc  '
      'FROM'
      '  jkn.rujukan'
      
        '  INNER JOIN simpus.pulang ON (jkn.rujukan.idxstr = simpus.pulan' +
        'g.idxstr)'
      ' where jkn.rujukan.idxstr = :idxstr')
    Left = 336
    Top = 336
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQ1CetakNon: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  capil.capil_nik.nama_lengkap,'
      '  capil.capil_nik.tgl_lahir,'
      '  capil.capil_nik.mr,'
      '  simpus.pasien_kunjungan.idxstr,'
      '  simpus.puskesmas.nama,'
      '  simpus.diagnosa_bantu.penyakit_panjang,'
      '  simpus.pulang.pulang_tanggal,'
      '  simpus.pulang.provider_rujuk,'
      '  case '
      '  when simpus.pulang.jenis = 0 then simpus.pulang.subspesialis '
      '  when simpus.pulang.jenis = 1 then simpus.pulang.khusus '
      '  when simpus.pulang.jenis = 2 then simpus.pulang.subspesialis'
      '  else simpus.pulang.poli_rujuk end as poli_rujuk, '
      '  simpus.pulang.catatan,'
      '  simpus.pulang.alasan_tacc,'
      '  left(capil.capil_nik.jenis_kelamin, 1) as sex,'
      '  simpus.diagnosa_bantu.dokter_panjang,'
      '  simpus.diagnosa_bantu.tindakan,'
      '  extract (year from age(capil.capil_nik.tgl_lahir)) as umur'
      'FROM'
      '  capil.capil_nik'
      
        '  INNER JOIN simpus.pasien_kunjungan ON (capil.capil_nik.idxstr ' +
        '= simpus.pasien_kunjungan.id_pasien)'
      
        '  INNER JOIN simpus.puskesmas ON (simpus.pasien_kunjungan.puskes' +
        'mas = simpus.puskesmas.kd_cabang)'
      
        '  INNER JOIN simpus.diagnosa_bantu ON (simpus.pasien_kunjungan.i' +
        'dxstr = simpus.diagnosa_bantu.idxstr)'
      
        '  INNER JOIN simpus.pulang ON (simpus.pasien_kunjungan.idxstr = ' +
        'simpus.pulang.idxstr)'
      'where'
      'simpus.pulang.idxstr = :idxstr')
    Left = 272
    Top = 416
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQ1AntriAmbil: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select antri from simpus.pasien_kunjungan '
      'where'
      
        'antri = (select min(antri) from simpus.pasien_kunjungan where ta' +
        'nggal = :tanggal and panggil_layani = 0 and poli_layanan = :poli' +
        ')  ')
    Left = 432
    Top = 344
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'POLI'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQMasterPoliAntrian: TFDQuery
    BeforeDelete = fdQueryLabBeforeDelete
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM'
      '  simpus.m_poli_antri order by upper(poli_antrian)')
    Left = 512
    Top = 360
  end
end
