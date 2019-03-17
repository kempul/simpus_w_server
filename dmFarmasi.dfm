object DataFarmasi: TDataFarmasi
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 329
  Width = 674
  object pgProvider1: TPostgreSQLUniProvider
    Left = 16
    Top = 16
  end
  object uniTrans1: TUniTransaction
    DefaultConnection = conn1
    DefaultCloseAction = taCommit
    Left = 84
    Top = 16
  end
  object conn1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'simpusrembang1'
    DefaultTransaction = uniTrans1
    PoolingOptions.Validate = True
    Pooling = True
    Username = 'dkkuser'
    Server = 'localhost'
    LoginPrompt = False
    Left = 152
    Top = 16
    EncryptedPassword = '91FF98FF9EFF91FF98FF98FF90FF9BFF94FF94FF'
  end
  object uqKunjungan1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO simpus2.pasien_kunjungan'
      
        '  (tanggal, nomor, mr, biaya, datang_rujukan, datang_sebab, poli' +
        '_tujuan, jam, lama, instalasi, idxstr)'
      'VALUES'
      
        '  (:tanggal, :nomor, :mr, :biaya, :datang_rujukan, :datang_sebab' +
        ', :poli_tujuan, :jam, :lama, :instalasi, :idxstr)')
    SQLDelete.Strings = (
      'DELETE FROM simpus2.pasien_kunjungan'
      'WHERE'
      '  tanggal = :Old_tanggal AND nomor = :Old_nomor')
    SQLUpdate.Strings = (
      'UPDATE simpus2.pasien_kunjungan'
      'SET'
      
        '  tanggal = :tanggal, nomor = :nomor, mr = :mr, biaya = :biaya, ' +
        'datang_rujukan = :datang_rujukan, datang_sebab = :datang_sebab, ' +
        'poli_tujuan = :poli_tujuan, jam = :jam, lama = :lama, instalasi ' +
        '= :instalasi, idxstr = :idxstr'
      'WHERE'
      '  tanggal = :Old_tanggal AND nomor = :Old_nomor')
    SQLLock.Strings = (
      'SELECT * FROM simpus2.pasien_kunjungan'
      'WHERE'
      '  tanggal = :Old_tanggal AND nomor = :Old_nomor'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tanggal, nomor, mr, biaya, datang_rujukan, datang_sebab, ' +
        'poli_tujuan, jam, lama, instalasi, idxstr FROM simpus2.pasien_ku' +
        'njungan'
      'WHERE'
      '  tanggal = :tanggal AND nomor = :nomor')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM simpus2.pasien_kunjungan'
      ''
      ') t')
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'SELECT '
      '  simpus2.capil_nik.nik,'
      '  simpus2.capil_nik.nama_lengkap,'
      '  simpus2.capil_nik.tmpt_lahir,'
      '  simpus2.capil_nik.tgl_lahir,'
      '  age(simpus2.capil_nik.tgl_lahir) as umur,'
      '  simpus2.pasien_kunjungan.tanggal,'
      '  simpus2.pasien_kunjungan.nomor,'
      '  simpus2.pasien_kunjungan.mr,'
      '  simpus2.pasien_kunjungan.biaya,'
      '  simpus2.pasien_kunjungan.datang_rujukan,'
      '  simpus2.pasien_kunjungan.datang_sebab_ket,'
      '  simpus2.pasien_kunjungan.poli_tujuan,'
      '  simpus2.pasien_kunjungan.jam,'
      '  simpus2.pasien_kunjungan.lama,'
      '  simpus2.pasien_kunjungan.instalasi,'
      '  simpus2.pasien_kunjungan.idxstr, '
      '  simpus2.pasien_kunjungan.sdh_pulang,'
      '  simpus2.pasien_kunjungan.sdh_dilayani,'
      '  simpus2.pasien_kunjungan.tanggal_pulang,'
      '  simpus2.pasien_kunjungan.periksa_fisik,'
      '  simpus2.pasien_kunjungan.farmasi_ok'
      'FROM'
      '  simpus2.pasien_kunjungan'
      
        '  INNER JOIN simpus2.capil_nik ON (simpus2.pasien_kunjungan.nik ' +
        '= simpus2.capil_nik.nik)'
      '  where ('
      '      ((simpus2.pasien_kunjungan.sdh_pulang = 0) or'
      
        '      (cast(simpus2.pasien_kunjungan.tanggal_pulang as date) = c' +
        'urrent_date))'
      '      ) '
      'order by farmasi_ok, tanggal desc, nomor')
    Left = 220
    Top = 16
  end
  object dsKunjungan1: TJvDataSource
    DataSet = uqKunjungan1
    Left = 288
    Top = 16
  end
  object uqFarmasi: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select idx_diag, penyakit, tindakan from simpus2.pasien_mr where' +
        ' tanggal = :tanggal and nomor = :nomor')
    MasterSource = dsKunjungan1
    Left = 356
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
      end
      item
        DataType = ftUnknown
        Name = 'nomor'
      end>
  end
  object dsFarmasi: TJvDataSource
    DataSet = uqFarmasi
    Left = 424
    Top = 16
  end
  object unsqlFarmasiUpdate: TUniSQL
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'update simpus2.pasien_kunjungan set farmasi_ok = 1 where tanggal' +
        ' = :tanggal and nomor = :nomor')
    Left = 492
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
      end
      item
        DataType = ftUnknown
        Name = 'nomor'
      end>
  end
  object qbuka: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    Left = 560
    Top = 16
  end
end
