unit uFrmArtwork;

interface

uses

System.UITypes, SqlTimSt, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, rDBGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, PropSaveMain, PropSaveGrids, Vcl.Menus,
  rDBGridSorter_FireDac, System.Actions, Vcl.ActnList,
  Data.FmtBcd, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, RzButton, RzPanel, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text,
  FireDAC.Comp.BatchMove.DataSet;

type
  TfrmArtwork = class(TForm)
    DSartwork: TDataSource;
    fdartwork: TFDQuery;
    Qproses: TFDQuery;
    rDBgridArtwork: TrDBGrid;
    fdorder: TFDQuery;
    DSorder: TDataSource;
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
    fdorderid: TLargeintField;
    fdorderorderno: TStringField;
    fdartworkBalanceQty: TIntegerField;
    fdartworkartworkOrderNo: TStringField;
    rDBGridsPropSave1: TrDBGridsPropSave;
    PopupMenuartworkgrid: TPopupMenu;
    OpenOrder1: TMenuItem;
    rDBGridSorter_FireDac1: TrDBGridSorter_FireDac;
    ActionManager1: TActionManager;
    actRefreshTable: TAction;
    Action2: TAction;
    RefreshTable1: TMenuItem;
    Panel3: TPanel;
    Label11: TLabel;
    EditSearchdescription: TEdit;
    btnsearchartwork: TButton;
    Editsearchremark: TEdit;
    Label12: TLabel;
    chksearchprepress: TCheckBox;
    PropSaveMain1: TPropSaveMain;
    Button2: TButton;
    EditArtwork1: TMenuItem;
    RzToolbar1: TRzToolbar;
    RzToolButtonaddartwork: TRzToolButton;
    btnsearchbyqty: TButton;
    edtfrom: TEdit;
    edtto: TEdit;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    OpenDialog1: TOpenDialog;
    RzSpacer3: TRzSpacer;
    BtnDown: TRzToolButton;
    FDBatchMove: TFDBatchMove;
    procedure btnsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure rDBgridArtworkDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnsearchartworkClick(Sender: TObject);
    procedure OpenOrder1Click(Sender: TObject);
    procedure fdartworkCalcFields(DataSet: TDataSet);
    procedure ActionManager1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure RefreshTable1Click(Sender: TObject);
    procedure fdartworkAfterInsert(DataSet: TDataSet);
    procedure EditSearchdescriptionKeyPress(Sender: TObject; var Key: Char);
    procedure fdartworkAfterPost(DataSet: TDataSet);
    procedure btnsavecloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditsearchremarkKeyPress(Sender: TObject; var Key: Char);
    procedure EditArtwork1Click(Sender: TObject);
    procedure rDBgridArtworkDblClick(Sender: TObject);
    procedure fdartworkBeforeInsert(DataSet: TDataSet);
    procedure btnsearchbyqtyClick(Sender: TObject);
    procedure RzToolButtonaddartworkClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure BtnDownClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure CloseDataSets;
    procedure OpenDataSets;
    procedure SetUpReader;
    procedure SetUpWriter;

  public
    { Public declarations }
  end;

var
  frmArtwork: TfrmArtwork;

implementation

{$R *.dfm}

uses uDm, uFrmOrder, uFrmMain, uFrmArtworkEdit;



procedure TfrmArtwork.CloseDataSets;
begin
  fdartwork.Close;
end;
procedure TfrmArtwork.OpenDataSets;
begin
  fdartwork.Close;
  fdartwork.Open;
end;
procedure TfrmArtwork.SetUpReader;
var
  LTextReader: TFDBatchMoveTextReader;
  LDataSetReader: TFDBatchMoveDataSetReader;
 begin
        // Create text reader
        // FDBatchMove will automatically manage the reader instance.
        LTextReader := TFDBatchMoveTextReader.Create(FDBatchMove);
        // Set source text data file name
        // data.txt provided with demo
        LTextReader.FileName := OpenDialog1.FileName;
        // Setup file format
        LTextReader.DataDef.Separator := ';';
        // to estabilish if first row is definition row (it is this case)
        LTextReader.DataDef.WithFieldNames := True;
end;
procedure TfrmArtwork.SetUpWriter;
var
  LDataSetWriter: TFDBatchMoveDataSetWriter;
  LTextWriter: TFDBatchMoveTextWriter;
   begin
        // Create dataset writer and set FDBatchMode as owner. Then
        // FDBatchMove will automatically manage the writer instance.
        LDataSetWriter := TFDBatchMoveDataSetWriter.Create(FDBatchMove);
        // Set destination dataset
        LDataSetWriter.DataSet := fdartwork;
        // because dataset will be show on ui
        LDataSetWriter.Optimise := False;
      end;


