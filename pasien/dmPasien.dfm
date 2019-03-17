object dataPasien: TdataPasien
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 489
  Width = 715
  object dsPasien: TJvDataSource
    DataSet = fdQueryPasien
    Left = 16
    Top = 16
  end
  object dsPasien0: TJvDataSource
    Left = 84
    Top = 16
  end
  object dsMR: TJvDataSource
    DataSet = fdQueryPasien
    Left = 152
    Top = 16
  end
  object dsCetakKartuBerobatPV: TJvDataSource
    Left = 220
    Top = 16
  end
  object dsCetakKartuBerobat: TJvDataSource
    Left = 288
    Top = 16
  end
  object dsPasienLama: TJvDataSource
    Left = 356
    Top = 16
  end
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 16
    Top = 48
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 84
    Top = 48
  end
  object fdQueryKK: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from capil.capil_kk')
    Left = 152
    Top = 48
  end
  object dsKK: TJvDataSource
    DataSet = fdQueryKK
    Left = 220
    Top = 48
  end
  object fdQueryPasien: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from capil.capil_nik '
      'where last_updated::date = current_date'
      'order by upper(nama_lengkap)')
    Left = 288
    Top = 48
  end
  object fdQueryBuka: TFDQuery
    Connection = FDConnection1
    Left = 356
    Top = 48
  end
  object fdQueryRm: TFDQuery
    MasterSource = dsPasien
    MasterFields = 'idxstr'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reporting.rekam_medis_view where idxstr = :idxstr ')
    Left = 352
    Top = 136
    ParamData = <
      item
        Name = 'IDXSTR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryPuskesmas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.puskesmas where adl_aktif = 1 limit 1')
    Left = 272
    Top = 144
  end
  object FDConnection1: TFDConnection
    LoginPrompt = False
    Left = 344
    Top = 232
  end
end
