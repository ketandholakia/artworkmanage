unit uDm;

interface

uses
  System.IniFiles, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, uFrmMain, FireDAC.Phys.MySQL, Vcl.Forms,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    fdartworkcountprepress: TFDQuery;
    fdartworkcountprepressYES: TFMTBCDField;
    fdartworkcountprepressNO: TFMTBCDField;
    fdartworkstatuscount: TFDQuery;
    fdartworkstatuscountawstatus: TStringField;
    fdartworkstatuscountFrequency: TLargeintField;
    fdartworkfilter: TFDQuery;
    fdartworkfilterid: TLargeintField;
    fdartworkfilterdescription: TStringField;
    fdartworkfilterartworks_order_id: TLargeintField;
    fdartworkfilterrequiredqty: TIntegerField;
    fdartworkfilterjobrun: TIntegerField;
    fdartworkfilterlabelrepeat: TIntegerField;
    fdartworkfilterprintedqty: TIntegerField;
    fdartworkfilterartworks_media_id: TLargeintField;
    fdartworkfiltercreated_at: TSQLTimeStampField;
    fdartworkfilterupdated_at: TSQLTimeStampField;
    fdartworkfilterremark: TStringField;
    fdartworkfilterawstatus: TStringField;
    fdartworkfilterprepressstage: TBooleanField;
    fdartworkfilterartworks_plate_id: TLargeintField;
    fdartworkfiltertype: TStringField;
    fdartworkfilterpriority: TStringField;
    fdartworkfilterurl: TStringField;
    fdorder: TFDQuery;
    fdorderid: TLargeintField;
    fdorderorderno: TStringField;
    fdorderorders_customer_id: TLargeintField;
    fdorderstatus: TStringField;
    fdordercreated_at: TSQLTimeStampField;
    fdorderupdated_at: TSQLTimeStampField;
    fdorderpriority: TStringField;
    fdorderurl: TStringField;
    fdorderremark: TStringField;
    fdartworkfilterordernolookup: TStringField;
    fdartworkcounthighpriority: TFDQuery;
    fdartworkcounthighpriorityHIGHPRIRITY: TFMTBCDField;
    fdusers: TFDQuery;
    fdusersid: TLargeintField;
    fdusersname: TStringField;
    fdusersemail: TStringField;
    fdusersemail_verified_at: TSQLTimeStampField;
    fduserspassword: TStringField;
    fdusersremember_token: TStringField;
    fduserscreated_at: TSQLTimeStampField;
    fdusersupdated_at: TSQLTimeStampField;
    fdusersuserid: TIntegerField;
    fdusersLoginName: TStringField;
    fdusersFullName: TStringField;
    fdusersLastAccess: TDateTimeField;
    fdusersEnabled: TBooleanField;
    fdusersCreatedDate: TDateTimeField;
    fdusersLastAccTime: TDateTimeField;
    fdusersCreatedTime: TDateTimeField;
    fdusersAccessCount: TIntegerField;
    dsusers: TDataSource;
    FDuseraccess: TFDQuery;
    dsuseraccess: TDataSource;
    FDuseraccessid: TIntegerField;
    FDuseraccessUserName: TStringField;
    FDuseraccessPermission: TStringField;
    FDusergroup: TFDQuery;
    dsusergroup: TDataSource;
    FDusergroupGroupID: TIntegerField;
    FDusergroupGroupName: TStringField;
    FDusergroupDescription: TStringField;
    FDuserpermissions: TFDQuery;
    dsuserpermissions: TDataSource;
    FDgroupaccess: TFDQuery;
    dsgroupaccess: TDataSource;
    FDgroupaccessGroupName: TStringField;
    FDgroupaccessPermission: TStringField;
    FDgroupmember: TFDQuery;
    dsgroupmember: TDataSource;
    FDgroupmemberUserName: TStringField;
    FDgroupmemberGroupName: TStringField;
    FDuserpermissionspermission: TStringField;
    FDuserpermissionsitems: TMemoField;
    FDuserpermissionsaction: TIntegerField;
    FDuserpermissionsFormName: TStringField;
    fdordercompleted: TBooleanField;
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
var
  iniFile: TIniFile;
  xAppPath: string;
  Server: string;
  Port: Integer;
begin
xAppPath := (ExtractFilePath(ParamStr(0)) + 'libmariadb.dll');


  FDPhysMySQLDriverLink1.VendorLib := xAppPath;
  iniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'dbconnection.ini');

  try
    FDConnection1.Params.DriverID := 'MYSQL';
    FDConnection1.Params.Database := iniFile.ReadString('MySQL_Demo', 'Database', '');
    FDConnection1.Params.UserName := iniFile.ReadString('MySQL_Demo', 'User_Name', '');
    FDConnection1.Params.Password := iniFile.ReadString('MySQL_Demo', 'Password', '');
    FDConnection1.Params.Add('Server=' + iniFile.ReadString('MySQL_Demo', 'Server', ''));
    //FDConnection1.Params.Add('Port=' + iniFile.ReadString('MySQL_Demo', 'Port', ''));
    FDConnection1.Connected := True;
    frmmain.RzStatusPane1.Caption := 'Database: ' + FDConnection1.Params.Database;
    frmmain.RzStatusPane2.Caption := ('Database Type =' + iniFile.ReadString('MySQL_Demo', 'MySQL', ''));
  //  frmmain.RzStatusPane3.Caption := ('Port=' + iniFile.ReadString('MySQL_Demo', 'Port', ''));
//    ArtworksTable.Active  := True;
//    OrdersTable.Active := True;
//    CustomersTable.Active := True;
//    CustomerMasterTable.Active := true;
//    OrdersMasterTable.Active := true;
//    ArtworkDetailTable.Active := true;
//    OrdersDetailTable.Active := true;

//    FDQuery1.Active := false;
//    FDQuery1.Active := true;

  finally
    iniFile.Free;


end;



end;

procedure TDm.FDConnection1AfterConnect(Sender: TObject);
begin
//  FrmMain.RzStatusPanedatabaseconnectionstatus.Caption := 'mySQl Connected  ';

end;

procedure TDm.FDConnection1BeforeConnect(Sender: TObject);
var
sfile:string;
begin
//sfile:=extractfilepath(application.ExeName)+'libmariadb.dll';
//
// //FDPhysMySQLDriverLink1.BaseDriverID:='MySQL';
// FDPhysMySQLDriverLink1.DriverID:='Connector';
// FDPhysMySQLDriverLink1.VendorLib:=sfile;
//
// {with dm.FDConnection1 do
//   begin
//   Connected:=false;
//    DriverName:='Connector';
//
//    with Params do
//    begin
//
//        Clear;
//        Add('DriverID=MySQL');
//        Add('UserName=root');
//     //   Add('password=""');
//        Add('Server=localhost');
//        Add('Port=3306');
//        Add('Database=webservice');
//      end;
//end;
// }
end;

end.
