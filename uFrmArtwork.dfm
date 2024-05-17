object frmArtwork: TfrmArtwork
  Left = 0
  Top = 0
  Caption = 'Artworks'
  ClientHeight = 629
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 159
    Align = alTop
    TabOrder = 0
    DesignSize = (
      758
      159)
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 68
      Height = 13
      Caption = 'Artwork Desc.'
    end
    object Label2: TLabel
      Left = 16
      Top = 63
      Width = 64
      Height = 13
      Caption = 'Required Qty'
    end
    object Label5: TLabel
      Left = 16
      Top = 99
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label6: TLabel
      Left = 241
      Top = 97
      Width = 34
      Height = 13
      Caption = 'Priority'
    end
    object Label7: TLabel
      Left = 14
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Order No.'
    end
    object Label8: TLabel
      Left = 206
      Top = 66
      Width = 55
      Height = 13
      Caption = 'Printed Qty'
    end
    object Label9: TLabel
      Left = 395
      Top = 66
      Width = 55
      Height = 13
      Caption = 'Printed Qty'
    end
    object Label10: TLabel
      Left = 16
      Top = 129
      Width = 36
      Height = 13
      Caption = 'Remark'
    end
    object dbeditdescription: TDBEdit
      Left = 86
      Top = 33
      Width = 657
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'description'
      DataSource = DSartwork
      TabOrder = 1
    end
    object DBLookupComboBoxOrderNo: TDBLookupComboBox
      Left = 86
      Top = 6
      Width = 656
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'artworks_order_id'
      DataSource = DSartwork
      KeyField = 'id'
      ListField = 'orderno'
      ListSource = DSorder
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 88
      Top = 93
      Width = 137
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
      Left = 295
      Top = 93
      Width = 143
      Height = 21
      DataField = 'priority'
      DataSource = DSartwork
      Items.Strings = (
        'medium'
        'low'
        'high')
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 87
      Top = 61
      Width = 106
      Height = 21
      DataField = 'requiredqty'
      DataSource = DSartwork
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 276
      Top = 62
      Width = 106
      Height = 21
      DataField = 'printedqty'
      DataSource = DSartwork
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 534
      Top = 63
      Width = 209
      Height = 21
      Anchors = [akTop, akRight, akBottom]
      DataField = 'BalanceQty'
      DataSource = DSartwork
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 87
      Top = 126
      Width = 656
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'remark'
      DataSource = DSartwork
      TabOrder = 7
    end
    object DBCheckBox2: TDBCheckBox
      Left = 448
      Top = 95
      Width = 97
      Height = 17
      Caption = '&Prepress Done'
      DataField = 'prepressstage'
      DataSource = DSartwork
      TabOrder = 8
    end
    object chkeditmode: TCheckBox
      Left = 584
      Top = 95
      Width = 89
      Height = 17
      Caption = 'Edit Mode'
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 159
    Width = 758
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 17
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Created on '
    end
    object DBText1: TDBText
      Left = 83
      Top = 12
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
    object Label4: TLabel
      Left = 209
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Updated at '
    end
    object DBText2: TDBText
      Left = 276
      Top = 13
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
    object Button1: TButton
      Left = 417
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btnsave: TButton
      Left = 507
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = btnsaveClick
    end
    object Button3: TButton
      Left = 680
      Top = 7
      Width = 75
      Height = 25
      Caption = 'delete'
      TabOrder = 2
      OnClick = Button3Click
    end
    object btnsaveclose: TButton
      Left = 588
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Save && Close'
      Default = True
      TabOrder = 3
      OnClick = btnsavecloseClick
    end
  end
  object rDBgridArtwork: TrDBGrid
    Left = 0
    Top = 270
    Width = 758
    Height = 359
    Align = alClient
    DataSource = DSartwork
    PopupMenu = PopupMenuartworkgrid
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = rDBgridArtworkDrawColumnCell
    Sorter = rDBGridSorter_FireDac1
    Columns = <
      item
        Expanded = False
        FieldName = 'prepressstage'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'artworkOrderNo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'requiredqty'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'printedqty'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Color = clSilver
        Expanded = False
        FieldName = 'BalanceQty'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'remark'
        Width = 200
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
        FieldName = 'awstatus'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'priority'
        Width = 50
        Visible = True
      end>
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 200
    Width = 758
    Height = 29
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 10461087
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 229
    Width = 758
    Height = 41
    Align = alTop
    TabOrder = 4
    object Label11: TLabel
      Left = 14
      Top = 15
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object Label12: TLabel
      Left = 195
      Top = 16
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
      OnKeyPress = EditSearchdescriptionKeyPress
    end
    object btnsearchartwork: TButton
      Left = 660
      Top = 7
      Width = 85
      Height = 25
      Caption = 'Search Artwork'
      TabOrder = 1
      OnClick = btnsearchartworkClick
    end
    object Editsearchremark: TEdit
      Left = 240
      Top = 11
      Width = 116
      Height = 21
      TabOrder = 2
      OnKeyPress = EditSearchdescriptionKeyPress
    end
    object chksearchprepress: TCheckBox
      Left = 520
      Top = 11
      Width = 67
      Height = 17
      Caption = 'Prepress'
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 411
      Top = 11
      Width = 97
      Height = 21
      TabOrder = 4
      Text = 'ComboBox1'
    end
  end
  object DSartwork: TDataSource
    DataSet = fdartwork
    Left = 192
    Top = 128
  end
  object fdartwork: TFDQuery
    AfterInsert = fdartworkAfterInsert
    BeforeEdit = fdartworkBeforeEdit
    AfterPost = fdartworkAfterPost
    OnCalcFields = fdartworkCalcFields
    Connection = Dm.FDConnection1
    SQL.Strings = (
      
        'select * from artworks where description like :search_text order' +
        ' by created_at desc')
    Left = 48
    Top = 536
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
  object Qproses: TFDQuery
    Left = 648
    Top = 336
  end
  object fdorder: TFDQuery
    BeforeEdit = fdorderBeforeEdit
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from orders order by created_at desc'
      '')
    Left = 640
    Top = 296
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
  object DSorder: TDataSource
    DataSet = fdorder
    Left = 232
    Top = 400
  end
  object rDBGridsPropSave1: TrDBGridsPropSave
    PropSaveMain = PropSaveMain1
    Components.Strings = (
      'rDBgridArtwork')
    StoreColumnsProp = True
    StoreFieldsGroup = True
    StoreFooterRow = True
    StoreDesignSetting = True
    Left = 392
    Top = 504
  end
  object fdartworkdetail: TFDQuery
    Left = 496
    Top = 320
  end
  object PopupMenuartworkgrid: TPopupMenu
    Left = 80
    Top = 312
    object OpenOrder1: TMenuItem
      Caption = 'Open Order'
      OnClick = OpenOrder1Click
    end
    object RefreshTable1: TMenuItem
      Action = actRefreshTable
      OnClick = RefreshTable1Click
    end
  end
  object rDBGridSorter_FireDac1: TrDBGridSorter_FireDac
    GoToFirstAfterSort = True
    GoToFirstAfterRefresh = True
    Left = 568
    Top = 472
  end
  object ActionManager1: TActionManager
    OnExecute = ActionManager1Execute
    Left = 744
    Top = 304
    StyleName = 'Platform Default'
    object actRefreshTable: TAction
      Caption = 'Refresh Table '
      ShortCut = 116
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object PropSaveMain1: TPropSaveMain
    FormKey = 'Artworkform'
    PropSaveFile = FrmMain.PropSaveFile1
    CtrlPosition.PropSaveMain = PropSaveMain1
    StdCtrl.PropSaveMain = PropSaveMain1
    Left = 376
    Top = 416
  end
end