procedure TfrmArtwork.ActionManager1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
fdartwork.Refresh;
end;

procedure TfrmArtwork.BtnDownClick(Sender: TObject);
begin
OpenDialog1.Execute;

 CloseDataSets;

  // Create reader
  SetUpReader;
  // Create writer
  SetUpWriter;
  // Analyze source text file structure
  FDBatchMove.GuessFormat;
  FDBatchMove.Execute;
  // show data
  OpenDataSets;
end;

procedure TfrmArtwork.btnsaveClick(Sender: TObject);
begin
if dsartwork.State = dsEdit then
begin
  fdartworkupdated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdartwork.post;
  fdartwork.Refresh;

end;


end;

procedure TfrmArtwork.btnsavecloseClick(Sender: TObject);
begin
if dsartwork.State = dsEdit then
begin
  fdartworkupdated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdartwork.post;
  fdartwork.Refresh;
  close;
end;


if dsartwork.State = dsinsert then
begin
  fdartworkcreated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdartwork.post;
  fdartwork.Refresh;
  close;
end;

frmOrder.fdArtworkDetailTable.Refresh;

end;

procedure TfrmArtwork.Button3Click(Sender: TObject);
begin
        if fdartwork.State = dsBrowse then
  begin
    if MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      fdartwork.Delete;
  end;
end;

procedure TfrmArtwork.btnsearchartworkClick(Sender: TObject);
begin
fdartwork.SQL.Text := 'select * from artworks where description like :searchartwork_text '+ ' order by created_at desc' ;
fdartwork.ParamByName('searchartwork_text').AsString := '%' + EditSearchdescription.text + '%';
fdartwork.Open;

//var
// strWHERE: string;
//begin
//
//strWHERE:= 'select * from artworks  ';
//
//
//if (EditSearchdescription.Text <> '') and (Editsearchremark.Text = '') and (not chksearchprepress.Checked)
// then begin
// strWHERE:= strWHERE + ' where description like :search_text order by created_at desc';
// fdartwork.ParamByName('search_text').AsString := '%' + EditSearchdescription.Text + '%';
// fdartwork.Open;
// end;
//
//if (EditSearchdescription.Text = '') and (Editsearchremark.Text <> '') and (not chksearchprepress.Checked)
// then begin
// strWHERE:= strWHERE + ' where remark like :search_text_remark order by created_at desc';
// fdartwork.ParamByName('search_text_remark').AsString := '%' + Editsearchremark.Text + '%';
// fdartwork.Open;
// end;


end;
//search by qty range
procedure TfrmArtwork.btnsearchbyqtyClick(Sender: TObject);
begin
if StrToInt(edtfrom.Text) < StrToInt(edtto.Text) then
begin
fdartwork.SQL.Text := 'select * from artworks where requiredqty between :frmqty AND :toqty '+ ' and prepressstage = false order by created_at desc' ;
fdartwork.ParamByName('frmqty').AsString := edtfrom.Text;
fdartwork.ParamByName('toqty').AsString := edtto.Text;
fdartwork.Open;



end;
end;

procedure TfrmArtwork.EditArtwork1Click(Sender: TObject);
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
frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.Connection:=dm.FDConnection1;
frmeditartwork.fdartwork.Connection:=dm.FDConnection1;
frmeditartwork.fdorder.active := true;
frmeditartwork.fdartwork.Open('select * from artworks where id = '+ IntToStr(fdartworkid.Value));
frmeditartwork.fdartwork.Active := true;

frmeditartwork.Show;
  screen.cursor := crDefault;

end;

procedure TfrmArtwork.EditSearchdescriptionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
fdartwork.SQL.Text := 'select * from artworks where description like :searchartwork_text '+ ' order by created_at desc' ;
fdartwork.ParamByName('searchartwork_text').AsString := '%' + EditSearchdescription.text + '%';
fdartwork.Open;



  end;
end;

procedure TfrmArtwork.EditsearchremarkKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    // Execute your custom logic here
fdartwork.SQL.Text := 'select * from artworks where remark like :remarktext '+ ' order by created_at desc' ;
fdartwork.ParamByName('remarktext').AsString := '%' + Editsearchremark.text + '%';
fdartwork.Open;


  end;

end;

procedure TfrmArtwork.fdartworkAfterInsert(DataSet: TDataSet);
begin
dm.fdartworkcountprepress.Close;
dm.fdartworkcountprepress.Open;
dm.fdartworkcounthighpriority.Close;
dm.fdartworkcounthighpriority.Open;

