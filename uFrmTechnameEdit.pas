unit uFrmTechnameEdit;

interface

uses
  SqlTimSt, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  RzButton, Vcl.Mask, RzEdit, RzDBEdit, RzLabel, RzDBLbl, Vcl.ExtCtrls;

type
  TfrmTechNameEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnsave: TRzButton;
    btncancel: TRzButton;
    Dstechname: TDataSource;
    fdtechname: TFDQuery;
    fdtechnameid: TLargeintField;
    fdtechnametechname_description: TStringField;
    fdtechnametechnames_brandname_id: TLargeintField;
    fdtechnamecreated_at: TSQLTimeStampField;
    fdtechnameupdated_at: TSQLTimeStampField;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTechNameEdit: TfrmTechNameEdit;

implementation

{$R *.dfm}

uses ufrmtechnname;


function IsFormOpen(FormClass: TFormClass): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[i] is FormClass then
    begin
      Result := True;
      Break;
    end;
  end;
end;

procedure TfrmTechNameEdit.btncancelClick(Sender: TObject);
begin
if Dstechname.State = dsEdit then
begin
  fdtechname.cancel;

end;
close;


end;

procedure TfrmTechNameEdit.btnsaveClick(Sender: TObject);

begin
if (fdtechname.State = dsEdit) and (IsFormOpen(tfrmtechname)) then
begin
fdtechnameupdated_at.Value  := DateTimeToSQLTimeStamp(Now);
  fdtechname.post;
  frmtechname.fdtechname.Refresh;

end;

close;


end;



procedure TfrmTechNameEdit.FormShow(Sender: TObject);
begin
Caption := 'Edit Technical Name';
end;

end.
