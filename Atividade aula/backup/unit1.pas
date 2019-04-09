unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    btntemp: TButton;
    btnexi: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbumi: TLabel;
    lbcelsi: TLabel;
    Label5: TLabel;
    lbtemp: TLabel;
    lbdayofweek: TLabel;
    lbdia: TLabel;
    procedure btnexiClick(Sender: TObject);
    procedure btntempClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnexiClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.btntempClick(Sender: TObject);
var
  temp, umi: real;
begin

  temp:=RandomRange(-10,40)+ random;
  umi:=RandomRange(60,100)+ random;
  lbtemp.Caption:=FormatFloat('0.0',temp);
  lbumi.Caption:=FormatFloat('0.0',umi)+ '%';

  if (temp<=0.0) then
  begin
    Image1.Picture.LoadFromFile('./Figuras/neve.png');
  end;

  if (temp >= 20.0) and (temp <=40.0) then
     begin
       Image1.Picture.LoadFromFile('./Figuras/sol_forte.png');
     end;

  if (temp > 0.0) and (temp < 20.0) and (umi >= 90.0) and (umi <=100.0) then
     begin
       Image1.Picture.LoadFromFile('./Figuras/chuva.png');
     end;

  if (temp > 0.0) and (temp < 20.0) and (umi >= 60.0) and (umi <90.0) then
     begin
       Image1.Picture.LoadFromFile('./Figuras/sol_nuvem.png');
     end;

  lbdayofweek.Caption:=LongDayNames[DayOfWeek(date)];
  lbdia.Caption:=DateToStr(Date);



end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin

end;

end.

