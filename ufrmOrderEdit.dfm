object frmorderedit: Tfrmorderedit
  Left = 0
  Top = 0
  Caption = 'Edit Order '
  ClientHeight = 248
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 25
    Width = 51
    Height = 13
    Caption = 'Order No. '
  end
  object Label2: TLabel
    Left = 20
    Top = 50
    Width = 46
    Height = 13
    Caption = 'Customer'
  end
  object Label3: TLabel
    Left = 21
    Top = 83
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label4: TLabel
    Left = 20
    Top = 115
    Width = 28
    Height = 13
    Caption = 'Pririty'
  end
  object dborderno: TDBEdit
    Left = 90
    Top = 20
    Width = 438
    Height = 21
    DataField = 'orderno'
    DataSource = dsorder
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 89
    Top = 48
    Width = 439
    Height = 21
    DataField = 'orders_customer_id'
    DataSource = dsorder
    KeyField = 'id'
    ListField = 'name'
    ListSource = dsCustomer
    TabOrder = 1
  end
  object DBComboBox1: TDBComboBox
    Left = 89
    Top = 79
    Width = 236
    Height = 21
    DataField = 'status'
    DataSource = dsorder
    Items.Strings = (
      'neworder'
      'inprocess'
      'noartwork'
      'approved'
      'cancelled'
      'printed'
      'delivered'
      'preprocessdone'
      'approvalpending')
    TabOrder = 2
  end
  object DBComboBox2: TDBComboBox
    Left = 90
    Top = 110
    Width = 236
    Height = 21
    DataField = 'priority'
    DataSource = dsorder
    Items.Strings = (
      'medium'
      'low'
      'high')
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 199
    Width = 555
    Height = 49
    Align = alBottom
    TabOrder = 4
    ExplicitWidth = 551
    object btnsave: TRzButton
      Left = 443
      Top = 13
      Default = True
      Caption = '&Save'
      TabOrder = 0
      OnClick = btnsaveClick
    end
    object btncancel: TRzButton
      Left = 340
      Top = 12
      Caption = '&Cancel'
      TabOrder = 1
    end
  end
  object dsorder: TDataSource
    DataSet = fdorder
    Left = 288
    Top = 144
  end
  object fdorder: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from orders')
    Left = 40
    Top = 144
    object fdorderid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdorderorderno: TStringField
      FieldName = 'orderno'
      Origin = 'orderno'
      Required = True
      Size = 255
    end
    object fdorderorders_customer_id: TLargeintField
      FieldName = 'orders_customer_id'
      Origin = 'orders_customer_id'
      Required = True
    end
    object fdorderstatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
      FixedChar = True
      Size = 15
    end
    object fdordercreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdorderupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdorderpriority: TStringField
      FieldName = 'priority'
      Origin = 'priority'
      Required = True
      FixedChar = True
      Size = 6
    end
    object fdorderurl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'url'
      Origin = 'url'
      Size = 2048
    end
    object fdorderremark: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'remark'
      Origin = 'remark'
      Size = 255
    end
  end
  object fdcustomer: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from customers order by name asc')
    Left = 128
    Top = 136
  end
  object dsCustomer: TDataSource
    DataSet = fdcustomer
    Left = 376
    Top = 120
  end
end
