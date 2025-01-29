unit History;

interface

uses System.SysUtils, System.Classes, System.StrUtils,
     System.IOUtils, System.UITypes, Dialogs, Vcl.WinXCtrls, Vcl.Grids,
     Settings, Ini;

type
  THistoryFuncs = class
    function HistoryFileExists(fname : string) : boolean;
    function HistoryFileGetDate(fname : string) : TDateTime;
    function GetExistingHistFileName(ctname : string) : string;
    function HistoryFileIsValid(ctname, fname : string) : boolean;
    procedure LoadTheStringGrid;
    procedure SortTheStringGrid;
    procedure ReplaceHistoryFile(ctName : string);
    procedure UpdateHistFileArray(ctname, fname : string);
    procedure HistoryFileMissing;
    procedure Help;
  end;

const
  // This is the history file manifest
  // When the program is distributed, the files included
  // must match the filenames given here

  HistFileDeflt : array[TSimContest] of string =
     (
      'MASTER.DTA',                                   //scWpx
      'CWOPS.LIST',                                   //scCwt
      'FDGOTA.txt',                                   //scFieldDay
      'NAQPCW.txt',                                   //scNaQp
      'MASTER.DTA',                                   //scHst
      'CQWWCW.txt',                                   //scCQWW
      'ARRLDXCW_USDX.txt',                            //scArrlDx
      'K1USNSST.txt',                                 //scSst
      'JARL_ALLJA.txt',                               //scAllJa
      'JARL_ACAG.txt',                                //scAcag
      'IARU_HF.txt',                                  //scIaruHf
      'SSCW.txt'                                      //scArrlSS
    );


  HistoryHeaders : array[TSimContest] of string =
    (
      'MASTER.DTA',                                   //scWpx
      '!!Order!!,Call,Name,Exch1,UserText',           //scCwt
      '!!Order!!,Call,Exch1,Sect,UserText',           //scFieldDay
      '!!Order!!,Call,Name,State,UserText',           //scNaQp
      'MASTER.DTA',                                   //scHst
      '!!Order!!,Call,CQZone,Usertext',               //scCQWW
      '!!Order!!,Call,Name,State,Power,UserText',     //scArrlDx
      '!!Order!!,Call,Name,Exch1,UserText',           //scSst
      '!!Order!!,Call, Exch1, UserText',              //scAllJa
      '!!Order!!,Call, Exch1, UserText',              //scAcag
      '!!Order!!,Call,Sect,UserText',                 //scIaruHf
      '!!Order!!,Call,Sect,State,CK,UserText'         //scArrlSS
    );

var
  HistFileMissing : boolean = False;
  HistoryFuncs : THistoryFuncs;

  //As history files are updated by the user
  //the filenames are stored here and in the .ini file
  HistFileNames : array[TSimContest] of string;


implementation

//Temporary coding below assumes history files are in program directory

{ TODO :
Add an installer to put program folder in C:\Program Files (x86)
and put history files in %HOMEPATH%/Documents/MorseRunnerCE }

uses SettingsFuncs, HistoryHelp;


procedure THistoryFuncs.LoadTheStringGrid;
var
  conlist: TStringList;
  filelist: TStringList;
  C: TContestDefinition;
  SC: TSimContest;
  i: integer;   fdate: TDateTime;
begin
  conlist := TStringList.Create;
  for C in ContestDefinitions do conlist.Add(WideCharToString(C.Name));
  for i := 0 to conlist.Count-1 do
    begin
      frmSettings.StringGrid1.Cells[0,i+1] := conlist[i];
    end;
  filelist := TStringList.Create;
  for SC := Low(TSimContest) to High(TSimContest) do
    begin
      filelist.Add(HistFileNames[SC]);
    end;
  for i := 0 to filelist.Count-1 do
    begin
      frmSettings.StringGrid1.Cells[1,i+1] := filelist[i];
    end;

    // verify file exists in program folder
    // if file exists, get date info and write to column 2
    // if file not exist, update HistFileNames with "File Not Found"
    for SC := Low(TSimContest) to High(TSimContest) do
    begin
      if HistoryFuncs.HistoryFileExists(HistFileNames[SC]) = True then
      begin
        fdate := HistoryFuncs.HistoryFileGetDate(HistFileNames[SC]);
        frmSettings.StringGrid1.Cells[2, Ord(SC) + 1] := DateToStr(fdate);
      end
      else
      begin
        HistFileMissing := True;
        HistFileNames[SC] := 'File not found';
        frmSettings.StringGrid1.Cells[1, Ord(SC) + 1] := 'File not found';
        frmSettings.StringGrid1.Cells[2, Ord(SC) + 1] := '';
      end;
    end;
    HistoryFuncs.SortTheStringGrid;
    frmSettings.StringGrid1.Selection := TGridRect(Rect(1,1,2,1));
    conlist.Free;
    filelist.Free;
end;



// History grid is first cretated in TSimContest order
// This reloads the grid with an alphabetical sort on contest name
procedure THistoryFuncs.SortTheStringGrid;
var
  tmpRow : string;
  tempRows : TStringList;
  rowArray : TArray<String>;
  iRow, iCol : integer;
