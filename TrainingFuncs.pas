unit TrainingFuncs;

interface

uses SysUtils, Training, Main, Ini, Forms, Dialogs,
     MorseKey, FarnsKeyer, Vcl.WinXCtrls;

type
  TTrainFuncs = class
    procedure RunTrainSession;
    procedure BackupPriorActivitySettings;
    procedure RestorePriorActivitySettings;
    function GenerateRandom1x1USACalls : string;
    function GenerateRandom1x1WorldCalls : string;
  end;

  TTrainCalls = (trncall3USA, trncall3Wrld, trncall4char, trncall5char);

//const

var
  TrainFuncs : TTrainFuncs;
  TrainCallType : TTrainCalls;

  DurWpmBackup : array[0..1] of integer;
  {Main.Run uses Ini.Wpm and Ini.Duration in Practice mode
   Training mode overwrites Ini.Wpm and Ini.Duration with its own values
   so Run will work. Here the practice settings are saved so Wpm/Duration can be
   restored to their normal values when training session is closed}

  BandCondxBackup : array[1..6] of boolean;
  {Save Practice BandCondx before Training mode sets
   QSK, QRN, QRM, QSB, Flutter and LIDs to False}

  Actvy_Backup : integer;
  Contst_Backup : string;
  Mode_Backup : string;
  Exch_Backup : string;
  {Save Activity,Contest,Mode and Exchange on Main form}


implementation


procedure TTrainFuncs.RunTrainSession;
begin
  Ini.Duration := Ini.DurationTrain;
  Ini.Wpm := Ini.WpmTrain;
  Ini.DefaultRunMode := rmSingle;

  //Set all Band Condx to False
  with MainForm do
  begin
    Checkbox1.Checked := False;
    Checkbox2.Checked := False;
    Checkbox3.Checked := False;
    Checkbox4.Checked := False;
    Checkbox5.Checked := False;
    Checkbox6.Checked := False;
  end;

  // Load standard or Farnsworth keyer
  DestroyKeyer;
  if Ini.FarnsworthEnabled then
    Keyer := TFarnsKeyer.Create(DEFAULTRATE, Ini.BufSize)
  else
    Keyer := TKeyer.Create(DEFAULTRATE, Ini.BufSize);

  with MainForm do
  begin
    SimContestComboRefresh;
    SpinEdit2.Value := Ini.DurationTrain;
    spinCWSpeed.Value := Ini.WpmTrain;
    comboMode.ItemIndex := 1;  // Force single calls
    labelStatus.Caption := 'Status: Stopped';
    GroupBox3.Visible := False;
    lblTrainingMode.Visible := True;
    Repaint;
  end;
  Ini.pgmState := psStopped;
end;


procedure TTrainFuncs.BackupPriorActivitySettings;
begin
  with MainForm do
  begin
    DurWpmBackup[0] := spinCWSpeed.Value;
    DurWpmBackup[1] := SpinEdit2.Value;
    BandCondxBackup[1] := Checkbox1.Checked; //QSK
    BandCondxBackup[2] := Checkbox2.Checked; //QSB
    BandCondxBackup[3] := Checkbox3.Checked;
    BandCondxBackup[4] := Checkbox4.Checked;
    BandCondxBackup[5] := Checkbox5.Checked; //Flutter
    BandCondxBackup[6] := Checkbox6.Checked; //Lids
    Actvy_Backup := SpinEdit3.Value;
    Contst_Backup := SimContestCombo.Text;
    Mode_Backup := comboMode.Text;
    Exch_Backup := ExchangeEdit.Text;
  end;
end;

procedure TTrainFuncs.RestorePriorActivitySettings;
begin
  with MainForm do
  begin
    spinCWSpeed.Value := DurWpmBackup[0];
    SpinEdit2.Value := DurWpmBackup[1];
    Checkbox1.Checked := BandCondxBackup[1];
    Checkbox2.Checked := BandCondxBackup[2];
    Checkbox3.Checked := BandCondxBackup[3];
    Checkbox4.Checked := BandCondxBackup[4];
    Checkbox5.Checked := BandCondxBackup[5];
    Checkbox6.Checked := BandCondxBackup[6];
    SpinEdit3.Value := Actvy_Backup;
    SimContestComboRefresh;
    SimContestCombo.ItemIndex := SimContestCombo.Items.IndexOf(Contst_Backup);
    MainForm.comboModeRefresh;
    comboMode.ItemIndex := comboMode.Items.IndexOf(Mode_Backup);
    ExchangeEdit.Text := Exch_Backup;
  end;

end;

function TTrainFuncs.GenerateRandom1x1USACalls : string;
var
  ltr : Char;
  rcall : string;
begin
  Repeat
    ltr := Chr(ord('A') + Random(26));
  Until CharInSet(ltr, ['K','N','W']);
  rcall := ltr;
  ltr := Chr(ord('0') + Random(9));
  rcall := rcall + ltr;
  ltr := Chr(ord('A') + Random(26));
  Result := rcall + ltr;
end;

function TTrainFuncs.GenerateRandom1x1WorldCalls : string;
var
  ltr : Char;
  rcall : string;
begin
  ltr := Chr(ord('A') + Random(26));
  rcall := ltr;
  ltr := Chr(ord('0') + Random(9));
  rcall := rcall + ltr;
  ltr := Chr(ord('A') + Random(26));
  Result := rcall + ltr;
end;


end.
