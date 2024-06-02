unit uFrmCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, SqlTimSt, Vcl.ExtCtrls, 
  DateUtils, Vcl.DBCtrls, rDBGrid,  Vcl.Mask, PropSaveMain, PropSaveGrids;

type
  TFrmCustomer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DSCustomer: TDataSource;
    fdCustomer: TFDQuery;
    Qproses: TFDQuery;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    fdCustomerid: TLargeintField;
    fdCustomername: TStringField;
    fdCustomerCity: TStringField;
    fdCustomercreated_at: TSQLTimeStampField;
    fdCustomerupdated_at: TSQLTimeStampField;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    rDBGridCustomer: TrDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    rDBGridsPropSave1: TrDBGridsPropSave;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCustomer: TFrmCustomer;

implementation

{$R *.dfm}

uses uDm, HumanDateDiff.Lang.BR, HumanDateDiff.Lang.EN, HumanDateDiff.Lang,
  HumanDateDiff;

procedure TFrmCustomer.Button1Click(Sender: TObject);
var
sql:string;
begin

fdCustomer.Insert;

//sql:='INSERT INTO `rl`.`customers` (`name`, `City`, `created_at`)' +
// ' VALUES (:name, :City, :created_at);';
//   Qproses.Close;
//   Qproses.Connection:=dm.FDConnection1;
//  Qproses.SQL.Text:=sql;
//  Qproses.ParamByName('name').AsString:=editname.Text;
//  Qproses.ParamByName('city').AsString:=editcity.Text;
//  Qproses.ParamByName('created_at').AsString:= SQLTimeStampToStr('yyyy-mm-dd hh:nn:ss', DateTimeToSQLTimeStamp(date));
//   Qproses.ExecSQL;
//   fdcustomer.Refresh

end;

procedure TFrmCustomer.Button2Click(Sender: TObject);
var
sql:string;
var lHDD:IHumanDateDiff;
begin
if DSCustomer.State = dsEdit then
begin
  fdCustomerupdated_at.Value := DateTimeToSQLTimeStamp(Now);
  fdCustomer.post;
  fdCustomer.Refresh;

end;

//sql:='UPDATE `rl`.`customers` SET `name`= :name, `City`=:city, `updated_at`=:updated_at WHERE  `id`=:id;';
//Qproses.Close;
//Qproses.Connection:=dm.FDConnection1;
//Qproses.SQL.Text:=sql;
//Qproses.ParamByName('name').AsString:=editname.Text;
//Qproses.ParamByName('city').AsString:=editcity.Text;
//Qproses.ParamByName('updated_at').AsString:= SQLTimeStampToStr('yyyy-mm-dd hh:nn:ss', DateTimeToSQLTimeStamp(date));
//Qproses.ParamByName('id').AsString:= IntToStr(fdCustomerid.Value);
//
//Qproses.ExecSQL;
//fdcustomer.Refresh

end;

procedure TFrmCustomer.Button3Click(Sender: TObject);
begin
  if fdCustomer.State = dsBrowse then
  begin
    if MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      fdCustomer.Delete;
  end;


end;


procedure TFrmCustomer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCustomer.FormShow(Sender: TObject);

begin
fdcustomer.Connection:=dm.FDConnection1;
fdcustomer.Open('select * from customers order by name');
dscustomer.DataSet:=fdcustomer;

end;

end.
