object dataMCU: TdataMCU
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 541
  Width = 760
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=simpusclientdb'
      'User_Name=dkkuser'
      'Password=nganggodkk'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 152
    Top = 24
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 424
    Top = 40
  end
  object fdCmd1: TFDCommand
    Connection = FDConnection1
    Left = 256
    Top = 32
  end
  object fdQ1: TFDQuery
    Connection = FDConnection1
    Left = 328
    Top = 40
  end
  object fdQMcu: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from jkn.bpjs_mcu where id = :id')
    Left = 240
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsMcu: TJvDataSource
    DataSet = fdQMcu
    Left = 304
    Top = 128
  end
end
