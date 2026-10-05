program Project1;

uses
  Vcl.Forms,
  aprendiendo in 'aprendiendo.pas' {Form1},
  Player in 'Player.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
