program Calculadora;

uses
  Vcl.Forms,
  UnitCalculadora in 'UnitCalculadora.pas' {FrmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
