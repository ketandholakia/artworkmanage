unit uFrmOrder;

interface

uses
  SqlTimSt, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, PropSaveMain, PropSaveGrids, frxClass, frxDesgn,
  frxDBSet, Vcl.Buttons, RzPanel, RzSplit, Vcl.Menus, rDBGridSorter_FireDac,
  rXLSExport, SLKExport, RzButton, frxExportBaseDialog, frxExportImage;

type
  TfrmOrder = class(TForm)
    Panel2: TPanel;
    DSOrder: TDataSource;
    fdOrder: TFDQuery;
    Qproses: TFDQuery;
    fdOrderid: TLargeintField;
    fdOrderorderno: TStringField;
    fdOrderorders_customer_id: TLargeintField;
    fdOrderstatus: TStringField;
    fdOrdercreated_at: TSQLTimeStampField;
    fdOrderupdated_at: TSQLTimeStampField;
    fdOrderpriority: TStringField;
    fdOrderurl: TStringField;
    fdCustomer: TFDQuery;
    DSCustomer: TDataSource;
    fdCustomerid: TLargeintField;
    fdCustomername: TStringField;
    rDBGridsPropSave1: TrDBGridsPropSave;
    Label11: TLabel;
    EditSearchorderdesc: TEdit;
    btnsearchorder: TButton;
    fdArtworkDetailTable: TFDQuery;
    fdArtworkDetailTableid: TLargeintField;
    fdArtworkDetailTabledescription: TStringField;
    fdArtworkDetailTableartworks_order_id: TLargeintField;
    fdArtworkDetailTablerequiredqty: TIntegerField;
    fdArtworkDetailTablejobrun: TIntegerField;
    fdArtworkDetailTablelabelrepeat: TIntegerField;
    fdArtworkDetailTableprintedqty: TIntegerField;
    fdArtworkDetailTableartworks_media_id: TLargeintField;
    fdArtworkDetailTablecreated_at: TSQLTimeStampField;
    fdArtworkDetailTableupdated_at: TSQLTimeStampField;
    fdArtworkDetailTableremark: TStringField;
    fdArtworkDetailTableawstatus: TStringField;
    fdArtworkDetailTableprepressstage: TBooleanField;
    fdArtworkDetailTableartworks_plate_id: TLargeintField;
    fdArtworkDetailTabletype: TStringField;
    fdArtworkDetailTablepriority: TStringField;
    fdArtworkDetailTableurl: TStringField;
    DSArtworkDetail: TDataSource;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDBDatasetordermaster: TfrxDBDataset;
    frxDBDatasetartowkrdetails: TfrxDBDataset;
    fdOrdercustomername: TStringField;
    SpeedButton1: TSpeedButton;
    RzSizePanel1: TRzSizePanel;
    rDBgridArtwork: TrDBGrid;
    RzSizePanel2: TRzSizePanel;
    rdbgridOrder: TrDBGrid;
    PopupMenu1: TPopupMenu;
    PopupMenuAddartwork: TMenuItem;
    popupmenueditartwork: TMenuItem;
    Refresh1: TMenuItem;
    Panel3: TPanel;
    Label7: TLabel;
    edtartworksearch: TEdit;
    btnsearchartworkdetaildesc: TButton;
    chkprepressdone: TCheckBox;
    rDBGridSorter_FireDac1: TrDBGridSorter_FireDac;
    PropSaveMain1: TPropSaveMain;
    fdArtworkDetailTableBalanceQty: TIntegerField;
    btnupdate: TButton;
    ExporttoExcel1: TMenuItem;
    SLKExp: TSLKExport;
    XLSExp: TrXLSExport;
    RzToolbar1: TRzToolbar;
    RzToolButtonaddartwork: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzToolButtonprintOrder: TRzToolButton;
    RzSpacer3: TRzSpacer;
    frxJPEGExport1: TfrxJPEGExport;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure rdbgridOrderDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnsearchorderClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure rDBgridArtworkDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PopupMenuAddartworkClick(Sender: TObject);
    procedure popupmenueditartworkClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure btnsearchartworkdetaildescClick(Sender: TObject);
    procedure chkprepressdoneClick(Sender: TObject);
    procedure EditSearchorderdescKeyPress(Sender: TObject; var Key: Char);
    procedure edtartworksearchKeyPress(Sender: TObject; var Key: Char);
    procedure fdArtworkDetailTableCalcFields(DataSet: TDataSet);
    procedure btnupdateClick(Sender: TObject);
    procedure fdArtworkDetailTableBeforeInsert(DataSet: TDataSet);
    procedure fdArtworkDetailTableBeforePost(DataSet: TDataSet);
    procedure rDBgridArtworkDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure RzToolButtonprintOrderClick(Sender: TObject);
    procedure RzToolButtonaddartworkClick(Sender: TObject);
    procedure frxJPEGExport1BeforeExport(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrder: TfrmOrder;

implementation

{$R *.dfm}

uses uDm, uFrmArtwork, uFrmMain, uFrmArtworkEdit, ufrmOrderEdit;

procedure TfrmOrder.btnsearchartworkdetaildescClick(Sender: TObject);
begin
fdArtworkDetailTable.SQL.Text := 'select * from artworks where description like :searchartwork_text '+ ' and artworks_order_id = ' + IntToStr(fdOrderid.Value) + ' order by description asc' ;
fdArtworkDetailTable.ParamByName('searchartwork_text').AsString := '%' + edtartworksearch.Text + '%';
fdArtworkDetailTable.Open;


end;

procedure TfrmOrder.Button1Click(Sender: TObject);
begin


//fdorder.Insert;
//fdOrdercreated_at.Value := DateTimeToSQLTimeStamp(Now);
//fdOrderstatus.Value := 'neworder';
//fdOrderpriority.Value := 'medium';

end;

procedure TfrmOrder.Button2Click(Sender: TObject);
begin
if DSorder.State = dsEdit then
begin
  fdOrderupdated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdorder.post;
  fdorder.Refresh;

end;

if DSorder.State = dsInsert then
begin
  fdOrdercreated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdorder.post;
  fdorder.Refresh;

end;


end;

procedure TfrmOrder.Button3Click(Sender: TObject);
begin
  if fdorder.State = dsBrowse then
  begin
    if MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      fdorder.Delete;
  end;

end;

procedure TfrmOrder.btnsearchorderClick(Sender: TObject);
begin

fdorder.SQL.Text := 'select * from orders  where orderno like :search_text order by created_at desc';
  fdorder.ParamByName('search_text').AsString := '%' + EditSearchorderdesc.Text + '%';
  fdorder.Open;

end;

procedure TfrmOrder.btnupdateClick(Sender: TObject);
begin
fdArtworkDetailTable.ApplyUpdates;
fdArtworkDetailTable.CommitUpdates;
end;

procedure TfrmOrder.Button5Click(Sender: TObject);
var
 xAppPath: string;
begin

 xAppPath := (ExtractFilePath(ParamStr(0)) + 'orderdetails.fr3');
frxReport1.LoadFromFile(xAppPath);
frxReport1.ShowReport();

end;

procedure TfrmOrder.chkprepressdoneClick(Sender: TObject);
begin
if chkprepressdone.Checked = true then
begin
fdArtworkDetailTable.SQL.Text := 'select * from artworks where prepressstage = 1 and artworks_order_id = ' + IntToStr(fdOrderid.Value) ;
fdArtworkDetailTable.Open;
end;

if chkprepressdone.Checked = false then
begin
fdArtworkDetailTable.SQL.Text := 'select * from artworks where prepressstage = 0 and artworks_order_id = ' + IntToStr(fdOrderid.Value) ;
fdArtworkDetailTable.Open;

end;


end;

procedure TfrmOrder.popupmenueditartworkClick(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmeditartwork');
  if not Assigned(aComponent) then
    frmeditartwork := Tfrmeditartwork.Create(Application);
  if frmeditartwork.WindowState = wsMinimized then
    frmeditartwork.WindowState := wsNormal;
  if frmeditartwork.visible = true then
   frmeditartwork.FormShow(sender);

frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Connection:=dm.FDConnection1;
frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Connection:=dm.FDConnection1;
frmeditartwork.fdartwork.Connection := dm.FDConnection1;
frmeditartwork.fdartwork.SQL.Text := 'select * from artworks where id = ' + IntToStr(fdArtworkDetailTableid.Value);
frmeditartwork.fdartwork.Open;
frmeditartwork.show;
screen.cursor := crDefault;
end;

procedure TfrmOrder.EditSearchorderdescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // Execute your custom logic here
    btnsearchorder.Click;

  end;

end;

procedure TfrmOrder.edtartworksearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // Execute your custom logic here
    btnsearchartworkdetaildesc.Click;

  end;

end;

procedure TfrmOrder.ExporttoExcel1Click(Sender: TObject);
begin

    if rDBgridArtwork.SelectedRows.Count>0 then
      XLSExp.Options:=XLSExp.Options+[xleOnlySelectedRows]
    else
      XLSExp.Options:=XLSExp.Options-[xleOnlySelectedRows];
    XLSExp.ExportDBTable(rDBgridArtwork)
end;


procedure TfrmOrder.fdArtworkDetailTableBeforeInsert(DataSet: TDataSet);
begin
fdArtworkDetailTablecreated_at.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TfrmOrder.fdArtworkDetailTableBeforePost(DataSet: TDataSet);
begin
fdArtworkDetailTableupdated_at.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TfrmOrder.fdArtworkDetailTableCalcFields(DataSet: TDataSet);
begin
fdArtworkDetailTableBalanceQty.Value := fdArtworkDetailTableprintedqty.Value -  fdArtworkDetailTablerequiredqty.Value;
end;


procedure TfrmOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfrmOrder.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F3 then
    begin
        EditSearchorderdesc.SetFocus; // Replace Edit1 with the actual TEdit control you want to focus on
        Key := 0; // Prevent the default F3 behavior (e.g., search)
    end;
end;

procedure TfrmOrder.FormShow(Sender: TObject);
begin
fdorder.Active := true;
fdcustomer.Active := true;
fdArtworkDetailTable.Active := true;


end;

procedure TfrmOrder.frxJPEGExport1BeforeExport(Sender: TObject);
begin
frxJPEGExport1.FileName := fdOrderorderno.Value + '.jpg';
end;



procedure TfrmOrder.PopupMenuAddartworkClick(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmeditartwork');
  if not Assigned(aComponent) then
frmeditartwork := Tfrmeditartwork.Create(Application);

  if frmeditartwork.WindowState = wsMinimized then
    frmeditartwork.WindowState := wsNormal;
  if frmeditartwork.visible = true then
    frmeditartwork.FormShow(sender);

frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Connection:=dm.FDConnection1;
frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Active :=true;
frmeditartwork.fdartwork.Active :=true;
//frmeditartwork.fdartwork.SQL.Text := 'select * from artworks where id = :artwork_id';
//frmeditartwork.fdartwork.ParamByName('artwork_id').AsString := IntToStr(fdArtworkDetailTableid.Value);
frmeditartwork.fdartwork.Insert;
frmeditartwork.fdartworkartworks_order_id.Value := fdOrderid.Value;
frmeditartwork.fdartworkrequiredqty.Value := 0;
frmeditartwork.fdartworkawstatus.Value := 'pending';
frmeditartwork.fdartworkpriority.Value := 'medium';
frmeditartwork.fdartworkprepressstage.Value := false;
frmeditartwork.show;



frmeditartwork.dbdescription.setfocus;
  screen.cursor := crDefault;
end;




procedure TfrmOrder.rDBgridArtworkDblClick(Sender: TObject);
begin
popupmenueditartwork.Click;
end;

procedure TfrmOrder.rDBgridArtworkDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if fdArtworkDetailTable.FieldByName('prepressstage').AsBoolean = true then
 begin
   rDBgridArtwork.Canvas.Font.Color := clBlack;
  rDBgridArtwork.canvas.Brush.Color := clWebPaleGreen;
 end;

if fdArtworkDetailTable.FieldByName('prepressstage').AsBoolean = false then
 begin
   rDBgridArtwork.Canvas.Font.Color := clBlack;
   rDBgridArtwork.canvas.Brush.Color := clWebSandyBrown;
 end;

end;

procedure TfrmOrder.rdbgridOrderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if fdorder.FieldByName('status').AsString = 'preprocessdone' then
 begin
  rdbgridOrder.Canvas.Font.Color := clwhite;
  rdbgridOrder.canvas.Brush.Color := clWebGreen;
 end;



end;

procedure TfrmOrder.Refresh1Click(Sender: TObject);
begin
fdArtworkDetailTable.Refresh;
end;

procedure TfrmOrder.RzToolButton2Click(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmorderedit');
  if not Assigned(aComponent) then
    frmorderedit := Tfrmorderedit.Create(Application);
  if frmorderedit.WindowState = wsMinimized then
    frmorderedit.WindowState := wsNormal;
  if frmorderedit.visible = true then
   frmorderedit.FormShow(sender);

frmorderedit.fdorder.Connection:=dm.FDConnection1;
frmorderedit.fdcustomer.Connection:=dm.FDConnection1;
frmorderedit.fdcustomer.Active := true;
frmorderedit.fdcustomer.Active := true;
frmorderedit.fdorder.SQL.Text := 'select * from orders where id = ' + IntToStr(fdOrderid.Value);
frmorderedit.fdorder.Open;
frmorderedit.show;
screen.cursor := crDefault;
end;


procedure TfrmOrder.RzToolButton3Click(Sender: TObject);
begin
        if fdOrder.State = dsBrowse then
  begin
    if MessageDlg('Are you sure you want to delete this Order record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      fdOrder.Delete;
  end;
end;

procedure TfrmOrder.RzToolButtonaddartworkClick(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmeditartwork');
  if not Assigned(aComponent) then
frmorderedit := Tfrmorderedit.Create(Application);

  if frmorderedit.WindowState = wsMinimized then
    frmorderedit.WindowState := wsNormal;
  if frmorderedit.visible = true then
    frmorderedit.FormShow(sender);


frmorderedit.fdcustomer.Connection:=dm.FDConnection1;
frmorderedit.fdorder.Connection:=dm.FDConnection1;
frmorderedit.fdcustomer.Active :=true;
frmorderedit.fdorder.Active :=true;
//frmeditartwork.fdartwork.SQL.Text := 'select * from artworks where id = :artwork_id';
//frmeditartwork.fdartwork.ParamByName('artwork_id').AsString := IntToStr(fdArtworkDetailTableid.Value);
frmorderedit.fdorder.Insert;
frmorderedit.fdorderstatus.Value :=  'approved';
frmOrderedit.fdorderpriority.Value := 'medium';


frmorderedit.show;



frmorderedit.dborderno.setfocus;
  screen.cursor := crDefault;
end;


procedure TfrmOrder.RzToolButtonprintOrderClick(Sender: TObject);
var
 xAppPath: string;
begin

 xAppPath := (ExtractFilePath(ParamStr(0)) + 'orderdetails.fr3');
frxReport1.LoadFromFile(xAppPath);
frxReport1.ShowReport();

end;



procedure TfrmOrder.SpeedButton1Click(Sender: TObject);
var
 xAppPath: string;
begin

 xAppPath := (ExtractFilePath(ParamStr(0)) + 'orderdetails.fr3');
frxReport1.LoadFromFile(xAppPath);
frxReport1.DesignReport();


end;

end.
