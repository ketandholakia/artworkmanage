unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, PropSaveMain,
  PropSaveGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  Data.FmtBcd, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzStatus, Vcl.ExtCtrls,
  RzPanel;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    System1: TMenuItem;
    DataSupplier1: TMenuItem;
    Orders1: TMenuItem;
    DBGridsPropSave1: TDBGridsPropSave;
    PropSaveFile1: TPropSaveFile;
    PropSaveMain1: TPropSaveMain;
    ActionManager1: TActionManager;
    Action1: TAction;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzStatusPanependingartworks: TRzStatusPane;
    RzStatusPanecompltedartwork: TRzStatusPane;
    RzStatusPanehighpriority: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    procedure FormShow(Sender: TObject);
    procedure DataSupplier1Click(Sender: TObject);
    procedure Orders1Click(Sender: TObject);
    procedure System1Click(Sender: TObject);
    procedure RzStatusPanependingartworksDblClick(Sender: TObject);
    procedure RzStatusPanecompltedartworkDblClick(Sender: TObject);
    procedure RzStatusPanehighpriorityDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uDm, uFrmCustomer, uFrmOrder, uFrmArtwork;

procedure TFrmMain.DataSupplier1Click(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmcustomer');
  if not Assigned(aComponent) then
    frmcustomer := Tfrmcustomer.Create(Application);
  if frmcustomer.WindowState = wsMinimized then
    frmcustomer.WindowState := wsNormal;
  if frmcustomer.visible = true then
    frmcustomer.FormShow(sender);
  frmcustomer.Show;
  screen.cursor := crDefault;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
Caption:= 'Radhe Labels - Artwork Planner';
dm.fdartworkcountprepress.Active:= true;
RzStatusPanependingartworks.Caption:='Pending Artworks : ' + bcdToStr(Dm.fdartworkcountprepressno.value);
RzStatusPanecompltedartwork.caption:='Completed Artworks : ' + bcdToStr(Dm.fdartworkcountprepressyes.value);

end;

procedure TFrmMain.Orders1Click(Sender: TObject);


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
    frmorder.FormShow(sender);
frmorder.fdorder.Connection:=dm.FDConnection1;
frmorder.fdcustomer.Connection:=dm.FDConnection1;
frmorder.fdArtworkDetailTable.Connection:=dm.FDConnection1;
frmorder.fdArtworkDetailTable.Active;
//frmorder.fdArtworkDetailTable.Refresh;
frmorder.fdorder.Open('select * from orders order by created_at desc');
//frmorder.fdorder.Refresh;
frmorder.Show;
screen.cursor := crDefault;
end;





procedure TFrmMain.RzStatusPanecompltedartworkDblClick(Sender: TObject);
begin
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Open('select * from artworks where prepressstage = 1 order by created_at desc');
frmartwork.fdorder.Active := true;
frmartwork.fdartwork.Active := true;
frmArtwork.Caption := 'Completed Artworks';
frmartwork.show;
end;

procedure TFrmMain.RzStatusPanehighpriorityDblClick(Sender: TObject);
begin
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
//frmartwork.fdartwork.Open('SELECT SUM(priority = 'high') AS HIGHPRIRITY FROM artworks
frmartwork.fdorder.Active := true;
frmartwork.fdartwork.Active := true;
frmArtwork.Caption := 'High Priority Artworks';
frmartwork.show;

end;

procedure TFrmMain.RzStatusPanependingartworksDblClick(Sender: TObject);
begin
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Open('select * from artworks where prepressstage = 0 order by created_at desc');
frmartwork.fdorder.Active := true;
frmartwork.fdartwork.Active := true;
frmArtwork.Caption := 'Pending Artworks';
frmartwork.show;

end;

procedure TFrmMain.System1Click(Sender: TObject);
var
  aComponent: TComponent;
begin
  screen.cursor := crHourglass;
  aComponent := Application.FindComponent('frmartwork');
  if not Assigned(aComponent) then
    frmartwork := Tfrmartwork.Create(Application);
  if frmartwork.WindowState = wsMinimized then
    frmartwork.WindowState := wsNormal;
  if frmartwork.visible = true then
   frmartwork.FormShow(sender);

frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Connection:=dm.FDConnection1;
frmartwork.fdorder.Connection:=dm.FDConnection1;
frmartwork.fdartwork.Open('select * from artworks order by created_at desc');
frmartwork.fdorder.Active := true;
frmartwork.fdartwork.Active := true;

  frmartwork.Show;
  screen.cursor := crDefault;
end;







end.