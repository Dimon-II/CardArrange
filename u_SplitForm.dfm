object SplitForm: TSplitForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Split large board to print-size parts'
  ClientHeight = 367
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object cfgPrint: TValueListEditor
    Left = 0
    Top = 0
    Width = 474
    Height = 331
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    FixedCols = 1
    ParentCtl3D = False
    TabOrder = 0
    TitleCaptions.Strings = (
      'Option'
      'Value (mm)')
    OnEditButtonClick = cfgPrintEditButtonClick
    ColWidths = (
      150
      322)
  end
  object pnDown: TPanel
    Left = 0
    Top = 331
    Width = 474
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      474
      36)
    object btnOk: TButton
      Left = 312
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Split'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 393
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
  object dlgPrintCfg: TPrinterSetupDialog
    Left = 336
    Top = 112
  end
end
