program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {user},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tuser, user);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
