object dataMasterBPJS: TdataMasterBPJS
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
  object dsICDX: TJvDataSource
    DataSet = fdQueryIcdx
    Left = 424
    Top = 16
  end
  object dsDokter: TJvDataSource
    Left = 492
    Top = 16
  end
  object dsObat: TJvDataSource
    Left = 560
    Top = 16
  end
  object dsPoli: TJvDataSource
    Left = 628
    Top = 16
  end
  object dsPoliRujukan: TJvDataSource
    Left = 16
    Top = 84
  end
  object dsProvider: TJvDataSource
    Left = 84
    Top = 84
  end
  object dsTindakan: TJvDataSource
    Left = 152
    Top = 84
  end
  object dsKesadaran: TJvDataSource
    DataSet = fdQueryKesadaran
    Left = 220
    Top = 84
  end
  object dsPulang: TJvDataSource
    DataSet = fdQueryMasterPulang
    Left = 288
    Top = 84
  end
  object fdQueryKesadaran: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_kesadaran')
    Left = 356
    Top = 84
  end
  object fdQueryMasterPulang: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from simpus.m_pulang')
    Left = 424
    Top = 84
  end
  object FDConnection1: TFDConnection
    LoginPrompt = False
    Left = 360
    Top = 240
  end
end
