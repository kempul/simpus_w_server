object dataPustu: TdataPustu
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
    Left = 16
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puskesmas'
      end>
  end
  object dsPasien0: TJvDataSource
    DataSet = qPasien0
    Left = 84
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
    Left = 152
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mr'
      end>
  end
  object dsMR: TJvDataSource
    DataSet = qMR
    Left = 220
    Top = 84
  end
  object uspThblDummi: TUniStoredProc
    StoredProcName = 'simpus2.rpt_dummi_thbl_buat'
    SQL.Strings = (
      'SELECT * FROM simpus2.rpt_dummi_thbl_buat(:ip_tahun, :ip_bulan)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 288
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
    Left = 356
    Top = 84
  end
  object qBidanPoned: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.bidan_poned where idx_bidan = :idx and tah' +
        'un = :tahun and bulan = :bulan order by idx, idx_biaya ')
    MasterSource = dsBidan
    Left = 424
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
    Left = 492
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
    Left = 16
    Top = 152
  end
  object qBidan: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select m_bidan.*, cast(:tahun as integer) tahun, cast(:bulan as ' +
        'varchar(20)) bulan from simpus2.m_bidan order by upper(bidan)')
    Left = 84
    Top = 152
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
    Left = 152
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
    Left = 220
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
  object q_pustuCetak: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select '
      '    pustudata.tahun,'
      '    pustudata.bulan,'
      '    pustudata.idx_bulan,'
      '    pustudata.pustu,'
      '    pustudata.id_biaya,'
      '    pustudata.biaya,'
      '    pustudata.inomor,'
      '    pustudata.kelompok0,'
      '    pustudata.kelompok,'
      '    pustudata.bl,'
      '    pustudata.bp,'
      '    pustudata.ll,'
      '    pustudata.lp,'
      '    pustudata.idx'
      'from simpus2.pustudata'
      'where tahun = :tahun and idx_bulan = :bulan_id'
      
        'order by pustudata.pustu, pustudata.inomor, pustudata.kelompok0,' +
        ' pustudata.kelompok, pustudata.id_biaya, pustudata.idx')
    Left = 288
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
  object uspPustuData: TUniStoredProc
    StoredProcName = 'simpus2.pustudata_buat'
    SQL.Strings = (
      
        'SELECT * FROM simpus2.pustudata_buat(:ip_tahun, :ip_bulan, :ip_p' +
        'ustu)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 356
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
        DataType = ftString
        Name = 'ip_pustu'
        ParamType = ptInput
      end>
  end
  object qPustu: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select '
      '    m_pustu.idx,'
      '    m_pustu.pustu,'
      '    m_bulan.bulan,'
      '    m_bulan.bln_id,'
      '    cast(:tahun as integer) tahun'
      'from simpus2.m_bulan,'
      'simpus2.m_pustu'
      'where   bulan = :bulan'
      'order by upper(pustu)')
    Left = 424
    Top = 152
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
  object dsPustu: TJvDataSource
    DataSet = qPustu
    Left = 492
    Top = 152
  end
  object qPustuData: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.pustudata where pustu = :pustu and tahun =' +
        ' :tahun and bulan = :bulan order by idx, id_biaya ')
    MasterSource = dsPustu
    Left = 16
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pustu'
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
  object dsPustuData: TJvDataSource
    DataSet = qPustuData
    Left = 84
    Top = 220
  end
  object q_pustuKesakitan: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    UpdateTransaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.pustu_kesakitan where pustu = :pustu and t' +
        'ahun = :tahun and bulan = :bln_id order by upper(kode), kelompok' +
        '_umur , kat, jenis_kelamin')
    MasterSource = dsPustu
    Left = 152
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pustu'
      end
      item
        DataType = ftUnknown
        Name = 'tahun'
      end
      item
        DataType = ftUnknown
        Name = 'bln_id'
      end>
  end
  object ds_pustuKesakitan: TJvDataSource
    DataSet = q_pustuKesakitan
    Left = 220
    Top = 220
  end
  object q_pustuKesakitanPV: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO simpus2.pustu_kesakitan_pv'
      '  (jml)'
      'VALUES'
      '  (:jml)')
    SQLDelete.Strings = (
      'DELETE FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      
        '  kode = :Old_kode AND kelompok_umur = :Old_kelompok_umur AND ka' +
        't = :Old_kat AND jenis_kelamin = :Old_jenis_kelamin')
    SQLUpdate.Strings = (
      'UPDATE simpus2.pustu_kesakitan_pv'
      'SET'
      '  jml = :jml'
      'WHERE'
      
        '  kode = :Old_kode AND kelompok_umur = :Old_kelompok_umur AND ka' +
        't = :Old_kat AND jenis_kelamin = :Old_jenis_kelamin')
    SQLLock.Strings = (
      'SELECT * FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      
        '  kode = :Old_kode AND kelompok_umur = :Old_kelompok_umur AND ka' +
        't = :Old_kat AND jenis_kelamin = :Old_jenis_kelamin'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT jml FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      
        '  kode = :kode AND kelompok_umur = :kelompok_umur AND kat = :kat' +
        ' AND jenis_kelamin = :jenis_kelamin')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM simpus2.pustu_kesakitan_pv'
      ''
      ') t')
    Connection = conn1
    Transaction = uniTrans1
    UpdateTransaction = uniTrans1
    SQL.Strings = (
      
        'select * from simpus2.pustu_kesakitan_pv where kode = :kode orde' +
        'r by upper(kode), kelompok_umur , kat, jenis_kelamin')
    MasterSource = ds_pustuKesakitanPv0
    Left = 288
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode'
      end>
  end
  object ds_pustuKesakitanPV: TJvDataSource
    DataSet = q_pustuKesakitanPV
    Left = 356
    Top = 220
  end
  object q_pustuKesakitanPv0: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO simpus2.pustu_kesakitan_pv'
      '  (kode, penyakit)'
      'VALUES'
      '  (:kode, :penyakit)')
    SQLDelete.Strings = (
      'DELETE FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      '  kode = :Old_kode')
    SQLUpdate.Strings = (
      'UPDATE simpus2.pustu_kesakitan_pv'
      'SET'
      '  kode = :kode, penyakit = :penyakit'
      'WHERE'
      '  kode = :Old_kode')
    SQLLock.Strings = (
      'SELECT * FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      '  kode = :Old_kode'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT kode, penyakit FROM simpus2.pustu_kesakitan_pv'
      'WHERE'
      '  kode = :kode')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM simpus2.pustu_kesakitan_pv'
      ''
      ') t')
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      
        'select distinct code2, description, upper(code2) x from simpus2.' +
        'pustu_kesakitan_pv order by upper(code), description')
    Left = 424
    Top = 220
  end
  object ds_pustuKesakitanPv0: TJvDataSource
    DataSet = q_pustuKesakitanPv0
    Left = 492
    Top = 220
  end
  object usp_pustuKesakitanInsert: TUniStoredProc
    StoredProcName = 'simpus2.pustu_kesakitan_input'
    SQL.Strings = (
      
        'SELECT * FROM simpus2.pustu_kesakitan_input(:ip_tahun, :ip_bulan' +
        ', :ip_pustu, :ip_biaya)')
    Connection = conn1
    Transaction = uniTrans1
    Left = 16
    Top = 288
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
        DataType = ftString
        Name = 'ip_pustu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ip_biaya'
        ParamType = ptInput
      end>
  end
  object uq_kesakitanCetak: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select *'
      'from simpus2.pustu_kesakitan'
      'where tahun = :tahun and bulan = :bulan_id'
      
        'order by upper(pustu), upper(kode), kelompok_umur, kat, jenis_ke' +
        'lamin')
    Left = 84
    Top = 288
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
  object qproses: TUniSQL
    Connection = conn1
    Transaction = uniTrans1
    Left = 152
    Top = 288
  end
  object uniQICDXCari: TUniQuery
    Connection = conn1
    Transaction = uniTrans1
    SQL.Strings = (
      'select * from simpus2.m_diagnosis order by kd_diag')
    Left = 220
    Top = 288
  end
  object dsICDXCari: TJvDataSource
    DataSet = uniQICDXCari
    Left = 288
    Top = 288
  end
end
