object frmartworkimport: Tfrmartworkimport
  Left = 0
  Top = 0
  Caption = 'frmartworkimport'
  ClientHeight = 668
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 0
    Top = 64
    Width = 928
    Height = 425
    Align = alTop
    DataSource = dsartwork
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 928
    Height = 64
    Align = alTop
    Caption = 'Execute!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object fdartwork: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from artworks')
    Left = 804
    Top = 272
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
      FieldName = 'artworks_order_id'
      Origin = 'artworks_order_id'
      Required = True
    end
    object fdartworkrequiredqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'requiredqty'
      Origin = 'requiredqty'
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
    object fdartworkpriority: TStringField
      FieldName = 'priority'
      Origin = 'priority'
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object dsartwork: TDataSource
    DataSet = fdartwork
    Left = 316
    Top = 208
  end
  object FDBatchMove: TFDBatchMove
    Mappings = <>
    LogFileAction = laCreate
    LogFileName = 'Data.log'
    LogFileEncoding = ecUTF8
    Left = 456
    Top = 216
  end
end
