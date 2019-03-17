object DataLab: TDataLab
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
      'SELECT DISTINCT '
      '  simpus2.pasien_lab.tanggal,'
      '  simpus2.pasien_lab.nomor,'
      '  simpus2.capil_nik.nik,'
      '  simpus2.capil_nik.nama_lengkap,'
      '  simpus2.pasien_kunjungan.tanggal_pulang,'
      '  simpus2.pasien_kunjungan.lab_ok,'
      '  simpus2.capil_nik.mr'
      'FROM'
      '  simpus2.pasien_lab'
      
        '  INNER JOIN simpus2.pasien_kunjungan ON (simpus2.pasien_lab.tan' +
        'ggal = simpus2.pasien_kunjungan.tanggal)'
      
        '  AND (simpus2.pasien_lab.nomor = simpus2.pasien_kunjungan.nomor' +
        ')'
      
        '  INNER JOIN simpus2.capil_nik ON (simpus2.pasien_kunjungan.mr =' +
        ' simpus2.capil_nik.mr)'
      'WHERE'
      '  simpus2.pasien_lab.tanggal = CURRENT_DATE OR '
      '  simpus2.pasien_kunjungan.tanggal_pulang IS NULL OR '
      
        '  simpus2.pasien_kunjungan.tanggal_pulang::date = CURRENT_DATE O' +
        'R '
      '  simpus2.pasien_lab.hasil = 0'
      'order by tanggal desc, nomor')
    Left = 220
    Top = 16
  end
  object dsKunjungan1: TJvDataSource
    DataSet = uqKunjungan1
    Left = 288
    Top = 16
  end
  object uqPasienLab: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.pasien_lab where tanggal = :tanggal and no' +
        'mor = :nomor '
      'order by tanggal_pelayanan, idx, idx0')
    MasterSource = dsKunjungan1
    Left = 356
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'tanggal'
        ParamType = ptInput
        Value = 42691d
      end
      item
        DataType = ftInteger
        Name = 'nomor'
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsPasienLab: TJvDataSource
    DataSet = uqPasienLab
    Left = 424
    Top = 16
  end
  object qbuka: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    Left = 560
    Top = 16
  end
end