frmmain.RzStatusPanependingartworks.Caption:='Pending Artworks : ' + bcdToStr(Dm.fdartworkcountprepressno.value);
frmmain.RzStatusPanecompltedartwork.caption:='Completed Artworks : ' + bcdToStr(Dm.fdartworkcountprepressyes.value);
frmmain.RzStatusPanehighpriority.Caption:= 'High Priority Artworks : ' + bcdToStr(Dm.fdartworkcounthighpriorityHIGHPRIRITY.value);
frmmain.RzStatusPanehighpriority.Caption:= 'High Priority Artworks : ' + bcdToStr(Dm.fdartworkcounthighpriorityHIGHPRIRITY.value);


end;

procedure TfrmArtwork.fdartworkAfterPost(DataSet: TDataSet);
begin
dm.fdartworkcountprepress.RefreshRecord;
dm.fdartworkcounthighpriority.refreshrecord;
frmmain.RzStatusPanependingartworks.Caption:='Pending Artworks : ' + bcdToStr(Dm.fdartworkcountprepressno.value);
frmmain.RzStatusPanecompltedartwork.caption:='Completed Artworks : ' + bcdToStr(Dm.fdartworkcountprepressyes.value);
frmmain.RzStatusPanehighpriority.Caption:= 'High Priority Artworks : ' + bcdToStr(Dm.fdartworkcounthighpriorityHIGHPRIRITY.value);
fdartworkupdated_at.Value := DateTimeToSQLTimeStamp(Now);

end;


procedure TfrmArtwork.fdartworkBeforeInsert(DataSet: TDataSet);
begin
fdartworkcreated_at.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TfrmArtwork.fdartworkCalcFields(DataSet: TDataSet);
begin
fdartworkBalanceQty.Value := fdartworkprintedqty.Value - fdartworkrequiredqty.Value;
end;


procedure TfrmArtwork.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfrmArtwork.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = vkW) and (ssCtrl in Shift) then
    begin
        if Assigned(ActiveMDIChild) then
            ActiveMDIChild.Close;
    end;
    end;


procedure TfrmArtwork.FormShow(Sender: TObject);
begin
rDBgridArtwork.SetFocus;

end;

procedure TfrmArtwork.OpenOrder1Click(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmorder');
  if not Assigned(aComponent) then
    frmorder := Tfrmorder.Create(Application);
  if frmorder.WindowState = wsMinimized then
    frmorder.WindowState := wsNormal;
  if frmorder.visible = true then
frmorder.fdOrder.Connection := dm.FDConnection1;
frmorder.fdArtworkDetailTable.Connection := dm.FDConnection1;
frmorder.fdorder.SQL.Text := 'select * from orders  where id = ' + IntToStr(fdartworkartworks_order_id.Value);
frmorder.fdorder.Open;
frmorder.show;
end;

procedure TfrmArtwork.rDBgridArtworkDblClick(Sender: TObject);
begin
EditArtwork1.Click;
end;

procedure TfrmArtwork.rDBgridArtworkDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if fdArtwork.FieldByName('prepressstage').AsBoolean = true then
 begin
   rDBgridArtwork.Canvas.Font.Color := clwhite;
  rDBgridArtwork.canvas.Brush.Color := clWebGreen;
 end;

if fdArtwork.FieldByName('prepressstage').AsBoolean = false then
 begin
   rDBgridArtwork.Canvas.Font.Color := clBlack;
   rDBgridArtwork.canvas.Brush.Color := clWebKhaki;
 end;

 if fdArtwork.FieldByName('awstatus').asstring = 'sentforapproval' then
 begin
   rDBgridArtwork.Canvas.Font.Color := clBlack;
   rDBgridArtwork.canvas.Brush.Color := clWebPink;
 end;

end;

procedure TfrmArtwork.RefreshTable1Click(Sender: TObject);
begin
fdartwork.Refresh;
end;

procedure TfrmArtwork.RzToolButton2Click(Sender: TObject);
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
frmeditartwork.fdartwork.SQL.Text := 'select * from artworks where id = ' + IntToStr(fdartworkid.Value);
frmeditartwork.fdartwork.Open;
frmeditartwork.show;
screen.cursor := crDefault;
end;

procedure TfrmArtwork.RzToolButton3Click(Sender: TObject);
begin
        if fdartwork.State = dsBrowse then
  begin
    if MessageDlg('Are you sure you want to delete this Artwork record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      fdartwork.Delete;
  end;
end;

procedure TfrmArtwork.RzToolButtonaddartworkClick(Sender: TObject);

//fdartwork.Insert;
//fdartworkrequiredqty.Value := 0;
//fdartworkawstatus.Value := 'pending';
//fdartworkpriority.Value := 'medium';
//fdartworkprepressstage.Value := false;
//fdartworkcreated_at.Value := DateTimeToSQLTimeStamp(Now);

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

end.
