object frmTraining: TfrmTraining
  Left = 0
  Top = 0
  Caption = 'MRCE -- Training Mode'
  ClientHeight = 341
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
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
    Top = 145
    Width = 449
    Height = 136
    Caption = ' Call Signs of Calling Stations '
    TabOrder = 0
    object lblTrainCall1: TLabel
      Left = 312
      Top = 32
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
      Left = 312
      Top = 55
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
      Left = 312
      Top = 78
      Width = 61
      Height = 17
      Caption = 'WPX, CWT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 312
      Top = 101
      Width = 61
      Height = 17
      Caption = 'WPX, CWT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object radioTrn3U: TRadioButton
      Left = 50
      Top = 34
      Width = 241
      Height = 17
      Caption = '3 Characters, USA (K8P, N4A, W7W, etc)'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object radioTrn3W: TRadioButton
      Left = 50
      Top = 58
      Width = 217
      Height = 17
      Caption = '3 Characters, World (F6R, B4G, etc)'
      TabOrder = 1
    end
    object radioTrn4Char: TRadioButton
      Left = 50
      Top = 81
      Width = 241
      Height = 17
      Caption = '4 Characters Max'
      TabOrder = 2
    end
    object radioTrn5Char: TRadioButton
      Left = 50
      Top = 104
      Width = 193
      Height = 17
      Caption = '5 Characters Max'
      TabOrder = 3
    end
  end
  object btnTrainCancel: TButton
    Left = 126
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnTrainCancelClick
  end
  object btnTrainStart: TButton
    Left = 272
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnTrainStartClick
  end
  object boxTrainCWSpd: TGroupBox
    Left = 8
    Top = 54
    Width = 449
    Height = 75
    Caption = ' CW Speed '
    TabOrder = 3
    object Label5: TLabel
      Left = 50
      Top = 33
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
      Top = 31
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
    object trkTrainCW: TTrackBar
      Left = 136
      Top = 31
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
    TabOrder = 4
    TabStop = False
    Text = 'CQ WPX'
    OnChange = cmboTrainConChange
    Items.Strings = (
      'CQ WPX'
      'CWOPS CWT')
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
    TabOrder = 5
    Value = 7
  end
end
