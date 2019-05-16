unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnfor: TButton;
    btndownf: TButton;
    btwhile: TButton;
    btndec: TButton;
    meTexto: TMemo;
    procedure btndecClick(Sender: TObject);
    procedure btndownfClick(Sender: TObject);
    procedure btnforClick(Sender: TObject);
    procedure btwhileClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnforClick(Sender: TObject);
var
  i : Integer;
begin
  meTexto.Clear;
  for i:=1 to 10 do
  begin
    meTexto.Lines.Add(IntToStr(i)+':');
  end;

end;

procedure TForm1.btwhileClick(Sender: TObject);
var
  i :Integer = 1;
begin
  meTexto.clear;
  while i<=10 do
  begin
    meTexto.Lines.Add(IntToStr(i)+':');
    Inc(i);

        end;

end;

procedure TForm1.btndownfClick(Sender: TObject);
  var
  i : Integer;
begin
  meTexto.Clear;
  for i:=10 downto 1 do
  begin
    meTexto.Lines.Add(IntToStr(i)+':');
  end;
end;

procedure TForm1.btndecClick(Sender: TObject);
  var
    i :Integer = 10;
  begin
    meTexto.clear;
    while i>=0 do
    begin
      meTexto.Lines.Add(IntToStr(i)+':');
      Dec(i);

          end;

end;

end.

