object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  Caption = 'Settings'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 94
    Top = 131
    Width = 47
    Height = 15
    Caption = 'CQ Zone'
  end
  object Label6: TLabel
    Left = 210
    Top = 226
    Width = 72
    Height = 17
    Caption = 'K or VE Only'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Label7: TLabel
    Left = 34
    Top = 226
    Width = 70
    Height = 15
    Caption = 'ARRL Section'
  end
  object Label8: TLabel
    Left = 22
    Top = 162
    Width = 70
    Height = 15
    Caption = 'ARRL Section'
  end
  object Label9: TLabel
    Left = 198
    Top = 162
    Width = 72
    Height = 17
    Caption = 'K or VE Only'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Label18: TLabel
    Left = 35
    Top = 32
    Width = 92
    Height = 15
    Alignment = taRightJustify
    Caption = 'My Speed (WPM)'
  end
  object Label19: TLabel
    Left = 152
    Top = 32
    Width = 14
    Height = 17
    Alignment = taRightJustify
    Caption = '10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label37: TLabel
    Left = 39
    Top = 263
    Width = 49
    Height = 15
    Alignment = taRightJustify
    Caption = 'CW Pitch'
  end
  object Label38: TLabel
    Left = 122
    Top = 263
    Width = 21
    Height = 17
    Alignment = taRightJustify
    Caption = '300'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pageSettings: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 392
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 391
    object TabSheet1: TTabSheet
      Caption = 'General'
      object boxMyStation: TGroupBox
        Left = 18
        Top = 15
        Width = 379
        Height = 218
        Caption = ' My Station '
        TabOrder = 0
        object lblSetgsCall: TLabel
          Left = 55
          Top = 48
          Width = 45
          Height = 17
          Alignment = taRightJustify
          Caption = 'Callsign'
        end
        object lblSetgsCQ: TLabel
          Left = 49
          Top = 111
          Width = 51
          Height = 17
          Alignment = taRightJustify
          Caption = 'CQ Zone'
        end
        object lblITUZone: TLabel
          Left = 48
          Top = 142
          Width = 52
          Height = 17
          Alignment = taRightJustify
          Caption = 'ITU Zone'
        end
        object Label2: TLabel
          Left = 193
          Top = 112
          Width = 70
          Height = 17
          Caption = 'Select 1 .. 40'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          WordWrap = True
        end
        object Label3: TLabel
          Left = 193
          Top = 142
          Width = 70
          Height = 17
          Caption = 'Select 1 .. 90'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          WordWrap = True
        end
        object Label5: TLabel
          Left = 37
          Top = 78
          Width = 63
          Height = 17
          Alignment = taRightJustify
          Caption = 'First Name'
        end
        object editSetgsCall: TEdit
          Left = 106
          Top = 47
          Width = 137
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cmboCQZone: TComboBox
          Left = 106
          Top = 109
          Width = 73
          Height = 25
          TabOrder = 1
        end
        object cmboITUZone: TComboBox
          Left = 106
          Top = 141
          Width = 73
          Height = 25
          TabOrder = 2
        end
        object editFirstName: TEdit
          Left = 106
          Top = 78
          Width = 136
          Height = 25
          TabOrder = 3
        end
      end
      object boxSetgsAudio: TGroupBox
        Left = 18
        Top = 239
        Width = 583
        Height = 98
        Caption = ' Audio '
        TabOrder = 1
        object lblAudioDevice: TLabel
          Left = 46
          Top = 43
          Width = 54
          Height = 34
          Alignment = taRightJustify
          Caption = 'Playback Device'
          WordWrap = True
        end
        object lblAudioDev: TLabel
          Left = 130
          Top = 25
          Width = 153
          Height = 17
          Caption = 'Choose audio output device'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 441
          Top = 25
          Width = 90
          Height = 17
          Caption = 'Mon. Level (dB)'
        end
        object lblMonLevelNo: TLabel
          Left = 390
          Top = 51
          Width = 19
          Height = 17
          Alignment = taRightJustify
          Caption = '-60'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cmboAudioDevice: TComboBox
          Left = 106
          Top = 48
          Width = 215
          Height = 25
          TabOrder = 0
        end
        object trkBarMonLevel: TTrackBar
          Left = 415
          Top = 48
          Width = 150
          Height = 33
          Max = 100
          Frequency = 10
          ShowSelRange = False
          TabOrder = 1
          OnTracking = trkBarMonLevelTracking
        end
      end
      object GroupBox2: TGroupBox
        Left = 416
        Top = 15
        Width = 185
        Height = 103
        Caption = ' K or VE Stations '
        TabOrder = 2
        object Label10: TLabel
          Left = 14
          Top = 63
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'State or Prov'
        end
        object Label4: TLabel
          Left = 14
          Top = 35
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'ARRL Section'
        end
        object ComboBox2: TComboBox
          Left = 96
          Top = 63
          Width = 73
          Height = 25
          TabOrder = 0
        end
        object ComboBox3: TComboBox
          Left = 96
          Top = 32
          Width = 73
          Height = 25
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 416
        Top = 128
        Width = 185
        Height = 105
        Caption = ' JA Stations '
        TabOrder = 3
        object Label12: TLabel
          Left = 16
          Top = 33
          Width = 63
          Height = 34
          Alignment = taRightJustify
          Caption = 'Prefecture or Region'
          WordWrap = True
        end
        object Label14: TLabel
          Left = 20
          Top = 75
          Width = 59
          Height = 17
          Alignment = taRightJustify
          Caption = 'Gun or Ku'
          WordWrap = True
        end
        object Edit1: TEdit
          Left = 85
          Top = 40
          Width = 87
          Height = 25
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 85
          Top = 71
          Width = 87
          Height = 25
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CW and Session Settings'
      ImageIndex = 2
      object Label29: TLabel
        Left = 240
        Top = 296
        Width = 25
        Height = 17
        Caption = 'QSK'
      end
      object Label31: TLabel
        Left = 11
        Top = 296
        Width = 40
        Height = 17
        Caption = 'Activity'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 100
        Top = 289
        Width = 93
        Height = 34
        Caption = 'Max number of callers in Pile-Up'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
      end
      object Label17: TLabel
        Left = 528
        Top = 296
        Width = 43
        Height = 17
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
      end
      object Label30: TLabel
        Left = 379
        Top = 294
        Width = 50
        Height = 17
        Caption = 'Duration'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblSNCustomRange: TLabel
        Left = 518
        Top = 219
        Width = 27
        Height = 17
        Caption = '0..99'
      end
      object boxCWSettings: TGroupBox
        Left = 3
        Top = 3
        Width = 350
        Height = 247
        Caption = 'CW Settings'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object lblMyCWSpeed: TLabel
          Left = 35
          Top = 40
          Width = 59
          Height = 17
          Alignment = taRightJustify
          Caption = 'My Speed'
        end
        object lblMySpeed: TLabel
          Left = 117
          Top = 40
          Width = 14
          Height = 17
          Alignment = taRightJustify
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblFastestCaller: TLabel
          Left = 13
          Top = 81
          Width = 81
          Height = 34
          Alignment = taRightJustify
          Caption = 'Fastest Caller (+0 )'
          WordWrap = True
        end
        object lblFasterSpeed: TLabel
          Left = 117
          Top = 81
          Width = 14
          Height = 17
          Alignment = taRightJustify
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSlowerSpeed: TLabel
          Left = 117
          Top = 123
          Width = 14
          Height = 17
          Alignment = taRightJustify
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSlowestCaller: TLabel
          Left = 13
          Top = 121
          Width = 81
          Height = 34
          Alignment = taRightJustify
          Caption = 'Slowest Caller (-0 )'
          WordWrap = True
        end
        object Label11: TLabel
          Left = 143
          Top = 19
          Width = 30
          Height = 15
          Caption = 'WPM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCWPitchHzNo: TLabel
          Left = 110
          Top = 169
          Width = 21
          Height = 17
          Alignment = taRightJustify
          Caption = '300'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCWPitch: TLabel
          Left = 16
          Top = 169
          Width = 78
          Height = 17
          Alignment = taRightJustify
          Caption = 'CW Pitch (Hz)'
        end
        object lblRxBwHzNo: TLabel
          Left = 110
          Top = 209
          Width = 21
          Height = 17
          Alignment = taRightJustify
          Caption = '100'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 7
          Top = 192
          Width = 87
          Height = 34
          Alignment = taRightJustify
          Caption = 'Receiver Bandwidth (Hz)'
          WordWrap = True
        end
        object trkBarCWSpeed: TTrackBar
          Left = 140
          Top = 40
          Width = 200
          Height = 45
          Max = 60
          Min = 10
          Frequency = 5
          Position = 10
          ShowSelRange = False
          TabOrder = 0
          TabStop = False
          OnTracking = trkBarCWSpeedTracking
        end
        object trkBarFasterSpeed: TTrackBar
          Left = 140
          Top = 82
          Width = 200
          Height = 45
          ShowSelRange = False
          TabOrder = 1
          TabStop = False
          OnTracking = trkBarFasterSpeedTracking
        end
        object trkBarSlowerSpeed: TTrackBar
          Left = 140
          Top = 124
          Width = 200
          Height = 45
          ShowSelRange = False
          TabOrder = 2
          TabStop = False
          OnTracking = trkBarSlowerSpeedTracking
        end
        object trkBarRxBw: TTrackBar
          Left = 140
          Top = 209
          Width = 200
          Height = 45
          ShowSelRange = False
          TabOrder = 3
          TabStop = False
          OnTracking = trkBarRxBwTracking
        end
        object trkBarCWPitch: TTrackBar
          Left = 140
          Top = 166
          Width = 200
          Height = 45
          Max = 12
          ShowSelRange = False
          TabOrder = 4
          TabStop = False
          OnTracking = trkBarCWPitchTracking
        end
      end
      object toggleQSK: TToggleSwitch
        Left = 277
        Top = 296
        Width = 54
        Height = 19
        SwitchHeight = 15
        SwitchWidth = 30
        TabOrder = 1
        ThumbWidth = 10
        OnClick = toggleQSKClick
      end
      object GroupBox1: TGroupBox
        Left = 368
        Top = 3
        Width = 249
        Height = 115
        Caption = ' Band Conditions '
        TabOrder = 2
        object Label24: TLabel
          Left = 27
          Top = 27
          Width = 28
          Height = 17
          Alignment = taRightJustify
          Caption = 'QRN'
        end
        object Label25: TLabel
          Left = 25
          Top = 54
          Width = 30
          Height = 17
          Alignment = taRightJustify
          Caption = 'QRM'
        end
        object Label26: TLabel
          Left = 31
          Top = 77
          Width = 24
          Height = 17
          Alignment = taRightJustify
          Caption = 'QSB'
        end
        object Label27: TLabel
          Left = 123
          Top = 29
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'Flutter'
        end
        object Label28: TLabel
          Left = 135
          Top = 52
          Width = 24
          Height = 17
          Alignment = taRightJustify
          Caption = 'LIDs'
        end
        object toggleQRN: TToggleSwitch
          Left = 61
          Top = 27
          Width = 54
          Height = 19
          SwitchHeight = 15
          SwitchWidth = 30
          TabOrder = 0
          ThumbWidth = 10
          OnClick = toggleBandCondxClick
        end
        object toggleQRM: TToggleSwitch
          Left = 61
          Top = 52
          Width = 54
          Height = 19
          SwitchHeight = 15
          SwitchWidth = 30
          TabOrder = 1
          ThumbWidth = 10
          OnClick = toggleBandCondxClick
        end
        object toggleQSB: TToggleSwitch
          Left = 61
          Top = 77
          Width = 54
          Height = 19
          SwitchHeight = 15
          SwitchWidth = 30
          TabOrder = 2
          ThumbWidth = 10
          OnClick = toggleBandCondxClick
        end
        object toggleFlutter: TToggleSwitch
          Left = 165
          Top = 27
          Width = 54
          Height = 19
          SwitchHeight = 15
          SwitchWidth = 30
          TabOrder = 3
          ThumbWidth = 10
          OnClick = toggleBandCondxClick
        end
        object toggleLIDs: TToggleSwitch
          Left = 165
          Top = 52
          Width = 54
          Height = 19
          SwitchHeight = 15
          SwitchWidth = 30
          TabOrder = 4
          ThumbWidth = 10
          OnClick = toggleBandCondxClick
        end
      end
      object spinSettngActivity: TSpinEdit
        Left = 57
        Top = 293
        Width = 37
        Height = 27
        TabStop = False
        MaxLength = 1
        MaxValue = 9
        MinValue = 1
        TabOrder = 3
        Value = 3
        OnChange = spinSettngActivityChange
      end
      object spinSettngDuration: TSpinEdit
        Left = 435
        Top = 293
        Width = 87
        Height = 27
        MaxLength = 2
        MaxValue = 240
        MinValue = 1
        TabOrder = 4
        Value = 1
        OnChange = spinSettngDurationChange
      end
      object radioGroupSN: TRadioGroup
        Left = 368
        Top = 124
        Width = 249
        Height = 125
        Caption = ' Serial Numbers '
        TabOrder = 5
      end
      object radioSN01: TRadioButton
        Left = 399
        Top = 150
        Width = 172
        Height = 17
        Caption = 'Contest Start (Default)'
        Checked = True
        TabOrder = 6
        TabStop = True
        OnClick = SNRDigitsClick
      end
      object radioSN02: TRadioButton
        Tag = 1
        Left = 399
        Top = 173
        Width = 154
        Height = 17
        Caption = 'Mid-Contest (50-500)'
        TabOrder = 7
        OnClick = SNRDigitsClick
      end
      object radioSN03: TRadioButton
        Tag = 2
        Left = 399
        Top = 196
        Width = 188
        Height = 17
        Caption = 'End of Contest (500-5000)'
        TabOrder = 8
        OnClick = SNRDigitsClick
      end
      object radioSN04: TRadioButton
        Tag = 3
        Left = 399
        Top = 219
        Width = 113
        Height = 17
        Caption = 'Custom Range'
        TabOrder = 9
        OnClick = SerialNRCustomRangeClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'History Files'
      ImageIndex = 3
      object StringGrid1: TStringGrid
        Left = 18
        Top = 25
        Width = 400
        Height = 305
        BevelEdges = []
        ColCount = 2
        RowCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goFixedRowDefAlign]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btnChangeHist: TButton
        Left = 472
        Top = 80
        Width = 91
        Height = 25
        Caption = 'Change File'
        TabOrder = 1
      end
    end
  end
  object panelSettings: TPanel
    Left = 0
    Top = 392
    Width = 628
    Height = 50
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 391
    ExplicitWidth = 624
    object btnSettingsCancel: TButton
      Left = 208
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
    end
    object btnSettingsSave: TButton
      Left = 344
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
    end
  end
end
