unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    btntemp: TButton;
    btnexi: TButton;
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
  lbtemp.Caption:=FloatToStr(temp);
  lbumi.Caption:=FloatToStr(umi)+ '%';



end;

end.

