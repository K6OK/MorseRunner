unit Training;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Main,
  Vcl.Samples.Spin, Vcl.WinXCtrls, Vcl.Buttons;

type
  TfrmTraining = class(TForm)
    GroupBox1: TGroupBox;
    lblTrainCall1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    radioTrn3U: TRadioButton;
    radioTrn4Char: TRadioButton;
    radioTrn5Char: TRadioButton;
    Label4: TLabel;
    boxTrainCWSpd: TGroupBox;
    Label5: TLabel;
    lblCWSpeed: TLabel;
    trkTrainCW: TTrackBar;
    radioTrn3W: TRadioButton;
    cmboTrainCon: TComboBox;
    Label7: TLabel;
    Label30: TLabel;
    spinTrainDur: TSpinEdit;
    radioTrn45Char: TRadioButton;
    Label6: TLabel;
    Label8: TLabel;
    toggleFarns: TToggleSwitch;
    trkTrainFarnsCW: TTrackBar;
    Label9: TLabel;
    lblCWCharSpeed: TLabel;
    lblWPMLong: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btnTrainExit: TButton;
    btnTrainStart: TButton;
    //procedure btnTrainStartClick(Sender: TObject);
    procedure trkTrainCWChange(Sender: TObject);
    //procedure btnTrainCancelClick(Sender: TObject);
    procedure cmboTrainConChange(Sender: TObject);
    procedure trkTrainFarnsCWChange(Sender: TObject);
    procedure toggleFarnsClick(Sender: TObject);
    procedure btnTrainExitClick(Sender: TObject);
    procedure trkTrainFarnsCWTracking(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTrainStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTraining: TfrmTraining;

implementation

{$R *.dfm}

uses TrainingFuncs, Ini;



procedure TfrmTraining.btnTrainStartClick(Sender: TObject);
begin
  frmTraining.Close;
  TrainFuncs.RunTrainSession;
end;

procedure TfrmTraining.cmboTrainConChange(Sender: TObject);
begin
  if cmboTrainCon.ItemIndex = 0 then
  begin
    radioTrn3U.Enabled := True;
    radioTrn3U.Checked := True;
    radioTrn3W.Enabled := True;
    radioTrn4Char.Enabled := True;
    radioTrn5Char.Enabled := True;
  end;
  if cmboTrainCon.ItemIndex > 0 then
  begin
    radioTrn3U.Enabled := False;
    radioTrn3W.Enabled := False;
    radioTrn4Char.Enabled := True;
    radioTrn4Char.Checked := True;
    radioTrn5Char.Enabled := True;
  end;

end;


procedure TfrmTraining.toggleFarnsClick(Sender: TObject);
begin
  if toggleFarns.State = tssOn then
  begin
    Ini.FarnsworthEnabled := True;
    trkTrainFarnsCW.Enabled := True;
  end
  else
  begin
    Ini.FarnsworthEnabled := False;
    trkTrainFarnsCW.Enabled := False;
  end;
end;

procedure TfrmTraining.trkTrainCWChange(Sender: TObject);
begin
  lblCWSpeed.Caption := inttoStr(trkTrainCW.Position);
end;

procedure TfrmTraining.trkTrainFarnsCWChange(Sender: TObject);
begin
  lblCWCharSpeed.Caption := inttoStr(trkTrainFarnsCW.Position);
end;

procedure TfrmTraining.trkTrainFarnsCWTracking(Sender: TObject);
begin
  if trkTrainFarnsCW.Position < trkTrainCW.Position then
    trkTrainFarnsCW.Position := trkTrainCW.Position;
end;

procedure TfrmTraining.btnTrainExitClick(Sender: TObject);
begin
  TrainFuncs.RestorePriorActivitySettings;
  with MainForm do
  begin
    EnableCtl(comboActivity, True);
    EnableCtl(SimContestCombo, True);
    EnableCtl(comboMode, True);
    EnableCtl(ExchangeEdit, True);
  end;

  Close; Release;
end;

procedure TfrmTraining.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //TrainFuncs.RestorePracticeSettings;
  //Close; Release;
end;

end.
