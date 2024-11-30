//------------------------------------------------------------------------------
//This Source Code Form is subject to the terms of the Mozilla Public
//License, v. 2.0. If a copy of the MPL was not distributed with this
//file, You can obtain one at http://mozilla.org/MPL/2.0/.
//------------------------------------------------------------------------------
unit Main;

{$ifdef FPC}
{$MODE Delphi}
{$endif}

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms,
  Buttons, SndCustm, SndOut, Contest, Ini,
  VolmSldr, VolumCtl, StdCtrls, Station, Menus, ExtCtrls,
  ComCtrls, Spin, SndTypes,
  WavFile,
  ExchFields,   // for TFieldDefinition
  System.ImageList, Vcl.ToolWin, Vcl.ImgList, Settings;

const
  WM_TBDOWN = WM_USER+1;
  sVersion: String = '1.90p';  { Sets version strings in UI panel. }

type

  { TMainForm }

  TMainForm = class(TForm)
    AlSoundOut1: TAlSoundOut;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Send1: TMenuItem;
    CQ1: TMenuItem;
    Exchange1: TMenuItem;
    TU1: TMenuItem;
    MyCall1: TMenuItem;
    HisCall1: TMenuItem;
    QSOB41: TMenuItem;
    N1: TMenuItem;
    AGN1: TMenuItem;
    Bevel1: TBevel;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Help1: TMenuItem;
    Readme1: TMenuItem;
    About1: TMenuItem;
    N2: TMenuItem;
    PaintBox1: TPaintBox;
    Exit1: TMenuItem;
    Panel6: TPanel;
    RichEdit1: TRichEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape1: TShape;
    PopupMenu1: TPopupMenu;
    PileupMNU: TMenuItem;
    SingleCallsMNU: TMenuItem;
    CompetitionMNU: TMenuItem;
    HSTCompetition1: TMenuItem;
    StopMNU: TMenuItem;
    ImageList1: TImageList;
    Run1: TMenuItem;
    PileUp1: TMenuItem;
    SingleCalls1: TMenuItem;
    Competition1: TMenuItem;
    HSTCompetition2: TMenuItem;
    Stop1MNU: TMenuItem;
    ViewScoreBoardMNU: TMenuItem;
    ViewScoreTable1: TMenuItem;
    Panel7: TPanel;
    Label16: TLabel;
    AlWavFile1: TAlWavFile;
    Panel9: TPanel;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    SpinEdit3: TSpinEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    spinCWSpeed: TSpinEdit;
    CheckBox1: TCheckBox;
    cmboCWPitch: TComboBox;
    cmboRXBW: TComboBox;
    VolumeSlider1: TVolumeSlider;
    Label18: TLabel;
    WebPage1: TMenuItem;
    FirstTime1: TMenuItem;
    Settings1: TMenuItem;
    Call1: TMenuItem;
    PlayRecordedAudio1: TMenuItem;
    N8: TMenuItem;
    AudioRecordingEnabled1: TMenuItem;
    Operator1: TMenuItem;
    N9: TMenuItem;
    ListView2: TListView;
    sbar: TPanel;
    mnuShowCallsignInfo: TMenuItem;
    NRQM: TMenuItem;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Panel11: TPanel;
    ListView1: TListView;
    Panel12: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    panelTopControls: TPanel;
    Label10: TLabel;
    SimContestCombo: TComboBox;
    ExchangeEdit: TEdit;
    Label17: TLabel;
    Label29: TLabel;
    comboMode: TComboBox;
    SpinEdit2: TSpinEdit;
    Label8: TLabel;
    Label30: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton12: TSpeedButton;
    labelStatus: TLabel;
    Label23: TLabel;
    comboActivity: TComboBox;
    Label31: TLabel;
    spdbtnResetRIT: TSpeedButton;
    spdbtnRightRIT: TSpeedButton;
    Label24: TLabel;
    Label27: TLabel;
    Panel8: TPanel;
    Shape2: TShape;
    spdbtnLeftRIT: TSpeedButton;
    spdbtnRun: TSpeedButton;
    spdbtnPause: TSpeedButton;
    spdbtnStop: TSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    mnuSettings: TMenuItem;
    Timer1: TTimer;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure AlSoundOut1BufAvailable(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SendClick(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure cmboRXBWChange(Sender: TObject);
    procedure cmboCWPitchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spinCWSpeedChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FirstTime1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Readme1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RunMNUClick(Sender: TObject);
    procedure ViewScoreBoardMNUClick(Sender: TObject);
    procedure ViewScoreTable1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit2Enter(Sender: TObject);
    procedure VolumeSliderDblClick(Sender: TObject);
    procedure VolumeSlider1Change(Sender: TObject);
    procedure WebPage1Click(Sender: TObject);
    procedure Call1Click(Sender: TObject);
    procedure NWPMClick(Sender: TObject);
    procedure Pitch1Click(Sender: TObject);
    procedure Bw1Click(Sender: TObject);
    procedure File1Click(Sender: TObject);
    procedure PlayRecordedAudio1Click(Sender: TObject);
    procedure AudioRecordingEnabled1Click(Sender: TObject);
    procedure Activity1Click(Sender: TObject);
    procedure Duration1Click(Sender: TObject);
    procedure Operator1Click(Sender: TObject);
    procedure StopMNUClick(Sender: TObject);
    procedure ListView2CustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    //procedure SimContestComboClick(Sender: TObject);
    procedure ListView2SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure mnuShowCallsignInfoClick(Sender: TObject);
    procedure SimContestComboChange(Sender: TObject);
    procedure SimContestComboRefresh;
    procedure ExchangeEditChange(Sender: TObject);
    procedure ExchangeEditExit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure spinCWSpeedExit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spdbtnStopClick(Sender: TObject);
    procedure comboModeSelect(Sender: TObject);
    procedure spdbtnResetRITClick(Sender: TObject);
    procedure spdbtnRightRITClick(Sender: TObject);
    procedure spdbtnLeftRITClick(Sender: TObject);
    procedure spdbtnRunClick(Sender: TObject);
    procedure spdbtnPauseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure comboActivitySelect(Sender: TObject); // (K6OK)
    procedure comboModePopulate;
    procedure SpeedButton12Click(Sender: TObject);
    procedure mnuSettingsClick(Sender: TObject); // (K6OK)

  private
    MustAdvance: boolean;       // Controls when Exchange fields advance
    UserCallsignDirty: boolean; // SetMyCall is called after callsign edits
    UserExchangeDirty: boolean; // SetMyExchange is called after exchange edits
    CWSpeedDirty: boolean;      // SetWpm is called after CW Speed edits
    RitLocal: integer;          // tracks incremented RIT Value

    PauseStartTime: TDateTime;
    PausedTime: TDateTime;



    function CreateContest(AContestId : TSimContest) : TContest;
    procedure ConfigureExchangeFields;
    procedure SetMyExch1(const AExchType: TExchange1Type; const Avalue: string);
    procedure SetMyExch2(const AExchType: TExchange2Type; const Avalue: string);
    procedure ProcessSpace;
    procedure SendMsg(AMsg: TStationMessage);
    procedure ProcessEnter;
    procedure EnableCtl(Ctl: TWinControl; AEnable: boolean);
    procedure IncRit(dF: integer);
    procedure UpdateRitIndicator;
    procedure DecSpeed;
    procedure IncSpeed;
    procedure SpdBtnVisibility(valu: integer);  // (K6OK)


  public
    CompetitionMode: boolean;

    // Received Exchange information is contest-specific and depends on contest,
    // user's QTH/location, DX station's QTH/location, and whether the user's
    // simulated station is local/DX relative to the contest.
    // This value is set by calling the virtual TContest.GetSentExchTypes()
    // function. See TArrlDx.GetExchangeTypes() for additional information.
    RecvExchTypes: TExchTypes;

    procedure Run(Value: TRunMode; valuState: TPgmState);  // (K6OK)
    procedure WipeBoxes;
    procedure PopupScoreWpx;
    procedure PopupScoreHst;
    procedure Advance;
    procedure SetContest(AContestNum: TSimContest);
    function SetMyExchange(const AExchange: string) : Boolean;
    procedure SetDefaultRunMode(V : Integer);
    procedure SetMySerialNR;
    procedure SetQsk(Value: boolean);
    procedure SetWpm(AWpm : integer);
    function SetMyCall(ACall: string) : Boolean;
    procedure SetPitch(PitchNo: integer);
    procedure SetBw(BwNo: integer);
    procedure ReadCheckboxes;
    procedure UpdateTitleBar;
    procedure PostHiScore(const sScore: string);
    procedure UpdCWMinRxSpeed(minspd: integer);
    procedure UpdCWMaxRxSpeed(Maxspd: integer);
    procedure ClientHTTP1Redirect(Sender: TObject; var dest: string;
      var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
  end;

function ToStr(const val : TExchange1Type): string; overload;
function ToStr(const val : TExchange2Type): string; overload;

const
  CDebugExchSettings: boolean = false;  // compile-time exchange settings debug
  CDebugCwDecoder: boolean = false;     // compile-time enable for CW Decoder
  CDebugGhosting : boolean = false;     // compile-time enable for Ghosting debug

var
  MainForm: TMainForm;
  SaveEdit1Width: integer = 0;
  SaveLabel3Left: integer = 0;
  SaveEdit3Left: integer = 0;
  SaveEdit3Width: integer = 0;

  { debug switches - set via .INI file or compile-time switches (above) }
  BDebugExchSettings: boolean;    // display parsed Exchange field settings
  BDebugCwDecoder: boolean;       // enables CW stream to status bar
  BDebugGhosting: boolean;        // enabled DxStation ghosting issues

  StartTime: TDateTime;           // (K6OK)
  StopTime: TDateTime;
  ElapsedTime: TDateTime;

implementation

uses
  DXCC, ARRLFD, NAQP, CWOPS, CQWW, CQWPX, ARRLDX, CWSST, ALLJA, ACAG,
  IARUHF, ARRLSS,
  MorseKey, FarnsKeyer, CallLst,
  SysUtils, ShellApi, Crc32, Idhttp, Math, IniFiles,
  Dialogs, System.UITypes, TypInfo, ScoreDlg, Log, PerlRegEx, StrUtils;

{$R *.DFM}

function ToStr(const val : TExchange1Type) : string; overload;
begin
  Result := GetEnumName(typeInfo(TExchange1Type ), Ord(val));
end;

function ToStr(const val : TExchange2Type) : string; overload;
begin
  Result := GetEnumName(typeInfo(TExchange2Type ), Ord(val));
end;

{ return whether the Edit2 control is the RST exchange field. }
function Edit2IsRST: Boolean;
begin
  assert((not (SimContest in [scWpx, scHst])) or
    (MainForm.RecvExchTypes.Exch1 = etRST));
  Result := MainForm.RecvExchTypes.Exch1 = etRST;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
{$ifdef DEBUG}
  // detect/report memory leaks while in debug mode
  System.ReportMemoryLeaksOnShutdown := True;
{$endif}
  Randomize;

  Panel2.DoubleBuffered := True;
  RichEdit1.Align := alClient;
  RichEdit1.Font.Name:= 'Consolas';
  RichEdit1.Font.Size:= 11;
  Self.Caption:= 'Morse Runner - Community Edition';
  Label12.Caption:= format('Morse Runner %s ', [sVersion]);
  Label13.Caption:= Label12.Caption;
  Label14.Caption:= Label12.Caption;
  ListView2.Visible:= False;
  ListView2.Clear;

  UserCallsignDirty := False;
  UserExchangeDirty := False;

  // load DXCC support
  gDXCCList := TDXCC.Create;

  // Create the rate histogram
  Histo:= THisto.Create(PaintBox1);

  AlSoundOut1.BufCount := 4;

  // check to see if .ini folder exists in user's AppData/Local
  // if not, create it
  If not Ini.MRCE_Dir_Exists then
    CreateDir(IncludeTrailingPathDelimiter(GetEnvironmentVariable('LOCALAPPDATA')) + Ini.INI_FLDRNAME);

  // Read settings from .INI file
  FromIni(
    procedure (const aMsg : string)
    begin
      Application.MessageBox(PChar(aMsg),
        'Error',
        MB_OK or MB_ICONERROR);
    end
  );

  // populate and sort SimContestCombo after reading .ini file settings
  SimContestComboRefresh;
  assert(MainForm.SimContestCombo.ItemIndex =
    MainForm.SimContestCombo.Items.IndexOf(ActiveContest.Name));

  // enable Exchange debugging either locally or via .INI file
  BDebugExchSettings := CDebugExchSettings or Ini.DebugExchSettings;
  BDebugCwDecoder := CDebugCwDecoder or Ini.DebugCwDecoder;

  MakeKeyer(DEFAULTRATE, Ini.BufSize);

  // create a derived TContest of the appropriate type
  SetContest(Ini.SimContest);

  // start the TTimer for timekeeping (K6OK)
  Timer1.Enabled := True;
end;


procedure TMainForm.FormDestroy(Sender: TObject);
begin
  ToIni;
  gDXCCList.Free;
  Histo.Free;
  Tst.Free;
  DestroyKeyer;
  Timer1.Free;    // (K6OK)
end;


// Contest Factory - allocate a derived TContest of the appropriate type
function TMainForm.CreateContest(AContestId : TSimContest) : TContest;
begin
  // Adding a contest: implement a new contest-specific call history .pas file.
  Result := nil;
  case AContestId of
  scWpx, scHst: Result := TCqWpx.Create;
  scCwt:        Result := TCWOPS.Create;
  scFieldDay:   Result := TArrlFieldDay.Create;
  scNaQp:       Result := TNcjNaQp.Create;
  scCQWW:       Result := TCqWW.Create;
  scArrlDx:     Result := TArrlDx.Create;
  scSst:        Result := TCWSST.Create;
  scAllJa:      Result := TALLJA.Create;
  scAcag:       Result := TACAG.Create;
  scIaruHf:     Result := TIaruHf.Create;
  scArrlSS:     Result := TSweepstakes.Create;
  else
    assert(false);
  end;
end;


procedure TMainForm.AlSoundOut1BufAvailable(Sender: TObject);
begin
  if AlSoundOut1.Enabled then
    try AlSoundOut1.PutData(Tst.GetAudio); except end;
end;


procedure TMainForm.SendClick(Sender: TObject);
var
  Msg: TStationMessage;
begin
  Msg := TStationMessage((Sender as TComponent).Tag);

  SendMsg(Msg);
end;


{
  SendMsg() is called whenever MyStation sends a new CW Message.
}
procedure TMainForm.SendMsg(AMsg: TStationMessage);
begin
  // special case for CW Speed control having focus and user presses
  // a key or function key (which do not cause a leave-focus event).
  if spinCWSpeed.Focused then
    spinCWSpeedExit(spinCWSpeed);

  if AMsg = msgHisCall then begin
    // retain current callsign, including ''.
    Tst.SetHisCall(Edit1.Text);   // virtual; sets Tst.Me.HisCall and Log.CallSent

    // update "received" Exchange field types. Some contests change field
    // types based on MyCall and/or DX station's call (Tst.Me.HisCall).
    RecvExchTypes:= Tst.GetRecvExchTypes(skMyStation, Tst.Me.MyCall, Tst.Me.HisCall);
  end;
  if AMsg = msgNR then
    NrSent := true;
  Tst.Me.SendMsg(AMsg);
end;


procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['A'..'Z', 'a'..'z', '0'..'9', '/', '?', #8]) then
    Key := #0;
end;

procedure TMainForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  case RecvExchTypes.Exch1 of
    etRST:
      begin
        if RunMode <> rmHst then
        begin
          // for RST field, map (A,E,N) to (1,5,9)
          case Key of
            'a', 'A': Key := '1';
            'e', 'E': Key := '5';
            'n', 'N': Key := '9';
          end;
        end;
        // valid RST characters...
        if not CharInSet(Key, ['0'..'9', #8]) then
          Key := #0;
      end;
    etOpName:
      begin
        // valid operator name characters
        if not CharInSet(Key, ['A'..'Z','a'..'z', #8]) then
          Key := #0;
      end;
    etFdClass:
      begin
        // valid Station Classification characters, [1-9][0-9]+[A-F]|DX
        if not CharInSet(Key, ['0'..'9','A'..'F','a'..'f','X','x',#8]) then
          Key := #0;
      end;
    else
      assert(false, Format('invalid exchange field 1 type: %s',
        [ToStr(RecvExchTypes.Exch1)]));
  end;
end;

{
  Called after each keystroke while editing the Exch2 field (Edit3).
  Allows special processing to occur for certain contests.
}
procedure TMainForm.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // some contests have additional processing (e.g. ARRL SS)
  // (exclude function keys so we can use the debugger)
  var ExchSummary, ExchError: string;
  if (SimContest in [scArrlSS]) and ((Key < VK_F1) or (Key > VK_F12)) then
    begin
      if Tst.OnExchangeEdit(Edit1.Text, Edit2.Text, Edit3.Text,
        ExchSummary, ExchError) then
        begin
          Log.SBarUpdateSummary(ExchSummary);
          if not Log.SBarErrorMsg.IsEmpty and ExchError.IsEmpty then
            Log.DisplayError('', clDefault);
        end;
    end;
end;

procedure TMainForm.Edit3Enter(Sender: TObject);
begin
  Edit3.SelStart := 0;
  Edit3.SelLength := Edit3.GetTextLen;
end;

{
  Exchange field 2 key press. This procedure is called upon any keystroke
  in the Exchange 2 field. Depending on the exchange field type, it will
  map some keys into an equivalent numeric value. For example, the 'N'
  key is mapped to it's equivalent '9' value. this allows the user
  to type what they hear and this function will convert to the equivalent
  numeric value.
}
procedure TMainForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  case RecvExchTypes.Exch2 of
    etSerialNr, etItuZone, etAge:
      begin
        if RunMode <> rmHst then
          case Key of
            'a', 'A': Key := '1';
            'n', 'N': Key := '9';
            't', 'T': Key := '0';
          end;
        // valid Zone or NR field characters...
        if not CharInSet(Key, ['0'..'9', #8]) then
          Key := #0;
      end;
    etCqZone:
      begin
        if RunMode <> rmHst then
          case Key of
            'a', 'A': Key := '1';
            'n', 'N': Key := '9';
            'o', 'O': Key := '0';
            't', 'T': Key := '0';
          end;
        // valid CQ-Zone field characters...
        if not CharInSet(Key, ['0'..'9', #8]) then
          Key := #0;
      end;
    etGenericField:
      begin
        // log what the user types - assuming alpha numeric characters
        if not CharInSet(Key, ['0'..'9', 'A'..'Z', 'a'..'z', #8]) then
          Key := #0;
      end;
    etPower:
      begin
        { K6OK recommends not mapping these characters (PR #138)
        case Key of
          'a', 'A': Key := '1';
          'n', 'N': Key := '9';
          't', 'T': Key := '0';
        end;
        }
        // valid Power characters, including KW...
        if not CharInSet(Key, ['0'..'9', 'K', 'k', 'W', 'w', 'A', 'a',
                               'n', 'N', 'o', 'O', 't', 'T', #8]) then
          Key := #0;
      end;
    etArrlSection:
      begin
        // valid Section characters (e.g. OR or STX)
        if not CharInSet(Key, ['A'..'Z', 'a'..'z', #8]) then
          Key := #0;
      end;
    etStateProv:
      begin
        // valid State/Prov characters (e.g. OR or BC)
        if not CharInSet(Key, ['A'..'Z', 'a'..'z', #8]) then
          Key := #0;
      end;
    etNaQPExch2, etNaQpNonNaExch2:
      begin
        // valid NAQP Multiplier characters (e.g. OR, BC, or KP4)
        if not CharInSet(Key, ['0'..'9', 'A'..'Z', 'a'..'z', '/', #8]) then
          Key := #0;
      end;
    etJaPref, etJaCity:
      begin
        // valid Pref/City/Gun/Ku characters(numeric) and power characters (e.g. P|L|M|H)
        if not CharInSet(Key, ['0'..'9', 'L', 'M', 'H', 'P', 'l', 'm', 'h', 'p', #8]) then
          Key := #0;
      end;
    etSSCheckSection:
      begin
        // valid NR/Prec/Call/Check/Section characters
        if not CharInSet(Key, ['0'..'9', 'A'..'Z', 'a'..'z', '/', #32, #8]) then
          Key := #0;
      end
    else
      assert(false, Format('invalid exchange field 2 type: %s',
        [ToStr(RecvExchTypes.Exch2)]));
  end;
end;


procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
{
    #13: //^M = ESM
      Ini.Esm := not Ini.Esm;
}
    #23: //^W  = Wipe
      WipeBoxes;
    #21: //^U  pileup continuo se 1
      begin
        if NoStopActivity = 0 then
          begin
            Label8.Caption := 'min';
            NoStopActivity := 1
          end
        else
        begin
            NoStopActivity := 0;
            Label8.Caption := 'min.';
        end;

      end;
    #25: //^Y  = Edit
      ;

    #27: //Esc = Abort send
      begin
        if msgHisCall in Tst.Me.Msg then
          CallSent := false;
        if msgNR in Tst.Me.Msg then
          NrSent := false;
        Tst.Me.AbortSend;
      end;

    ';': //<his> <#>
      begin
        // some contests have additional exchange processing (e.g. ARRL SS)
        Tst.OnExchangeEditComplete;  // sets Log.CallSent

        SendMsg(msgHisCall);
        SendMsg(msgNr);
      end;

    '.', '+', '[', ',': //TU & Save
      begin
        // verify callsign using simple length-based check
        var ExchError: string;
        if not Tst.CheckEnteredCallLength(Edit1.Text, ExchError) then
          begin
            DisplayError(ExchError, clRed);
            Exit;
          end;

        // some contests have additional exchange processing (e.g. ARRL SS)
        Tst.OnExchangeEditComplete;  // sets Log.CallSent

        if not CallSent then
          SendMsg(msgHisCall);
        SendMsg(msgTU);
        Log.SaveQso;
      end;

    ' ': // advance to next exchange field
      if (ActiveControl <> ExchangeEdit) and
         not ((ActiveControl = Edit3) and (SimContest = scArrlSS)) then
        ProcessSpace
      else
        Exit;

    //'\': // = F1
    //  SendMsg(msgCQ);

    else
      Exit;
  end;
  Key := #0;
end;


procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_INSERT: //<his> <#>
      begin
      Tst.OnExchangeEditComplete;
      SendMsg(msgHisCall);
      SendMsg(msgNr);
      Key := 0;
      end;

    VK_RETURN: //Save
      ProcessEnter;

    87, 119: //Alt-W  = Wipe
      if GetKeyState(VK_MENU) < 0 then WipeBoxes else Exit;

{
    'M': //Alt-M  = Auto CW
      if GetKeyState(VK_MENU) < 0
        then Ini.AutoCw := not Ini.AutoCw
        else Exit;
}

    VK_UP:
      begin
        if GetKeyState(VK_CONTROL) >= 0 then IncRit(1)
          else if RunMode <> rmHst then SetBw(cmboRXBW.ItemIndex+1);
        if (ssShift in Shift) then IncRit(0);    //Shift-UpArrow resets RIT
      end;

    VK_DOWN:
      begin
        if GetKeyState(VK_CONTROL) >= 0  then IncRit(-1)
          else if RunMode <> rmHst then SetBw(cmboRXBW.ItemIndex-1);
        if (ssShift in Shift) then IncRit(0);    //Shift-DownArrow resets RIT
      end;

    VK_PRIOR: //PgUp
      IncSpeed;

    VK_NEXT: //PgDn
      DecSpeed;

    VK_F9:
      if Shift = [] then SendMsg(msgNrQm)       // F9 Sends "Nr?"   K6OK
      else if (ssAlt in Shift) or  (ssCtrl in Shift) then DecSpeed;

    VK_F10:
      if (ssAlt in Shift) or  (ssCtrl in Shift) then IncSpeed;

    VK_F12:                            // F12 clears entry fields   K6OK
      WipeBoxes;

    else
      Exit;
  end;
  Key := 0;
end;


procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_INSERT, VK_RETURN:
      Key := 0;
    end;
end;


{
  Advance cursor to next exchange field. This procedure is called whenever
  the Spacebar is pressed. Its purpose is to move the cursor to the next
  Exchange field.

  If the current contest has an RST field:
  - the RST field value is set if currently empty
  - the RST field is skipped (cursor is moved to the third exchange field).
    Note that TAB key will select the middle digit of the RST field.
}
procedure TMainForm.ProcessSpace;
begin
  MustAdvance := false;

  if Edit2IsRST then
    begin
      if ActiveControl = Edit1 then
        begin
          if Edit2.Text = '' then
            Edit2.Text := '599';
          ActiveControl := Edit3;
        end
      else if ActiveControl = Edit2 then
        begin
          if Edit2.Text = '' then
            Edit2.Text := '599';
          ActiveControl := Edit3;
        end
      else
        ActiveControl := Edit1;
    end
  else {otherwise, space bar moves cursor to next field}
    begin
      if ActiveControl = Edit1 then
        begin
          if SimContest = scFieldDay then
            SbarUpdateStationInfo(Edit1.Text);
          if SimContest = scArrlSS then
            ActiveControl := Edit3
          else
            ActiveControl := Edit2;
        end
      else if ActiveControl = Edit2 then
        ActiveControl := Edit3
      else
        ActiveControl := Edit1;
    end;
end;


{
  Called when the Enter key is pressed.
  In setup-mode:
  - passes Enter key to either the Exchange setup field or callsign field.
  In Run-mode:
  - moves the cursor between QSO exchange fields following the QSO state.
  - if either CW Speed and Active Spin Controls are active, cursor is moved
    to the appropriate QSO exchange field.
  - for some contests, the status bar is updated with Dx Station information.
}
procedure TMainForm.ProcessEnter;
var
  C, N, R, Q: boolean;
  ExchError: string;
begin
  if ActiveControl = ExchangeEdit then
    begin
      // exit Exchange field
      ExchangeEditExit(ActiveControl);
      Exit;
    end;
  if ActiveControl = Edit4 then
    begin
      // exit callsign field
      Edit4Exit(ActiveControl);
      Exit;
    end;
  if ActiveControl = spinCWSpeed then
    begin
      // exit CW Speed Control
      spinCWSpeedExit(ActiveControl);
      if Ini.pgmState = psStop then
        Exit;
    end;
  MustAdvance := false;
  ExchError := '';

  sbar.Font.Color := clDefault;

  // 'Control-Enter', 'Shift-Enter' and 'Alt-Enter' are shortcuts to SaveQSO
  if (GetKeyState(VK_CONTROL) or GetKeyState(VK_SHIFT) or GetKeyState(VK_MENU)) < 0 then
  begin
    // verify callsign before calling SaveQSO
    if not Tst.CheckEnteredCallLength(Edit1.Text, ExchError) then
      begin
        DisplayError(ExchError, clRed);
        Exit;
      end;

    Log.SaveQso;
    Exit;
  end;

  // Adding a contest: update status bar w/ station info.
  // This status message occurs when user presses the Enter key.
  // remember not to give a hint if exchange entry is affected by this info.
  // for certain contests (e.g. ARRL Field Day), update update status bar
  if SimContest in [scCwt, scFieldDay, scWpx, scCQWW, scArrlDx, scIaruHf] then
    SbarUpdateStationInfo(Edit1.Text)
  else if not BDebugCwDecoder then
    SbarUpdateStationInfo('');

  //no QSO in progress, send CQ
  if Edit1.Text = '' then
  begin
    SendMsg(msgCq);
    // special case - Cursor is in either CW Speed or Activity Spin Control
    // when Enter key is pushed. Move cursor to the next QSO Exchange field.
    if (Ini.pgmState = psRun) and
          ((ActiveControl = spinCWSpeed) or (ActiveControl = SpinEdit3)) then
      MustAdvance := true;
    Exit;
  end;

  // Update CallSent (HisCall has been sent)
  Tst.OnExchangeEditComplete;

  // clear prior error string
  DisplayError('', clDefault);

  //current state
  C := CallSent;
  N := NrSent;    // 'Nr' represents the exchange (<exch1> <exch2>).
  Q := (Edit2.Text <> '') or (SimContest in [scArrlSS]);
  case SimContest of
    scArrlSS:
      R := Tst.ValidateEnteredExchange(Edit1.Text, Edit2.Text, Edit3.Text, ExchError);
    else
      R := (Edit3.Text <> '') or ((SimContest = scNaQp) and
                                  (RecvExchTypes.Exch2 = etNaQpNonNaExch2));
  end;

  //send his call if did not send before, or if call changed
  if (not C) or ((not N) and (not R)) then
    SendMsg(msgHisCall);
  if not N then
    SendMsg(msgNR);
  if N and (not R or not Q) then
    begin
      DisplayError(ExchError, clDefault);
      SendMsg(msgQm);
    end;

  if R and Q and (C or N) then
  begin
    // validate Exchange before sending TU and logging the QSO
    if not Tst.ValidateEnteredExchange(Edit1.Text, Edit2.Text, Edit3.Text, ExchError) then
      begin
        DisplayError(ExchError, clRed);
        Exit;
      end;

    SendMsg(msgTU);
    Log.SaveQso;
  end
  else
    MustAdvance := true;
end;


procedure TMainForm.Edit1Enter(Sender: TObject);
var
  P: integer;
begin
  P := Pos('?', Edit1.Text);
  if P > 1 then
  begin
    Edit1.SelStart := P-1;
    Edit1.SelLength := 1;
  end;
end;


procedure TMainForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if GetKeyState(VK_CONTROL) >= 0  then IncRit(1)
  else if RunMode <> rmHst then SetBw(cmboRXBW.ItemIndex-1);
  Handled := true;  // set Handled to prevent being called 3 times
end;

procedure TMainForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if GetKeyState(VK_CONTROL) >= 0 then IncRit(-1)
  else if RunMode <> rmHst then SetBw(cmboRXBW.ItemIndex+1);
  Handled := true;  // set Handled to prevent being called 3 times
end;


procedure TMainForm.IncSpeed;
begin
  if RunMode = rmHST then
    SetWpm(Trunc(Wpm / 5) * 5 + 5)
  else
    SetWpm(Wpm + Ini.WpmStepRate);
end;


procedure TMainForm.DecSpeed;
begin
  if RunMode = rmHST then
    SetWpm(Ceil(Wpm / 5) * 5 - 5)
  else
    SetWpm(Wpm - Ini.WpmStepRate);
end;


procedure TMainForm.Edit4Change(Sender: TObject);
begin
  // user callsign edit has occurred; allows SetMyCall to be called.
  UserCallsignDirty := True;
end;

procedure TMainForm.Edit4Exit(Sender: TObject);
begin
  // call SetMyCall if the callsign has been edited
  if UserCallsignDirty then
    SetMyCall(Trim(Edit4.Text));
end;

procedure TMainForm.ExchangeEditChange(Sender: TObject);
begin
  // exchange edit callsign edit has occurred; allows SetMyCall to be called.
  UserExchangeDirty := True;
end;

procedure TMainForm.ExchangeEditExit(Sender: TObject);
begin
  if UserExchangeDirty then
    SetMyExchange(Trim(ExchangeEdit.Text));
end;

procedure TMainForm.SetContest(AContestNum: TSimContest);
begin
  // Adding a contest: add each contest to this set. TODO - implement alternative
  // validate selected contest
  if not (AContestNum in [scWpx, scCwt, scFieldDay, scNaQp, scHst,
    scCQWW, scArrlDx, scSst, scAllJa, scAcag, scIaruHf, scArrlSS]) then
  begin
    ShowMessage('The selected contest is not yet supported.');
    SimContestCombo.ItemIndex :=
        SimContestCombo.Items.IndexOf(ActiveContest.Name);
    Exit;
  end;

  // clear input fields prior to deleting Contest object.
  WipeBoxes;

  // clear any status messages
  sbar.Caption := '';
  sbar.Font.Color := clDefault;
  sbar.Visible := mnuShowCallsignInfo.Checked;

  assert(ContestDefinitions[AContestNum].T = AContestNum,
    'Contest definitions are out of order');

  // drop prior contest
  if Assigned(Tst) then
    FreeAndNil(Tst);

  Ini.SimContest := AContestNum;
  Ini.ActiveContest := @ContestDefinitions[AContestNum];
  SimContestCombo.ItemIndex :=
        SimContestCombo.Items.IndexOf(Ini.ActiveContest.Name);

  // create new contest
  Tst := CreateContest(AContestNum);

  // load original or Farnsworth Keyer
  FreeAndNil(Keyer);
  if SimContest in [scSST] then
    Keyer := TFarnsKeyer.Create(DEFAULTRATE, Ini.BufSize)
  else
    Keyer := TKeyer.Create(DEFAULTRATE, Ini.BufSize);

  // the following will initialize simulation-specific data owned by contest.
  // (moved here from Ini.FromIni)
  begin
    // if emtpy, set initial User Exchange (e.g. 3A OR)
    if Ini.UserExchangeTbl[SimContest].IsEmpty then
      Ini.UserExchangeTbl[SimContest] := ActiveContest.ExchDefault;

    // set contest-specific Sent Exchange field prior to calling SetMyCall().
    // UI assumes uppercase only, so convert .ini file data to uppercase.
    ExchangeEdit.Text := UpperCase(Ini.UserExchangeTbl[SimContest]);

    // set user's call - also calls SetMyExchange and ConfigureExchangeFields.
    SetMyCall(UpperCase(Ini.Call));
    SetPitch(cmboCWPitch.ItemIndex);
    SetBw(cmboRXBW.ItemIndex);
    SetWpm(Ini.Wpm);
    SetQsk(Ini.Qsk);

    // buffer size - set in TContest.Create()
    assert(Tst.Filt.SamplesInInput = Ini.BufSize);
    assert(Tst.Filt2.SamplesInInput = Ini.BufSize);

    // my sent exchange set by SetMyCall() above
    assert(Tst.Me.SentExchTypes = Tst.GetSentExchTypes(skMyStation, Ini.Call));
  end;
end;

{procedure TMainForm.SetNumber(ANumber: string);
begin
   Ini.Number := ANumber;
   editNumber.Text := ANumber;
   Tst.Me.NR2 := ANumber;
end;}

{
  Set my "sent" exchange fields using the exchange string containing two values,
  separated by a space. Error/warning messages are displayed in the status bar.

  My "sent" exchange types (Tst.Me.SentExchTypes) have been previously set by
  SetMyCall().

  Beginning with ARRL Sweepstakes contest, the exchange will have more than
  two values, namely '# A 72 OR'. For the case of ARRL Sweepstakes, we will
  break this into two pieces: Exch1='# A', Exch2='72 OR'.
}
function TMainForm.SetMyExchange(const AExchange: string) : Boolean;
var
  sl: TStringList;
  ExchError: string;
  SentExchTypes : TExchTypes;
begin
  sl:= TStringList.Create;
  try
    assert(Tst.Me.SentExchTypes = Tst.GetSentExchTypes(skMyStation, Ini.Call),
      'set by TMainForm.SetMyCall');
    SentExchTypes := Tst.Me.SentExchTypes;

    // ValidateMyExchange will parse user-entered exchange and
    // return Exch1 and Exch2 tokens.
    if not Tst.ValidateMyExchange(AExchange, sl, ExchError) then
      begin
        Result := False;
        DisplayError(ExchError, clRed);

        // update the Sent Exchange field value
        ExchangeEdit.Text := AExchange;
        Ini.UserExchangeTbl[SimContest]:= AExchange;
        exit;
      end
    else
      begin
        Result := True;
        sbar.Visible := mnuShowCallsignInfo.Checked;
        sbar.Font.Color := clDefault;
        sbar.Caption := '';
      end;

    // restore Edit3 if not ARRL Sweepstakes
    if (SimContest <> scArrlSS) and (SaveEdit3Left <> 0) then
      begin
        Edit1.Width := SaveEdit1Width;
        Label3.Left := SaveLabel3Left;
        Edit3.Left := SaveEdit3Left;
        Edit3.Width := SaveEdit3Width;
        Label2.Show;
        Edit2.Show;
        SaveLabel3Left := 0;
        SaveEdit3Left := 0;
        SaveEdit3Width := 0;
      end;

    // set contest-specific sent exchange values
    SetMyExch1(SentExchTypes.Exch1, sl[0]);
    SetMyExch2(SentExchTypes.Exch2, sl[1]);
    assert(Tst.Me.SentExchTypes = SentExchTypes);

    // update the Sent Exchange field value
    ExchangeEdit.Text := AExchange;
    Ini.UserExchangeTbl[SimContest]:= AExchange;

    // update application's title bar
    UpdateTitleBar;

    UserExchangeDirty := False;
  finally
    sl.Free;
  end;
end;


procedure TMainForm.UpdateTitleBar;
begin
  if (SimContest = scHst) and not HamName.IsEmpty then  // for HST, add operator name
    Caption := Format('Morse Runner - Community Edition:  %s', [HamName])
  else // Default is: Morse Runner - Community Edition
    Caption := 'Morse Runner - Community Edition';
end;


procedure TMainForm.SetDefaultRunMode(V : Integer);
begin
  if (V >= Ord(rmPileUp)) and (V <= Ord(rmHst)) then
    DefaultRunMode := TRunMode(V)
  else
    DefaultRunMode := rmPileUp;

  assert(PopupMenu1.Items[0].Tag = Ord(rmPileUp)+1);
  assert(PopupMenu1.Items[1].Tag = Ord(rmSingle)+1);
  assert(PopupMenu1.Items[2].Tag = Ord(rmWpx)+1);
  assert(PopupMenu1.Items[3].Tag = Ord(rmHst)+1);
//  PopupMenu1.Items[Ord(DefaultRunMode)-1].Default := True;
  PopupMenu1.Items[Ord(DefaultRunMode)].Default := True;
end;


procedure TMainForm.SetMySerialNR;
begin
  assert(Tst.Me.SentExchTypes.Exch2 = etSerialNr);
  SetMyExch2(Tst.Me.SentExchTypes.Exch2, Ini.UserExchange2[SimContest]);
end;


function TMainForm.SetMyCall(ACall: string) : Boolean;
var
  err : string;
begin
  Ini.Call := ACall;
  Edit4.Text := ACall;
  Tst.Me.MyCall := ACall;

  // some contests have contest-specific settings (e.g location local/dx).
  // sets Tst.Me.SentExchTypes.
  if not Tst.OnSetMyCall(ACall, err) then
  begin
    MessageDlg(err, mtError, [mbOK], 0);
    Result := False;
    Exit;
  end;
  assert(Tst.Me.SentExchTypes = Tst.GetSentExchTypes(skMyStation, ACall));

  // update my "sent" exchange information.
  // depends on: contest, my call, sent exchange (ExchangeEdit).
  // SetMyExchange() may report an error in the status field.
  Result := SetMyExchange(Trim(ExchangeEdit.Text));

  // update "received" Exchange field types, labels and length settings
  // (e.g. RST, Nr.). depends on: contest, my call and dx station's call.
  ConfigureExchangeFields;

  UserCallsignDirty := False;
end;

{
  Received Exchange Field types are defined by each contest.
  Exchange Field types can also dynamically change for various contests:
  - ARRL DX: Exchange 2 changes between etStateProv and etPower.
  - ARRL 10m: Exchange 2 changes between etStateProv10m, etIARU, etSerial,
    depending on sending station's callsign.
  - NCJ NAQP: Exchange 2 changes between eNaQpExch2 and eNaQpNonNaExch2,
    depending on sending station's callsign. Non-NA sends only send Name
    without a location and DX is recorded in the log.

  Received exchange field labels and exchange field maximum length are set.

  This procedure is called whenever:
  a) the contest changes by SetContest().
  b) when DxStation's callsign is entered (dynamic during contest).

  Note: using DxStations's callsign can be eliminated by using ASCII
  exchange fields and not applying semantics until the log entry is
  constructed and compared. This may simplify how dynamic exchange field
  types are handled.
}
procedure TMainForm.ConfigureExchangeFields;
const
  { the logic below allows Exchange label to be optional.
    If necessary, move this value into ContestDefinitions[] table. }
  AExchangeLabel: PChar = 'Exchange';

var
  Visible: Boolean;

begin
  // Load Received exchange field types
  RecvExchTypes:= Tst.GetRecvExchTypes(skMyStation, Tst.Me.MyCall, Trim(Edit1.Text));

  // Optional Contest Exchange label and field
  Visible := AExchangeLabel <> '';
  Label17.Visible:= Visible;
  ExchangeEdit.Visible:= Visible;
  Label17.Caption:= AExchangeLabel;

  // The Exchange field is editable in some contests
  ExchangeEdit.Enabled := ActiveContest.ExchFieldEditable;

  // setup Exchange Field 1 (e.g. RST)
  assert(RecvExchTypes.Exch1 = TExchange1Type(Exchange1Settings[RecvExchTypes.Exch1].T),
    Format('Exchange1Settings[%d] ordering error: found %s, expecting %s.',
      [Ord(RecvExchTypes.Exch1), ToStr(RecvExchTypes.Exch1),
      ToStr(TExchange1Type(Exchange1Settings[RecvExchTypes.Exch1].T))]));
  Label2.Caption:= Exchange1Settings[RecvExchTypes.Exch1].C;
  Edit2.MaxLength:= Exchange1Settings[RecvExchTypes.Exch1].L;

  // setup Exchange Field 2 (e.g. Serial #)
  assert(RecvExchTypes.Exch2 = TExchange2Type(Exchange2Settings[RecvExchTypes.Exch2].T),
    Format('Exchange2Settings[%d] ordering error: found %s, expecting %s.',
      [Ord(RecvExchTypes.Exch2), ToStr(RecvExchTypes.Exch2),
      ToStr(TExchange2Type(Exchange2Settings[RecvExchTypes.Exch2].T))]));
  Label3.Caption := Exchange2Settings[RecvExchTypes.Exch2].C;
  Edit3.MaxLength := Exchange2Settings[RecvExchTypes.Exch2].L;
end;

procedure TMainForm.SetMyExch1(const AExchType: TExchange1Type;
  const Avalue: string);
const
  DIGITS = ['0'..'9'];
var
  L: integer;
begin
  // Adding a contest: setup contest-specific exchange field 1
  case AExchType of
    etRST:
      begin
        // Format('invalid RST (%s)', [AValue]));
        Ini.UserExchange1[SimContest] := Avalue;
        Tst.Me.RST := StrToInt(Avalue.Replace('E', '5', [rfReplaceAll])
                                     .Replace('N', '9', [rfReplaceAll]));
        Tst.Me.Exch1 := Avalue;
        if BDebugExchSettings then Edit2.Text := Avalue; // testing only
      end;
    etOpName: // e.g. scCwt (David)
      begin
        // Format('invalid OpName (%s)', [AValue]));
        Ini.HamName:= Avalue;
        Ini.UserExchange1[SimContest] := Avalue;
        Tst.Me.OpName := Avalue;
        Tst.Me.Exch1 := Avalue;
        if BDebugExchSettings then Edit2.Text := Avalue; // testing only
      end;
    etFdClass:  // e.g. scFieldDay (3A)
      begin
        // 'expecting FD class (3A)'
        Ini.ArrlClass := Avalue;
        Ini.UserExchange1[SimContest] := Avalue;
        Tst.Me.Exch1 := Avalue;
        if BDebugExchSettings then Edit2.Text := Avalue; // testing only
      end;
    etSSNrPrecedence:
      begin
        // Active during ARRL Sweepstakes contest.
        // '#A' | '# A' | '123A' | '123 A' | 'A'
        //    --> Exch1 = 'A' | ' A'       // optional leading space
        // We want to send what is specified. If they say, '#A', then so space.
        // We can can store leading space in Tst.Me.Exch1 = ' A', so strip
        // the leading '#' or numeric ('123').
        // - pull the leading numeric or '#' and store in NumberStr
        // - convert '<nr><prec>' to '<nr>''<prec>'
        // - convert '<nr> <prec>' to '<nr>' ' <prec>'
        // - insert leading space if count=2
        Ini.UserExchange1[SimContest] := Avalue;

        if Avalue.IsEmpty then
          begin
            Tst.Me.NR := 1;
            Tst.Me.Exch1 := '';
          end
        else if Avalue[1] = '#' then
          begin
            // optional leading '#' ('#A' | '# A')
            if SerialNR in [snMidContest, snEndContest] then
              Tst.Me.NR := 1 + (Tst.GetRandomSerialNR div 10) * 10
            else
              Tst.Me.NR := 1;
            L := 2;
            if Avalue[L] = ' ' then
              while Avalue[L+1] = ' ' do
                Inc(L);
            Tst.Me.Exch1 := Avalue.Substring(L-1);
          end
        else if CharInSet(Avalue[1], DIGITS) then
          begin
            // optional leading serial number ('123A' | '123 A')
            L := 1;
            repeat
              Inc(L)
            until not CharInSet(Avalue[L], DIGITS);
            Tst.Me.NR := AValue.Substring(0,L-1).ToInteger;
            if Avalue[L] = ' ' then
              while Avalue[L+1] = ' ' do
                Inc(L);
            Tst.Me.Exch1 := Avalue.Substring(L-1);
            if BDebugExchSettings then Edit2.Text := Avalue; // testing only
          end
        else
          begin
            // no leading serial number. use assigned serial number behavior.
            if SerialNR in [snMidContest, snEndContest] then
              Tst.Me.NR := 1 + (Tst.GetRandomSerialNR div 10) * 10
            else
              Tst.Me.NR := 1;
            Tst.Me.Exch1 := ' ' + Avalue;
          end;
        if BDebugExchSettings then Edit2.Text := Avalue; // testing only
      end;
    else
      assert(false, Format('Unsupported exchange 1 type: %s.', [ToStr(AExchType)]));
  end;
  Tst.Me.SentExchTypes.Exch1 := AExchType;
end;

procedure TMainForm.SetMyExch2(const AExchType: TExchange2Type;
  const Avalue: string);
begin
  //assert(Ini.pgmState = psStop);
  // Adding a contest: setup contest-specific exchange field 2
  case AExchType of
    etSerialNr:
      begin
        var S : String := Avalue.Replace('T', '0', [rfReplaceAll])
                                .Replace('O', '0', [rfReplaceAll])
                                .Replace('N', '9', [rfReplaceAll]);
        Ini.UserExchange2[SimContest] := Avalue;
        if SimContest = scHST then
          Tst.Me.NR := 1
        else if S.Contains('#') and (SerialNR in [snMidContest, snEndContest]) then
          Tst.Me.NR := 1 + (Tst.GetRandomSerialNR div 10) * 10
        else if IsNum(S) then
          Tst.Me.Nr := S.ToInteger
        else
          Tst.Me.Nr := 1;
        if BDebugExchSettings then Edit3.Text := IntToStr(Tst.Me.Nr);  // testing only
      end;
    etGenericField, etNaQpExch2, etNaQpNonNaExch2:
      begin
        // 'expecting alpha-numeric field'
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    etArrlSection:  // e.g. Field Day (OR)
      begin
        // 'expecting FD section (e.g. OR)'
        Ini.ArrlSection := Avalue;
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    etStateProv, etPower:  // e.g. NAQP (OR); ARRLDX (OR | KW)
      begin
        // 'expecting State or Province (e.g. OR)'
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    etCqZone:
      begin
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue;  // testing only
      end;
    etItuZone:
      begin
        // 'expecting Itu-Zone or IARU Society'
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    //etAge:
    etJaPref:
      begin
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    etJaCity:
      begin
        Ini.UserExchange2[SimContest] := Avalue;
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then Edit3.Text := Avalue; // testing only
      end;
    etSSCheckSection:
      begin
        if SaveEdit3Left = 0 then
          begin
            // retain current field sizes
            SaveEdit1Width := Edit1.Width;
            SaveLabel3Left := Label3.Left;
            SaveEdit3Left := Edit3.Left;
            SaveEdit3Width := Edit3.Width;

            // hide Exch1 (Edit2)
            Edit2.Hide;
            Label2.Hide;

            // reduce Edit1 width; shift Exch Field 2 to the left and grow
            var Reduce1: integer := (SaveEdit1Width * 4) div 9;
            Label3.Left := Label3.Left - (Label3.Left - Label2.Left) - Reduce1;
            Edit3.Left := Edit2.Left - Reduce1;
            Edit3.Width := Edit3.Width + (SaveEdit3Left - Edit2.Left + Reduce1 + 15);
            Edit1.Width := Edit1.Width - Reduce1;
          end;

        Ini.UserExchange2[SimContest] := Avalue; // <check> <sect> (e.g. 72 OR)
        Tst.Me.Exch2 := Avalue;
        if BDebugExchSettings then
          begin
            Edit3.Text := Edit2.Text + ' ' + Avalue;  // testing only
            Edit2.Text := '';
          end;
      end;
    else
      assert(false, Format('Unsupported exchange 2 type: %s.', [ToStr(AExchType)]));
  end;
  Tst.Me.SentExchTypes.Exch2 := AExchType;
end;


{
  Set pitch based on menu item number.
  Must be within range [0, ComboBox1.Items.Count).
}
procedure TMainForm.SetPitch(PitchNo: integer);
begin
  PitchNo := Max(0, Min(PitchNo, cmboCWPitch.Items.Count-1));
  Ini.Pitch := 300 + PitchNo * 50;
  cmboCWPitch.ItemIndex := PitchNo;
  Tst.Modul.CarrierFreq := Ini.Pitch;
end;


{
  Set bandwidth based on menu item number.
  Must be within range [0, cmboRXBW.Items.Count).
}
procedure TMainForm.SetBw(BwNo: integer);
begin
  BwNo := Max(0, Min(BwNo, cmboRXBW.Items.Count-1));
  Ini.Bandwidth := 100 + BwNo * 50;
  cmboRXBW.ItemIndex := BwNo;

  Tst.Filt.Points := Round(0.7 * DEFAULTRATE / Ini.BandWidth);
  Tst.Filt.GainDb := 10 * Log10(500/Ini.Bandwidth);
  Tst.Filt2.Points := Tst.Filt.Points;
  Tst.Filt2.GainDb := Tst.Filt.GainDb;

  UpdateRitIndicator;
end;

procedure TMainForm.SimContestComboChange(Sender: TObject);
begin
  SetContest(FindContestByName(SimContestCombo.Items[SimContestCombo.ItemIndex]));
end;

{ add contest names to SimContest Combo box and sort }
procedure TMainForm.SimContestComboRefresh;
var
  C: TContestDefinition;
  I: integer;
begin
  SimContestCombo.Items.Clear;
  // if practice or training activity, don't show HST in contest list (K6OK)
  if comboActivity.ItemIndex < 1 then
  begin
    for C in ContestDefinitions do
    SimContestCombo.Items.Add(C.Name);
    i := SimContestCombo.Items.IndexOf('HST (High Speed Test)');
    SimContestCombo.Items.Delete(i);
  end;
  if comboActivity.ItemIndex = 1 then
  begin  // if activity is training
    SimContestCombo.Items.Add('CQ WPX');
    SimContestCombo.Items.Add('K1USN Slow Speed Test');
  end;
  if comboActivity.ItemIndex = 2 then
  begin  // if activity is competition
    SimContestCombo.Items.Add('HST (High Speed Test)');
    SimContestCombo.Items.Add('CQ WPX');
  end;
  SimContestCombo.Sorted:= True;

  // Use current contest if it exists within the list; otherwise select the first
  I := SimContestCombo.Items.IndexOf(Ini.ContestDefinitions[SimContest].Name);
  if I = -1 then
    begin
      I := 0;
      SetContest(Ini.FindContestByName(SimContestCombo.Items[I]));
    end;
  SimContestCombo.ItemIndex := I;
end;

procedure TMainForm.comboModePopulate;
begin
  comboMode.Items.Clear;
  comboMode.Text := '';
  if comboActivity.ItemIndex <> 2 then
  begin
    comboMode.Items.Add('Pile-Up');
    comboMode.Items.Add('Single Calls');
  end
  else
  begin
    comboMode.Items.Add('Pile-Up');
    comboMode.ItemIndex :=0;
  end;
end;


procedure TMainForm.comboActivitySelect(Sender: TObject);
begin
  ExchangeEdit.Text := '';
  SimContestComboRefresh;
  comboModePopulate;
end;


procedure TMainForm.cmboRXBWChange(Sender: TObject);
begin
  SetBw(cmboRXBW.ItemIndex);
end;

//ComboBox selects Pileup, Single Calls, etc. -- (K6OK)
procedure TMainForm.comboModeSelect(Sender: TObject);
begin
  SetDefaultRunMode(comboMode.ItemIndex);
end;

procedure TMainForm.cmboCWPitchChange(Sender: TObject);
begin
  SetPitch(cmboCWPitch.ItemIndex);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AlSoundOut1.Enabled := false;
  if AlWavFile1.IsOpen then AlWavFile1.Close;
end;

procedure TMainForm.spinCWSpeedChange(Sender: TObject);
begin
  if spinCWSpeed.Focused then
  begin
    // CW Speed edit has occurred while focus is within the spin edit control.
    // Mark this value as dirty and defer the call to SetWpm until edit is
    // completed by user.
    CWSpeedDirty := True
  end
  else
    SetWpm(spinCWSpeed.Value);
    
end;

{
  Called when user leaves CW Speed Control or user presses Enter key.
}
procedure TMainForm.spinCWSpeedExit(Sender: TObject);
begin
  // call SetWpm if the CW Speed has been edited
  if CWSpeedDirty then
    SetWpm(spinCWSpeed.Value);
end;

procedure TMainForm.CheckBox1Click(Sender: TObject);
begin
  SetQsk(CheckBox1.Checked);
  ActiveControl := Edit1;
end;

procedure TMainForm.CheckBoxClick(Sender: TObject);
begin
  ReadCheckboxes;
  ActiveControl := Edit1;
end;


procedure TMainForm.ReadCheckboxes;
begin
  Ini.Qrn := CheckBox4.Checked;
  Ini.Qrm := CheckBox3.Checked;
  Ini.Qsb := CheckBox2.Checked;
  Ini.Flutter := CheckBox5.Checked;
  Ini.Lids := CheckBox6.Checked;
end;


procedure TMainForm.SpinEdit2Change(Sender: TObject);
begin
  Ini.Duration := SpinEdit2.Value;
  Histo.ReCalc(Ini.Duration);
end;

procedure TMainForm.SpinEdit3Change(Sender: TObject);
begin
  Ini.Activity := SpinEdit3.Value;
end;

procedure TMainForm.PaintBox1Paint(Sender: TObject);
begin
  Histo.Repaint;
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.WipeBoxes;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  ActiveControl := Edit1;

  if SimContest = scArrlSS then
    Log.SBarUpdateSummary('');

  if Assigned(Tst) then
    Tst.OnWipeBoxes;

  CallSent := false;
  NrSent := false;
end;


procedure TMainForm.FirstTime1Click(Sender: TObject);
const
    Msg='                       First Time?'#13 +
        'Welcome to Morse Runner Community Edition'#13 +
        ''#13 +
        'Initial Setup:'#13 +
        '1) Select the Contest you wish to operate.'#13 +
        '2) Type the exchange you wish to send.'#13 +
        '3) In the station section replace VE3NEA with your call.'#13 +
        '4) Select your CW Speed, Tone, and Bandwidth.'#13 +
        '5) Turn on Band Conditions for realistic hardships.'#13 +
        '6) Activity is the average amount of responses you want per CQ.'#13 +
        '    So if no one responds, you might get twice the number the'#13 +
        '    following time. This is a pile up trainer after all.'#13 +
        '7) Select the time limit.'#13 +
        '8) The Run button has a drop down.'#13 +
        '    - Pile up - Hit F1 to call CQ. Get ready for pileups!'#13 +
        '    - Single Calls - Work one station at a time with no pileups.'#13 +
        'More detailed help is in the readme, but this gets you started.'#13 +
        'Have Fun!'#13 +
        ''#13 +
        'Please visit us or provide feedback at either:'#13 +
        '    - https://www.github.com/w7sst/MorseRunner/#readme'#13 +
        '    - https://groups.io/g/MorseRunnerCE';
begin
    Application.MessageBox(PChar(Msg),
      'First Time Setup',
      MB_OK);
end;


procedure TMainForm.About1Click(Sender: TObject);
const
    Msg= //'Morse Runner - Community Edition'#13 +
        'CW CONTEST SIMULATOR'#13#13 +
        'Version %s'#13#13 +
        'Copyright ©2004-2016 Alex Shovkoplyas, VE3NEA'#13 +
        'Copyright ©2022-2024 Morse Runner Community Edition Contributors'#13#13 +
        'https://www.github.com/w7sst/MorseRunner/#readme'#13 +
        'https://groups.io/g/MorseRunnerCE';
begin
    Application.MessageBox(PChar(Format(Msg, [sVersion])),
      'About Morse Runner - Community Edition',
      MB_OK);
end;


procedure TMainForm.Readme1Click(Sender: TObject);
var
    FileName: string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'readme.txt';
    ShellExecute(GetDesktopWindow, 'open', PChar(FileName), '', '', SW_SHOWNORMAL);
end;


{
  Called whenever callsign field (Edit1) changes. Any callsign edit will
  invalidate the callsign already sent by clearing the CallSent value.
  If the Callsign is empty, also clear the NrSent value.
}
procedure TMainForm.Edit1Change(Sender: TObject);
begin
    if Edit1.Text = '' then
        NrSent := false;
    if not Tst.Me.UpdateCallInMessage(Edit1.Text) then
        CallSent := false;
end;


procedure TMainForm.RunMNUClick(Sender: TObject);
begin
  SetDefaultRunMode((Sender as TComponent).Tag);
  Run(DefaultRunMode, pgmState);
end;


procedure TMainForm.Edit2Enter(Sender: TObject);
begin
  if Edit2IsRST then
    begin
      // for RST field, select middle digit
      if Length(Edit2.Text) = 3 then
        begin
          Edit2.SelStart := 1;
          Edit2.SelLength := 1;
        end;
    end
  else // otherwise select entire field
    begin
      Edit2.SelStart := 0;
      Edit2.SelLength := Edit2.GetTextLen;
    end;
end;



procedure TMainForm.EnableCtl(Ctl: TWinControl; AEnable: boolean);
const
  Clr: array[boolean] of TColor = (clBtnFace, clWindow);
begin
  Ctl.Enabled := AEnable;
  if Ctl is TSpinEdit then (Ctl as TSpinEdit).Color := Clr[AEnable]
  else if Ctl is TEdit then (Ctl as TEdit).Color := Clr[AEnable];
end;


procedure TMainForm.Run(Value: TRunMode; valuState: TPgmState);
const
  Mode: array[TRunMode] of string =
    ('Pile-Up', 'Single Calls', 'COMPETITION', 'H S T');
var
  BCompet, BStop, BPause, BRun, BResume : boolean;
  //S: string;
begin
{
  if Value = Ini.RunMode then   // SpdBtnVisibility function prevents
    Exit;						            // re-clicking run once run is engaged (K6OK)
}

  BRun := valuState = psRun;
  BStop := valuState = psStop;
  BPause := valuState = psPause;
  BResume := valuState = psRunAfterPause;

  if BRun and not BResume then        //Run a new session
  begin
    {
      consider special case of click Run while focus in CallSign or Exchange
      fields.

      clicking in the Run button does not generate an OnExit event for the
      Callsign nor Exchange fields until after the Run button has been processed.
      Does this matter? Perhaps not... The contest audio will start before the
      Exch1 and Exch2 fields are configured. The first thing sent after hitting
      Run is a CQ from the DxStation and this CQ may depend on contest or
      user callsign (e.g. ARRL DX controls Exch2).
      THE CALLSIGN DOES AFFECT CQ!!!!
      However, Exch2 does not affect CQ.
      Only the Contest affects the CQ being sent (is this true for all contests?).
      If user pushes Enter key after editing either the Exchange or Callsign
      fields, then the proper OnEnter/OnExit event is sent for either control.
      So I think we are okay if contest is started before dynamic exchange
      setup is processed. As long as the CQ message is independent of Exchange
      field setup, then we are okay.

      to simplify this, the dynamic exchange can simply be an ascii-only field.
      When QSO is saved to log, we know the calling DX Station and can get
      it's sent type. The sent type is our receiving type which can be used
      to check the accuracy of the entered QSO.
    }

    if UserCallsignDirty then
       if not SetMyCall(Trim(Edit4.Text)) then
         Exit;
    if UserExchangeDirty then
       if not SetMyExchange(Trim(ExchangeEdit.Text)) then
         Exit;

    // if requesting an HST run, verify the correct contest and serial NR
    // mode is selected.
    if (Value = rmHst) and
       ((SimContest <> scHst) or (Ini.SerialNR <> snStartContest)) then
    begin
      var S : string :=
        'Error: HST Competition mode requires the following settings:'#13 +
        '  1. ''HST (High Speed Test)'' in the Contest dropdown.'#13 +
        '  2. ''Start of Contest'' in the ''Settings | Serial NR'' menu.'#13 +
        'Please correct these settings and try again.';
      Application.MessageBox(PChar(S),
        'Error',
        MB_OK or MB_ICONERROR);
      Exit;
    end;

    // load call history and other contest-specific setup before starting
    if not Tst.OnContestPrepareToStart(Ini.Call, ExchangeEdit.Text) then
      Exit;


  BCompet := Value in [rmWpx, rmHst];
  RunMode := Value;

  //debug switches
  BDebugExchSettings := (CDebugExchSettings or Ini.DebugExchSettings) and not BCompet;
  BDebugCwDecoder := (CDebugCwDecoder or Ini.DebugCwDecoder) and not BCompet;
  BDebugGhosting := (CDebugGhosting or Ini.DebugGhosting) and not BCompet;

  //main ctls
  EnableCtl(SimContestCombo, BStop);
  EnableCtl(Edit4,  BStop);
  EnableCtl(ExchangeEdit, BStop and ActiveContest.ExchFieldEditable);
  EnableCtl(SpinEdit2, BStop);
  EnableCtl(comboActivity, BStop);           // (K6OK)
  EnableCtl(comboMode, BStop);               // (K6OK)

  //SetToolbuttonDown(ToolButton1, not BStop);
  //ToolButton1.Caption := IfThen(BStop, 'Run', 'Stop');
  //ToolButton1.ImageIndex := IfThen(BStop, 0, 10);

  //condition checkboxes
  EnableCtl(CheckBox2, not BCompet);
  EnableCtl(CheckBox3, not BCompet);
  EnableCtl(CheckBox4, not BCompet);
  EnableCtl(CheckBox5, not BCompet);
  EnableCtl(CheckBox6, not BCompet);
  if RunMode = rmWpx then
    begin
    CheckBox2.Checked := true;
    CheckBox3.Checked := true;
    CheckBox4.Checked := true;
    CheckBox5.Checked := true;
    CheckBox6.Checked := true;
    SpinEdit2.Value := CompDuration;
    end
  else if RunMode = rmHst then
    begin
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
    CheckBox6.Checked := false;
    SpinEdit2.Value := CompDuration;
    end;

  //button menu
  PileupMNU.Enabled := BStop;
  SingleCallsMNU.Enabled := BStop;
  CompetitionMNU.Enabled := BStop;
  HSTCompetition1.Enabled := BStop;
  StopMNU.Enabled := not BStop;

  //main menu
  PileUp1.Enabled := BStop;
  SingleCalls1.Enabled := BStop;
  Competition1.Enabled := BStop;
  HSTCompetition2.Enabled := BStop;
  Stop1MNU.Enabled := not BStop;
  ViewScoreTable1.Enabled:= BStop;  // by bg4fqd

  Call1.Enabled := BStop;
  //Duration1.Enabled := BStop;
  //QRN1.Enabled := not BCompet;  do this to Settings dialog?
  //QRM1.Enabled := not BCompet;
  //QSB1.Enabled := not BCompet;
  //Flutter1.Enabled := not BCompet;
  //Lids1.Enabled := not BCompet;

  //hst specific
  //Activity1.Enabled := Value <> rmHst;
  //cmboRXBW.Enabled := Value <> rmHst;
  //CWMinRxSpeed1.Enabled := Value <> rmHst;  do this to Settings dialog?
  //CWMaxRxSpeed1.Enabled := Value <> rmHst;
  //NRDigits1.Enabled := Value <> rmHst;

  EnableCtl(SpinEdit3, RunMode <> rmHst);
  if RunMode = rmHst then SpinEdit3.Value := 4;

  EnableCtl(cmboRXBW, RunMode <> rmHst);
  if RunMode = rmHst then begin cmboRXBW.ItemIndex :=10; SetBw(10); end;

  if RunMode = rmHst then ListView1.Visible := false
  else ListView1.Visible := true;


  //mode caption
  Panel4.Caption := Mode[Value];
  Panel4.Font.Color := IfThen(BCompet, clRed, clGreen);

  Tst.Me.AbortSend;
  Tst.BlockNumber := 0;
  //Tst.Me.Nr := 1;
  Log.Clear;
  WipeBoxes;

  RichEdit1.Visible:= false;
  RichEdit1.Align:= alNone;
  sbar.Align:= alBottom;
  sbar.Visible:= mnuShowCallsignInfo.Checked;
  ListView2.Align:= alClient;
  ListView2.Clear;
  ListView2.Visible:= true;
  {! ?}
  Panel5.Update;
  IncRit(0);

  AlSoundOut1.Enabled := true;

  AlWavFile1.FileName := ChangeFileExt(ParamStr(0), '.wav');
    if SaveWav then
      AlWavFile1.OpenWrite;
  end;


  if {BRun and} BResume then                 //Resume a run after pause
  begin
    AlSoundOut1.Resume;
    exit;                                    //need code to restart stations calling
  end;


  if BPause then                             //User initiates a pause
  begin
    AlSoundOut1.Pause;
    exit;                                    //need code to stop stations calling
  end;

  if BStop then                              //End of session
  begin
    {// save NR back to .INI File.
    // todo - there is a better way to this.
    if (not BCompet) and
      (Self.ExchangeField2Type = etSerialNr) and
      (SimContest in [scWpx]) then
      begin
        S := IntToStr(Tst.Me.NR);
        Self.SetMyExch2(etSerialNr, S);
      end;
      }
    AlSoundOut1.Enabled := false;
    if AlWavFile1.IsOpen then
      AlWavFile1.Close;
  end;



end;

// Event handlers for Run-Pause-Stop buttons --------------- (K6OK)
procedure TMainForm.spdbtnRunClick(Sender: TObject);
begin
  if Ini.pgmState = psStop then    // Run after Stop is always a full reset
  begin
    Panel2.Caption := '00:00:00';
    StartTime := Now;
    Ini.pgmState := psRun;
    PausedTime := 0;
  end;
  if pgmState = psPause then    // Run after Pause is a resume
  begin
    PausedTime := (Now - PauseStartTime) + PausedTime;
    pgmState := psRunAfterPause;
  end;
  Run(DefaultRunMode, Ini.pgmState);
  labelStatus.Caption := 'Status: Running';
  SpdBtnVisibility(1);
end;

procedure TMainForm.spdbtnPauseClick(Sender: TObject);
begin
   Ini.pgmState := psPause;
   Run(DefaultRunMode, Ini.pgmState);
   PauseStartTime := Now;
   labelStatus.Caption := 'Status: Paused';
   SpdBtnVisibility(2);
end;

procedure TMainForm.spdbtnStopClick(Sender: TObject);
begin
   Ini.pgmState := psStop;
   Run(DefaultRunMode, Ini.pgmState);
   StopTime := Now;
   labelStatus.Caption := 'Status: Stopped';
   SpdBtnVisibility(3);
   EnableCtl(comboActivity, True);
   EnableCtl(SimContestCombo, True);
   EnableCtl(comboMode, True);
   EnableCtl(ExchangeEdit, True);
   EnableCtl(SpinEdit2, True);
   EnableCtl(Edit4, True);
end;

procedure TMainForm.SpdBtnVisibility(valu: integer);
begin
  spdbtnRun.Enabled := (valu in [2, 3]);
  spdbtnPause.Enabled := (valu = 1);
  spdbtnStop.Enabled := (valu in [1, 2]);
end;

// Temporary to enable F12 Wipe Boxes like N1MM  (K6OK)
procedure TMainForm.SpeedButton12Click(Sender: TObject);
begin
  WipeBoxes;
end;

// Emits an event every 250 mSec for timekeeping
// Updates the stopwatch on Panel 2
procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  if Ini.pgmState in [psRun, psRunAfterPause] then
  begin
    ElapsedTime := Now - StartTime - PausedTime;
    Panel2.Caption := FormatDateTime('hh:mm:ss', ElapsedTime);
  end;
end;

// -----------------------------------------------------  (end K6OK)


procedure TMainForm.PopupScoreWpx;
var
    S, FName: string;
    Score: integer;
    DlgScore: TScoreDialog;
begin
    S := Format('%s %s %s %s ',
    [
        FormatDateTime('yyyy-mm-dd', Now),
        trim(Ini.Call),
        trim(ListView1.Items[0].SubItems[1]),
        trim(ListView1.Items[1].SubItems[1])
    ]);
 //for debug
{
  S := Format('%s %s %s %s ',
  [
    FormatDateTime('yyyy-mm-dd', Now),
    Ini.Call,
    '111',
    '107'
  ]);
}
    S := S + '[' + IntToHex(CalculateCRC32(S, $C90C2086), 8) + ']';
    FName := ChangeFileExt(ParamStr(0), '.lst');
    with TStringList.Create do
    try
        if FileExists(FName) then
            LoadFromFile(FName);
        Add(S);
        SaveToFile(FName);
    finally
        Free;
    end;

    DlgScore:= TScoreDialog.Create(Self);
    try
        DlgScore.Edit1.Text := S;

        Score := StrToIntDef(ListView1.Items[2].SubItems[1], 0);
        if Score > HiScore then
            DlgScore.Height := 192
        else
            DlgScore.Height := 129;
        HiScore := Max(HiScore, Score);
        DlgScore.ShowModal;
    finally
        DlgScore.Free;
    end;
end;


procedure TMainForm.PopupScoreHst;
var
    S: string;
    FName: TFileName;
begin
  S := Format('%s'#9'%s'#9'%s'#9'%s', [
    FormatDateTime('yyyy-mm-dd hh:nn', Now),
    Ini.Call,
    Ini.HamName,
    Panel11.Caption]);

  FName := ExtractFilePath(ParamStr(0)) + 'HstResults.txt';
  with TStringList.Create do
    try
      if FileExists(FName) then
        LoadFromFile(FName);
      Add(S);
      SaveToFile(FName);
    finally
      Free;
    end;

  ShowMessage('HST Score: ' + ListView1.Items[2].SubItems[1]);
end;


procedure OpenWebPage(Url: string);
begin
  ShellExecute(GetDesktopWindow, 'open', PChar(Url), '', '', SW_SHOWNORMAL);
end;


procedure TMainForm.ViewScoreBoardMNUClick(Sender: TObject);
begin
  //PopupScoreWpx;
  OpenWebPage(WebServer);
end;

procedure TMainForm.ViewScoreTable1Click(Sender: TObject);
var
  FName: string;
begin
  RichEdit1.Clear;
  ListView2.Align:= alNone;
  ListView2.Visible:= false;
  sbar.Visible:= false;
  RichEdit1.Align:= alClient;
  RichEdit1.Visible:= true;
  FName := ChangeFileExt(ParamStr(0), '.lst');
  if FileExists(FName) then
    RichEdit1.Lines.LoadFromFile(FName)
  else
    RichEdit1.Lines.Add('Your score table is empty');
  RichEdit1.Visible := true;
  RichEdit1.Font.Name:= 'Consolasf';
end;

procedure TMainForm.Panel8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if X < Shape2.Left then
    IncRit(-1)
  else
    if X > (Shape2.Left + Shape2.Width) then
      IncRit(1);
end;


procedure TMainForm.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IncRit(0);
end;


procedure TMainForm.mnuSettingsClick(Sender: TObject);
begin
  frmSettings.Show;
end;

procedure TMainForm.mnuShowCallsignInfoClick(Sender: TObject);
begin
    with Sender as TMenuItem do begin
        Checked := not Checked;
        if ListView2.Visible then
            sbar.Visible:= Checked;
    end;
end;

procedure TMainForm.ClientHTTP1Redirect(Sender: TObject; var dest: string;
  var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
begin
  (Sender as TIdHTTP).Tag:= 1;
  Handled:= true;
end;

procedure TMainForm.IncRit(dF: integer);
var
  RitStepIncr : integer;
begin
  RitStepIncr := IfThen(RunMode = rmHST, 50, Ini.RitStepIncr);

  // A negative RitStepInc will change direction of arrow/wheel movement
  if RitStepIncr < 0 then begin
    dF := -dF;
    RitStepIncr := -RitStepIncr;
  end;

  case dF of
   -2: if Ini.Rit > -500 then Inc(RitLocal, -5);
   -1: if Ini.Rit > -500 then Inc(RitLocal, -RitStepIncr);
    0: RitLocal := 0;
    1: if Ini.Rit < 500 then Inc(RitLocal, RitStepIncr);
    2: if Ini.Rit < 500 then Inc(RitLocal, 5);
  end;

  Ini.Rit := Min(500, Max(-500, RitLocal));
  UpdateRitIndicator;
end;

procedure TMainForm.UpdateRitIndicator;
begin
  Shape2.Width := Ini.Bandwidth div 20;    // was 9
  Shape2.Left := ((Panel8.Width - Shape2.Width) div 2) + (Ini.Rit div 20);  // was div 9
  Label27.Caption := InttoStr(Ini.Rit);   // Update RIT numerical readout (K6OK)
end;

procedure TMainForm.spdbtnResetRITClick(Sender: TObject);
begin
  IncRit(0);                              // Reset RIT to zero (K6OK)
end;

procedure TMainForm.spdbtnRightRITClick(Sender: TObject);
begin
  IncRit(1);                              // RIT +dF right arrow button (K6OK)
end;

procedure TMainForm.spdbtnLeftRITClick(Sender: TObject);
begin
  IncRit(-1);                             // RIT -dF left arrow button (K6OK)
end;

{
  Move cursor to next exchange field.
  Called by TMyStation.GetBlock after callsign is sent.
  If the callsign field (Edit1) contains a '?', the active control is
  set to Edit1 and the '?' is selected.
  For contests with an RST field, the RST field is set to 599 and the active
  control is then set to Edit3 (skipping the RST field). Note that using
  TAB will select the RST field with the middle digit selected.
  For contests without an RST field, the active control is advanced to the
  next exchange field.
}
procedure TMainForm.Advance;
begin
  if not MustAdvance then
    Exit;

  if Edit2IsRST and (Edit2.Text = '') then
    Edit2.Text := '599';

  if (Edit1.Text = '') or
     (Pos('?', Edit1.Text) > 0) then
    begin
      { stay in callsign field if callsign has a '?' }
      if ActiveControl = Edit1 then
        Edit1Enter(nil)
      else
        ActiveControl := Edit1;
    end
  else
    begin
      { otherwise advance to next field, skipping RST }
      if Edit2IsRST or not Edit2.Showing then
        ActiveControl := Edit3
      else
        ActiveControl := Edit2;

      if (SimContest = scArrlSS) and
        (Ini.ShowCheckSection > 0) and
        (ActiveControl = Edit3) and (Edit3.Text = '') and
        (Random < (ShowCheckSection/100)) then
          begin
            // inject a Section error 10% of the time
            var S: string := (Tst as TSweepstakes).GetCheckSection(Edit1.Text, 0.10);
            if not S.IsEmpty then
              S := S + ' ';
            Edit3.Text := S;
            Edit3.SelStart := S.Length;
          end;
    end;

  MustAdvance := false;
end;



procedure TMainForm.VolumeSliderDblClick(Sender: TObject);
begin
  with Sender as TVolumeSlider do begin
    Value := 0.75;
    OnChange(Sender);
  end;
end;

procedure TMainForm.VolumeSlider1Change(Sender: TObject);
begin
  with VolumeSlider1 do begin
    //-60..+20 dB
    Db := 80 * (Value - 0.75);
    if dB > 0 then
      Hint := Format('+%.0f dB', [dB])
    else
      Hint := Format( '%.0f dB', [dB]);
    end;
end;


procedure TMainForm.WebPage1Click(Sender: TObject);
begin
  OpenWebPage('https://www.github.com/w7sst/MorseRunner#readme');
end;


procedure TMainForm.PostHiScore(const sScore: string);
var
  HttpClient: TIdHttp;
  ParamList: TStringList;
  s, sUrl, sp: string;
  response: TMemoryStream;
  p: integer;
begin
  HttpClient:= TIdHttp.Create();
  response:= TMemoryStream.Create;
  s:= format(SubmitHiScoreURL, [sScore]);
  s:= StringReplace(s, ' ', '%20', [rfReplaceAll]);
  try
    HttpClient.AllowCookies:= true;
    HttpClient.Request.ContentType:= 'application/x-www-form-urlencoded';
    HttpClient.Request.CacheControl:='no-cache';
    HttpClient.Request.UserAgent:='User-Agent=Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)';
    HttpClient.Request.Accept:='Accept=*/*';
    HttpClient.OnRedirect:= ClientHTTP1Redirect;
    if PostMethod<>'POST' then
    begin // Method = Get
      s:= StringReplace(s, '[', '%5B', [rfReplaceAll]);
      s:= StringReplace(s, ']', '%5D', [rfReplaceAll]);
      HttpClient.Get(s, response);
    end
    else
    begin // Method = Post
      p:= pos('?', s);
      sUrl:= copy(s, 0, p-1);
      sp:= copy(s, p + 1, MaxInt);
      ParamList:= TStringList.Create;
      ParamList.Delimiter:= '&';
      ParamList.DelimitedText:= sp;
      // procedure TStrings.SetDelimitedText(const Value: string); has a bug
      ParamList.Text:= StringReplace(ParamList.Text, '%20', ' ', [rfReplaceAll]);
      HttpClient.Request.ContentType:= 'application/x-www-form-urlencoded';
      s:= HttpClient.Post(sUrl, ParamList);
      ParamList.Free;
    end;
    if HttpClient.Tag=1 then
      ShowMessage('Sent!')
    else
      ShowMessage('Error!');
  finally
    HttpClient.Free;
  end;
end;

//------------------------------------------------------------------------------
//                              accessibility
//------------------------------------------------------------------------------
procedure TMainForm.Call1Click(Sender: TObject);
begin
  // UI assumes uppercase only, so convert user's callsign to uppercase.
  SetMyCall(UpperCase(Trim(InputBox('Callsign', 'Callsign', Edit4.Text))));
end;


procedure TMainForm.SetQsk(Value: boolean);
begin
  Qsk := Value;
  CheckBox1.Checked := Qsk;
end;


procedure TMainForm.NWPMClick(Sender: TObject);
begin
  SetWpm((Sender as TMenuItem).Tag);
end;


procedure TMainForm.SetWpm(AWpm : integer);
begin
  Wpm := Max(10, Min(120, AWpm));
  spinCWSpeed.Value := Wpm;
  Tst.Me.SetWpm(Wpm);

  CWSpeedDirty := False;
end;


procedure TMainForm.Pitch1Click(Sender: TObject);
begin
  SetPitch((Sender as TMenuItem).Tag);
end;

procedure TMainForm.Bw1Click(Sender: TObject);
begin
  SetBw((Sender as TMenuItem).Tag);
end;

procedure TMainForm.File1Click(Sender: TObject);
var
  Stp: boolean;
begin
  if Ini.pgmState = psStop then
    Stp := True else Stp := False;
  AudioRecordingEnabled1.Enabled := Stp;
  PlayRecordedAudio1.Enabled := Stp and FileExists(ChangeFileExt(ParamStr(0), '.wav'));

  AudioRecordingEnabled1.Checked := Ini.SaveWav;
end;

procedure TMainForm.PlayRecordedAudio1Click(Sender: TObject);
var
  FileName: string;
begin
  FileName := ChangeFileExt(ParamStr(0), '.wav');
  ShellExecute(GetDesktopWindow, 'open', PChar(FileName), '', '', SW_SHOWNORMAL);
end;


procedure TMainForm.AudioRecordingEnabled1Click(Sender: TObject);
begin
  Ini.SaveWav := not Ini.SaveWav;
end;


procedure TMainForm.UpdCWMaxRxSpeed(Maxspd: integer);
begin
  Ini.MaxRxWpm := Maxspd;
end;


procedure TMainForm.UpdCWMinRxSpeed(minspd: integer);
begin
  if (Wpm < 15) and  (minspd > 4) then
            minspd := 4;

  Ini.MinRxWpm := minspd;
end;


procedure TMainForm.ListView2CustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
var
  View: TListView;
  Qso: PQso;
begin
  if Length(QsoList) = 0 then Exit;

  View := Sender as TListView;
  Qso := @QsoList[Item.Index];

  if Log.ShowCorrections then
  begin
    // column errors are stored as individual bits in Qso.ColumnErrorFlags
    const ColumnFlag: integer = (1 shl SubItem);
    if (Qso.Err <> '   ') and ((Qso.ColumnErrorFlags and ColumnFlag) <> 0) then
      View.Canvas.Font.Color := clRed
    else
      View.Canvas.Font.Color := clBlack;
  end
  else if SubItem = Log.CorrectionColumnInx then
    View.Canvas.Font.Color := clRed
  else
    View.Canvas.Font.Color := clBlack;

  // strike out HST Score if a QSO error exists
  if SimContest = scHst then
    if (SubItem = 4) and (Qso.Err <> '   ') and (Qso.TrueCall <> '') then
      View.Canvas.Font.Style := [fsStrikeOut]
    else
      View.Canvas.Font.Style := [];
end;

procedure TMainForm.ListView2SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
    if (Selected and mnuShowCallsignInfo.Checked) then
        SbarUpdateStationInfo(Item.SubItems[0]);
end;

procedure TMainForm.Activity1Click(Sender: TObject);
begin
  Ini.Activity := (Sender as TMenuItem).Tag;
  SpinEdit3.Value := Ini.Activity;
end;


procedure TMainForm.Duration1Click(Sender: TObject);
begin
  Ini.Duration := (Sender as TMenuItem).Tag;
  SpinEdit2.Value := Ini.Duration;
end;


procedure TMainForm.Operator1Click(Sender: TObject);
begin
  HamName := InputBox('HST Operator', 'Enter operator''s name', HamName);
  HamName := UpperCase(HamName);

  UpdateTitleBar;

  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
    try
      WriteString(SEC_STN, 'Name', HamName);
    finally
      Free;
    end;
end;

procedure TMainForm.StopMNUClick(Sender: TObject);
begin
  Ini.pgmState := psStop;
end;

end.

