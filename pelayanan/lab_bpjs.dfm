object Form1_labBpjs: TForm1_labBpjs
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Lab Bpjs'
  ClientHeight = 519
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 844
    Height = 133
    Align = alTop
    Caption = 'pnl1'
    TabOrder = 0
    object lblPasien: TLabel
      AlignWithMargins = True
      Left = 101
      Top = 110
      Width = 739
      Height = 19
      Margins.Left = 100
      Align = alBottom
      Caption = 'lblPasien'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 62
    end
    object dtPicker1: TJvDateTimePicker
      Left = 56
      Top = 32
      Width = 186
      Height = 21
      Date = 43398.219374768520000000
      Time = 43398.219374768520000000
      TabOrder = 0
      DropDownDate = 43398.000000000000000000
    end
    object labelEdit1MCU: TLabeledEdit
      Left = 248
      Top = 32
      Width = 338
      Height = 21
      EditLabel.Width = 11
      EditLabel.Height = 13
      EditLabel.Caption = 'ID'
      ReadOnly = True
      TabOrder = 1
    end
    object dbedit1id: TDBEdit
      Left = 56
      Top = 5
      Width = 186
      Height = 21
      DataField = 'id'
      DataSource = dataMCU.dsMcu
      TabOrder = 2
      Visible = False
    end
    object dbedit1adl_isi: TDBEdit
      Left = 352
      Top = 59
      Width = 121
      Height = 21
      DataField = 'adl_isi'
      DataSource = dataMCU.dsMcu
      TabOrder = 3
      Visible = False
      OnChange = dbedit1adl_isiChange
    end
    object dbedit1kd_mcu: TDBEdit
      Left = 592
      Top = 32
      Width = 121
      Height = 21
      DataField = 'kd_mcu'
      DataSource = dataMCU.dsMcu
      ReadOnly = True
      TabOrder = 4
    end
    object btnHapusMcu: TButton
      Left = 479
      Top = 59
      Width = 75
      Height = 25
      Caption = 'hapus'
      TabOrder = 5
      OnClick = btnHapusMcuClick
    end
    object btn11: TButton
      Left = 560
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Kirim Bpjs'
      TabOrder = 6
      OnClick = btn11Click
    end
    object btn3: TButton
      Left = 641
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 7
      OnClick = btn3Click
    end
  end
  object pageControl1: TJvPageControl
    AlignWithMargins = True
    Left = 3
    Top = 142
    Width = 844
    Height = 327
    ActivePage = tsTensi
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 139
    ExplicitWidth = 850
    ExplicitHeight = 339
    object tsTensi: TTabSheet
      Caption = 'tsTensi'
      ExplicitWidth = 842
      ExplicitHeight = 311
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 836
        Height = 299
        Align = alClient
        Caption = 'pnl3'
        TabOrder = 0
        ExplicitWidth = 842
        ExplicitHeight = 311
        object lbl1: TLabel
          Left = 65
          Top = 40
          Width = 31
          Height = 13
          Caption = 'Sistole'
        end
        object lbl2: TLabel
          Left = 65
          Top = 67
          Width = 38
          Height = 13
          Caption = 'Diastole'
        end
        object btn1: TButton
          Left = 332
          Top = 62
          Width = 75
          Height = 25
          Caption = 'simpan'
          TabOrder = 2
          OnClick = btn1Click
        end
        object editSistole: TJvCalcEdit
          Left = 117
          Top = 37
          Width = 121
          Height = 21
          Alignment = taLeftJustify
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object editDiastole: TJvCalcEdit
          Left = 117
          Top = 64
          Width = 121
          Height = 21
          Alignment = taLeftJustify
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
      end
    end
    object tsGulaDarah: TTabSheet
      Caption = 'tsGulaDarah'
      ImageIndex = 1
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl3: TLabel
        Left = 7
        Top = 48
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gula Darah Sewaktu'
      end
      object lbl4: TLabel
        Left = 19
        Top = 75
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gula Darah Puasa'
      end
      object lbl5: TLabel
        Left = -8
        Top = 104
        Width = 112
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gula Dara Post Prandial'
      end
      object lbl6: TLabel
        Left = 73
        Top = 131
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'HbA1c'
      end
      object editGdSewaktu: TJvCalcEdit
        Left = 125
        Top = 45
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object editGdPuasa: TJvCalcEdit
        Left = 125
        Top = 72
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object editGdPost: TJvCalcEdit
        Left = 125
        Top = 101
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object editGdHbA1c: TJvCalcEdit
        Left = 125
        Top = 128
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object btn2: TButton
        Left = 332
        Top = 126
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 4
        OnClick = btn2Click
      end
    end
    object tsDarahRutin: TTabSheet
      Caption = 'tsDarahRutin'
      ImageIndex = 2
      ExplicitWidth = 842
      ExplicitHeight = 311
      object Label1: TLabel
        Left = 111
        Top = 56
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Haemoglobin'
      end
      object Label2: TLabel
        Left = 133
        Top = 83
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Leukosit'
      end
      object Label3: TLabel
        Left = 135
        Top = 112
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Eritrosit'
      end
      object Label4: TLabel
        Left = 87
        Top = 139
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Laju Endap Darah'
      end
      object Label5: TLabel
        Left = 120
        Top = 168
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hematokrit'
      end
      object Label6: TLabel
        Left = 125
        Top = 195
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Trombosit'
      end
      object editDRHemo: TJvCalcEdit
        Left = 193
        Top = 53
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object editDRLeu: TJvCalcEdit
        Left = 193
        Top = 80
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object editDREri: TJvCalcEdit
        Left = 193
        Top = 109
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object editEditDRLaju: TJvCalcEdit
        Left = 193
        Top = 136
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object editDRHema: TJvCalcEdit
        Left = 193
        Top = 165
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
      object editDRTromb: TJvCalcEdit
        Left = 193
        Top = 192
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
      end
      object btn4: TButton
        Left = 348
        Top = 190
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 6
        OnClick = btn4Click
      end
    end
    object tsLemakDarah: TTabSheet
      Caption = 'tsLemakDarah'
      ImageIndex = 3
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl7: TLabel
        Left = 93
        Top = 56
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Caption = 'HDL'
      end
      object lbl8: TLabel
        Left = 95
        Top = 83
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = 'LDL'
      end
      object lbl9: TLabel
        Left = 31
        Top = 112
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cholesterol Total'
      end
      object lbl10: TLabel
        Left = 67
        Top = 139
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Trigliserid'
      end
      object editLDHdl: TJvCalcEdit
        Left = 133
        Top = 53
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object editLDLdl: TJvCalcEdit
        Left = 133
        Top = 80
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object editLDCho: TJvCalcEdit
        Left = 133
        Top = 109
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object editLDTri: TJvCalcEdit
        Left = 133
        Top = 136
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object btn5: TButton
        Left = 312
        Top = 134
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 4
        OnClick = btn5Click
      end
    end
    object tsFungsiHati: TTabSheet
      Caption = 'tsFungsiHati'
      ImageIndex = 4
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl11: TLabel
        Left = 153
        Top = 64
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'SGOT'
      end
      object lbl12: TLabel
        Left = 155
        Top = 91
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'SGPT'
      end
      object lbl13: TLabel
        Left = 129
        Top = 120
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gamma GT'
      end
      object lbl14: TLabel
        Left = 101
        Top = 147
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Protein Kualitatif'
      end
      object lbl15: TLabel
        Left = 143
        Top = 176
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Albumin'
      end
      object editFHSgot: TJvCalcEdit
        Left = 201
        Top = 61
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object editFHSgpt: TJvCalcEdit
        Left = 201
        Top = 88
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object editFHGamma: TJvCalcEdit
        Left = 201
        Top = 117
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object editFHPro: TJvCalcEdit
        Left = 201
        Top = 144
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object editFHAlbumin: TJvCalcEdit
        Left = 201
        Top = 173
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
      object btn6: TButton
        Left = 352
        Top = 168
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 5
        OnClick = btn6Click
      end
    end
    object tsFungsiGinjal: TTabSheet
      Caption = 'tsFungsiGinjal'
      ImageIndex = 5
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl16: TLabel
        Left = 145
        Top = 72
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Creatinin'
      end
      object lbl17: TLabel
        Left = 157
        Top = 99
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ureum'
      end
      object lbl18: TLabel
        Left = 138
        Top = 128
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Asam Urat'
      end
      object editFGCrea: TJvCalcEdit
        Left = 209
        Top = 69
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object editFGUreum: TJvCalcEdit
        Left = 209
        Top = 96
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object editFGAsam: TJvCalcEdit
        Left = 209
        Top = 125
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object btn7: TButton
        Left = 368
        Top = 123
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 3
        OnClick = btn7Click
      end
    end
    object tsFungsiJantung: TTabSheet
      Caption = 'tsFungsiJantung'
      ImageIndex = 6
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl19: TLabel
        Left = 179
        Top = 80
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = 'ABI'
      end
      object editFJAbi: TJvCalcEdit
        Left = 217
        Top = 77
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
      object btn8: TButton
        Left = 348
        Top = 75
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 1
        OnClick = btn8Click
      end
    end
    object tsMata: TTabSheet
      Caption = 'tsMata'
      ImageIndex = 7
      ExplicitWidth = 842
      ExplicitHeight = 311
    end
    object tsLain: TTabSheet
      Caption = 'tsLain'
      ImageIndex = 8
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl20: TLabel
        Left = 70
        Top = 56
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lain-Lain'
      end
      object mmoLain: TMemo
        Left = 71
        Top = 78
        Width = 534
        Height = 89
        TabOrder = 0
      end
      object btn9: TButton
        Left = 360
        Top = 176
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 1
        OnClick = btn9Click
      end
    end
    object tsKeterangan: TTabSheet
      Caption = 'tsKeterangan'
      ImageIndex = 9
      ExplicitWidth = 842
      ExplicitHeight = 311
      object lbl21: TLabel
        Left = 67
        Top = 64
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kesimpulan'
      end
      object mmoKet: TMemo
        Left = 67
        Top = 83
        Width = 534
        Height = 89
        TabOrder = 0
      end
      object btn10: TButton
        Left = 368
        Top = 184
        Width = 75
        Height = 25
        Caption = 'simpan'
        TabOrder = 1
        OnClick = btn10Click
      end
    end
  end
  object pnl2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 475
    Width = 844
    Height = 41
    Align = alBottom
    Caption = 'pnl2'
    TabOrder = 2
    Visible = False
    ExplicitLeft = 0
    ExplicitTop = 478
    ExplicitWidth = 850
    object lbl1Idxstr: TLabel
      Left = 1
      Top = 1
      Width = 45
      Height = 39
      Align = alLeft
      Caption = 'lbl1Idxstr'
      ExplicitLeft = 40
      ExplicitTop = 16
      ExplicitHeight = 13
    end
    object chk1Bpjs: TJvCheckBox
      Left = 46
      Top = 1
      Width = 63
      Height = 39
      Align = alLeft
      Caption = 'chk1Bpjs'
      TabOrder = 0
      LinkedControls = <>
      ExplicitLeft = 121
      ExplicitTop = 16
      ExplicitHeight = 17
    end
  end
end
