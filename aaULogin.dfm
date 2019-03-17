object FormLogin: TFormLogin
  Left = 404
  Top = 268
  BorderStyle = bsDialog
  Caption = '      --->> gembok'
  ClientHeight = 154
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvPageControl1: TJvgPageControl
    Left = 0
    Top = 0
    Width = 347
    Height = 154
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabOrder = 0
    TabStop = False
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvNone
    TabStyle.BevelOuter = bvNone
    TabStyle.Bold = False
    TabStyle.BackgrColor = clBtnShadow
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clBtnHighlight
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = False
    TabSelectedStyle.BackgrColor = clBtnFace
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabSheet1: TTabSheet
      Caption = 'registered'
      object Label1: TLabel
        Left = 47
        Top = 27
        Width = 31
        Height = 13
        Caption = 'user id'
        Transparent = True
      end
      object Label2: TLabel
        Left = 35
        Top = 56
        Width = 46
        Height = 13
        Caption = 'Password'
        Transparent = True
      end
      object Edit1: TEdit
        Left = 91
        Top = 25
        Width = 174
        Height = 21
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 91
        Top = 54
        Width = 174
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
        OnKeyPress = Edit2KeyPress
      end
      object BitBtn2: TBitBtn
        Left = 104
        Top = 92
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 192
        Top = 92
        Width = 75
        Height = 25
        Caption = 'OK'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'unregistered'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl_Remaining: TJvLabel
        Left = 19
        Top = 28
        Width = 302
        Height = 45
        Alignment = taCenter
        AutoSize = False
        Caption = 'lbl_Remaining'#13#10#13#10'tes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Trebuchet MS'
        HotTrackFont.Style = []
      end
      object btn_go: TButton
        Left = 165
        Top = 88
        Width = 75
        Height = 25
        Caption = 'coba'
        TabOrder = 0
        OnClick = btn_goClick
      end
      object Button1: TButton
        Left = 246
        Top = 88
        Width = 75
        Height = 25
        Caption = 'register !!'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'register'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object LabeledEdit1: TLabeledEdit
        Left = 72
        Top = 12
        Width = 249
        Height = 21
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'Perusahaan'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object LabeledEdit2: TLabeledEdit
        Left = 72
        Top = 34
        Width = 249
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'alamat'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object LabeledEdit3: TLabeledEdit
        Left = 71
        Top = 56
        Width = 250
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = 'serial number'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object Button2: TButton
        Left = 43
        Top = 89
        Width = 75
        Height = 25
        Caption = 'get serial'
        TabOrder = 3
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 199
        Top = 89
        Width = 57
        Height = 25
        Caption = 'register !!'
        TabOrder = 4
        OnClick = Button3Click
      end
      object Button5: TButton
        Left = 264
        Top = 89
        Width = 57
        Height = 25
        Caption = 'batal'
        TabOrder = 5
        OnClick = Button5Click
      end
    end
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'simpuspg'
    Params.Strings = (
      'User_Name=dkkuser'
      'Password=nganggodkk'
      'Database=simpusserverdb'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Transaction = fdTransaction1
    Left = 96
    Top = 16
  end
  object fdTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 168
    Top = 16
  end
  object fdpgdriver1: TFDPhysPgDriverLink
    Left = 232
    Top = 24
  end
  object fdQueryLogin: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from simpus.pemakai where nama = :nama and passwd = :pa' +
        'sswd')
    Left = 160
    Top = 80
    ParamData = <
      item
        Name = 'NAMA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASSWD'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 32
  end
end
