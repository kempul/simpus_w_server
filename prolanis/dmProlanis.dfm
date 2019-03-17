object dataProlanis: TdataProlanis
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 438
  Width = 771
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=simpusclientdb'
      'User_Name=dkkuser'
      'Password=nganggodkk'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 124
    Top = 16
  end
  object fdQ1Kelompok: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.club order by id')
    Left = 340
    Top = 84
  end
  object ds1Kelompok: TJvDataSource
    DataSet = fdQ1Kelompok
    Left = 16
    Top = 152
  end
  object fdQBuka: TFDQuery
    Connection = FDConnection1
    Left = 232
    Top = 84
  end
  object fdQ1JenisProgram: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.m_jenis')
    Left = 448
    Top = 84
  end
  object ds1JenisProgram: TJvDataSource
    DataSet = fdQ1JenisProgram
    Left = 232
    Top = 152
  end
  object fdQKegiatan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.kegiatan order by id')
    Left = 340
    Top = 16
  end
  object dsKegiatan: TJvDataSource
    DataSet = fdQKegiatan
    Left = 448
    Top = 152
  end
  object fdQPeserta: TFDQuery
    MasterSource = dsKegiatan
    MasterFields = 'id'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT kegiatan_peserta.id,'
      '         kegiatan_peserta.edu_id,'
      '         kegiatan_peserta.no_kartu,'
      '         kegiatan_peserta.idx,'
      '         kegiatan_peserta.kegiatan,'
      '         capil_nik.nik,'
      '         capil_nik.nama_lengkap,'
      '         kegiatan_peserta.status'
      '  FROM kelompok.kegiatan_peserta'
      
        '       LEFT JOIN capil.capil_nik ON kegiatan_peserta.no_kartu::t' +
        'ext ='
      '         capil_nik.kartu_bpjs::text'
      ' where kegiatan = :id order by id')
    Left = 232
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsPeserta: TJvDataSource
    DataSet = fdQPeserta
    Left = 340
    Top = 152
  end
  object fdQLUKelompok: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.m_kelompok_view order by club_id')
    Left = 448
    Top = 16
  end
  object dsLUKelompok: TJvDataSource
    DataSet = fdQLUKelompok
    Left = 16
    Top = 220
  end
  object fdQLUJnsKegiatan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.m_kegiatan order by nm_kegiatan')
    Left = 124
    Top = 84
  end
  object dsLUJnsKegiatan: TJvDataSource
    DataSet = fdQLUJnsKegiatan
    Left = 124
    Top = 152
  end
  object fdQPasien: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr,nama_lengkap, extract(year from age(tgl_lahir)) as' +
        ' umur, nik, kartu_bpjs from capil.capil_nik '
      
        'where lower(nama_lengkap) like :param or lower(nik) like :param ' +
        'or lower(kartu_bpjs) like :param order by lower(nama_lengkap)')
    Left = 16
    Top = 84
    ParamData = <
      item
        Name = 'PARAM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsPasien: TJvDataSource
    DataSet = fdQPasien
    Left = 96
    Top = 224
  end
  object fdQPesertaAdding: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from kelompok.peserta_view where kegiatan = :kegiatan')
    Left = 240
    Top = 232
    ParamData = <
      item
        Name = 'KEGIATAN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsPesertaAdding: TJvDataSource
    DataSet = fdQPesertaAdding
    Left = 368
    Top = 200
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 440
    Top = 280
  end
  object fdQPesertaTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id, count(*) as jml from kelompok.kegiatan_peserta where ' +
        'kegiatan = :kegiatan and'
      
        'idx = (select min(idx) from kelompok.kegiatan_peserta where kegi' +
        'atan = :kegiatan and status = '#39'belum terkirim'#39') group by id'
      ' ')
    Left = 624
    Top = 224
    ParamData = <
      item
        Name = 'KEGIATAN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKegiatanTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id, count(*) as jml from kelompok.kegiatan where edu_id i' +
        's null and'
      
        'idx = (select max(idx) from kelompok.kegiatan where edu_id is nu' +
        'll) group by id'
      ' ')
    Left = 528
    Top = 280
  end
end
