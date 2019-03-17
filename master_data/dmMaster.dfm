object dataMaster: TdataMaster
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 530
  Width = 729
  object dsDokter: TJvDataSource
    DataSet = fdQueryDokter
    Left = 232
    Top = 356
  end
  object dsKelasTempatTidur: TJvDataSource
    DataSet = fdQueryKelasTt
    Left = 448
    Top = 356
  end
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 232
    Top = 16
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 16
    Top = 16
  end
  object fdQueryPemakai: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.pemakai order by upper(nama) ')
    Left = 448
    Top = 220
  end
  object dspemakai: TJvDataSource
    DataSet = fdQueryPemakai
    Left = 124
    Top = 356
  end
  object fdQueryPuskesmas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.puskesmas order by upper(nama)')
    Left = 16
    Top = 288
  end
  object dsPuskesmas: TJvDataSource
    DataSet = fdQueryPuskesmas
    Left = 232
    Top = 492
  end
  object fdQueryDokter: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.dokter order by upper(nama)')
    Left = 340
    Top = 220
  end
  object fdQueryMasterPoli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_poli order by upper(poli)')
    Left = 124
    Top = 220
  end
  object dsMasterPoli: TJvDataSource
    DataSet = fdQueryMasterPoli
    Left = 340
    Top = 424
  end
  object fdQueryMasterBiaya: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_pasien_biaya order by upper(biaya)')
    Left = 232
    Top = 220
  end
  object dsMasterBeaya: TJvDataSource
    DataSet = fdQueryMasterBiaya
    Left = 448
    Top = 424
  end
  object fdQueryBuka: TFDQuery
    Connection = FDConnection1
    Left = 124
    Top = 288
  end
  object fdQueryMasterIcdx: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from jkn.m_diagnosis where cast(terakhir as date) = cur' +
        'rent_date order by kd_diag')
    Left = 232
    Top = 288
  end
  object dsICDX: TJvDataSource
    DataSet = fdQueryMasterIcdx
    Left = 16
    Top = 424
  end
  object fdQueryKelasTt: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_kelas order by idx')
    Left = 124
    Top = 84
  end
  object fdScript2: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 340
    Top = 288
  end
  object fdQueryInstalasi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_instalasi order by upper(instalasi)')
    Left = 232
    Top = 84
  end
  object dsInstalasi: TJvDataSource
    DataSet = fdQueryInstalasi
    Left = 448
    Top = 492
  end
  object fdQueryPuskesmasUnique: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select kd_cabang from simpus.puskesmas where adl_aktif = 1 limit' +
        ' 1')
    Left = 340
    Top = 84
  end
  object fdQueryMasterImunisasi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_imunisasi order by idx')
    Left = 340
    Top = 16
  end
  object dsMasterImunisasi: TJvDataSource
    DataSet = fdQueryMasterImunisasi
    Left = 16
    Top = 492
  end
  object fdQueryMasterPoned: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_poned order by idx')
    Left = 448
    Top = 16
  end
  object dsMasterPONED: TJvDataSource
    DataSet = fdQueryMasterPoned
    Left = 232
    Top = 424
  end
  object fdQueryKamar: TFDQuery
    BeforeDelete = fdQueryKamarBeforeDelete
    OnNewRecord = fdQueryKamarNewRecord
    MasterSource = dsKelasTempatTidur
    MasterFields = 'kelas'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from simpus.kamar_ri where kelas = :kelas order by uppe' +
        'r(nama_kamar)')
    Left = 16
    Top = 84
    ParamData = <
      item
        Name = 'KELAS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsKamar: TJvDataSource
    DataSet = fdQueryKamar
    Left = 124
    Top = 492
  end
  object fdQueryKamarTerakhir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id from simpus.kamar_ri '
      'where '
      'nama_kamar = :kamar')
    Left = 448
    Top = 84
    ParamData = <
      item
        Name = 'KAMAR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQueryRsRujukan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.provider order by upper(nm_provider)')
    Left = 340
    Top = 152
  end
  object dsRsRujukan: TJvDataSource
    DataSet = fdQueryRsRujukan
    Left = 16
    Top = 560
  end
  object fdQueryPoliRujukan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.poli_rujukan order by upper(nmpoli)')
    Left = 448
    Top = 152
  end
  object dsPoliRujukan: TJvDataSource
    DataSet = fdQueryPoliRujukan
    Left = 340
    Top = 492
  end
  object fdQueryMasterTindakan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_tindakan order by upper(nm_tindakan)')
    Left = 16
    Top = 220
  end
  object dsMasterTindakan: TJvDataSource
    DataSet = fdQueryMasterTindakan
    Left = 16
    Top = 356
  end
  object fdQueryMasterObat: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from farmasi.m_obat where cast(terakhir as date) = curr' +
        'ent_date order by upper(nm_obat)')
    Left = 16
    Top = 152
  end
  object dsMasterObat: TJvDataSource
    DataSet = fdQueryMasterObat
    Left = 448
    Top = 288
  end
  object fdQueryMasterLab: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from lab.m_lab order by upper(jenis_pemeriksaan)')
    Left = 124
    Top = 152
  end
  object dsMasterLab: TJvDataSource
    DataSet = fdQueryMasterLab
    Left = 124
    Top = 424
  end
  object FDConnection1: TFDConnection
    LoginPrompt = False
    Left = 124
    Top = 16
  end
  object fdQMasterPoliAntrian: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_poli_antri order by upper(poli_antrian)')
    Left = 232
    Top = 152
  end
  object dsMasterPoliAntrian: TJvDataSource
    DataSet = fdQMasterPoliAntrian
    Left = 340
    Top = 356
  end
end
