unit ufrmOrderEdit;

interface

uses
SqlTimSt, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  RzButton, Vcl.ExtCtrls;

type
  Tfrmorderedit = class(TForm)
    dborderno: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    dsorder: TDataSource;
    fdorder: TFDQuery;
    fdcustomer: TFDQuery;
    Panel2: TPanel;
    btnsave: TRzButton;
    btncancel: TRzButton;
    dsCustomer: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    fdorderid: TLargeintField;
    fdorderorderno: TStringField;
    fdorderorders_customer_id: TLargeintField;
    fdorderstatus: TStringField;
    fdordercreated_at: TSQLTimeStampField;
    fdorderupdated_at: TSQLTimeStampField;
    fdorderpriority: TStringField;
    fdorderurl: TStringField;
    fdorderremark: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorderedit: Tfrmorderedit;

implementation

{$R *.dfm}

uses uDm, uFrmOrder, uFrmArtwork;


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

procedure Tfrmorderedit.btnsaveClick(Sender: TObject);
begin
if (dsorder.State = dsEdit) and (IsFormOpen(Tfrmorder)) then
begin
  fdorderupdated_at.Value  := DateTimeToSQLTimeStamp(Now);
  fdorder.post;
//  frmOrder.fdArtworkDetailTable.Refresh;
end;

begin
if (dsorder.State = dsEdit) and (IsFormOpen(Tfrmartwork)) then
begin
  fdorderupdated_at.Value  := DateTimeToSQLTimeStamp(Now);
  fdorder.Post;
//  frmartwork.fdartwork.Refresh;
end;


if (dsorder.State = dsinsert) and (IsFormOpen(Tfrmorder)) then
begin
  fdordercreated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdorderupdated_at.Value  := DateTimeToSQLTimeStamp(Now);
  fdorder.post;
  frmOrder.fdArtworkDetailTable.Refresh;
end;

if (dsorder.State = dsinsert) and (IsFormOpen(Tfrmartwork))  then
begin
fdordercreated_at.Value := DateTimeToSQLTimeStamp(Now);
fdorderupdated_at.Value := DateTimeToSQLTimeStamp(Now);
fdorder.Post;
frmartwork.fdartwork.Refresh;
end;

//frmOrder.fdArtworkDetailTable.Close;
//frmOrder.fdArtworkDetailTable.Open;
//frmOrder.fdArtworkDetailTable.Refresh;

close;
end;
end;
procedure Tfrmorderedit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmorderedit.FormCreate(Sender: TObject);
begin
//fdorder.Connection := dm.FDConnection1;
//fdorder.Active := true;
//fdcustomer.Connection := dm.FDConnection1;
//fdcustomer.Active := true;

end;

procedure Tfrmorderedit.FormShow(Sender: TObject);
begin
  caption := 'Order Edit';
end;

end.
