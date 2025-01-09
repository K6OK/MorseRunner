unit SettingsFuncs;

interface

uses inifiles, System.SysUtils, System.Classes, System.StrUtils,
     System.IOUtils, System.UITypes, Dialogs, Vcl.WinXCtrls,
     Ini, Settings, Contest, Main, ARRLSections, StatesProvs;

type
  TSettgsFuncs = class
    procedure LoadSettingsFromIni;
    procedure WriteDirtySettingsToRecord;
    procedure SerialNRCustomRangeClick;
    procedure UpdSerialNR(V: integer);
    procedure UpdSerialNRCustomRange(const ARange: string);
    procedure DisableMainFormStngs(S: boolean);
    procedure UpdateMainFormControlsAfterSave;
  end;

  TSettingsTentative = record  // hold Settings pending Save or Cancel
    tmpCall: string;
    tmpHamName: string;
    tmpCQZone: integer;
    tmpITUZone: integer;
    tmpARRLSec: string;
    tmpStateProv: string;
    tmpJAPref: string;
    tmpJAKuGun: string;
    tmpAudioDev: string;
    tmpMonLevel: integer;
    tmpCWSpeed: integer;
    tmpCWSpdFast: integer;
    tmpCWSpdSlow: integer;
    tmpCWPitch: integer;
    tmpRxBW: integer;
    tmpActivity: integer;
    tmpQSK: boolean;
    tmpDuration: integer;
    tmpQRN: boolean; tmpQRM: boolean; tmpQSB: boolean;
    tmpFlutter: boolean; tmpLids: boolean;
    tmpSerNRType: TSerialNRTypes;
    tmpSerCustomRange: string;
  end;

//const

var
  SettgsFuncs: TSettgsFuncs;
  SettgsTentv: TSettingsTentative;

implementation

procedure TSettgsFuncs.LoadSettingsFromIni;
var
  C: TContestDefinition;
  conlist: TStringList;
  i: integer;
begin
  with frmSettings do
  begin
    editSetgsCall.Text := Ini.Call;
    editFirstName.Text := Ini.HamName;

    for i := 1 to 40 do cmboCQZone.Items.Add(inttostr(i));
    cmboCQZone.ItemIndex := strtoint(Ini.CQZone)-1;
    for i := 1 to 90 do cmboITUZone.Items.Add(inttostr(i));
    cmboITUZone.ItemIndex := strtoint(Ini.ITUZone)-1;

    with cmboARRLSec do
    begin
      Items.Clear; Items.BeginUpdate;
      for i := 0 to High(SectionsTbl) do Items.Add(SectionsTbl[i]);
      Sorted := True;
      Items.EndUpdate;
      ItemIndex := Items.IndexOf(Ini.ArrlSection);
    end;
    with cmboStateProv do
    begin
      Items.Clear; Items.BeginUpdate;
      for i := 0 to High(StatesProvsTbl) do Items.Add(StatesProvsTbl[i]);
      Sorted := True;
      Items.EndUpdate;
      ItemIndex := Items.IndexOf(Ini.StateProv);
    end;

    with StringGrid1 do     // placeholder for history file manager (future)
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
    spinSettngDuration.Value := Ini.Duration;
    conlist.Free;
    end;
end;

procedure TSettgsFuncs.WriteDirtySettingsToRecord;
begin
  with SettgsTentv do
  begin
    tmpCall := frmSettings.editSetgsCall.Text;
    tmpHamName := frmSettings.editFirstName.Text;
    tmpCQZone := frmSettings.cmboCQZone.ItemIndex + 1;
    tmpITUZone := frmSettings.cmboITUZone.ItemIndex + 1;
    tmpARRLSec := frmSettings.cmboARRLSec.Text;
    tmpStateProv := frmSettings.cmboStateProv.Text;
    tmpJAPref := frmSettings.editJAPref.Text;
    tmpJAKuGun := frmSettings.editJAGunKu.Text;
    tmpAudioDev := frmSettings.cmboAudioDevice.Text;
    tmpMonLevel := frmSettings.trkBarMonLevel.Position;
    tmpCWSpeed := frmSettings.trkBarCWSpeed.Position;
    tmpCWSpdFast := frmSettings.trkBarFasterSpeed.Position;
    tmpCWSpdSlow := frmSettings.trkBarSlowerSpeed.Position;
    tmpCWPitch := (300 + 50*(frmSettings.trkBarCWPitch.Position));
    tmpRxBW := (100 + 50*(frmSettings.trkBarRxBw.Position));
    tmpActivity := frmSettings.spinSettngActivity.Value;
    if frmSettings.toggleQSK.State = tssOn then tmpQSK := True else tmpQSK := False;
    tmpDuration := frmSettings.spinSettngDuration.Value;
    // Band conditions toggles
    if frmSettings.toggleQRN.State = tssOn then tmpQRN := True else tmpQRN := False;
    if frmSettings.toggleQRM.State = tssOn then tmpQRM := True else tmpQRM := False;
    if frmSettings.toggleQSB.State = tssOn then tmpQSB := True else tmpQSB := False;
    if frmSettings.toggleFlutter.State = tssOn then tmpFlutter := True else tmpFlutter := False;
    if frmSettings.toggleLids.State = tssOn then tmpLids := True else tmpLids := False;
    // Serial number check boxes
    if frmSettings.radioSN00.Checked then tmpSerNRType := snStartContest;
    if frmSettings.radioSN01.Checked then tmpSerNRType := snMidContest;
    if frmSettings.radioSN02.Checked then tmpSerNRType := snEndContest;
    if frmSettings.radioSN03.Checked then tmpSerNRType := snCustomRange;
    // tmpSerCustomRange is written by SerialNRCustomRangeClick procedure
  end;
