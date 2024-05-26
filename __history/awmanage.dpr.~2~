program awmanage;

uses
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
  uFrmArtworkEdit in 'uFrmArtworkEdit.pas' {frmeditartwork};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmCustomer, FrmCustomer);
  Application.CreateForm(TfrmOrder, frmOrder);
  Application.CreateForm(TfrmArtwork, frmArtwork);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmeditartwork, frmeditartwork);
  Application.Run;
end.
