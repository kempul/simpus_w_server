object dataBPJS: TdataBPJS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 514
  Width = 751
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 152
    Top = 16
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 220
    Top = 16
  end
  object fdScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 288
    Top = 16
  end
  object fdQueryIcdx: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from jkn.m_diagnosis where cast(terakhir as date) = cur' +
        'rent_date')
    Left = 356
    Top = 16
  end
  object fdQueryToolsBpjsBelum: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from jkn.pasien_kendali_view '
      'where '
      'tanggal = :tanggal and'
      '('
      'bpjs_urut is null or'
      'bpjs_kunjungan is null or'
      'length(bpjs_kunjungan) < 5 or'
      'obat > 0 or'
      'tindakan > 0'
      ') '
      'order by idxstr')
    Left = 424
    Top = 16
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsToolsBpjsBelum: TJvDataSource
    DataSet = fdQueryToolsBpjsBelum
    Left = 492
    Top = 16
  end
  object fdQueryToolsBpjsSudah: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from jkn.pasien_kendali_view '
      'where '
      'tanggal = :tanggal and'
      '('
      'bpjs_urut is not null and'
      'length(bpjs_kunjungan) > 7 and'
      'obat = 0 and'
      'tindakan = 0'
      ') '
      'order by idxstr'
      '')
    Left = 560
    Top = 16
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsToolsBpjsSudah: TJvDataSource
    DataSet = fdQueryToolsBpjsSudah
    Left = 628
    Top = 16
  end
  object fdQueryBuka: TFDQuery
    Connection = FDConnection1
    Left = 16
    Top = 84
  end
  object fdQueryReportBulanan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reporting.bpjs_bulanan_view '
      'where '
      'extract(year from tanggal) = :th and'
      'extract(month from tanggal) = :bl '
      'order by tanggal, bpjs_urut')
    Left = 84
    Top = 84
    ParamData = <
      item
        Name = 'TH'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsReportBulanan: TJvDataSource
    DataSet = fdQueryReportBulanan
    Left = 152
    Top = 84
  end
  object fdQueryToolsDinkes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.a_json_gagal where tanggal = :tanggal '
      'order by id')
    Left = 220
    Top = 84
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsToolsDinkes: TJvDataSource
    DataSet = fdQueryToolsDinkes
    Left = 288
    Top = 84
  end
  object FDConnection1: TFDConnection
    LoginPrompt = False
    Left = 360
    Top = 240
  end
  object fdQError: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from jkn.a_bpjs_resp '
      'where '
      'tanggal = :tanggal and kode >= 300 '
      'order by id')
    Left = 484
    Top = 100
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsError: TJvDataSource
    DataSet = fdQError
    Left = 552
    Top = 100
  end
  object fdQRptBpjsKunjungan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  reporting.kunjungan_bpjs_view.tanggal,'
      '  reporting.kunjungan_bpjs_view.bpjs_kunjungan,'
      '  reporting.kunjungan_bpjs_view.nama_lengkap,'
      '  reporting.kunjungan_bpjs_view.kartu_bpjs,'
      '  reporting.kunjungan_bpjs_view.penyakit,'
      '  reporting.kunjungan_bpjs_view.penyakit_panjang,'
      '  reporting.kunjungan_bpjs_view.tahun,'
      '  reporting.m_bulan.bln_id,'
      '  reporting.m_bulan.bulan'
      'FROM'
      '  reporting.kunjungan_bpjs_view'
      
        '  INNER JOIN reporting.m_bulan ON (reporting.kunjungan_bpjs_view' +
        '.bulan = reporting.m_bulan.bln_id)'
      'where'
      'm_bulan.bln_id = :bulan and'
      'kunjungan_bpjs_view.tahun = :tahun'
      
        'order by kunjungan_bpjs_view.tanggal, upper(kunjungan_bpjs_view.' +
        'nama_lengkap)')
    Left = 112
    Top = 184
    ParamData = <
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQPuskesmasThbl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from reporting.puskesmas_view where bln_id = :bulan')
    Left = 224
    Top = 200
    ParamData = <
      item
        Name = 'BULAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
