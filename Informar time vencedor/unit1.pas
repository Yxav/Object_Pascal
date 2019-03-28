unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnproc: TButton;
    bctimea: TComboBox;
    bctimeb: TComboBox;
    btnsai: TButton;
    eda: TEdit;
    edb: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbves: TLabel;
    lbempate: TLabel;
    lbvence: TLabel;
    procedure btnprocClick(Sender: TObject);
    procedure btnsaiClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  va, vb : Real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.btnsaiClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.btnprocClick(Sender: TObject);
begin
  va:=StrToFloat(eda.text);
  vb:=StrToFloat(edb.text);


  if va > vb then
  begin
    lbvence.Caption:=bctimea.Text;
    lbvence.Show;
    lbves.Show;
    lbempate.hide;
  end;

    if va < vb then
  begin
    lbvence.Caption:=bctimeb.Text;
    lbvence.show;
    lbves.Show;
    lbempate.hide;
  end;

      if va = vb then
  begin
    lbvence.Hide;
    lbempate.Show;
    lbves.Hide;


  end;
end;

end.

