object dataKirimDinkes: TdataKirimDinkes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 383
  Width = 731
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 124
    Top = 16
  end
  object fdQNik: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from dinkesserver.nik_view where tanggal = :tangga' +
        'l and tanggal_server is null')
    Left = 448
    Top = 84
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPuskesmas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select kd_cabang from simpus.puskesmas where adl_aktif = 1 limit' +
        ' 1')
    Left = 340
    Top = 84
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 16
    Top = 16
  end
  object fdQNikCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from dinkesserver.nik_view where tan' +
        'ggal = :tanggal and tanggal_server is null')
    Left = 16
    Top = 152
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKunjunganCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from simpus.pasien_kunjungan where p' +
        'uskesmas = :puskesmas and tanggal = :tanggal and tanggal_server ' +
        'is null')
    Left = 232
    Top = 152
    ParamData = <
      item
        Name = 'PUSKESMAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKunjungan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from simpus.pasien_kunjungan where puskesmas = :pu' +
        'skesmas and tanggal = :tanggal and tanggal_server is null')
    Left = 124
    Top = 152
    ParamData = <
      item
        Name = 'PUSKESMAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQFisikCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from dinkesserver.fisik_view where p' +
        'uskesmas = :puskesmas and tanggal = :tanggal and tanggal_server ' +
        'is null')
    Left = 232
    Top = 84
    ParamData = <
      item
        Name = 'PUSKESMAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQFisik: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from dinkesserver.fisik_view where puskesmas = :pu' +
        'skesmas and tanggal = :tanggal and tanggal_server is null')
    Left = 340
    Top = 16
    ParamData = <
      item
        Name = 'PUSKESMAS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQIcdxCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(kd_diag) as jml from dinkesserver.icdx_view where t' +
        'anggal_diagnosa::date = :tanggal and tanggal_server is null')
    Left = 232
    Top = 16
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQIcdx: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select kd_diag from dinkesserver.icdx_view where tanggal_diagnos' +
        'a::date = :tanggal and tanggal_server is null')
    Left = 448
    Top = 16
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQDiagnosaCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(id_diag) as jml from simpus.rekam_medis where tangg' +
        'al_diagnosa::date = :tanggal and tanggal_server is null')
    Left = 16
    Top = 84
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQDiagnosa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_diag from simpus.rekam_medis where tanggal_diagnosa::d' +
        'ate = :tanggal and tanggal_server is null')
    Left = 124
    Top = 84
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQImunisasiCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(id) as jml from simpus.imunisasi where tanggal = :t' +
        'anggal and tanggal_server is null')
    Left = 456
    Top = 160
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQImunisasi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id from simpus.imunisasi where tanggal = :tanggal and tan' +
        'ggal_server is null')
    Left = 348
    Top = 160
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPonedCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from simpus.pasien_poned where tangg' +
        'al::date = :tanggal and tanggal_server is null')
    Left = 432
    Top = 240
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPoned: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from simpus.pasien_poned where tanggal::date = :ta' +
        'nggal and tanggal_server is null')
    Left = 348
    Top = 240
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQTindakanCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(id_tindakan) as jml from simpus.tindakan where tang' +
        'gal::date = :tanggal and tanggal_server is null')
    Left = 112
    Top = 232
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQTindakan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_tindakan from simpus.tindakan where tanggal::date = :t' +
        'anggal and tanggal_server is null')
    Left = 28
    Top = 232
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQTindakangigiCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(id_tindakangigi) as jml from simpus.tindakangigi wh' +
        'ere tgl_tindakan = :tanggal and tanggal_server is null')
    Left = 120
    Top = 296
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQTindakangigi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_tindakangigi from simpus.tindakangigi where tgl_tindak' +
        'an = :tanggal and tanggal_server is null'
      '')
    Left = 36
    Top = 296
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPulangCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from simpus.pulang where pulang_tang' +
        'gal::date = :tanggal and tanggal_server is null')
    Left = 392
    Top = 312
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPulang: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from simpus.pulang where pulang_tanggal::date = :t' +
        'anggal and tanggal_server is null'
      '')
    Left = 308
    Top = 312
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQMeninggalCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from simpus.pulang_meninggal where t' +
        'anggal_server is null')
    Left = 640
    Top = 24
  end
  object fdQMeninggal: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from simpus.pulang_meninggal where tanggal_server ' +
        'is null'
      '')
    Left = 556
    Top = 24
  end
  object fdQRawatinapCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(idxstr) as jml from dinkesserver.rawatinap_view whe' +
        're tanggal=:tanggal and tanggal_server is null')
    Left = 648
    Top = 104
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQRawatinap: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select idxstr from dinkesserver.rawatinap_view where tanggal = :' +
        'tanggal and tanggal_server is null'
      '')
    Left = 564
    Top = 104
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQKamarlogCount: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(id) as jml from simpus.kamar_ri_log where tanggal_s' +
        'erver is null')
    Left = 656
    Top = 176
  end
  object fdQKamarlog: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select id from simpus.kamar_ri_log where tanggal_server is null'
      '')
    Left = 572
    Top = 176
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 592
    Top = 312
  end
  object fdQTanggal: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select tanggal, tanggal_server from '
      
        '(select * from dinkesserver.tanggal4_view where tanggal_server i' +
        's null limit 3) t order by tanggal')
    Left = 216
    Top = 320
  end
end
