unit ufrmtechnname;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid,
  Vcl.ExtCtrls, RzPanel, RzSplit, RzButton;

type
  Tfrmtechname = class(TForm)
    dstechname: TDataSource;
    fdtechname: TFDQuery;
    fdtechnameid: TLargeintField;
    fdtechnametechname_description: TStringField;
    fdtechnametechnames_brandname_id: TLargeintField;
    fdtechnamecreated_at: TSQLTimeStampField;
    fdtechnameupdated_at: TSQLTimeStampField;
    RzToolbar1: TRzToolbar;
    RzToolButtonaddartwork: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSizePanel1: TRzSizePanel;
    RzSplitter1: TRzSplitter;
    rDBgridArtwork: TrDBGrid;
    rDBGrid1: TrDBGrid;
    RzPanel1: TRzPanel;
    fdbrandnameasdetails: TFDQuery;
    dsbrandname: TDataSource;
    fdbrandnameasdetailsid: TLargeintField;
    fdbrandnameasdetailsbrandnames_description: TStringField;
    fdbrandnameasdetailsbrandnames_customer_id: TLargeintField;
    fdbrandnameasdetailscreated_at: TSQLTimeStampField;
    fdbrandnameasdetailsupdated_at: TSQLTimeStampField;
    fdbrandnameasdetailstechnames_id: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtechname: Tfrmtechname;

implementation

{$R *.dfm}

uses uDm, uFrmMain;

procedure Tfrmtechname.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmtechname.FormShow(Sender: TObject);
begin
caption := 'Technical Name';
fdtechname.Active := true;
fdbrandnameasdetails.Active := true;

end;

end.
