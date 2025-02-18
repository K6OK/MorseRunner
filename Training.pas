unit Training;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Main,
  Vcl.Samples.Spin;

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
    btnTrainCancel: TButton;
    btnTrainStart: TButton;
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
    procedure btnTrainStartClick(Sender: TObject);
    procedure trkTrainCWChange(Sender: TObject);
    procedure btnTrainCancelClick(Sender: TObject);
    procedure cmboTrainConChange(Sender: TObject);
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
  frmTraining.Release;
  MainForm.Run(Ini.DefaultRunMode, Ini.pgmState);
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
  if cmboTrainCon.ItemIndex = 1 then
  begin
    radioTrn3U.Enabled := False;
    radioTrn3W.Enabled := False;
    radioTrn4Char.Enabled := True;
    radioTrn4Char.Checked := True;
    radioTrn5Char.Enabled := True;
  end;

end;

procedure TfrmTraining.trkTrainCWChange(Sender: TObject);
begin
  lblCWSpeed.Caption := inttoStr(trkTrainCW.Position);
end;

procedure TfrmTraining.btnTrainCancelClick(Sender: TObject);
begin
  MainForm.comboActivity.ItemIndex := 0;
  Close; Release;
end;

end.
