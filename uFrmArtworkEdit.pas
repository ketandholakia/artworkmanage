unit uFrmArtworkEdit;

interface

uses
    SqlTimSt, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzLabel, RzDBLbl, Data.FmtBcd, Vcl.DBCtrls, RzButton;



type
  Tfrmeditartwork = class(TForm)
    fdartwork: TFDQuery;
    fdartworkid: TLargeintField;
    fdartworkdescription: TStringField;
    fdartworkartworks_order_id: TLargeintField;
    fdartworkrequiredqty: TIntegerField;
    fdartworkjobrun: TIntegerField;
    fdartworklabelrepeat: TIntegerField;
    fdartworkprintedqty: TIntegerField;
    fdartworkartworks_media_id: TLargeintField;
    fdartworkcreated_at: TSQLTimeStampField;
    fdartworkupdated_at: TSQLTimeStampField;
    fdartworkremark: TStringField;
    fdartworkawstatus: TStringField;
    fdartworkprepressstage: TBooleanField;
    fdartworkartworks_plate_id: TLargeintField;
    fdartworktype: TStringField;
    fdartworkpriority: TStringField;
    fdartworkurl: TStringField;
    fdartworkBalanceQty: TIntegerField;
    fdartworkartworkOrderNo: TStringField;
    DSartwork: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    dbdescription: TRzDBEdit;
    dbrequiredqty: TRzDBEdit;
    dbprintedqty: TRzDBEdit;
    dblabelbalance: TRzDBLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    DBLookupComboBoxOrderNo: TDBLookupComboBox;
    Label9: TLabel;
    btnsave: TRzButton;
    btncancel: TRzButton;
    dbeditremark: TRzDBEdit;
    Label10: TLabel;
    DSorder: TDataSource;
    fdorder: TFDQuery;
    fdorderid: TLargeintField;
    fdorderorderno: TStringField;
    dbcheckboxprepress: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure fdartworkCalcFields(DataSet: TDataSet);
    procedure Panel2DblClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure fdartworkAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);




  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  frmeditartwork: Tfrmeditartwork;

implementation

{$R *.dfm}

uses uDm, uFrmArtwork, uFrmMain, uFrmOrder;



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

procedure Tfrmeditartwork.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmeditartwork.FormShow(Sender: TObject);
begin
  caption := 'Artwork Edit';
end;
//dbeditremark.SetFocus;
//  if fdartwork.FieldByName('BalanceQty').AsInteger < 0   then
//    dblabelbalance.Font.Color := clRed
//  else if fdartwork.FieldByName('BalanceQty').AsInteger > 0 then
//    dblabelbalance.Font.Color := clGreen
//  else
//    dblabelbalance.Font.Color := clBlack; // Default color
//    end;




procedure Tfrmeditartwork.Panel1DblClick(Sender: TObject);
begin
if IsFormOpen(Tfrmorder) then
  ShowMessage('Order form is already open.')
else
  ShowMessage('Order form is not open.');
end;





procedure Tfrmeditartwork.Panel2DblClick(Sender: TObject);
begin
if IsFormOpen(Tfrmartwork) then
  ShowMessage('Artwork form is already open.')
else
  ShowMessage('Artwork form is not open.');
end;




procedure Tfrmeditartwork.btncancelClick(Sender: TObject);
begin
if dsartwork.State = dsEdit then
begin
  fdartwork.cancel;
  fdartwork.Refresh;


end;
close;


end;

procedure Tfrmeditartwork.btnsaveClick(Sender: TObject);

begin
if dsartwork.State = dsEdit then
begin
  fdartworkupdated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdartwork.post;
end;


if dsartwork.State = dsinsert then
begin
  fdartworkcreated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdartwork.post;
end;
frmOrder.fdArtworkDetailTable.Close;
frmOrder.fdArtworkDetailTable.Open;
//frmOrder.fdArtworkDetailTable.Refresh;

close;
end;

procedure Tfrmeditartwork.fdartworkAfterPost(DataSet: TDataSet);
begin
dm.fdartworkcountprepress.RefreshRecord;
dm.fdartworkcounthighpriority.refreshrecord;
frmmain.RzStatusPanependingartworks.Caption:='Pending Artworks : ' + bcdToStr(Dm.fdartworkcountprepressno.value);
frmmain.RzStatusPanecompltedartwork.caption:='Completed Artworks : ' + bcdToStr(Dm.fdartworkcountprepressyes.value);
frmmain.RzStatusPanehighpriority.Caption:= 'High Priority Artworks : ' + bcdToStr(Dm.fdartworkcounthighpriorityHIGHPRIRITY.value);
frmmain.RzStatusPanehighpriority.Caption:= 'High Priority Artworks : ' + bcdToStr(Dm.fdartworkcounthighpriorityHIGHPRIRITY.value);

end;

procedure Tfrmeditartwork.fdartworkCalcFields(DataSet: TDataSet);
begin
fdartworkBalanceQty.Value := fdartworkprintedqty.Value - fdartworkrequiredqty.Value;
end;

end.
