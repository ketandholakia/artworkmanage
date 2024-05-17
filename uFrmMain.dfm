object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 613
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 594
    Width = 861
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 40
      Height = 19
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      AutoSize = True
      Caption = ''
    end
    object RzStatusPanependingartworks: TRzStatusPane
      Left = 140
      Top = 0
      Width = 40
      Height = 19
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = RzStatusPanependingartworksDblClick
      AutoSize = True
      Caption = ''
      ExplicitLeft = 100
    end
    object RzStatusPanecompltedartwork: TRzStatusPane
      Left = 180
      Top = 0
      Width = 40
      Height = 19
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = RzStatusPanecompltedartworkDblClick
      AutoSize = True
      Caption = ''
      ExplicitLeft = 200
    end
    object RzStatusPanehighpriority: TRzStatusPane
      Left = 220
      Top = 0
      Height = 19
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = RzStatusPanehighpriorityDblClick
      Caption = ''
      ExplicitLeft = 861
      ExplicitHeight = 20
    end
    object RzStatusPane2: TRzStatusPane
      Left = 40
      Top = 0
      Height = 19
      Align = alLeft
      Caption = ''
      ExplicitLeft = 34
    end
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 248
    object System1: TMenuItem
      Caption = 'Artworks'
      OnClick = System1Click
    end
    object Orders1: TMenuItem
      Caption = 'Orders'
      OnClick = Orders1Click
    end
    object DataSupplier1: TMenuItem
      Caption = 'Customers'
      OnClick = DataSupplier1Click
    end
  end
  object DBGridsPropSave1: TDBGridsPropSave
    PropSaveMain = PropSaveMain1
    Left = 616
    Top = 224
  end
  object PropSaveFile1: TPropSaveFile
    FileName = 'rlconfig.ini'
    Left = 448
    Top = 168
  end
  object PropSaveMain1: TPropSaveMain
    PropSaveFile = PropSaveFile1
    CtrlPosition.PropSaveMain = PropSaveMain1
    StdCtrl.PropSaveMain = PropSaveMain1
    Left = 280
    Top = 200
  end
  object ActionManager1: TActionManager
    Left = 352
    Top = 144
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Refresh Table'
    end
  end
end
