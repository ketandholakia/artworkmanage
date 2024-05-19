object frmeditartwork: Tfrmeditartwork
  Left = 0
  Top = 0
  Caption = 'Artwork Edit'
  ClientHeight = 281
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 232
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 648
    ExplicitHeight = 304
    DesignSize = (
      573
      232)
    object dblabelbalance: TRzDBLabel
      Left = 353
      Top = 47
      Width = 131
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DataField = 'BalanceQty'
      DataSource = DSartwork
    end
    object Label1: TLabel
      Left = 15
      Top = 26
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object Label2: TLabel
      Left = 17
      Top = 54
      Width = 64
      Height = 13
      Caption = 'Required Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 82
      Width = 55
      Height = 13
      Caption = 'Printed Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 269
      Top = 55
      Width = 58
      Height = 13
      Caption = 'Balance Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 111
      Width = 46
      Height = 13
      Caption = 'AwStatus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 19
      Top = 144
      Width = 34
      Height = 13
      Caption = 'Priority'
    end
    object Label7: TLabel
      Left = 269
      Top = 82
      Width = 57
      Height = 13
      Caption = 'Created on '
    end
    object DBText1: TDBText
      Left = 349
      Top = 82
      Width = 170
      Height = 17
      DataField = 'created_at'
      DataSource = DSartwork
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 267
      Top = 112
      Width = 57
      Height = 13
      Caption = 'Updated at '
    end
    object DBText2: TDBText
      Left = 349
      Top = 112
      Width = 133
      Height = 17
      DataField = 'updated_at'
      DataSource = DSartwork
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 17
      Top = 201
      Width = 51
      Height = 13
      Caption = 'Order No. '
    end
    object Label10: TLabel
      Left = 17
      Top = 176
      Width = 36
      Height = 13
      Caption = 'Remark'
    end
    object dbdescription: TRzDBEdit
      Left = 88
      Top = 23
      Width = 462
      Height = 21
      DataSource = DSartwork
      DataField = 'description'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 480
    end
    object dbrequiredqty: TRzDBEdit
      Left = 88
      Top = 50
      Width = 160
      Height = 21
      DataSource = DSartwork
      DataField = 'requiredqty'
      TabOrder = 1
    end
    object dbprintedqty: TRzDBEdit
      Left = 88
      Top = 79
      Width = 160
      Height = 21
      DataSource = DSartwork
      DataField = 'printedqty'
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 88
      Top = 109
      Width = 160
      Height = 21
      DataField = 'awstatus'
      DataSource = DSartwork
      Items.Strings = (
        'pending'
        'approved'
        'printed'
        'platesent'
        'sentforapproval'
        'noartworkfile')
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 88
      Top = 139
      Width = 160
      Height = 21
      DataField = 'priority'
      DataSource = DSartwork
      Items.Strings = (
        'medium'
        'low'
        'high')
      TabOrder = 4
    end
    object DBLookupComboBoxOrderNo: TDBLookupComboBox
      Left = 86
      Top = 199
      Width = 462
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'artworks_order_id'
      DataSource = DSartwork
      KeyField = 'id'
      ListField = 'orderno'
      ListSource = DSorder
      TabOrder = 5
    end
    object dbeditremark: TRzDBEdit
      Left = 88
      Top = 169
      Width = 462
      Height = 21
      DataSource = DSartwork
      DataField = 'remark'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 573
    Height = 49
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 304
    ExplicitWidth = 963
    object btnsave: TRzButton
      Left = 461
      Top = 11
      Default = True
      Caption = '&Save'
      TabOrder = 0
      OnClick = btnsaveClick
    end
    object btncancel: TRzButton
      Left = 372
      Top = 12
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = btncancelClick
    end
    object dbcheckboxprepress: TDBCheckBox
      Left = 17
      Top = 15
      Width = 97
      Height = 17
      Caption = '&Prepress Done'
      DataField = 'prepressstage'
      DataSource = DSartwork
      TabOrder = 2
    end
  end
  object fdartwork: TFDQuery
    OnCalcFields = fdartworkCalcFields
    Connection = Dm.FDConnection1
    SQL.Strings = (
      
        'select * from artworks where description like :search_text order' +
        ' by created_at desc')
    Left = 312
    Top = 234
    ParamData = <
      item
        Name = 'search_text'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'search_text_remark'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdartworkid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdartworkdescription: TStringField
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 255
    end
    object fdartworkartworks_order_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_order_id'
      Origin = 'artworks_order_id'
    end
    object fdartworkrequiredqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'requiredqty'
      Origin = 'requiredqty'
    end
    object fdartworkjobrun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'jobrun'
      Origin = 'jobrun'
    end
    object fdartworklabelrepeat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'labelrepeat'
      Origin = 'labelrepeat'
    end
    object fdartworkprintedqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'printedqty'
      Origin = 'printedqty'
    end
    object fdartworkartworks_media_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_media_id'
      Origin = 'artworks_media_id'
    end
    object fdartworkcreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdartworkupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdartworkremark: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'remark'
      Origin = 'remark'
      Size = 255
    end
    object fdartworkawstatus: TStringField
      FieldName = 'awstatus'
      Origin = 'awstatus'
      Required = True
      FixedChar = True
      Size = 15
    end
    object fdartworkprepressstage: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'prepressstage'
      Origin = 'prepressstage'
    end
    object fdartworkartworks_plate_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_plate_id'
      Origin = 'artworks_plate_id'
    end
    object fdartworktype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'type'
      Origin = 'type'
      FixedChar = True
      Size = 9
    end
    object fdartworkpriority: TStringField
      FieldName = 'priority'
      Origin = 'priority'
      Required = True
      FixedChar = True
      Size = 6
    end
    object fdartworkurl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'url'
      Origin = 'url'
      Size = 2048
    end
    object fdartworkBalanceQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'BalanceQty'
      Calculated = True
    end
    object fdartworkartworkOrderNo: TStringField
      FieldKind = fkLookup
      FieldName = 'artworkOrderNo'
      LookupDataSet = fdorder
      LookupKeyFields = 'id'
      LookupResultField = 'orderno'
      KeyFields = 'artworks_order_id'
      Lookup = True
    end
  end
  object DSartwork: TDataSource
    DataSet = fdartwork
    Left = 256
    Top = 242
  end
  object DSorder: TDataSource
    DataSet = fdorder
    Left = 376
    Top = 125
  end
  object fdorder: TFDQuery
    Active = True
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from orders order by created_at desc'
      '')
    Left = 456
    Top = 125
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
  end
end