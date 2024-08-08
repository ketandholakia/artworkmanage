unit ufrmDie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RzPanel, RzButton,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, rDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait;

type
  TForm2 = class(TForm)
    rDBgridArtwork: TrDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    EditSearchdescription: TEdit;
    btnsearchartwork: TButton;
    Editsearchremark: TEdit;
    chksearchprepress: TCheckBox;
    Button2: TButton;
    btnsearchbyqty: TButton;
    edtfrom: TEdit;
    edtto: TEdit;
    RzToolbar1: TRzToolbar;
    RzToolButtonaddartwork: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzToolButtonprintOrder: TRzToolButton;
    DSdie: TDataSource;
    fddie: TFDQuery;
    fddieid: TFDAutoIncField;
    fddiecustomermark: TStringField;
    fddiearoundsize: TBCDField;
    fddieacrosssize: TBCDField;
    fddiearoundrepeat: TIntegerField;
    fddieacrossrepeat: TIntegerField;
    fddiearoundgap: TBCDField;
    fddieacrossgap: TBCDField;
    fddiecornerradius: TBCDField;
    fddiemedia: TStringField;
    fddiecreated_at: TSQLTimeStampField;
    fddieupdated_at: TSQLTimeStampField;
    fddierotarydies_cylinder_id: TLargeintField;
    fddiedyetype: TStringField;
    RlConnection: TFDConnection;
    CylindersTable: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uDm, uFrmMain;

end.
