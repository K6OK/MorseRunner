unit Settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.Samples.Spin, VolmSldr, Vcl.Grids,
  Contest,Ini;

type
  TfrmSettings = class(TForm)
    pageSettings: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    boxMyStation: TGroupBox;
    editSetgsCall: TEdit;
    lblSetgsCall: TLabel;
    boxSetgsAudio: TGroupBox;
    lblAudioDevice: TLabel;
    cmboCQZone: TComboBox;
    lblSetgsCQ: TLabel;
    Label1: TLabel;
    lblITUZone: TLabel;
    cmboITUZone: TComboBox;
    lblAudioDev: TLabel;
    cmboAudioDevice: TComboBox;
    panelSettings: TPanel;
    btnSettingsCancel: TButton;
    btnSettingsSave: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    boxCWSettings: TGroupBox;
    trkBarCWSpeed: TTrackBar;
    lblMyCWSpeed: TLabel;
    lblMySpeed: TLabel;
    trkBarFasterSpeed: TTrackBar;
    trkBarSlowerSpeed: TTrackBar;
    Label18: TLabel;
    Label19: TLabel;
    lblFastestCaller: TLabel;
    lblFasterSpeed: TLabel;
    lblSlowerSpeed: TLabel;
    toggleQSK: TToggleSwitch;
    GroupBox1: TGroupBox;
    toggleQRN: TToggleSwitch;
    toggleQRM: TToggleSwitch;
    toggleQSB: TToggleSwitch;
    toggleFlutter: TToggleSwitch;
    toggleLIDs: TToggleSwitch;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    spinSettngActivity: TSpinEdit;
    Label31: TLabel;
    Label32: TLabel;
    trkBarMonLevel: TTrackBar;
    Label33: TLabel;
    lblMonLevelNo: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    lblSlowestCaller: TLabel;
    StringGrid1: TStringGrid;
    btnChangeHist: TButton;
    GroupBox2: TGroupBox;
    ComboBox2: TComboBox;
    Label10: TLabel;
    Label4: TLabel;
    ComboBox3: TComboBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Label12: TLabel;
    Edit2: TEdit;
    Label14: TLabel;
    editFirstName: TEdit;
    Label5: TLabel;
    Label11: TLabel;
    lblCWPitchHzNo: TLabel;
    lblCWPitch: TLabel;
    trkBarRxBw: TTrackBar;
    lblRxBwHzNo: TLabel;
    Label40: TLabel;
    trkBarCWPitch: TTrackBar;
    spinSettngDuration: TSpinEdit;
    Label17: TLabel;
    Label30: TLabel;
    radioGroupSN: TRadioGroup;
    radioSN01: TRadioButton;
    radioSN02: TRadioButton;
    radioSN03: TRadioButton;
    radioSN04: TRadioButton;
    lblSNCustomRange: TLabel;
    procedure trkBarCWSpeedTracking(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure trkBarFasterSpeedTracking(Sender: TObject);
    procedure trkBarSlowerSpeedTracking(Sender: TObject);
    procedure trkBarCWPitchTracking(Sender: TObject);
    procedure trkBarRxBwTracking(Sender: TObject);
    procedure trkBarMonLevelTracking(Sender: TObject);
    procedure toggleQSKClick(Sender: TObject);
    procedure SNRDigitsClick(Sender: TObject);
    procedure UpdSerialNR(V: integer);
    procedure SerialNRCustomRangeClick(Sender: TObject);
    procedure UpdSerialNRCustomRange(const ARange: string);
    procedure toggleBandCondxClick(Sender: TObject);
    procedure spinSettngActivityChange(Sender: TObject);
    procedure spinSettngDurationChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

{$R *.dfm}

uses Main;

procedure TfrmSettings.FormCreate(Sender: TObject);
var
  C: TContestDefinition;
  conlist: TStringList;
  i: integer;
begin
  for i := 1 to 40 do cmboCQZone.Items.Add(inttostr(i));
  for i := 1 to 90 do cmboITUZone.Items.Add(inttostr(i));


  with StringGrid1 do
  begin
    Cols[0].Add('CONTEST');
    Cols[1].Add('HISTORY FILE');
    Cells[1,1] := 'ARRLDXCW_USDX.txt'; //temporary
    ColWidths[0] := 170;
    ColWidths[1] := 200;
  end;

  conlist := TStringList.Create;
  for C in ContestDefinitions do conlist.Add(WideCharToString(C.Name));
  conlist.Sorted := True;

  for i := 0 to conlist.Count-1 do
  begin
    StringGrid1.Cells[0,i+1] := conlist[i];
  end;

  // Load Settings dialog from Ini.pas -----------------------------//

  trkBarCWSpeed.Position := ini.Wpm;            //CW speed, min, max
  lblMySpeed.Caption := inttostr(ini.Wpm);
  trkBarFasterSpeed.Position := Ini.MaxRxWpm;
  lblFastestCaller.Caption := 'Fastest Caller (+'  +
    inttostr(Ini.MaxRxWpm) + ' )';
  lblFasterSpeed.Caption := inttostr(ini.Wpm + ini.MaxRxWpm);
  trkBarSlowerSpeed.Position := Ini.MinRxWpm;
  lblSlowestCaller.Caption := 'Slowest Caller (-'  +
    inttostr(Ini.MinRxWpm) + ' )';
  lblSlowerSpeed.Caption := inttostr(ini.Wpm - ini.MinRxWpm);

  if Ini.Qsk then toggleQSK.State := tssOn else toggleQSK.State := tssOff;
  trkBarCWPitch.Position := round((ini.Pitch - 300)/50);
  lblCWPitchHzNo.Caption := inttostr(ini.Pitch);
  trkBarRxBw.Position := round((ini.Bandwidth - 100)/50);
  lblRxBwHzNo.Caption := inttostr(ini.Bandwidth);

  trkBarMonLevel.Position := Round(MainForm.VolumeSlider1.Value*100);
  lblMonLevelNo.Caption := inttostr(round(80*(MainForm.VolumeSlider1.Value - 0.75)));

  spinSettngActivity.Value := Ini.Activity;
end;

procedure TfrmSettings.toggleBandCondxClick(Sender: TObject);
begin
  if toggleQRN.State = tssOff then Ini.Qrn:= false else Ini.Qrn:=true;
  if toggleQRM.State = tssOff then Ini.Qrm:= false else Ini.Qrm:=true;
  if toggleQSB.State = tssOff then Ini.Qsb:= false else Ini.Qsb:=true;
  if toggleFlutter.State = tssOff then Ini.Flutter:= false else Ini.Flutter:=true;
  if toggleLIDs.State = tssOff then Ini.Lids:= false else Ini.Lids:=true;
  with MainForm do
  begin
    CheckBox4.Checked := Ini.Qrn;
    CheckBox3.Checked := Ini.Qrm;
    CheckBox2.Checked := Ini.Qsb;
    CheckBox5.Checked := Ini.Flutter;
    CheckBox6.Checked := Ini.Lids;
  end;
end;

procedure TfrmSettings.toggleQSKClick(Sender: TObject);
var
  qsk : boolean;
begin
  if toggleQSK.State = tssOff then qsk:=false else qsk:=true;
  MainForm.SetQSK(qsk);
end;

procedure TfrmSettings.trkBarCWPitchTracking(Sender: TObject);
begin
  lblCWPitchHzNo.Caption := inttostr(300 + 50*trkBarCWPitch.Position);
  MainForm.SetPitch(trkBarCWPitch.Position);
end;

procedure TfrmSettings.trkBarCWSpeedTracking(Sender: TObject);
var
  myspd: integer;
begin
  myspd := trkBarCWSpeed.Position;
  lblMySpeed.Caption := IntToStr(myspd);
  lblFasterSpeed.Caption := inttostr(myspd + trkBarFasterSpeed.Position);
  lblSlowerSpeed.Caption := inttostr(myspd - trkBarFasterSpeed.Position);
  MainForm.spinCWSpeed.Value := myspd;
end;

procedure TfrmSettings.trkBarFasterSpeedTracking(Sender: TObject);
var
  hispd: integer;
begin
  hispd := strtoint(lblMySpeed.Caption) + trkBarFasterSpeed.Position;
  lblFastestCaller.Caption := 'Fastest Caller (+'  +
    inttostr(trkBarFasterSpeed.Position) + ' )';
  lblFasterSpeed.Caption := inttostr(hispd);
  MainForm.UpdCWMaxRxSpeed(hispd - Wpm);
end;

procedure TfrmSettings.trkBarSlowerSpeedTracking(Sender: TObject);
var
  lomin, lospd: integer;
begin
  lomin := trkBarSlowerSpeed.Position;
  if (trkBarCWSpeed.Position < 15) and (lomin > 4) then
    lomin := 4;
  lospd := strtoint(lblMySpeed.Caption) - lomin;
  lblSlowestCaller.Caption := 'Slowest Caller (-'  +
    inttostr(lomin) + ' )';
  lblSlowerSpeed.Caption := inttostr(lospd);
  MainForm.UpdCWMinRxSpeed(lomin);
end;

procedure TfrmSettings.trkBarMonLevelTracking(Sender: TObject);
var
  V: single;
begin
  V := trkBarMonLevel.Position/100;
  MainForm.VolumeSlider1.Value := V;
  lblMonLevelNo.Caption := inttostr(round(80*(V-0.75)));
end;

procedure TfrmSettings.trkBarRxBwTracking(Sender: TObject);
begin
  lblRxBwHzNo.Caption := inttostr(100 + 50*trkBarRxBw.Position);
  MainForm.SetBw(trkBarRxBw.Position);
end;

// Contest Serial Number Ranges -----------------------------//

procedure TfrmSettings.SNRDigitsClick(Sender: TObject);
Var
  snt: integer;
begin
  snt := (Sender as TRadioButton).Tag;
  UpdSerialNR(snt);
end;


procedure TfrmSettings.spinSettngActivityChange(Sender: TObject);
begin
   Ini.Activity := spinSettngActivity.Value;
   MainForm.SpinEdit3.Value := Ini.Activity;
end;

procedure TfrmSettings.spinSettngDurationChange(Sender: TObject);
begin
  Ini.Duration := spinSettngDuration.Value;
  MainForm.SpinEdit2.Value := Ini.Duration;
end;

procedure TfrmSettings.SerialNRCustomRangeClick(Sender: TObject);
Var
  snt:integer;
  RangeStr: string;
  ClickedOK, Done: boolean;
  tempRange : TSerialNRSettings;
  Err: string;
begin
  snt := (Sender as TRadioButton).Tag;
  tempRange := Ini.SerialNRSettings[snCustomRange];
  RangeStr := tempRange.RangeStr;
  Done := False;
  repeat
    begin
      ClickedOK := InputQuery('Enter Custom Serial Number Range',
        'Enter min-max values (e.g. 01-99):',
        RangeStr);
      if not ClickedOK then break;

      // split into two strings [Min, Max)
      tempRange.ParseSerialNR(RangeStr, Err);

      if Err <> '' then
        begin
          // report error and try again
          MessageDlg(Err, mtError, [mbOK], 0);
        end
      else
        begin
          Ini.SerialNRSettings[snCustomRange] := tempRange;
          UpdSerialNRCustomRange(tempRange.RangeStr);
          UpdSerialNR(snt);
          Done := true;
        end;
    end;
  until (Done);
end;


procedure TfrmSettings.UpdSerialNR(V: integer);
begin
  assert(Ord(snStartContest) = radioSN01.Tag);
  assert(Ord(snMidContest) = radioSN02.Tag);
  assert(Ord(snEndContest) = radioSN03.Tag);
  assert(Ord(snCustomRange) = radioSN04.Tag);

  var snt : TSerialNrTypes := TSerialNrTypes(V);

  // validate custom serial number range; if invalid, set to Start of Contest
  if not Ini.SerialNRSettings[snt].IsValid then
    snt := snStartContest;

  Ini.SerialNR := snt;
  frmSettings.radioSN01.Checked := snt = snStartContest;
  frmSettings.radioSN02.Checked := snt = snMidContest;
  frmSettings.radioSN03.Checked := snt = snEndContest;
  frmSettings.radioSN04.Checked := snt = snCustomRange;

  // update contest-specific settings/caches (e.g. SerialNR Generator for CQ Wpx)
  if (pgmState = psRun) and (RunMode <> rmHST) then
    Tst.SerialNrModeChanged;
end;


procedure TfrmSettings.UpdSerialNRCustomRange(const ARange: string);
begin
  if Ini.SerialNRSettings[snCustomRange].IsValid then
    frmSettings.lblSNCustomRange.Caption := Format('%s...', [ARange])
  else
    frmSettings.lblSNCustomRange.Caption := '0..90';
end;

end.