begin
  tmpRow := '';
  tempRows := TStringList.Create;
  with frmSettings.StringGrid1 do
  begin
    BeginUpdate;
    for iRow := 1 to (RowCount - 1) do
    begin
      tmpRow := Cells[0, iRow]+'#'+Cells[1, iRow]+'#'+Cells[2, iRow];
      tempRows.Add(tmpRow);
      tmpRow := '';
    end;
    tempRows.Sorted := True;
    for iRow := 1 to (RowCount - 1) do
    begin
      rowArray := temprows[iRow - 1].Split(['#'],3);
      for iCol := 0 to 2 do Cells[iCol, iRow] := rowArray[iCol];
    end;
    EndUpdate;
  end;
  tempRows.Free;
end;

//---- Called when user seeks to update a history file -------------------------
procedure THistoryFuncs.ReplaceHistoryFile(ctName : string);
var
  fDlg : TOpenDialog;
  newName : string;    //new history file without path
  newFile : string;    //new history file with full path
  oldName : string;    //old history file without path
  oldFile : string;    //old history file with path
  i : integer;     att: integer;
begin
  //lookup the existing history file for this contest
  oldName := GetExistingHistFileName(ctName);
  oldFile := ExtractFilePath(ParamStr(0)) + oldName;
  //open file chooser dialog, get the candidate file
  fDlg := TOpenDialog.Create(nil);
  fDlg.InitialDir := '%HOMEPATH%/Desktop';
  fDlg.Filter := 'History files|*.TXT;*.LIST;*.DTA';
  if fDlg.Execute then
    begin
      newFile := fDlg.FileName;
    end
    else
    begin
      fDlg.Free;
      exit;
    end;
  if HistoryFileIsValid(ctname, newFile)=True then
    begin
      i := MessageDlg('Replace ' + oldName + ' with ' +
        ExtractFileName(newFile) + '?',
        mtCustom, mbOKCancel, 0);
      if i = mrOK then
      begin
        if oldName <> 'File not found' then TFile.Delete(oldFile);
        newName := ExtractFileName(newFile);
        TFile.Copy(newFile, ExtractFilePath(ParamStr(0)) + newName);
        UpdateHistFileArray(ctname, newName);
        LoadTheStringGrid;
      end
      else
      begin                    //user pressed Cancel
        if i=mrCancel then exit;
      end;
    end
    else
    begin
      ShowMessage('The file cannot be read or is in the wrong format.');
    end;
  fDlg.Free;
end;

function THistoryFuncs.HistoryFileIsValid(ctname, fname : string) : boolean;
var
  C : TContestDefinition;
  hdrstr : string;
  lnstr : string;
  fLines : TStringList;
  i : integer;
begin
  try
    //for selected contest get the required file header
    for C in ContestDefinitions do
    begin
      if WideCharToString(C.Name) = ctName then
      begin
        hdrstr := HistoryHeaders[C.T];   // T is TSimContest from ini.pas
      end
      else Continue;
    end;

    //MASTER.DTA is a binary file, assume it's good and skip the header check
    if (ExtractFileName(fName) = 'MASTER.DTA') and (hdrstr = 'MASTER.DTA') then
    begin
      Result := True;
      exit;
    end;

    //for *.TXT and *.LIST, check first 20 lines of file for proper header
    fLines := TStringList.Create;
    fLines.Clear;
    fLines.LoadFromFile(fName);
    for i := 0 to 20 do
    begin
      lnstr := fLines[i];
      if ContainsText(lnstr, hdrstr) = True then
      begin
        Result := True;
        fLines.Free;
        exit
      end
      else
        Result := False;
    end;
    fLines.Free;
  except
    fLines.Free;
    Result := False;
  end;
end;

function THistoryFuncs.GetExistingHistFileName(ctname : string) : string;
var
  C : TContestDefinition;
begin
  for C in ContestDefinitions do
  begin
    if WideCharToString(C.Name) = ctName then
    begin
      Result := HistFileNames[C.T];
      exit;
    end
    else continue;
  end;
end;

procedure THistoryFuncs.UpdateHistFileArray(ctname, fname : string);
var
  C : TContestDefinition;
begin
  for C in ContestDefinitions do
  begin
    if WideCharToString(C.Name) = ctName then
    begin
      HistFileNames[C.T] := ExtractFileName(fname);
      exit;
    end
    else continue;
  end;
end;

procedure THistoryFuncs.HistoryFileMissing;
begin
  ShowMessage('History file for this contest is missing. Go to Settings/History' +
    ' and supply the missing file.');
end;

procedure THistoryFuncs.Help;
begin
  frmHistoryHelp.ShowModal;
end;

function THistoryFuncs.HistoryFileExists(fname: string) : boolean;
var
  fLong : string;
begin
  fLong := ExtractFilePath(ParamStr(0)) + fname;
  if TFile.Exists(fLong) then result := True else result := False;
end;

function THistoryFuncs.HistoryFileGetDate(fname: string) : TDateTime;
begin
  result := TFile.GetLastWriteTime(fName);
end;


end.
