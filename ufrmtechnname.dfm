object frmtechname: Tfrmtechname
  Left = 0
  Top = 0
  Caption = 'frmtechname'
  ClientHeight = 606
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 764
    Height = 79
    Images = FrmMain.IconFontsImageList1
    RowHeight = 75
    ButtonWidth = 50
    ButtonHeight = 90
    TextOptions = ttoCustom
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    ToolbarControls = (
      RzToolButtonaddartwork
      RzSpacer1
      RzToolButton2
      RzSpacer2
      RzToolButton3)
    object RzToolButtonaddartwork: TRzToolButton
      Left = 4
      Top = -6
      Width = 83
      Height = 90
      ImageIndex = 0
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Add Tech Name'
    end
    object RzToolButton2: TRzToolButton
      Left = 95
      Top = -6
      Width = 78
      Height = 90
      ImageIndex = 1
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Edit Techname'
    end
    object RzToolButton3: TRzToolButton
      Left = 181
      Top = -6
      Width = 91
      Height = 90
      ImageIndex = 2
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Delete Techname'
    end
    object RzSpacer1: TRzSpacer
      Left = 87
      Top = 27
    end
    object RzSpacer2: TRzSpacer
      Left = 173
      Top = 27
    end
  end
  object RzSizePanel1: TRzSizePanel
    Left = 0
    Top = 79
    Width = 764
    Height = 527
    TabOrder = 1
    object RzSplitter1: TRzSplitter
      Left = 0
      Top = 0
      Width = 759
      Height = 527
      Orientation = orVertical
      Position = 151
      Percent = 29
      SplitterStyle = ssBump
      SplitterWidth = 6
      Align = alClient
      TabOrder = 0
      BarSize = (
        0
        151
        759
        157)
      UpperLeftControls = (
        rDBgridArtwork)
      LowerRightControls = (
        rDBGrid1
        RzPanel1)
      object rDBgridArtwork: TrDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 151
        Align = alClient
        DataSource = dstechname
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
            FieldName = 'techname_description'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'technames_brandname_id'
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
          end>
      end
      object rDBGrid1: TrDBGrid
        Left = 0
        Top = 41
        Width = 759
        Height = 329
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
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 41
        Align = alTop
        TabOrder = 1
      end
    end
  end
  object dstechname: TDataSource
    DataSet = fdtechname
    Left = 232
    Top = 80
  end
  object fdtechname: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from technames order by techname_description asc')
    Left = 472
    Top = 104
    object fdtechnameid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdtechnametechname_description: TStringField
      FieldName = 'techname_description'
      Origin = 'techname_description'
      Required = True
      Size = 255
    end
    object fdtechnametechnames_brandname_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'technames_brandname_id'
      Origin = 'technames_brandname_id'
    end
    object fdtechnamecreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdtechnameupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
  end
  object fdbrandnameasdetails: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'technames_id'
    ConstraintsEnabled = True
    MasterSource = dstechname
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
    object fdbrandnameasdetailsid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdbrandnameasdetailsbrandnames_description: TStringField
      FieldName = 'brandnames_description'
      Origin = 'brandnames_description'
      Required = True
      Size = 255
    end
    object fdbrandnameasdetailsbrandnames_customer_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'brandnames_customer_id'
      Origin = 'brandnames_customer_id'
    end
    object fdbrandnameasdetailscreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdbrandnameasdetailsupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdbrandnameasdetailstechnames_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'technames_id'
      Origin = 'technames_id'
    end
  end
  object dsbrandname: TDataSource
    DataSet = fdbrandnameasdetails
    Left = 312
    Top = 408
  end
end
