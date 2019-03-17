object Form111: TForm111
  Left = 192
  Top = 107
  Caption = 'Form111'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvVigenereCipher1: TJvVigenereCipher
    Left = 16
    Top = 16
  end
  object storageUmum: TJvFormStorage
    AppStorage = Ini1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredValues = <
      item
        Name = 'pegawai'
        Value = ''
        KeyString = 'pegawai'
      end
      item
        Name = 'log_pemakai'
        Value = ''
        KeyString = 'log_pemakai'
      end
      item
        Name = 'jenis_jual'
        Value = ''
        KeyString = 'jenis_jual'
      end
      item
        Name = 'versi'
        Value = ''
        KeyString = 'versi'
      end>
    Left = 84
    Top = 16
  end
  object Ini1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    AutoReload = True
    Location = flUserFolder
    DefaultSection = 'Konfigurasi'
    SubStorages = <>
    Left = 152
    Top = 16
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'simpuspg'
    Params.Strings = (
      'User_Name=dkkuser'
      'Password=nganggodkk'
      'Database=simpusbulu'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Transaction = fdTransaction1
    Left = 104
    Top = 80
  end
  object fdTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 168
    Top = 80
  end
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 232
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 232
  end
end
