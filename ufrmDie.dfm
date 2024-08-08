object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 660
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rDBgridArtwork: TrDBGrid
    Left = 0
    Top = 120
    Width = 963
    Height = 540
    Align = alClient
    DataSource = DSdie
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aroundsize'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'acrosssize'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aroundrepeat'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'acrossrepeat'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aroundgap'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'acrossgap'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 79
    Width = 963
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -112
    ExplicitWidth = 1075
    object Label11: TLabel
      Left = 14
      Top = 15
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object Label12: TLabel
      Left = 319
      Top = 15
      Width = 36
      Height = 13
      Caption = 'Remark'
    end
    object EditSearchdescription: TEdit
      Left = 80
      Top = 12
      Width = 105
      Height = 21
      TabOrder = 0
    end
    object btnsearchartwork: TButton
      Left = 191
      Top = 10
      Width = 122
      Height = 25
      Caption = 'Search description'
      TabOrder = 1
    end
    object Editsearchremark: TEdit
      Left = 363
      Top = 9
      Width = 116
      Height = 21
      TabOrder = 2
    end
    object chksearchprepress: TCheckBox
      Left = 676
      Top = 11
      Width = 67
      Height = 17
      Caption = 'Prepress'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 506
      Top = 8
      Width = 157
      Height = 25
      Caption = 'Search by Remark'
      TabOrder = 4
    end
    object btnsearchbyqty: TButton
      Left = 989
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Search by qty'
      TabOrder = 5
    end
    object edtfrom: TEdit
      Left = 814
      Top = 11
      Width = 70
      Height = 21
      NumbersOnly = True
      TabOrder = 6
    end
    object edtto: TEdit
      Left = 903
      Top = 12
      Width = 70
      Height = 21
      NumbersOnly = True
      TabOrder = 7
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 963
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
    TabOrder = 2
    ExplicitTop = 2
    ToolbarControls = (
      RzToolButtonaddartwork
      RzSpacer1
      RzToolButton2
      RzSpacer2
      RzToolButton3
      RzSpacer3
      RzToolButtonprintOrder)
    object RzToolButtonaddartwork: TRzToolButton
      Left = 4
      Top = -6
      ImageIndex = 0
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Add Die '
    end
    object RzToolButton2: TRzToolButton
      Left = 62
      Top = -6
      ImageIndex = 1
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Edit Die'
    end
    object RzToolButton3: TRzToolButton
      Left = 120
      Top = -6
      Width = 57
      Height = 90
      ImageIndex = 2
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Delete Die'
    end
    object RzSpacer1: TRzSpacer
      Left = 54
      Top = 27
    end
    object RzSpacer2: TRzSpacer
      Left = 112
      Top = 27
    end
    object RzSpacer3: TRzSpacer
      Left = 177
      Top = 27
    end
    object RzToolButtonprintOrder: TRzToolButton
      Left = 185
      Top = -6
      Width = 71
      Height = 90
      ImageIndex = 3
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = '&Print Order '
    end
  end
  object DSdie: TDataSource
    DataSet = fddie
    Left = 56
    Top = 512
  end
  object fddie: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from dies ')
    Left = 128
    Top = 496
    object fddieid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fddiecustomermark: TStringField
      FieldName = 'customermark'
      Origin = 'customermark'
      Required = True
      Size = 255
    end
    object fddiearoundsize: TBCDField
      FieldName = 'aroundsize'
      Origin = 'aroundsize'
      Required = True
      Precision = 8
      Size = 2
    end
    object fddieacrosssize: TBCDField
      FieldName = 'acrosssize'
      Origin = 'acrosssize'
      Required = True
      Precision = 8
      Size = 2
    end
    object fddiearoundrepeat: TIntegerField
      FieldName = 'aroundrepeat'
      Origin = 'aroundrepeat'
      Required = True
    end
    object fddieacrossrepeat: TIntegerField
      FieldName = 'acrossrepeat'
      Origin = 'acrossrepeat'
      Required = True
    end
    object fddiearoundgap: TBCDField
      FieldName = 'aroundgap'
      Origin = 'aroundgap'
      Required = True
      Precision = 8
      Size = 2
    end
    object fddieacrossgap: TBCDField
      FieldName = 'acrossgap'
      Origin = 'acrossgap'
      Required = True
      Precision = 8
      Size = 2
    end
    object fddiecornerradius: TBCDField
      FieldName = 'cornerradius'
      Origin = 'cornerradius'
      Required = True
      Precision = 8
      Size = 2
    end
    object fddiemedia: TStringField
      FieldName = 'media'
      Origin = 'media'
      Required = True
      Size = 255
    end
    object fddiecreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fddieupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fddierotarydies_cylinder_id: TLargeintField
      FieldName = 'rotarydies_cylinder_id'
      Origin = 'rotarydies_cylinder_id'
      Required = True
    end
    object fddiedyetype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dyetype'
      Origin = 'dyetype'
      FixedChar = True
      Size = 9
    end
  end
  object RlConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=rl')
    LoginPrompt = False
    Left = 353
    Top = 94
  end
  object CylindersTable: TFDQuery
    Connection = RlConnection
    SQL.Strings = (
      'SELECT * FROM rl.cylinders')
    Left = 353
    Top = 142
  end
end
