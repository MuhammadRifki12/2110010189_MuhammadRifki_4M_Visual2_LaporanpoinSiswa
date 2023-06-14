program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {user};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tuser, user);
  Application.Run;
end.
