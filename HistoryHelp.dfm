object frmHistoryHelp: TfrmHistoryHelp
  Left = 0
  Top = 0
  Caption = 'Morse Runner -- History Files'
  ClientHeight = 442
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 617
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 400
    ExplicitWidth = 613
    object Button1: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 401
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 613
    ExplicitHeight = 400
    object Memo1: TMemo
      Left = 8
      Top = 12
      Width = 601
      Height = 377
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'UPDATING CALL HISTORY FILES'
        ''
        
          'The History File table lists all of the Call History files assoc' +
          'iated with each contest.'
        
          'Note there are two types of files: Call History text files and M' +
          'ASTER.DTA binary files.'
        ''
        'UPDATE MASTER.DTA'
        ''
        
          'Two contests, CQ WPX and HST (High Speed Test), use the binary M' +
          'ASTER.DTA file'
        
          'from the Super Check Partial website.  It is frequently updated ' +
          'and the latest'
        'MASTER.DTA can be found at:'
        ''
        'https://supercheckpartial.com/MASTER.DTA'
        ''
        'To update:'
        ''
        '1. Download the MASTER.DTA file from the link.'
        
          '2. In Morse Runner, go to Settings/Settings then the History tab' +
          '.'
        
          '3. On the History File table click on either the CQ WPX or HST r' +
          'ow so it is highlighted.'
        '4. Click "Select New File" button.'
        
          '5. Navigate to the new MASTER.DTA that was downloaded. Click Ope' +
          'n.'
        
          '6. A message will ask if you want to replace the old file with a' +
          ' new one.  Click '#39'OK'#39' and '
        'Save.'
        ''
        
          'CQ WPX and HST share the same MASTER.DTA file. Updating MASTER.D' +
          'TA for CQ WPX'
        'will also update it for HST, and vice versa.'
        ''
        'UPDATE ANY CALL HISTORY FILE (excluding MASTER.DTA)'
        ''
        
          'Call history files are frequently updated at the N1MM Logger+ we' +
          'bsite at'
        ''
        'https://n1mmwp.hamdocs.com/mmfiles/categories/callhistory/'
        ''
        
          '1. Go to the link. Search for the contest name you are intereste' +
          'd in.'
        '2. Download the call history file.'
        
          '3. In Morse Runner, go to Settings/Settings then the History tab' +
          '.'
        
          '4. On the History File table click on the row containing the con' +
          'test to be updated.'
        '5. Click "Select New File" button.'
        
          '6. Navigate to the Call History file that was downloaded. Click ' +
          'Open.'
        
          '7. A message will ask if you want to replace the old file with a' +
          ' new one.  Click '#39'OK'#39' and '
        'Save.'
        ''
        
          'In all cases the program will check to make sure the call histor' +
          'y file is in the correct '
        'format.')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
