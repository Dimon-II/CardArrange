object ProgressForm: TProgressForm
  Left = 457
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Progress...'
  ClientHeight = 430
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 402
    Width = 402
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      402
      28)
    object Button1: TButton
      Left = 324
      Top = 1
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Abort'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 402
    Align = alClient
    TabOrder = 1
    object imgProgress: TImage
      Left = 1
      Top = 1
      Width = 400
      Height = 400
      Align = alClient
    end
  end
end
