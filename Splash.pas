unit Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Main, Vcl.StdCtrls;

type
  TfrmSplash = class(TForm)
    TimerSplash: TTimer;
    imageSplash: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblSplashVersion: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnSplashClose: TButton;
    Label3: TLabel;
    procedure DoSplash;
    procedure TimerSplashTimer(Sender: TObject);
    procedure btnSplashCloseClick(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}



procedure TfrmSplash.DoSplash;
begin
  FormStyle := fsStayOnTop;
  lblSplashVersion.Caption := format('Version %s', [sVersion]);
  Show;
  Update;
end;

procedure TfrmSplash.btnSplashCloseClick(Sender: TObject);
begin
  Close;
  Release;
end;

procedure TfrmSplash.TimerSplashTimer(Sender: TObject);
begin
  MainForm.Visible := True;
  Close;
  Release;
end;

end.
