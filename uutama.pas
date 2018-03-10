unit uutama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shellapi, filectrl, xpman, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Deklarasi hanya untuk penggunaan dalam unit ini saja }
  public
    { Deklarasi untuk penggunaan ke semua unit yang terintegerasi }
    sFinalString: string;
  end;

const
  aoc: array[0..21] of Char = ('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B');
  aov: array[0..5] of Char = ('a', 'e', 'i', 'o', 'u', 'A');

var
  Form1: TForm1;

implementation

{$R *.dfm} //template tweaked by : Araachmadi Putra Pambudi

function inarray(const c: char; const aoch: array of char): boolean;
var
  i: integer;
  b: boolean;
begin
  i := 0;
  repeat
    b := c = aoch[i];
    Inc(i);
  until b or (i = high(aoch));
  result := b;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  h, i, j: integer;
  r, s, t: string;
begin
  for h := 0 to Memo1.Lines.Count - 1 do
  begin
    sFinalString := '';
    r := AnsiLowerCase(memo1.Lines.Strings[h]);
    repeat
      r := stringreplace(r, '  ', ' ', [rfReplaceAll]);
    until Pos('  ', r) = 0;
    for i := 1 to length(r) do
    begin
      if inarray(r[i], aov) then
      begin
        s := s + 'v';
        t := t + r[i];
      end
      else if inarray(r[i], aoc) then
      begin
        s := s + 'c';
        t := t + r[i];
      end
      else if r[i] = ' ' then
      begin
        s := s + r[i];
        t := t + r[i];
      end;
      for j := 0 to memo2.Lines.Count - 1 do
        if s = memo2.Lines.Strings[j] then
        begin
          sFinalString := sFinalString + t + edit1.Text[1];
          s := '';
          t := '';
        end;
    end;
    Memo1.Lines.BeginUpdate;
    memo1.Lines.Strings[h] := sFinalString;
    memo1.Lines.EndUpdate;
  end;
end;

end.

