object frmOrder: TfrmOrder
  Left = 0
  Top = 0
  Caption = 'Orders'
  ClientHeight = 733
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 79
    Width = 919
    Height = 124
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 16
      Top = 45
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 534
      Top = 9
      Width = 57
      Height = 13
      Caption = 'Created on '
    end
    object DBText1: TDBText
      Left = 606
      Top = 9
      Width = 170
      Height = 17
      DataField = 'created_at'
      DataSource = DSOrder
    end
    object Label4: TLabel
      Left = 534
      Top = 38
      Width = 57
      Height = 13
      Caption = 'Updated at '
    end
    object DBText2: TDBText
      Left = 605
      Top = 38
      Width = 170
      Height = 17
      DataField = 'updated_at'
      DataSource = DSOrder
    end
    object Label5: TLabel
      Left = 14
      Top = 82
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label6: TLabel
      Left = 342
      Top = 81
      Width = 34
      Height = 13
      Caption = 'Priority'
    end
    object DBEdit1: TDBEdit
      Left = 74
      Top = 6
      Width = 439
      Height = 21
      DataField = 'orderno'
      DataSource = DSOrder
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 74
      Top = 44
      Width = 439
      Height = 21
      DataField = 'orders_customer_id'
      DataSource = DSOrder
      KeyField = 'id'
      ListField = 'name'
      ListSource = DSCustomer
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 73
      Top = 78
      Width = 236
      Height = 21
      DataField = 'status'
      DataSource = DSOrder
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
      Left = 409
      Top = 78
      Width = 236
      Height = 21
      DataField = 'priority'
      DataSource = DSOrder
      Items.Strings = (
        'medium'
        'low'
        'high')
      TabOrder = 3
    end
    object chkeditmode: TCheckBox
      Left = 822
      Top = 5
      Width = 97
      Height = 17
      Caption = '&Edit Mode'
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 203
    Width = 919
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label11: TLabel
      Left = 270
      Top = 14
      Width = 107
      Height = 13
      Caption = 'Search by Description '
    end
    object SpeedButton1: TSpeedButton
      Left = 837
      Top = 10
      Width = 23
      Height = 22
      Caption = 'D'
      OnClick = SpeedButton1Click
    end
    object Button1: TButton
      Left = 9
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 91
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'delete'
      TabOrder = 2
      OnClick = Button3Click
    end
    object EditSearchorderdesc: TEdit
      Left = 384
      Top = 10
      Width = 144
      Height = 21
      TabOrder = 3
      OnKeyPress = EditSearchorderdescKeyPress
    end
    object btnsearchorder: TButton
      Left = 534
      Top = 8
      Width = 119
      Height = 25
      Caption = 'Search Order'
      TabOrder = 4
      OnClick = btnsearchorderClick
    end
    object Button5: TButton
      Left = 711
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Print Order'
      TabOrder = 5
      OnClick = Button5Click
    end
  end
  object RzSizePanel1: TRzSizePanel
    Left = 0
    Top = 470
    Width = 919
    Height = 263
    Align = alClient
    TabOrder = 2
    object rDBgridArtwork: TrDBGrid
      Left = 0
      Top = 0
      Width = 919
      Height = 263
      Align = alClient
      DataSource = DSArtworkDetail
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = rDBgridArtworkDrawColumnCell
      OnDblClick = rDBgridArtworkDblClick
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
          FieldName = 'requiredqty'
          Title.Alignment = taRightJustify
          Width = 50
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
  end
  object RzSizePanel2: TRzSizePanel
    Left = 0
    Top = 244
    Width = 919
    Height = 185
    Align = alTop
    TabOrder = 3
    object rdbgridOrder: TrDBGrid
      Left = 0
      Top = 0
      Width = 919
      Height = 180
      Align = alClient
      DataSource = DSOrder
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = rdbgridOrderDrawColumnCell
      Sorter = rDBGridSorter_FireDac1
      Columns = <
        item
          Expanded = False
          FieldName = 'orderno'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'customername'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
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
          FieldName = 'priority'
          Width = 50
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 429
    Width = 919
    Height = 41
    Align = alTop
    TabOrder = 4
    object Label7: TLabel
      Left = 12
      Top = 14
      Width = 107
      Height = 13
      Caption = 'Search by Description '
    end
    object edtartworksearch: TEdit
      Left = 141
      Top = 10
      Width = 124
      Height = 21
      TabOrder = 0
      OnKeyPress = edtartworksearchKeyPress
    end
    object btnsearchartworkdetaildesc: TButton
      Left = 291
      Top = 8
      Width = 119
      Height = 25
      Caption = 'Search Artwork'
      TabOrder = 1
      OnClick = btnsearchartworkdetaildescClick
    end
    object chkprepressdone: TCheckBox
      Left = 513
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Prepress Done '
      TabOrder = 2
      OnClick = chkprepressdoneClick
    end
    object btnupdate: TButton
      Left = 792
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Update'
      TabOrder = 3
      OnClick = btnupdateClick
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 919
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
    TabOrder = 5
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
      Width = 58
      Height = 90
      ImageIndex = 0
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Add Order'
      OnClick = RzToolButtonaddartworkClick
    end
    object RzToolButton2: TRzToolButton
      Left = 70
      Top = -6
      Width = 57
      Height = 90
      ImageIndex = 1
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Edit Order'
    end
    object RzToolButton3: TRzToolButton
      Left = 135
      Top = -6
      Width = 70
      Height = 90
      ImageIndex = 2
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Delete Order'
    end
    object RzSpacer1: TRzSpacer
      Left = 62
      Top = 27
    end
    object RzSpacer2: TRzSpacer
      Left = 127
      Top = 27
    end
    object RzToolButtonprintOrder: TRzToolButton
      Left = 213
      Top = -6
      Width = 64
      Height = 90
      ImageIndex = 3
      Images = FrmMain.IconFontsImageList1
      Layout = blGlyphTop
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarShowCaption = False
      Caption = 'Print Order '
      OnClick = RzToolButtonprintOrderClick
    end
    object RzSpacer3: TRzSpacer
      Left = 205
      Top = 27
    end
  end
  object DSOrder: TDataSource
    DataSet = fdOrder
    Left = 160
    Top = 216
  end
  object fdOrder: TFDQuery
    BeforeEdit = fdOrderBeforeEdit
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from orders'
      'order by created_at desc')
    Left = 376
    Top = 320
    object fdOrderid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdOrderorderno: TStringField
      FieldName = 'orderno'
      Origin = 'orderno'
      Required = True
      Size = 255
    end
    object fdOrderorders_customer_id: TLargeintField
      FieldName = 'orders_customer_id'
      Origin = 'orders_customer_id'
      Required = True
    end
    object fdOrderstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 15
    end
    object fdOrdercreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdOrderupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdOrderpriority: TStringField
      FieldName = 'priority'
      Origin = 'priority'
      Required = True
      FixedChar = True
      Size = 6
    end
    object fdOrderurl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'url'
      Origin = 'url'
      Size = 2048
    end
    object fdOrdercustomername: TStringField
      FieldKind = fkLookup
      FieldName = 'customername'
      LookupDataSet = fdCustomer
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'orders_customer_id'
      Lookup = True
    end
  end
  object Qproses: TFDQuery
    Left = 304
    Top = 216
  end
  object fdCustomer: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from customers'
      'order by name')
    Left = 560
    Top = 480
    object fdCustomerid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdCustomername: TStringField
      FieldName = 'name'
      Origin = 'name'
      Required = True
      Size = 255
    end
  end
  object DSCustomer: TDataSource
    DataSet = fdCustomer
    Left = 232
    Top = 400
  end
  object rDBGridsPropSave1: TrDBGridsPropSave
    PropSaveMain = PropSaveMain1
    Components.Strings = (
      'rdbgridOrder'
      'rDBgridArtwork')
    StoreColumnsProp = True
    StoreFieldsGroup = True
    StoreFooterRow = True
    StoreDesignSetting = True
    Left = 408
    Top = 225
  end
  object fdArtworkDetailTable: TFDQuery
    BeforeInsert = fdArtworkDetailTableBeforeInsert
    BeforeEdit = fdArtworkDetailTableBeforeEdit
    BeforePost = fdArtworkDetailTableBeforePost
    OnCalcFields = fdArtworkDetailTableCalcFields
    CachedUpdates = True
    IndexFieldNames = 'artworks_order_id'
    ConstraintsEnabled = True
    MasterSource = DSOrder
    MasterFields = 'id'
    DetailFields = 'artworks_order_id'
    Connection = Dm.FDConnection1
    SQL.Strings = (
      
        'select * from rl.artworks where artworks_order_id = :id order by' +
        ' description asc')
    Left = 172
    Top = 467
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdArtworkDetailTableBalanceQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'BalanceQty'
      Calculated = True
    end
    object fdArtworkDetailTableid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdArtworkDetailTabledescription: TStringField
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 255
    end
    object fdArtworkDetailTableartworks_order_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_order_id'
      Origin = 'artworks_order_id'
    end
    object fdArtworkDetailTablerequiredqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'requiredqty'
      Origin = 'requiredqty'
    end
    object fdArtworkDetailTablejobrun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'jobrun'
      Origin = 'jobrun'
    end
    object fdArtworkDetailTablelabelrepeat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'labelrepeat'
      Origin = 'labelrepeat'
    end
    object fdArtworkDetailTableprintedqty: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'printedqty'
      Origin = 'printedqty'
    end
    object fdArtworkDetailTableartworks_media_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_media_id'
      Origin = 'artworks_media_id'
    end
    object fdArtworkDetailTablecreated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object fdArtworkDetailTableupdated_at: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'updated_at'
      Origin = 'updated_at'
    end
    object fdArtworkDetailTableremark: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'remark'
      Origin = 'remark'
      Size = 255
    end
    object fdArtworkDetailTableawstatus: TStringField
      FieldName = 'awstatus'
      Origin = 'awstatus'
      Required = True
      FixedChar = True
      Size = 15
    end
    object fdArtworkDetailTableprepressstage: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'prepressstage'
      Origin = 'prepressstage'
    end
    object fdArtworkDetailTableartworks_plate_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'artworks_plate_id'
      Origin = 'artworks_plate_id'
    end
    object fdArtworkDetailTabletype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'type'
      Origin = '`type`'
      FixedChar = True
      Size = 9
    end
    object fdArtworkDetailTablepriority: TStringField
      FieldName = 'priority'
      Origin = 'priority'
      Required = True
      FixedChar = True
      Size = 6
    end
    object fdArtworkDetailTableurl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'url'
      Origin = 'url'
      Size = 2048
    end
  end
  object DSArtworkDetail: TDataSource
    DataSet = fdArtworkDetailTable
    Left = 56
    Top = 472
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 160
    Top = 384
  end
  object frxReport1: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45415.864852025500000000
    ReportOptions.LastChange = 45415.870444062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 56
    Top = 272
    Datasets = <
      item
      end
      item
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 980.410082000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            '[uordermaster."orderno"]')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 86.929190000000000000
        Width = 980.410082000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 980.410082000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 427.086890000000000000
        Width = 980.410082000000000000
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 980.410082000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo21: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 904.819482000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 980.410082000000000000
        RowCount = 0
        object uordersdetaildescription: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'description'
          Frame.Typ = []
          Memo.UTF8W = (
            '[uordersdetail."description"]')
        end
        object uordersdetailrequiredqty: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 441.291590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'requiredqty'
          Frame.Typ = []
          Memo.UTF8W = (
            '[uordersdetail."requiredqty"]')
        end
        object uordersdetailprintedqty: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 522.441250000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'printedqty'
          Frame.Typ = []
          Memo.UTF8W = (
            '[uordersdetail."printedqty"]')
        end
        object uordersdetailremark: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 607.724800000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'remark'
          Frame.Typ = []
          Memo.UTF8W = (
            '[uordersdetail."remark"]')
        end
      end
    end
  end
  object frxDBDatasetordermaster: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'uordermaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'orderno=orderno'
      'orders_customer_id=orders_customer_id'
      'status=status'
      'created_at=created_at'
      'updated_at=updated_at'
      'priority=priority'
      'url=url'
      'customername=customername')
    DataSource = DSOrder
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 472
  end
  object frxDBDatasetartowkrdetails: TfrxDBDataset
    UserName = 'uordersdetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'description=description'
      'artworks_order_id=artworks_order_id'
      'requiredqty=requiredqty'
      'jobrun=jobrun'
      'labelrepeat=labelrepeat'
      'printedqty=printedqty'
      'artworks_media_id=artworks_media_id'
      'created_at=created_at'
      'updated_at=updated_at'
      'remark=remark'
      'awstatus=awstatus'
      'prepressstage=prepressstage'
      'artworks_plate_id=artworks_plate_id'
      'type=type'
      'priority=priority'
      'url=url')
    DataSource = DSArtworkDetail
    BCDToCurrency = False
    DataSetOptions = []
    Left = 520
    Top = 568
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 568
    object PopupMenuAddartwork: TMenuItem
      Caption = 'Add Artwork to Order'
      ShortCut = 16449
      OnClick = PopupMenuAddartworkClick
    end
    object popupmenueditartwork: TMenuItem
      Caption = 'Edit Artwork'
      ShortCut = 16453
      OnClick = popupmenueditartworkClick
    end
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      ShortCut = 49221
      OnClick = ExporttoExcel1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      OnClick = Refresh1Click
    end
  end
  object rDBGridSorter_FireDac1: TrDBGridSorter_FireDac
    Left = 656
    Top = 400
  end
  object PropSaveMain1: TPropSaveMain
    FormKey = 'Orderform'
    PropSaveFile = FrmMain.PropSaveFile1
    CtrlPosition.PropSaveMain = PropSaveMain1
    StdCtrl.PropSaveMain = PropSaveMain1
    Left = 664
    Top = 240
  end
  object SLKExp: TSLKExport
    StartRow = 3
    SetFontName = 'Arial'
    MakeSumRow = True
    Left = 744
    Top = 172
  end
  object XLSExp: TrXLSExport
    Left = 824
    Top = 164
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeforeExport = frxJPEGExport1BeforeExport
    Left = 456
    Top = 376
  end
end
