unit ufrmBrandname;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid;

type
  Tfrmbrandname = class(TForm)
    dsbrandname: TDataSource;
    fdbrandname: TFDQuery;
    fdbrandnameid: TLargeintField;
    fdbrandnamebrandnames_description: TStringField;
    fdbrandnamebrandnames_customer_id: TLargeintField;
    fdbrandnamecreated_at: TSQLTimeStampField;
    fdbrandnameupdated_at: TSQLTimeStampField;
    fdbrandnametechnames_id: TLargeintField;
    rDBGrid1: TrDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbrandname: Tfrmbrandname;

implementation

{$R *.dfm}

uses uDm, uFrmMain, ufrmtechnname;

procedure Tfrmbrandname.FormShow(Sender: TObject);
begin
caption := 'Brand Name';
end;

end.
