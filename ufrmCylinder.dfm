object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 646
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -133
    ExplicitWidth = 747
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -133
    ExplicitWidth = 747
    object Button1: TButton
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'delete'
      TabOrder = 2
    end
  end
  object rDBGridCylinder: TrDBGrid
    Left = 0
    Top = 130
    Width = 777
    Height = 516
    Align = alClient
    DataSource = DSCylinder
    TabOrder = 2
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
        FieldName = 'teeth'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'circumference_mm'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'circumference_inch'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'machine1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'machine2'
        Width = 50
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
  object rDBGridsPropSave1: TrDBGridsPropSave
    Components.Strings = (
      'rDBGridCustomer')
    StoreColumnsProp = True
    StoreFieldsGroup = True
    StoreFooterRow = True
    StoreDesignSetting = True
    Left = 232
    Top = 472
  end
  object DSCylinder: TDataSource
    DataSet = Dm.CylindersTable
    Left = 136
    Top = 464
  end
end
