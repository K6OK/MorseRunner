//------------------------------------------------------------------------------
//This Source Code Form is subject to the terms of the Mozilla Public
//License, v. 2.0. If a copy of the MPL was not distributed with this
//file, You can obtain one at http://mozilla.org/MPL/2.0/.
//------------------------------------------------------------------------------
unit CallLst;

interface

uses
  Classes;

type
  // simple calllist. contains a TStringList of callsigns.
  TCallList = class
  protected
    Calls: TStringList;

  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadCallList;
    function IsEmpty : Boolean;
    procedure Clear();
    function PickCall : string;
  end;


implementation

uses
  SysUtils, Ini;

function CompareCalls(Item1, Item2: Pointer): Integer;
begin
  Result := StrComp(PChar(Item1), PChar(Item2));
end;

// reads callsigns from Master.dta file
procedure TCallList.LoadCallList;
const
  Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/';
  CHRCOUNT = Length(Chars);
  INDEXSIZE = Sqr(CHRCOUNT) + 1;
  INDEXBYTES = INDEXSIZE * SizeOf(Integer);
var
  i: integer;
  P, Pe: PChar;
  L: TList;

  FileName: string;
  FFileSize: integer;

  FIndex: array[0..INDEXSIZE-1] of integer;
  DataNew: AnsiString;
  Data: String;
begin
  Calls.Clear;

  FileName := ExtractFilePath(ParamStr(0)) + 'Master.dta';
  if not FileExists(FileName) then Exit;

  with TFileStream.Create(FileName, fmOpenRead) do
    try
      FFileSize := Size;
      if FFileSize < INDEXBYTES then Exit;
      ReadBuffer(FIndex, INDEXBYTES);

      if (FIndex[0] <> INDEXBYTES) or (FIndex[INDEXSIZE-1] <> FFileSize)
        then Exit;
      SetLength(DataNew, Size - Position);
      ReadBuffer(DataNew[1], Length(DataNew));
    finally
      Free;
    end;
    Data:= string(DataNew); //Modify By BG4FQD for unicode


  L := TList.Create;
  try
    //list pointers to calls
    L.Capacity := 20000;
      P := @Data[1];
    Pe := P + Length(Data);
    while P < Pe do
      begin
      L.Add(TObject(P));
      P := P + StrLen(P) + 1;
      end;
    //delete dupes
    L.Sort(CompareCalls);
    for i:=L.Count-1 downto 1 do
      if StrComp(PChar(L[i]), PChar(L[i-1])) = 0
        then L[i] := nil;
    //put calls to Lst
    Calls.Capacity := L.Count;
    for i:=0 to L.Count-1 do
      if L[i] <> nil then
        Calls.Add(PChar(L[i]));
  finally
    L.Free;
  end;
end;


function TCallList.IsEmpty : Boolean;
begin
  Result := Calls.Count = 0;
end;


procedure TCallList.Clear();
begin
  Calls.Clear;
end;


// returns a single callsign
function TCallList.PickCall : string;
var
  Idx: integer;
begin
  if Calls.Count = 0 then begin
    Result := 'P29SX';
    Exit;
  end;

  Idx := Random(Calls.Count);
  Result := Calls[Idx];

  if Ini.RunMode = rmHst then
    Calls.Delete(Idx);
end;


constructor TCallList.Create;
begin
  Calls := TStringList.Create;
end;

destructor TCallList.Destroy;
begin
  Calls.Clear;
  Calls.Free;
end;


end.

