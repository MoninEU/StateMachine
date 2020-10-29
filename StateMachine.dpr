program StateMachine;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Monin_StateMachine in 'Monin_StateMachine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
