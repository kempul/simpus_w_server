object dataBPJS: TdataBPJS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 514
  Width = 751
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
    Left = 424
    Top = 16
    EncryptedPassword = '91FF98FF9EFF91FF98FF98FF90FF9BFF94FF94FF'
  end
  object uniTrans1: TUniTransaction
    DefaultConnection = conn1
    DefaultCloseAction = taCommit
    Left = 288
    Top = 84
  end
  object pgProvider1: TPostgreSQLUniProvider
    Left = 356
    Top = 16
  end
  object uqbpjs1: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select b.*, p.nama_lengkap from simpus2.bpjs_kunjungan b'
      
        'inner join simpus2.pasien_kunjungan k on ((k.tanggal = b.tgl) an' +
        'd (k.nomor = b.nomor)) '
      'inner join simpus2.capil_nik p on (p.nik = k.nik)'
      'where '
      '('
      '   ( b.tgl_pulang::date = :vtgl)'
      ')'
      'order by tgl, idx')
    Left = 152
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vtgl'
      end>
  end
  object dsbpjs: TJvDataSource
    DataSet = uqbpjs1
    Left = 288
    Top = 16
  end
  object unsqlProses: TUniSQL
    Connection = conn1
    Transaction = uniTrans1
    Left = 360
    Top = 240
  end
  object uniQBuka: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    Left = 352
    Top = 88
  end
  object uniQObat: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.bpjs_obat where tgl = :tgl and nomor = :no' +
        'mor')
    MasterSource = dsbpjs
    Left = 128
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
      end
      item
        DataType = ftUnknown
        Name = 'nomor'
      end>
  end
  object dsObat: TJvDataSource
    DataSet = uniQObat
    Left = 176
    Top = 152
  end
  object uniQMCU: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.bpjs_mcu where tgl = :tgl and nomor = :nom' +
        'or')
    MasterSource = dsbpjs
    Left = 264
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
      end
      item
        DataType = ftUnknown
        Name = 'nomor'
      end>
  end
  object dsMCU: TJvDataSource
    DataSet = uniQMCU
    Left = 312
    Top = 160
  end
  object uniQTindakan: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.bpjs_tindakan where tgl = :tgl and nomor =' +
        ' :nomor')
    MasterSource = dsbpjs
    Left = 416
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl'
      end
      item
        DataType = ftUnknown
        Name = 'nomor'
      end>
  end
  object dsTindakan: TJvDataSource
    DataSet = uniQTindakan
    Left = 464
    Top = 160
  end
  object unspDaftarHapus: TUniStoredProc
    StoredProcName = 'simpus2.ubah_pasca_hapus_daftar'
    SQL.Strings = (
      
        'SELECT * FROM simpus2.ubah_pasca_hapus_daftar(:ip_tanggal, :ip_n' +
        'omor)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 448
    Top = 248
    ParamData = <
      item
        DataType = ftDate
        Name = 'ip_tanggal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ip_nomor'
        ParamType = ptInput
      end>
  end
  object unspKunjunganHapus: TUniStoredProc
    StoredProcName = 'simpus2.ubah_pasca_hapus_kunjungan'
    SQL.Strings = (
      
        'SELECT * FROM simpus2.ubah_pasca_hapus_kunjungan(:ip_tanggal, :i' +
        'p_nomor)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 536
    Top = 240
    ParamData = <
      item
        DataType = ftDate
        Name = 'ip_tanggal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ip_nomor'
        ParamType = ptInput
      end>
  end
end
