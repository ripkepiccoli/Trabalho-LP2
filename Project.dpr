program Project;

uses
  Vcl.Forms,
  MidasLib,
  UnPrincipal in 'UnPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
