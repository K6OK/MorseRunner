unit HistoryHelp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmHistoryHelp = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoryHelp: TfrmHistoryHelp;

implementation

{$R *.dfm}

procedure TfrmHistoryHelp.Button1Click(Sender: TObject);
begin
  Close;
  Release;
end;

end.
