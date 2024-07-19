unit ufrmartworkimport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.BatchMove,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.BatchMove.Text,
  FireDAC.Comp.BatchMove.DataSet;

type
  Tfrmartworkimport = class(TForm)
    DBGrid2: TDBGrid;
    Button1: TButton;
    fdartwork: TFDQuery;
    dsartwork: TDataSource;
    FDBatchMove: TFDBatchMove;
    fdartworkid: TLargeintField;
    fdartworkdescription: TStringField;
    fdartworkartworks_order_id: TLargeintField;
    fdartworkrequiredqty: TIntegerField;
    fdartworkremark: TStringField;
    fdartworkawstatus: TStringField;
    fdartworkprepressstage: TBooleanField;
    fdartworkpriority: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmartworkimport: Tfrmartworkimport;

implementation

{$R *.dfm}

uses uDm, uFrmMain;

procedure Tfrmartworkimport.Button1Click(Sender: TObject);
begin
  // ensure user make a choice

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

procedure Tfrmartworkimport.CloseDataSets;
begin
  fdartwork.Close;
end;

procedure Tfrmartworkimport.FormShow(Sender: TObject);
begin
caption := 'Import Artworks';
end;

procedure Tfrmartworkimport.OpenDataSets;
begin
  fdartwork.Close;
  fdartwork.Open;
end;

procedure Tfrmartworkimport.SetUpReader;
var
  LTextReader: TFDBatchMoveTextReader;
  LDataSetReader: TFDBatchMoveDataSetReader;
begin

        // Create text reader
        // FDBatchMove will automatically manage the reader instance.
        LTextReader := TFDBatchMoveTextReader.Create(FDBatchMove);
        // Set source text data file name
        // data.txt provided with demo
        LTextReader.FileName := ExtractFilePath(Application.ExeName) +
          '\data.csv';
        // Setup file format
        LTextReader.DataDef.Separator := ';';
        // to estabilish if first row is definition row (it is this case)
        LTextReader.DataDef.WithFieldNames := True;

end;


procedure Tfrmartworkimport.SetUpWriter;
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

end.
