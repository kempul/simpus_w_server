object dataBidan: TdataBidan
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 361
  Width = 617
  object conn1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'simpusdb'
    DefaultTransaction = uniTrans1
    PoolingOptions.Validate = True
    Pooling = True
    Username = 'dkkuser'
    Server = 'localhost'
    LoginPrompt = False
    Left = 16
    Top = 16
    EncryptedPassword = '91FF98FF9EFF91FF98FF98FF90FF9BFF94FF94FF'
  end
  object uniTrans1: TUniTransaction
    DefaultConnection = conn1
    DefaultCloseAction = taCommit
    Left = 84
    Top = 16
  end
  object pgProvider1: TPostgreSQLUniProvider
    Left = 152
    Top = 16
  end
  object qKK: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.kk where cast(last_update as date) = curre' +
        'nt_date order by upper(kk)')
    Left = 220
    Top = 16
  end
  object dsKK: TJvDataSource
    DataSet = qKK
    Left = 288
    Top = 16
  end
  object qPasien: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select * from simpus2.penduduk where kk = :id_kk '
      'order by upper(nama)')
    MasterSource = dsKK
    Left = 356
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'id_kk'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object dsPasien: TJvDataSource
    DataSet = qPasien
    Left = 424
    Top = 16
  end
  object qbuka: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    Left = 492
    Top = 16
  end
  object qPasien0: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select '
      '    pasien.puskesmas,'
      '    pasien.mr,'
      '    pasien.kk,'
      '    pasien.nama,'
      '    pasien.jenis_kelamin,'
      '    pasien.tempat_lahir,'
      '    pasien.tanggal_lahir,'
      '    pasien.status_teks,'
      '    pasien.umur_th,'
      '    pasien.umur_bln,'
      '    kk.kk nama_kk,'
      '    kk.alamat,'
      '    kk.desa,'
      '    kk.telpon'
      'from simpus.kk'
      
        '   inner join simpus.pasien on (kk.puskesmas = pasien.puskesmas)' +
        ' and (kk.id_kk = pasien.kk) where pasien.puskesmas = :puskesmas'
      'order by upper(nama)')
    Left = 560
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puskesmas'
      end>
  end
  object dsPasien0: TJvDataSource
    DataSet = qPasien0
    Left = 16
    Top = 84
  end
  object qMR: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select '
      '    pasien_mr.mr,'
      '    pasien_mr.ts_diagnosa tanggal_diagnosa,'
      '    pasien_mr.anamnese,'
      '    pasien_mr.tindakan,'
      '    pasien_mr.dokter,'
      '    m_icdx.kode,'
      '    m_icdx.penyakit,'
      '    pasien_mr.adl_baru'
      'from simpus.pasien_mr'
      
        '   inner join simpus.m_icdx on (pasien_mr.penyakit = m_icdx.kode' +
        ') '
      'where '
      'pasien_mr.mr = :mr '
      'order by idx_diag desc')
    Left = 84
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mr'
      end>
  end
  object dsMR: TJvDataSource
    DataSet = qMR
    Left = 152
    Top = 84
  end
  object uspThblDummi: TUniStoredProc
    StoredProcName = 'simpus2.rpt_dummi_thbl_buat'
    SQL.Strings = (
      'SELECT * FROM simpus2.rpt_dummi_thbl_buat(:ip_tahun, :ip_bulan)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 220
    Top = 84
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ip_tahun'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ip_bulan'
        ParamType = ptInput
      end>
  end
  object dsBidanPoned: TJvDataSource
    DataSet = qBidanPoned
    Left = 288
    Top = 84
  end
  object qBidanPoned: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.bidan_poned where idx_bidan = :idx and tah' +
        'un = :tahun and bulan = :bulan order by idx, idx_biaya ')
    MasterSource = dsBidan
    Left = 356
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idx'
      end
      item
        DataType = ftUnknown
        Name = 'tahun'
      end
      item
        DataType = ftUnknown
        Name = 'bulan'
      end>
  end
  object qPoned_pv: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select idx from simpus2.m_poned where kelompok = :kelompok and j' +
        'enis_penyakit = :penyakit')
    Left = 424
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kelompok'
      end
      item
        DataType = ftUnknown
        Name = 'penyakit'
      end>
  end
  object dsBidan: TJvDataSource
    DataSet = qBidan
    Left = 492
    Top = 84
  end
  object qBidan: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select m_bidan.*, cast(:tahun as integer) tahun, cast(:bulan as ' +
        'varchar(20)) bulan from simpus2.m_bidan order by upper(bidan)')
    Left = 560
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tahun'
      end
      item
        DataType = ftUnknown
        Name = 'bulan'
      end>
  end
  object q_bidanPonedCetak: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select '
      '    bidan_poned.tahun,'
      '    bidan_poned.idx_bulan,'
      '    bidan_poned.idx_bidan,'
      '    bidan_poned.idx,'
      '    bidan_poned.no1,'
      '    bidan_poned.nomor,'
      '    bidan_poned.kelompok,'
      '    bidan_poned.jenis_penyakit,'
      '    bidan_poned.bulan,'
      '    bidan_poned.bidan,'
      '    bidan_poned.desa,'
      '    bidan_poned.jml_pasien,'
      '    bidan_poned.jml_meninggal,'
      '    bidan_poned.idx_biaya,'
      '    bidan_poned.biaya'
      'from simpus2.bidan_poned'
      'where '
      '   ('
      '      (bidan_poned.tahun = :tahun)'
      '   and '
      '      (bidan_poned.idx_bulan = :bulan_id)'
      '   )'
      'order by bidan_poned.bidan, bidan_poned.no1, bidan_poned.idx')
    Left = 16
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tahun'
      end
      item
        DataType = ftUnknown
        Name = 'bulan_id'
      end>
  end
  object uspBidanPoned: TUniStoredProc
    StoredProcName = 'simpus2.bidan_poned_input'
    SQL.Strings = (
      
        'SELECT * FROM simpus2.bidan_poned_input(:ip_tahun, :ip_bulan, :i' +
        'p_bidan)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 84
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ip_tahun'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ip_bulan'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ip_bidan'
        ParamType = ptInput
      end>
  end
end
