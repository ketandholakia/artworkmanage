object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 636
  ClientWidth = 344
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
    Width = 344
    Height = 636
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 336
    object RzGroupBar1: TRzGroupBar
      Left = 1
      Top = 1
      Width = 342
      Height = 583
      GradientColorStart = clBtnFace
      GradientColorStop = clBtnShadow
      GroupBorderSize = 8
      VisualStyle = vsClassic
      Align = alClient
      Color = clBtnShadow
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 334
      object RzGroup1: TRzGroup
        CaptionStyle = csLarge
        GroupController = RzGroupController1
        Items = <>
        Opened = True
        OpenedHeight = 121
        Caption = 'Artworks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        DesignSize = (
          326
          121)
        object Label1: TLabel
          Left = 13
          Top = 36
          Width = 51
          Height = 13
          Caption = 'Order No. '
        end
        object Label2: TLabel
          Left = 14
          Top = 64
          Width = 57
          Height = 13
          Caption = 'A/w. Status'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 81
          Top = 32
          Width = 233
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object ComboBox1: TComboBox
          Left = 81
          Top = 59
          Width = 233
          Height = 21
          TabOrder = 1
          Text = 'ComboBox1'
        end
        object CheckBox1: TCheckBox
          Left = 81
          Top = 86
          Width = 97
          Height = 17
          Caption = 'Prepress Done'
          TabOrder = 2
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 584
      Width = 342
      Height = 51
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 334
      object btnOK: TButton
        Left = 19
        Top = 14
        Width = 75
        Height = 25
        Caption = 'OK'
        Default = True
        TabOrder = 0
      end
      object btnReset: TButton
        Left = 231
        Top = 14
        Width = 75
        Height = 25
        Caption = '&Reset'
        TabOrder = 1
      end
      object btnCancel: TButton
        Left = 124
        Top = 14
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        TabOrder = 2
      end
      object Memo1: TMemo
        Left = 13
        Top = 80
        Width = 311
        Height = 113
        Lines.Strings = (
          'Memo1')
        TabOrder = 3
      end
    end
  end
  object RzGroupController1: TRzGroupController
    DividerVisible = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Left = 216
    Top = 224
  end
end
