program awmanage;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EDebugExports,
  EDebugJCL,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uDm in 'uDm.pas' {Dm: TDataModule},
  uFrmCustomer in 'uFrmCustomer.pas' {FrmCustomer},
  HumanDateDiff.Lang.BR in 'HumanDateDiff.Lang.BR.pas',
  HumanDateDiff.Lang.EN in 'HumanDateDiff.Lang.EN.pas',
  HumanDateDiff.Lang in 'HumanDateDiff.Lang.pas',
  HumanDateDiff in 'HumanDateDiff.pas',
  uFrmOrder in 'uFrmOrder.pas' {frmOrder},
  uFrmArtwork in 'uFrmArtwork.pas' {frmArtwork},
  uartworkfilter in 'uartworkfilter.pas' {Form1},
  uFrmArtworkEdit in 'uFrmArtworkEdit.pas' {frmeditartwork},
  ufrmOrderEdit in 'ufrmOrderEdit.pas' {frmorderedit},
  ufrmtechnname in 'ufrmtechnname.pas' {frmtechname},
  ufrmBrandname in 'ufrmBrandname.pas' {frmbrandname},
  ufrmartworkimport in 'ufrmartworkimport.pas' {frmartworkimport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmartworkimport, frmartworkimport);
  Application.Run;
end.








