object frmTraining: TfrmTraining
  Left = 0
  Top = 0
  Caption = 'MRCE -- Training Mode'
  ClientHeight = 455
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  TextHeight = 15
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 122
    Height = 25
    Caption = 'Training Mode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 189
    Top = 28
    Width = 41
    Height = 15
    Caption = 'Contest'
  end
  object Label30: TLabel
    Left = 411
    Top = 5
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 241
    Width = 449
    Height = 144
    Caption = ' Call Signs of Calling Stations '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lblTrainCall1: TLabel
      Left = 314
      Top = 24
      Width = 27
      Height = 17
      Caption = 'WPX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 314
      Top = 47
      Width = 27
      Height = 17
      Caption = 'WPX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 314
      Top = 70
      Width = 87
      Height = 17
      Caption = 'WPX, CWT, SST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 314
      Top = 93
      Width = 87
      Height = 17
      Caption = 'WPX, CWT, SST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 314
      Top = 116
      Width = 87
      Height = 17
      Caption = 'WPX, CWT, SST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object radioTrn3U: TRadioButton
      Left = 52
      Top = 26
      Width = 241
      Height = 17
      Caption = '3 Characters, USA (K8P, N4A, W7W, etc)'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object radioTrn3W: TRadioButton
      Left = 52
      Top = 50
      Width = 217
      Height = 17
      Caption = '3 Characters, World (F6R, B4G, etc)'
      TabOrder = 1
    end
    object radioTrn4Char: TRadioButton
      Left = 52
      Top = 73
      Width = 241
      Height = 17
      Caption = '4 Characters'
      TabOrder = 2
    end
    object radioTrn5Char: TRadioButton
      Left = 52
      Top = 96
      Width = 193
      Height = 17
      Caption = '5 Characters'
      TabOrder = 3
    end
    object radioTrn45Char: TRadioButton
      Left = 52
      Top = 119
      Width = 193
      Height = 17
      Caption = 'Mix of 4 and 5 Characters'
      TabOrder = 4
    end
  end
  object boxTrainCWSpd: TGroupBox
    Left = 8
    Top = 54
    Width = 449
    Height = 171
    Caption = ' CW Speed and Spacing '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 51
      Top = 26
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
    object lblCWSpeed: TLabel
      Left = 100
      Top = 26
      Width = 14
      Height = 17
      Alignment = taRightJustify
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 52
      Top = 82
      Width = 104
      Height = 15
      Caption = 'Farnsworth Spacing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 52
      Top = 108
      Width = 26
      Height = 15
      Caption = 'CPM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCWCharSpeed: TLabel
      Left = 101
      Top = 106
      Width = 14
      Height = 17
      Alignment = taRightJustify
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblWPMLong: TLabel
      Left = 240
      Top = 51
      Width = 95
      Height = 15
      Caption = 'Words Per Minute'
    end
    object Label12: TLabel
      Left = 230
      Top = 135
      Width = 117
      Height = 15
      Caption = 'Characters Per Minute'
    end
    object Label13: TLabel
      Left = 206
      Top = 150
      Width = 180
      Height = 13
      Caption = 'Note: CPM Must Be Higher Than WPM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object trkTrainCW: TTrackBar
      Left = 137
      Top = 25
      Width = 298
      Height = 45
      Max = 25
      Min = 10
      Position = 22
      ShowSelRange = False
      TabOrder = 0
      TabStop = False
      OnChange = trkTrainCWChange
    end
    object toggleFarns: TToggleSwitch
      Left = 172
      Top = 82
      Width = 73
      Height = 20
      Alignment = taLeftJustify
      TabOrder = 1
      ThumbColor = clNavy
      ThumbWidth = 20
      OnClick = toggleFarnsClick
    end
    object trkTrainFarnsCW: TTrackBar
      Left = 137
      Top = 106
      Width = 298
      Height = 45
      Max = 25
      Min = 10
      Position = 25
      ShowSelRange = False
      TabOrder = 2
      OnChange = trkTrainFarnsCWChange
      OnTracking = trkTrainFarnsCWTracking
    end
  end
  object cmboTrainCon: TComboBox
    Left = 236
    Top = 23
    Width = 169
    Height = 25
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    TabStop = False
    Text = 'CQ WPX'
    OnChange = cmboTrainConChange
    Items.Strings = (
      'CQ WPX'
      'CWOPS CWT'
      'K1USN Slow Speed Test')
  end
  object spinTrainDur: TSpinEdit
    Left = 412
    Top = 24
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
    TabOrder = 1
    Value = 7
  end
  object btnTrainExit: TButton
    Left = 60
    Top = 399
    Width = 126
    Height = 25
    Hint = 'Return to Practice Mode'
    Caption = 'Exit Training Mode'
    TabOrder = 4
    OnClick = btnTrainExitClick
  end
  object btnTrainStart: TButton
    Left = 263
    Top = 399
    Width = 131
    Height = 25
    Hint = 'Close this dialog.  Then click Run button to begin.'
    Caption = 'Done, Go To Run >>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnTrainStartClick
  end
end
