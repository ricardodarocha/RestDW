program pEasyJSON;

uses
  Vcl.Forms,
  uRDW_EasyJSON in 'uRDW_EasyJSON.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
