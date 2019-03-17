object Form1_kirim_dinkes: TForm1_kirim_dinkes
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Mengirim data hari ini ke dinkes'
  ClientHeight = 161
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel4: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 161
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object jv7segment1: TJvSegmentedLEDDisplay
      AlignWithMargins = True
      Left = 10
      Top = 65
      Width = 181
      Height = 30
      Margins.Left = 10
      Margins.Top = 65
      Margins.Right = 10
      Align = alTop
      DigitClassName = 'TJv7SegmentedLEDDigit'
      Digits = <
        item
          UseDP = False
          UseColon = scuNone
        end
        item
          UseDP = False
          UseColon = scuNone
        end
        item
          UseDP = False
          UseColon = scuColonOnly
        end
        item
          UseDP = False
          UseColon = scuNone
        end
        item
          UseDP = False
          UseColon = scuNone
        end
        item
          UseDP = False
          UseColon = scuColonOnly
        end
        item
          UseDP = False
          UseColon = scuNone
        end
        item
          UseDP = False
          UseColon = scuNone
        end>
      SegmentLitColor = clRed
      SegmentUnlitColor = clNone
      Text = '00:00:00'
      ExplicitLeft = 20
      ExplicitWidth = 165
      ExplicitHeight = 61
    end
  end
  object panel5: TPanel
    Left = 201
    Top = 0
    Width = 565
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object panel2: TPanel
      Left = 0
      Top = 0
      Width = 565
      Height = 69
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object panel3: TPanel
      Left = 0
      Top = 95
      Width = 565
      Height = 66
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pb1: TProgressBar
      AlignWithMargins = True
      Left = 3
      Top = 72
      Width = 559
      Height = 20
      Align = alTop
      Step = 1
      TabOrder = 2
    end
  end
  object timer2: TJvTimer
    EventTime = tetPost
    Enabled = False
    OnTimer = timer2Timer
    Left = 560
    Top = 24
  end
  object timer1: TJvTimer
    EventTime = tetPost
    Enabled = False
    OnTimer = timer1Timer
    Left = 192
    Top = 8
  end
end
