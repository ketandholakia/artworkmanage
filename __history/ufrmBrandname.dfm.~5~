object frmbrandname: Tfrmbrandname
  Left = 0
  Top = 0
  Caption = 'frmbrandname'
  ClientHeight = 512
  ClientWidth = 809
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
  object rDBGrid1: TrDBGrid
    Left = 0
    Top = 0
    Width = 809
    Height = 512
    Align = alClient
    DataSource = dsbrandname
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taRightJustify
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brandnames_description'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brandnames_customer_id'
        Title.Alignment = taRightJustify
        Width = 60
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'created_at'
        Width = 136
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'updated_at'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'technames_id'
        Title.Alignment = taRightJustify
        Width = 60
        Visible = True
      end>
  end
  object dsbrandname: TDataSource
    DataSet = fdbrandname
    Left = 312
    Top = 408
  end
  object fdbrandname: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'technames_id'
    ConstraintsEnabled = True
    MasterFields = 'id'
    DetailFields = 'technames_id'
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from rl.brandnames where technames_id = :id')
    Left = 504
    Top = 416
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdbrandnameid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdbrandnamebrandnames_description: TStringField
      FieldName = 'brandnames_description'
      Origin = 'brandnames_description'
      Required = True
      Size = 255
    end
    object fdbrandnamebrandnames_customer_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'brandnames_customer_id'
      Origin = 'brandnames_customer_id'
    end
    object fdbrandnamecreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdbrandnameupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdbrandnametechnames_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'technames_id'
      Origin = 'technames_id'
    end
  end
end
