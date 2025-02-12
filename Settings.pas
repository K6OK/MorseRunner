unit Settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.Samples.Spin, VolmSldr, Vcl.Grids, Vcl.Buttons;

type
  TfrmSettings = class(TForm)
    pageSettings: TPageControl;
    tabGeneral: TTabSheet;
    tabCW: TTabSheet;
    TabHistory: TTabSheet;
    boxMyStation: TGroupBox;
    editSetgsCall: TEdit;
    lblSetgsCall: TLabel;
    boxSetgsAudio: TGroupBox;
    lblAudioDevice: TLabel;
    cmboCQZone: TComboBox;
    lblSetgsCQ: TLabel;
    lblITUZone: TLabel;
    cmboITUZone: TComboBox;
    lblAudioDev: TLabel;
    cmboAudioDevice: TComboBox;
    panelSettings: TPanel;
    btnSettingsCancel: TButton;
    btnSettingsSave: TButton;
    lblZoneSelect: TLabel;
    lblITUSelect: TLabel;
    boxCWSettings: TGroupBox;
    trkBarCWSpeed: TTrackBar;
    lblMyCWSpeed: TLabel;
    lblMySpeed: TLabel;
    trkBarFasterSpeed: TTrackBar;
    trkBarSlowerSpeed: TTrackBar;
    lblFastestCaller: TLabel;
    lblFasterSpeed: TLabel;
    lblSlowerSpeed: TLabel;
    toggleQSK: TToggleSwitch;
    boxBandCondx: TGroupBox;
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
    lblMonLevelTitle: TLabel;
    lblMonLevelNo: TLabel;
    lblSlowestCaller: TLabel;
    StringGrid1: TStringGrid;
    btnChangeHist: TButton;
    boxKVE: TGroupBox;
    cmboStateProv: TComboBox;
    lblStateProv: TLabel;
    lblARRLSec: TLabel;
    cmboARRLSec: TComboBox;
    boxJAStations: TGroupBox;
    editJAPref: TEdit;
    lblJAPref: TLabel;
    editJAGunKu: TEdit;
    lblGunKu: TLabel;
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
    radioSN00: TRadioButton;
    radioSN01: TRadioButton;
    radioSN02: TRadioButton;
    radioSN03: TRadioButton;
    spdbtnHistGridRowUp: TSpeedButton;
    spdbtnHistGridRowDown: TSpeedButton;
    lblHistSelRow: TLabel;
    btnHelpHistory: TButton;
    tabTrain: TTabSheet;
    boxTrainCWSpd: TGroupBox;
    trkTrainCW: TTrackBar;
    lblTrainWPM: TLabel;
    lblTrainCWSpd: TLabel;
    GroupBox1: TGroupBox;
    radioSetTrn3CharUSA: TRadioButton;
    radioSetTrn3CharWrld: TRadioButton;
    radioSetTrn4Char: TRadioButton;
    radioSetTrn5Char: TRadioButton;
    lblTrainCall1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    cmboTrainSettCont: TComboBox;
    spinTrainSettDur: TSpinEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    procedure LoadtheForm(Sender: TObject);
    procedure radioSN03Click(Sender: TObject);
    procedure btnSettingsSaveClick(Sender: TObject);
    procedure btnSettingsCancelClick(Sender: TObject);
    procedure SettingsFormDirty(Sender: TObject);
    procedure trkBarCWPitchTracking(Sender: TObject);
    procedure trkBarRxBwTracking(Sender: TObject);
    procedure trkBarMonLevelTracking(Sender: TObject);
    procedure trkBarCWSpeedTracking(Sender: TObject);
    procedure trkBarFasterSpeedTracking(Sender: TObject);
    procedure trkBarSlowerSpeedTracking(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdbtnHistGridRowDownClick(Sender: TObject);
    procedure spdbtnHistGridRowUpClick(Sender: TObject);
    procedure btnChangeHistClick(Sender: TObject);
    procedure btnHelpHistoryClick(Sender: TObject);
    procedure cmboTrainSettContChange(Sender: TObject);
    procedure trkTrainCWChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmSettings: TfrmSettings;

implementation

{$R *.dfm}

uses Main, SettingsFuncs, Contest, Ini, ARRLSections,
     StatesProvs, History, HistoryHelp;



procedure TfrmSettings.LoadtheForm(Sender: TObject);
begin
  SettgsFuncs.LoadSettingsFromIni;
  SettgsFuncs.LoadAudioComboBox;
  frmSettings.pageSettings.ActivePageIndex := 0;
  frmSettings.ShowModal;
end;

//----- If any fields are changed on Settings form, store all settings ---------
//----- in TSettingsTentative record pending Save or Cancel --------------------
procedure TfrmSettings.SettingsFormDirty(Sender: TObject);
begin
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

//----- SAVE button click, copy all of the settings from the SettgsTentv
//----- record to the Ini variables                                -------------
procedure TfrmSettings.btnSettingsSaveClick(Sender: TObject);
var
  V: integer;
begin
  with SettgsTentv do
  begin
    Ini.Call := tmpCall;
    Ini.HamName := tmpHamName;
    Ini.CQZone := inttostr(tmpCQZone);
    Ini.ITUZone := inttostr(tmpITUZone);
    Ini.ARRLSection := tmpARRLSec;
    Ini.StateProv := tmpStateProv;
    Ini.JAPref := tmpJAPref;
    Ini.JAKuGun := tmpJAKuGun;
    Ini.AudioDevice := tmpAudioDev;
    Ini.MonLevel := tmpMonLevel;
    Ini.Wpm := tmpCWSpeed;
    Ini.MaxRxWpm := tmpCWSpdFast;
    Ini.MinRxWpm := tmpCWSpdSlow;
    Ini.Pitch := tmpCWPitch;
    Ini.BandWidth := tmpRxBW;
    Ini.Activity := tmpActivity;
    Ini.Qsk := tmpQSK;
    Ini.Duration := tmpDuration;
    Ini.Qrn := tmpQRN; Ini.Qrm := tmpQRM; Ini.Qsb := tmpQSB;
    Ini.Flutter := tmpFlutter; Ini.Lids := tmpLids;
    //Training
    Ini.SimContestTrain := tmpContestTrain;
    Ini.DurationTrain := tmpDurationTrain;
    Ini.WpmTrain := tmpWpmTrain;
    Ini.rdoTrain3U := tmpTrain3U;
    Ini.rdoTrain3W := tmpTrain3W;
    Ini.rdoTrain4C := tmpTrain4C;
    Ini.rdoTrain5C := tmpTrain5C;
  end;
  V := Ord(SettgsTentv.tmpSerNRType);
  SettgsFuncs.UpdSerialNR(V);
  frmSettings.Visible := False;
  SettgsFuncs.UpdateMainFormControlsAfterSave;
  Close;
  Release;
end;




//----- CANCEL, discard changes and read from Ini file -------------------------

procedure TfrmSettings.btnSettingsCancelClick(Sender: TObject);
begin
  frmSettings.Visible := False;
  SettgsFuncs.LoadSettingsFromIni;
  Close;
  Release;
end;

//----- FORM CLOSE (border icon clicked), treated same as Cancel ---------------
procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSettings.btnSettingsCancelClick(Sender);
end;

//----- Handlers for Settings Form control events ------------------------------
procedure TfrmSettings.trkBarCWPitchTracking(Sender: TObject);
begin
  lblCWPitchHzNo.Caption := inttostr(300 + 50*trkBarCWPitch.Position);
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

procedure TfrmSettings.trkBarRxBwTracking(Sender: TObject);
begin
  lblRxBwHzNo.Caption := inttostr(100 + 50*trkBarRxBw.Position);
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

procedure TfrmSettings.trkBarMonLevelTracking(Sender: TObject);  // 3dB steps
var
  pos: integer;
begin
  pos := (trkBarMonLevel.Position*3)-60;
  if (pos>20) then pos := 20;
  lblMonLevelNo.Caption := InttoStr(pos);
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

procedure TfrmSettings.trkBarCWSpeedTracking(Sender: TObject);
var
  myspd: integer;
begin
  myspd := trkBarCWSpeed.Position;
  lblMySpeed.Caption := IntToStr(myspd);
  lblFasterSpeed.Caption := inttostr(myspd + trkBarFasterSpeed.Position);
  lblSlowerSpeed.Caption := inttostr(myspd - trkBarFasterSpeed.Position);
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

procedure TfrmSettings.trkBarFasterSpeedTracking(Sender: TObject);
var
  hispd: integer;
begin
  hispd := strtoint(lblMySpeed.Caption) + trkBarFasterSpeed.Position;
  lblFastestCaller.Caption := 'Fastest Caller (+'  +
    inttostr(trkBarFasterSpeed.Position) + ' )';
  lblFasterSpeed.Caption := inttostr(hispd);
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
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
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

procedure TfrmSettings.radioSN03Click(Sender: TObject);
begin
  SettgsFuncs.SerialNRCustomRangeClick;
  SettgsFuncs.WriteDirtySettingsToRecord(Sender);
end;

//History string grid row cursor up/down
procedure TfrmSettings.spdbtnHistGridRowDownClick(Sender: TObject);
var
  currow : integer;
begin
  currow := StringGrid1.Row;
  if (currow < StringGrid1.RowCount - 2) then
    StringGrid1.Row := currow + 1 else
    StringGrid1.Row := StringGrid1.RowCount - 1;
end;

procedure TfrmSettings.spdbtnHistGridRowUpClick(Sender: TObject);
var
  currow : integer;
begin
  currow := StringGrid1.Row;
  if (currow > 2) then StringGrid1.Row := StringGrid1.Row -1 else
    StringGrid1.Row := 1;
end;

//History: select a replacement file
procedure TfrmSettings.btnChangeHistClick(Sender: TObject);
begin
  HistoryFuncs.ReplaceHistoryFile(StringGrid1.Cells[0, StringGrid1.Row]);
end;

//History: show Help file
procedure TfrmSettings.btnHelpHistoryClick(Sender: TObject);
begin
  frmHistoryHelp := TfrmHistoryHelp.Create(self);
  frmHistoryHelp.ShowModal;
end;

//Training
procedure TfrmSettings.cmboTrainSettContChange(Sender: TObject);
begin
  if cmboTrainSettCont.ItemIndex = 0 then
  begin
    radioSetTrn3CharUSA.Enabled := True;
    radioSetTrn3CharWrld.Enabled := True;
    radioSetTrn4Char.Enabled := True;
    radioSetTrn4Char.Enabled := True;
  end;
  if cmboTrainSettCont.ItemIndex = 1 then
  begin
    radioSetTrn3CharUSA.Enabled := False;
    radioSetTrn3CharWrld.Enabled := False;
    radioSetTrn4Char.Enabled := True;
    radioSetTrn4Char.Enabled := True;
  end;
  SettingsFormDirty(Sender);
end;

procedure TfrmSettings.trkTrainCWChange(Sender: TObject);
begin
  lblTrainCWSpd.Caption := inttoStr(trkTrainCW.Position);
  SettingsFormDirty(Sender);
end;




end.

