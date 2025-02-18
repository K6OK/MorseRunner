unit TrainingFuncs;

interface

uses SysUtils, Training, Main, Ini, Forms;

type
  TTrainFuncs = class
    procedure TrainFormCreate;
    procedure InitiateTrainSession;
    function GenerateRandom1x1USACalls : string;
    function GenerateRandom1x1WorldCalls : string;
  end;

  TTrainCalls = (trncall3USA, trncall3Wrld, trncall4char, trncall5char);

//const

var
  TrainFuncs : TTrainFuncs;
  TrainCallType : TTrainCalls;

  PracticeStashDurWpm : array[0..1] of integer;
  {Main.Run uses Ini.Wpm and Ini.Duration in Practice mode
   Training mode overwrites Ini.Wpm and Ini.Duration with its own values
   so Run will work. Here the practice settings are saved so Wpm/Duration can be
   restored to their normal values when training is complete}

implementation

procedure TTrainFuncs.TrainFormCreate;
begin
  frmTraining := TfrmTraining.Create(Application);
  frmTraining.ShowModal;
end;

procedure TTrainFuncs.InitiateTrainSession;
begin
  TrainFormCreate;
  with frmTraining do
  begin
    if radioTrn3U.Checked then TrainCallType := trncall3USA;
    if radioTrn3W.Checked then TrainCallType := trncall3Wrld;
    if radioTrn4Char.Checked then TrainCallType := trncall4Char;
    if radioTrn5Char.Checked then TrainCallType := trncall5Char;
  end;
  PracticeStashDurWpm[0] := Ini.Wpm;
  PracticeStashDurWpm[1] := Ini.Duration;
  Ini.Duration := frmTraining.spinTrainDur.Value;
  Ini.Wpm := frmTraining.trkTrainCW.Position;
  Ini.DefaultRunMode := rmSingle;
  Ini.pgmState := psRunning;
  MainForm.labelStatus.Caption := 'Status: Running';
  MainForm.SpdBtnVisibility(1);
  with MainForm do
  begin
    SpinEdit2.Value := Ini.Duration;
    spinCWSpeed.Value := Ini.Wpm;
    comboMode.ItemIndex := 1;  // Force single calls
  end;
  frmTraining.Close;
  frmTraining.Release;
  MainForm.Run(Ini.DefaultRunMode, Ini.pgmState);
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
