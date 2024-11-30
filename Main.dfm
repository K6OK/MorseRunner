object MainForm: TMainForm
  Left = 245
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Morse Runner'
  ClientHeight = 595
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000008800000000000000000
    0000000000000770000000000000000000000000000777777000000000000000
    000000000777FF8777700000000000000000000777FF70888777700000000000
    00080777FF70F7708887777000000000000777FF70F770F70F88877000000000
    0007FF70F770F70FF8870000000000000008788770F70FF88700787800000000
    00000778870FF8870078887000000000000000077FF88700788FF88700000000
    00000000077700788FFCCF8700000000000000000070788FFCCCCCF870000000
    00000000007888FCCCCCCCF88700000000000000000780CCCCCCCCCF87000000
    09999900000780CCCCCCCCCF8870000998FFF8990000780CCCCCCCC0F8700099
    FFFCFFF99000780CCCCCC0088770009FFFFFFFCF90000780CFC008877000098F
    F0FFFFFF89000780C0088770000009FFFF0FFFFFF900007808877000000009FC
    FFF90000F900007887700000000009FFFFFFFFFFF9000007700000000000098F
    FFFFFFFF89000000000000000000009FCFFFFFCF900000000000000000000099
    FFFCFFF990000000000000000000000998FCF899000000000000000000000000
    0999990000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFF9FFFFFFE07FFFFF801FFFFE0007FFF80
    001FFE00000FFE00000FFE00000FFE00000FFF80000FFFE00007FFF80007FFFC
    0003FFFC0001F83E0001E00E0000C007000080030001800380070001801F0001
    C07F0001C1FF0001E7FF0001FFFF8003FFFF8003FFFFC007FFFFE00FFFFFF83F
    FFFFFEFFFFFFFC7FFFFFFC7FFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000770000000000
    0007F7750000000007F8778775000007887778887000000078788F0087000000
    008800FF8850000000078FCCCF70001115003CCCC88501F8F91084CCC4F71F8F
    FF1007C4780018F77785087800001FFFFF75000000005988F810000000000117
    71000000000000005000000000000000500000000000FF3F0000FC0F0000F003
    0000E0030000F0030000FC010000FE010000C30000008100000001830000008F
    000000FF000001FF000083FF0000E7FF0000E7FF0000}
  KeyPreview = True
  Menu = MainMenu1
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 57
    Width = 792
    Height = 2
    Align = alTop
    ExplicitTop = 0
    ExplicitWidth = 700
  end
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 792
    Height = 145
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 449
    ExplicitWidth = 788
    object SpeedButton4: TSpeedButton
      Tag = 1
      Left = 6
      Top = 6
      Width = 85
      Height = 31
      Caption = 'F1  CQ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton5: TSpeedButton
      Tag = 2
      Left = 97
      Top = 6
      Width = 85
      Height = 31
      Caption = 'F2  <exch>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton6: TSpeedButton
      Tag = 3
      Left = 188
      Top = 6
      Width = 85
      Height = 31
      Caption = 'F3  TU'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton7: TSpeedButton
      Tag = 4
      Left = 279
      Top = 6
      Width = 85
      Height = 31
      Caption = 'F4  <my>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton8: TSpeedButton
      Tag = 5
      Left = 6
      Top = 46
      Width = 85
      Height = 31
      Caption = 'F5  <his>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton9: TSpeedButton
      Tag = 6
      Left = 97
      Top = 46
      Width = 85
      Height = 31
      Caption = 'F6  B4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton10: TSpeedButton
      Tag = 7
      Left = 188
      Top = 46
      Width = 85
      Height = 31
      Caption = 'F7  ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton11: TSpeedButton
      Tag = 8
      Left = 279
      Top = 46
      Width = 85
      Height = 31
      Caption = 'F8  NIL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton1: TSpeedButton
      Tag = 19
      Left = 6
      Top = 84
      Width = 85
      Height = 31
      Caption = 'F9 Nr?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton2: TSpeedButton
      Tag = 10
      Left = 97
      Top = 83
      Width = 85
      Height = 31
      Caption = 'F10  ---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton3: TSpeedButton
      Tag = 11
      Left = 188
      Top = 84
      Width = 85
      Height = 31
      Caption = 'F11 ---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SendClick
    end
    object SpeedButton12: TSpeedButton
      Tag = 12
      Left = 279
      Top = 83
      Width = 85
      Height = 31
      Caption = 'F12  Wipe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton12Click
    end
    object Label23: TLabel
      Left = 426
      Top = 123
      Width = 123
      Height = 13
      Caption = 'Rate Chart (QSOs/5 min)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 370
      Top = 45
      Width = 225
      Height = 72
      Align = alCustom
      BevelOuter = bvLowered
      TabOrder = 1
      object PaintBox1: TPaintBox
        Left = 1
        Top = 0
        Width = 223
        Height = 70
        Color = clInfoBk
        ParentColor = False
        OnPaint = PaintBox1Paint
      end
    end
    object Panel4: TPanel
      Left = 370
      Top = 6
      Width = 114
      Height = 33
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object Panel7: TPanel
      Left = 492
      Top = 6
      Width = 104
      Height = 33
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object Panel11: TPanel
      Left = 599
      Top = 44
      Width = 191
      Height = 89
      BevelOuter = bvLowered
      Caption = 'Panel11'
      TabOrder = 3
      object ListView1: TListView
        Left = 1
        Top = 1
        Width = 189
        Height = 87
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        Columns = <
          item
            Width = 48
          end
          item
            Alignment = taCenter
            Caption = 'Raw'
            Width = 70
          end
          item
            Caption = 'Verified'
            Width = 70
          end>
        ColumnClick = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = []
        Items.ItemData = {
          05900000000300000000000000FFFFFFFFFFFFFFFF02000000FFFFFFFF000000
          00035000740073000000000000000000000000000000FFFFFFFFFFFFFFFF0200
          0000FFFFFFFF00000000044D0075006C00740000000000000000000000000000
          00FFFFFFFFFFFFFFFF02000000FFFFFFFF0000000005530063006F0072006500
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 0
        TabStop = False
        ViewStyle = vsReport
        ExplicitTop = -27
      end
    end
    object Panel2: TPanel
      Left = 616
      Top = 6
      Width = 164
      Height = 30
      BevelOuter = bvLowered
      Caption = '00:00:00'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = 14151712
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 59
    Width = 580
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    ExplicitWidth = 576
    ExplicitHeight = 315
    object Shape1: TShape
      Left = 0
      Top = 54
      Width = 576
      Height = 195
      Align = alClient
      Brush.Color = 16711401
      Pen.Style = psClear
      ExplicitLeft = 3
      ExplicitTop = 48
      ExplicitWidth = 513
      ExplicitHeight = 137
    end
    object Label14: TLabel
      Left = 100
      Top = 61
      Width = 310
      Height = 40
      Caption = 'Morse Runner 1.xx'
      Font.Charset = ANSI_CHARSET
      Font.Color = 12369084
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 95
      Top = 57
      Width = 310
      Height = 40
      Caption = 'Morse Runner 1.xx'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 94
      Top = 56
      Width = 310
      Height = 40
      Caption = 'Morse Runner 1.xx'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 106
      Top = 150
      Width = 315
      Height = 15
      Caption = 'Copyright '#169'2004-2016 Alex Shovkoplyas, VE3NEA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 221
      Top = 127
      Width = 56
      Height = 15
      Caption = 'FREEWARE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 55
      Top = 210
      Width = 448
      Height = 15
      Caption = 'Copyright '#169'2022-2024 Morse Runner Community Edition Contributors'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 178
      Top = 106
      Width = 140
      Height = 15
      Caption = 'CW CONTEST SIMULATOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 142
      Top = 171
      Width = 238
      Height = 15
      Caption = 'http://www.dxatlas.com/MorseRunner'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 126
      Top = 190
      Width = 280
      Height = 15
      Caption = 'https://www.github.com/w7sst/MorseRunner'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RichEdit1: TRichEdit
      Left = 0
      Top = 271
      Width = 576
      Height = 41
      TabStop = False
      Align = alBottom
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      ExplicitTop = 270
      ExplicitWidth = 572
    end
    object ListView2: TListView
      Left = 0
      Top = 0
      Width = 576
      Height = 54
      Align = alTop
      BevelInner = bvNone
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'UTC'
          Width = 80
        end
        item
          Caption = 'Call'
          Width = 104
        end
        item
          Caption = 'Recv'
          Width = 90
        end
        item
          Caption = 'Sent'
          Width = 84
        end
        item
          Caption = 'Pref'
        end
        item
          Caption = 'Chk'
          Width = 40
        end
        item
          Caption = 'Wpm'
          Width = 40
        end>
      ColumnClick = False
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ReadOnly = True
      RowSelect = True
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowWorkAreas = True
      ShowHint = True
      TabOrder = 0
      TabStop = False
      ViewStyle = vsReport
      OnCustomDrawSubItem = ListView2CustomDrawSubItem
      OnSelectItem = ListView2SelectItem
      ExplicitWidth = 572
    end
    object sbar: TPanel
      Left = 0
      Top = 249
      Width = 576
      Height = 22
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      Visible = False
      ExplicitTop = 248
      ExplicitWidth = 572
      object labelStatus: TLabel
        Left = 488
        Top = 1
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status: Stopped'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel9: TPanel
    Left = 580
    Top = 59
    Width = 212
    Height = 316
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 576
    ExplicitHeight = 315
    object spdbtnRun: TSpeedButton
      Left = 52
      Top = 273
      Width = 32
      Height = 32
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -29
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      OnClick = spdbtnRunClick
    end
    object spdbtnPause: TSpeedButton
      Left = 90
      Top = 273
      Width = 32
      Height = 32
      Caption = ';'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      OnClick = spdbtnPauseClick
    end
    object spdbtnStop: TSpeedButton
      Left = 128
      Top = 273
      Width = 34
      Height = 32
      Caption = '<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      OnClick = spdbtnStopClick
    end
    object Label25: TLabel
      Left = 57
      Top = 256
      Width = 21
      Height = 13
      Caption = 'Run'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 92
      Top = 256
      Width = 30
      Height = 13
      Caption = 'Pause'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 134
      Top = 256
      Width = 24
      Height = 13
      Caption = 'Stop'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 6
      Top = 170
      Width = 194
      Height = 84
      Caption = ' Band Conditions '
      TabOrder = 0
      object Label11: TLabel
        Left = 144
        Top = 19
        Width = 40
        Height = 15
        Caption = 'Activity'
      end
      object CheckBox2: TCheckBox
        Left = 12
        Top = 61
        Width = 45
        Height = 17
        TabStop = False
        Caption = 'QSB'
        TabOrder = 0
        OnClick = CheckBoxClick
      end
      object CheckBox3: TCheckBox
        Left = 12
        Top = 41
        Width = 45
        Height = 17
        TabStop = False
        Caption = 'QRM'
        TabOrder = 1
        OnClick = CheckBoxClick
      end
      object CheckBox4: TCheckBox
        Left = 12
        Top = 21
        Width = 45
        Height = 17
        TabStop = False
        Caption = 'QRN'
        TabOrder = 2
        OnClick = CheckBoxClick
      end
      object CheckBox5: TCheckBox
        Left = 76
        Top = 21
        Width = 53
        Height = 17
        TabStop = False
        Caption = 'Flutter'
        TabOrder = 3
        OnClick = CheckBoxClick
      end
      object CheckBox6: TCheckBox
        Left = 76
        Top = 41
        Width = 45
        Height = 17
        TabStop = False
        Caption = 'LIDs'
        TabOrder = 4
        OnClick = CheckBoxClick
      end
      object SpinEdit3: TSpinEdit
        Left = 144
        Top = 35
        Width = 37
        Height = 24
        TabStop = False
        MaxLength = 1
        MaxValue = 9
        MinValue = 1
        TabOrder = 5
        Value = 3
        OnChange = SpinEdit3Change
      end
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 194
      Height = 155
      Caption = ' My Station '
      TabOrder = 1
      object Label4: TLabel
        Left = 12
        Top = 21
        Width = 20
        Height = 15
        Caption = 'Call'
      end
      object Label5: TLabel
        Left = 162
        Top = 46
        Width = 29
        Height = 15
        Caption = 'WPM'
      end
      object Label6: TLabel
        Left = 12
        Top = 46
        Width = 54
        Height = 15
        Caption = 'CW Speed'
      end
      object Label7: TLabel
        Left = 13
        Top = 76
        Width = 49
        Height = 15
        Caption = 'CW Pitch'
      end
      object Label9: TLabel
        Left = 12
        Top = 106
        Width = 74
        Height = 15
        Caption = 'RX Bandwidth'
      end
      object VolumeSlider1: TVolumeSlider
        Left = 92
        Top = 129
        Width = 60
        Height = 20
        Hint = '-15.0 dB'
        ShowHint = True
        Margin = 5
        Value = 0.750000000000000000
        Overloaded = False
        OnChange = VolumeSlider1Change
        OnDblClick = VolumeSliderDblClick
        DbScale = 60.000000000000000000
        Db = -15.000000000000000000
      end
      object Label18: TLabel
        Left = 12
        Top = 134
        Width = 58
        Height = 15
        Caption = 'Mon. Level'
      end
      object Edit4: TEdit
        Left = 45
        Top = 15
        Width = 89
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'VE3NEA'
        OnChange = Edit4Change
        OnExit = Edit4Exit
      end
      object spinCWSpeed: TSpinEdit
        Left = 91
        Top = 43
        Width = 65
        Height = 24
        TabStop = False
        MaxLength = 3
        MaxValue = 120
        MinValue = 10
        TabOrder = 2
        Value = 25
        OnChange = spinCWSpeedChange
        OnExit = spinCWSpeedExit
      end
      object CheckBox1: TCheckBox
        Left = 140
        Top = 17
        Width = 45
        Height = 17
        TabStop = False
        Caption = 'QSK'
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object cmboCWPitch: TComboBox
        Left = 92
        Top = 73
        Width = 65
        Height = 23
        Style = csDropDownList
        DropDownCount = 12
        TabOrder = 3
        TabStop = False
        OnChange = cmboCWPitchChange
        Items.Strings = (
          '300 Hz'
          '350 Hz'
          '400 Hz'
          '450 Hz'
          '500 Hz'
          '550 Hz'
          '600 Hz'
          '650 Hz'
          '700 Hz'
          '750 Hz'
          '800 Hz'
          '850 Hz'
          '900 Hz')
      end
      object cmboRXBW: TComboBox
        Left = 92
        Top = 102
        Width = 65
        Height = 23
        Style = csDropDownList
        DropDownCount = 12
        TabOrder = 4
        TabStop = False
        OnChange = cmboRXBWChange
        Items.Strings = (
          '100 Hz'
          '150 Hz'
          '200 Hz'
          '250 Hz'
          '300 Hz'
          '350 Hz'
          '400 Hz'
          '450 Hz'
          '500 Hz'
          '550 Hz'
          '600 Hz')
      end
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 385
    Width = 792
    Height = 65
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    ExplicitTop = 384
    ExplicitWidth = 788
    object Label1: TLabel
      Left = 74
      Top = 5
      Width = 21
      Height = 17
      Caption = 'Call'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 235
      Top = 5
      Width = 22
      Height = 17
      Caption = 'RST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 394
      Top = 5
      Width = 18
      Height = 17
      Caption = 'Nr.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object spdbtnResetRIT: TSpeedButton
      Left = 746
      Top = 24
      Width = 33
      Height = 20
      Caption = 'Reset'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = spdbtnResetRITClick
    end
    object spdbtnRightRIT: TSpeedButton
      Left = 720
      Top = 22
      Width = 20
      Height = 20
      Caption = '5'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Webdings'
      Font.Style = [fsBold]
      Layout = blGlyphRight
      ParentFont = False
      OnClick = spdbtnRightRITClick
    end
    object Label24: TLabel
      Left = 663
      Top = 15
      Width = 16
      Height = 13
      Caption = 'RIT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 651
      Top = 44
      Width = 38
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object spdbtnLeftRIT: TSpeedButton
      Left = 600
      Top = 26
      Width = 20
      Height = 20
      Caption = '6'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Webdings'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = spdbtnLeftRITClick
    end
    object Edit1: TEdit
      Left = 74
      Top = 24
      Width = 150
      Height = 32
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 230
      Top = 24
      Width = 150
      Height = 32
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnEnter = Edit2Enter
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 386
      Top = 24
      Width = 150
      Height = 32
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      OnEnter = Edit3Enter
      OnKeyPress = Edit3KeyPress
      OnKeyUp = Edit3KeyUp
    end
    object Panel8: TPanel
      Left = 620
      Top = 32
      Width = 100
      Height = 8
      Cursor = crHandPoint
      Hint = 'RIT -- Use Up/Down keys or Mouse Wheel; Hold Control key for BW.'
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnMouseDown = Panel8MouseDown
      object Shape2: TShape
        Left = 40
        Top = 1
        Width = 20
        Height = 7
        Cursor = crHandPoint
        Brush.Color = 12902431
        OnMouseDown = Shape2MouseDown
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 375
    Width = 792
    Height = 10
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitTop = 374
    ExplicitWidth = 788
  end
  object panelTopControls: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitWidth = 788
    object Label10: TLabel
      Left = 262
      Top = 8
      Width = 41
      Height = 15
      Caption = 'Contest'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 543
      Top = 8
      Width = 51
      Height = 15
      Caption = 'Exchange'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 417
      Top = 8
      Width = 31
      Height = 15
      Caption = 'Mode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 715
      Top = 33
      Width = 21
      Height = 15
      Caption = 'min'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 663
      Top = 12
      Width = 46
      Height = 15
      Caption = 'Duration'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 87
      Top = 10
      Width = 40
      Height = 15
      Caption = 'Activity'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SimContestCombo: TComboBox
      Left = 195
      Top = 26
      Width = 169
      Height = 25
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnChange = SimContestComboChange
    end
    object ExchangeEdit: TEdit
      Left = 513
      Top = 26
      Width = 116
      Height = 25
      TabStop = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = ExchangeEditChange
      OnExit = ExchangeEditExit
    end
    object comboMode: TComboBox
      Left = 370
      Top = 26
      Width = 137
      Height = 25
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnSelect = comboModeSelect
      Items.Strings = (
        'Pile-Up'
        'Single Calls'
        'WPX Competition'
        'HST Competition')
    end
    object SpinEdit2: TSpinEdit
      Left = 663
      Top = 27
      Width = 45
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 2
      MaxValue = 240
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 30
      OnChange = SpinEdit2Change
    end
    object comboActivity: TComboBox
      Left = 20
      Top = 26
      Width = 169
      Height = 25
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnSelect = comboActivitySelect
      Items.Strings = (
        'Practice'
        'Training'
        'Competition')
    end
  end
  object AlSoundOut1: TAlSoundOut
    SamplesPerSec = 11025
    BufCount = 8
    OnBufAvailable = AlSoundOut1BufAvailable
    Left = 384
    Top = 148
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 356
    Top = 148
    object File1: TMenuItem
      Caption = 'File'
      OnClick = File1Click
      object ViewScoreTable1: TMenuItem
        Caption = 'View Score Table'
        OnClick = ViewScoreTable1Click
      end
      object ViewScoreBoardMNU: TMenuItem
        Caption = 'View Hi-Score web page...'
        OnClick = ViewScoreBoardMNUClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object AudioRecordingEnabled1: TMenuItem
        Caption = 'Audio Recording Enabled'
        OnClick = AudioRecordingEnabled1Click
      end
      object PlayRecordedAudio1: TMenuItem
        Caption = 'Play Recorded Audio'
        Enabled = False
        OnClick = PlayRecordedAudio1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        ImageIndex = 2
        OnClick = Exit1Click
      end
    end
    object Run1: TMenuItem
      Caption = 'Run'
      object PileUp1: TMenuItem
        Tag = 1
        Caption = 'Pile-Up'
        OnClick = RunMNUClick
      end
      object SingleCalls1: TMenuItem
        Tag = 2
        Caption = 'Single Calls'
        OnClick = RunMNUClick
      end
      object Competition1: TMenuItem
        Tag = 3
        Caption = 'WPX Competition'
        OnClick = RunMNUClick
      end
      object HSTCompetition2: TMenuItem
        Tag = 4
        Caption = 'HST Competition'
        OnClick = RunMNUClick
      end
      object Stop1MNU: TMenuItem
        Caption = 'Stop'
        Enabled = False
        ImageIndex = 8
        OnClick = StopMNUClick
      end
    end
    object Send1: TMenuItem
      Caption = 'Send'
      object CQ1: TMenuItem
        Tag = 1
        Caption = 'CQ'
        ShortCut = 112
        OnClick = SendClick
      end
      object Exchange1: TMenuItem
        Tag = 2
        Caption = 'Exchange'
        ShortCut = 113
        OnClick = SendClick
      end
      object TU1: TMenuItem
        Tag = 3
        Caption = 'TU'
        ShortCut = 114
        OnClick = SendClick
      end
      object MyCall1: TMenuItem
        Tag = 4
        Caption = 'My Call'
        ShortCut = 115
        OnClick = SendClick
      end
      object HisCall1: TMenuItem
        Tag = 5
        Caption = 'His Call'
        ShortCut = 116
        OnClick = SendClick
      end
      object QSOB41: TMenuItem
        Tag = 6
        Caption = 'QSO B4'
        ShortCut = 117
        OnClick = SendClick
      end
      object N1: TMenuItem
        Tag = 7
        Caption = '<?>'
        ShortCut = 118
        OnClick = SendClick
      end
      object AGN1: TMenuItem
        Tag = 8
        Caption = 'NIL'
        ShortCut = 119
        OnClick = SendClick
      end
      object NRQM: TMenuItem
        Tag = 19
        Caption = 'NR?'
        ShortCut = 120
        OnClick = SendClick
      end
    end
    object Settings1: TMenuItem
      Caption = 'Settings'
      object Call1: TMenuItem
        Caption = 'Call...'
        OnClick = Call1Click
      end
      object Operator1: TMenuItem
        Caption = 'HST Operator'
        OnClick = Operator1Click
      end
      object mnuShowCallsignInfo: TMenuItem
        Caption = 'Show Callsign Info'
        OnClick = mnuShowCallsignInfoClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuSettings: TMenuItem
        Caption = 'Settings...'
        OnClick = mnuSettingsClick
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object FirstTime1: TMenuItem
        Caption = 'First Time Setup'
        OnClick = FirstTime1Click
      end
      object WebPage1: TMenuItem
        Caption = 'Community Edition Home Page'
        OnClick = WebPage1Click
      end
      object Readme1: TMenuItem
        Caption = 'Readme'
        OnClick = Readme1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = 'About Morse Runner'
        OnClick = About1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 356
    Top = 176
    object PileupMNU: TMenuItem
      Tag = 1
      Caption = 'Pile-Up'
      Default = True
      OnClick = RunMNUClick
    end
    object SingleCallsMNU: TMenuItem
      Tag = 2
      Caption = 'Single Calls'
      OnClick = RunMNUClick
    end
    object CompetitionMNU: TMenuItem
      Tag = 3
      Caption = 'WPX Competition'
      OnClick = RunMNUClick
    end
    object HSTCompetition1: TMenuItem
      Tag = 4
      Caption = 'HST Competition'
      OnClick = RunMNUClick
    end
    object StopMNU: TMenuItem
      Caption = 'Stop'
      Enabled = False
      OnClick = StopMNUClick
    end
  end
  object ImageList1: TImageList
    Left = 384
    Top = 176
    Bitmap = {
      494C01010B00D800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF0000000000000000002B1BEE00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED002B1BEE00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CEE00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00251DED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CEE00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF000000000000000000241CED00241CED00241C
      ED00241CED00241CEC00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF000000000000000000007F7F7F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00FFFFFF0000000000000000002A1BEE00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00000000000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000000000007F7F7F00FFFFFF0000000000FFFFFF00FFFFFF00000000007F7F
      7F00FFFFFF00000000007F7F7F00FFFFFF00FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000000000007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF00000000007F7F
      7F00FFFFFF00000000007F7F7F00FFFFFF00FFFF000000000000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000000000007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF007F7F
      7F00FFFFFF00000000007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0000000000000000007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF000000
      0000000000007F7F7F00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFF000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000007F7F7F00FFFFFF007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F00FFFFFF00FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF000000000000000000007F7F7F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00000000007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF007F7F7F0000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000FFFFFF0000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F0000000000FFFFFF00000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000000000848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00000000007F7F7F0000000000FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C60084848400FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C60084848400FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C60084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F007F7F7F000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C6008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F00FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000001C00180010000
      000180018001000000019FF9800100001FF19FF9800100001FF19C1980010000
      1831981980010000183198198001000018319819800100001831981980010000
      18319839800100001FF19FF9800100001FF19FF9800100000001800180010000
      00018003800100000001FFFFFFFF0000FFFFC001FFFFFFFF800380020001C001
      00013924000180010001382400019FF9000138041FF19FF90001380C1FF19E39
      0001200018319C19000100001831981900010FF01831981900010FF018319839
      00010FF018319C7900010FF01FF19FF900010FF01FF19FF900010FF000018001
      0001400100018003800380030001FFFFFBFFFFFFC007C003F1FFF7FFC007CBF3
      F0FFF1FFC007C5F3F07FF0FFC007CAF3F03FF07FC007CCF3F01FF03FC007CCF3
      F00FF01FC007CCF3F007F01FC007CCF3F00FF00FC007CCF3F01FF01FC007CC73
      F03FF03FC007CCF3F07FF07FC007CCF3F0FFF0FFC007C8F3F1FFF1FFC007C0F3
      F3FFF3FFC007C003F7FFF7FFC007C00700000000000000000000000000000000
      000000000000}
  end
  object AlWavFile1: TAlWavFile
    Left = 384
    Top = 204
  end
  object Timer1: TTimer
    Left = 432
    Top = 219
  end
end
