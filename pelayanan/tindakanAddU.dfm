object Form1_tindakanAdd: TForm1_tindakanAdd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1_tindakanAdd'
  ClientHeight = 405
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 986
    Height = 193
    Align = alTop
    TabOrder = 0
    object labelTgl: TLabel
      Left = 40
      Top = 19
      Width = 80
      Height = 13
      Caption = 'tanggal tindakan'
    end
    object labellbl1: TLabel
      Left = 40
      Top = 53
      Width = 41
      Height = 13
      Caption = 'tindakan'
    end
    object labelBiaya: TLabel
      Left = 40
      Top = 86
      Width = 26
      Height = 13
      Caption = 'biaya'
    end
    object labelKet: TLabel
      Left = 40
      Top = 120
      Width = 55
      Height = 13
      Caption = 'keterangan'
    end
    object label2: TLabel
      Left = 40
      Top = 160
      Width = 21
      Height = 13
      Caption = 'hasil'
    end
    object btnTindakanCari: TSpeedButton
      Left = 599
      Top = 45
      Width = 34
      Height = 25
      Caption = '...'
      OnClick = btnTindakanCariClick
    end
    object dtp1: TJvDateTimePicker
      Left = 144
      Top = 15
      Width = 113
      Height = 21
      Date = 42734.850617569440000000
      Time = 42734.850617569440000000
      TabOrder = 0
      OnKeyPress = dtp1KeyPress
      DropDownDate = 42734.000000000000000000
    end
    object edit1Ket: TEdit
      Left = 144
      Top = 116
      Width = 505
      Height = 21
      TabOrder = 1
      Text = 'edit1Ket'
      OnKeyPress = dtp1KeyPress
    end
    object edit1: TJvCalcEdit
      Left = 144
      Top = 157
      Width = 121
      Height = 21
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edit1KeyPress
    end
    object editBiaya: TJvCalcEdit
      Left = 144
      Top = 82
      Width = 121
      Height = 21
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = dtp1KeyPress
    end
    object editTindakan: TEdit
      Left = 144
      Top = 47
      Width = 449
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = 'editTindakan'
      OnKeyPress = editTindakanKeyPress
    end
    object btnSimpan: TButton
      Left = 288
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 5
      OnClick = btnSimpanClick
    end
  end
  object panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 367
    Width = 986
    Height = 35
    Align = alBottom
    TabOrder = 1
    Visible = False
    object labelKodeTindakan: TLabel
      Left = 31
      Top = 6
      Width = 89
      Height = 13
      Caption = 'labelKodeTindakan'
    end
    object labelIdxstr: TLabel
      Left = 176
      Top = 14
      Width = 51
      Height = 13
      Caption = 'labelIdxstr'
    end
    object lblTkp: TLabel
      Left = 480
      Top = 8
      Width = 27
      Height = 13
      Caption = 'lblTkp'
    end
    object btn1: TBitBtn
      Left = 569
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Close'
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
      TabOrder = 0
    end
    object checkBpjs: TCheckBox
      Left = 288
      Top = 3
      Width = 97
      Height = 17
      Caption = 'checkBpjs'
      TabOrder = 1
    end
  end
  object panel4: TPanel
    Left = 0
    Top = 199
    Width = 992
    Height = 165
    Align = alClient
    Caption = 'panel4'
    TabOrder = 2
    object pageControl1: TJvPageControl
      Left = 1
      Top = 1
      Width = 990
      Height = 163
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'ts1'
        object grid1: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 976
          Height = 104
          Align = alClient
          DataSource = dataPelayanan.dsTindakan
          DynProps = <>
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id_tindakan'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'idxstr'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_tindakan_sk'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tanggal'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nomor'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_tindakan'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_tindakan'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'biaya'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'hasil'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'keterangan'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object nav1: TJvDBNavigator
          Left = 0
          Top = 110
          Width = 982
          Height = 25
          DataSource = dataPelayanan.dsTindakan
          VisibleButtons = [nbDelete, nbPost, nbCancel, nbRefresh]
          Align = alBottom
          TabOrder = 1
        end
      end
      object ts2: TTabSheet
        Caption = 'ts2'
        ImageIndex = 1
        object mmoPayload: TMemo
          Left = 0
          Top = 0
          Width = 281
          Height = 135
          Align = alLeft
          Lines.Strings = (
            'mmoPayload')
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object mmoHeader: TMemo
          Left = 281
          Top = 0
          Width = 264
          Height = 135
          Align = alLeft
          Lines.Strings = (
            'mmoHeader')
          ScrollBars = ssBoth
          TabOrder = 1
        end
        object btn2: TButton
          Left = 784
          Top = 56
          Width = 75
          Height = 25
          Caption = 'btn2'
          TabOrder = 2
          OnClick = btn2Click
        end
        object mmoResponse: TMemo
          Left = 545
          Top = 0
          Width = 185
          Height = 135
          Align = alLeft
          Lines.Strings = (
            'mmoResponse')
          ScrollBars = ssBoth
          TabOrder = 3
        end
      end
    end
  end
end