end;

// Disable Settings on Main form when Settings form is active
procedure TSettgsFuncs.DisableMainFormStngs(S: boolean);
begin
  with MainForm do
  begin
    comboActivity.Enabled := not S;
    comboMode.Enabled := not S;
    SimContestCombo.Enabled := not S;
    ExchangeEdit.Enabled := not S;
    SpinEdit2.Enabled := not S;
    GroupBox1.Enabled := not S;
    GroupBox3.Enabled := not S;
    spdbtnRun.Enabled := not S;
    spdbtnPause.Enabled := not S;
    spdbtnStop.Enabled := not S;
    spdbtnLeftRIT.Enabled := not S;
    spdbtnRightRIT.Enabled := not S;
    spdbtnResetRIT.Enabled := not S;
  end;
end;

procedure TSettgsFuncs.UpdateMainFormControlsAfterSave;
begin
  with MainForm do
  begin
    SpinEdit2.Value := Ini.Duration;
    Edit4.Text := Ini.Call;
    CheckBox1.Checked := Ini.Qsk;
    spinCWSpeed.Value := Ini.Wpm;
    cmboCWPitch.ItemIndex := Round((Ini.Pitch - 300)/50);
    cmboRXBW.ItemIndex := Round((Ini.BandWidth -100)/50);
    CheckBox4.Checked := Ini.Qrn;
    CheckBox3.Checked := Ini.Qrm;
    CheckBox2.Checked := Ini.Qsb;
    CheckBox5.Checked := Ini.Flutter;
    CheckBox6.Checked := Ini.Lids;
    // To be done: Mon Level
    SpinEdit3.Value := Ini.Activity;
  end;
end;

//----- Serial number procedures -----------------------------------------------

procedure TSettgsFuncs.SerialNRCustomRangeClick;  // check if RangeStr is valid
Var                                               // write to SettgsTentv record
  RangeStr: string;
  ClickedOK, Done: boolean;
  tempRange : TSerialNRSettings;
  Err: string;
begin
  tempRange := Ini.SerialNRSettings[snCustomRange];
  RangeStr := tempRange.RangeStr;
  Done := False;
  repeat
    begin
      ClickedOK := InputQuery('Enter Custom Serial Number Range',
        'Enter min-max values (e.g. 01-99):',
        RangeStr);
      if not ClickedOK then
      begin                                       // user aborts, default to
         frmSettings.radioSN00.Checked := True;   // snContestStart
         break;
      end;

      // split into two strings [Min, Max)
      tempRange.ParseSerialNR(RangeStr, Err);

      if Err <> '' then
        begin
          // report error and try again
          MessageDlg(Err, mtError, [mbOK], 0);
        end
      else
        begin
          SettgsTentv.tmpSerCustomRange := RangeStr;
          Done := true;
        end;
    end;
  until (Done);
end;


procedure TSettgsFuncs.UpdSerialNR(V: integer);
begin

  var snt : TSerialNrTypes := TSerialNrTypes(V);

  // validate custom serial number range; if invalid, set to Start of Contest
  if not Ini.SerialNRSettings[snt].IsValid then snt := snStartContest;

  Ini.SerialNR := snt;

  with frmSettings do
  begin
    if snt = snStartContest then radioSN00.Checked := True else radioSN00.Checked := False;
    if snt = snMidContest then radioSN01.Checked := True else radioSN01.Checked := False;
    if snt = snEndContest then radioSN02.Checked := True else radioSN02.Checked := False;
    if snt = snCustomRange then radioSN03.Checked := True else radioSN03.Checked := False;
  end;

  // update contest-specific settings/caches (e.g. SerialNR Generator for CQ Wpx)
  if (pgmState = psRunning) and (RunMode <> rmHST) then
    Tst.SerialNrModeChanged;
end;

{
procedure TSettgsFuncs.SerialNRCustomRangeClick;
Var
  snt:integer;
  RangeStr: string;
  ClickedOK, Done: boolean;
  tempRange : TSerialNRSettings;
  Err: string;
begin
  snt := frmSettings.radioSN03.Tag;
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
}

procedure TSettgsFuncs.UpdSerialNRCustomRange(const ARange: string);
begin
  if Ini.SerialNRSettings[snCustomRange].IsValid then
    frmSettings.radioSN03.Caption := 'Custom Range '+ ARange
  else
    frmSettings.radioSN03.Caption := 'CustomRange 0-99';
end;

end.
