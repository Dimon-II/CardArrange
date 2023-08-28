program CardArrange;

uses
  Forms,
  u_MainForm in 'u_MainForm.pas' {MainForm},
  u_ProgressForm in 'u_ProgressForm.pas' {ProgressForm},
  u_SplitForm in 'u_SplitForm.pas' {SplitForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProgressForm, ProgressForm);
  Application.CreateForm(TSplitForm, SplitForm);
  Application.Run;
end.
