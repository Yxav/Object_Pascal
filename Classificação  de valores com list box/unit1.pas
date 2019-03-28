unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnop: TButton;
    btlimpa: TButton;
    Button3: TButton;
    ed1: TEdit;
    ed2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    blmaior: TListBox;
    blmenor: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure btlimpaClick(Sender: TObject);
    procedure btnopClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  v1, v2 : Real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.btlimpaClick(Sender: TObject);
begin
  blmaior.Clear;
  blmenor.Clear;
  ed1.clear;
  ed2.clear;
  FocusControl(ed1);

end;

procedure TForm1.btnopClick(Sender: TObject);
begin
  v1:=StrToFloat(ed1.Text);
  v2:=StrToFloat(ed2.Text);

  if v1>v2 then
  begin
    blmaior.Items.Add(ed1.Text);
    blmenor.Items.Add(ed2.text);
  end;

  if v1<v2 then
  begin
    blmaior.Items.Add(ed2.Text);
    blmenor.Items.Add(ed1.text);
  end;


end;

end.

