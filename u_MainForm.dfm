object MainForm: TMainForm
  Left = 89
  Top = 206
  Caption = 'Cards scan arrange (PnP)'
  ClientHeight = 722
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 101
    Width = 28
    Height = 13
    Caption = 'Count'
  end
  object Splitter2: TSplitter
    Left = 818
    Top = 0
    Height = 722
    Align = alRight
    OnMoved = Splitter2Moved
    ExplicitHeight = 723
  end
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 818
    Height = 722
    ActivePage = tsSource
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = pcMainChange
    ExplicitHeight = 723
    object tsSource: TTabSheet
      Caption = 'Source'
      ExplicitHeight = 697
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 28
        Width = 810
        Height = 668
        HorzScrollBar.Style = ssFlat
        HorzScrollBar.Tracking = True
        VertScrollBar.Style = ssFlat
        VertScrollBar.Tracking = True
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitHeight = 669
        object imgSource: TImage
          Left = 0
          Top = 0
          Width = 756
          Height = 603
          Cursor = crCross
          OnClick = imgSourceClick
          OnDblClick = imgFrameDblClick
          OnMouseDown = imgFrameMouseDown
          OnMouseMove = imgSourceMouseMove
          OnStartDrag = imgFrameStartDrag
        end
        object FrameBox: TPaintBox
          Left = 0
          Top = 0
          Width = 806
          Height = 664
          Cursor = crCross
          Align = alClient
          OnClick = imgSourceClick
          OnDblClick = imgFrameDblClick
          OnMouseDown = imgFrameMouseDown
          OnMouseMove = imgSourceMouseMove
          OnMouseUp = FrameBoxMouseUp
          OnPaint = FrameBoxPaint
          OnStartDrag = imgFrameStartDrag
          ExplicitHeight = 669
        end
        object Shape2: TShape
          Left = 81
          Top = 107
          Width = 16
          Height = 64
          Hint = 
            '1. Select rectangle over a card '#13#10'2. Click in the rectangle outs' +
            'ide the card'
          Brush.Color = clLime
          Brush.Style = bsBDiagonal
          ParentShowHint = False
          Pen.Style = psDot
          ShowHint = True
          Visible = False
          OnMouseDown = Shape2MouseDown
        end
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 810
        Height = 28
        AutoSize = True
        ButtonHeight = 26
        Caption = 'ToolBar1'
        EdgeBorders = [ebBottom]
        Images = ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton9: TToolButton
          Left = 0
          Top = 0
          Action = Action1
        end
        object ToolButton10: TToolButton
          Left = 23
          Top = 0
          Action = Action2
        end
        object ToolButton11: TToolButton
          Left = 46
          Top = 0
          Action = Action3
        end
        object ToolButton12: TToolButton
          Left = 69
          Top = 0
          Action = Action4
        end
        object ToolButton13: TToolButton
          Left = 92
          Top = 0
          Action = Action5
        end
        object ToolButton14: TToolButton
          Left = 115
          Top = 0
          Action = Action6
        end
        object ToolButton19: TToolButton
          Left = 138
          Top = 0
          Width = 8
          Caption = 'ToolButton19'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object ToolButton18: TToolButton
          Left = 146
          Top = 0
          Action = Action8
        end
        object ToolButton17: TToolButton
          Left = 169
          Top = 0
          Action = Action7
        end
        object ToolButton15: TToolButton
          Left = 192
          Top = 0
          Width = 8
          Caption = 'ToolButton7'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton16: TToolButton
          Left = 200
          Top = 0
          Hint = 'Reset grid'
          Caption = 'ToolButton8'
          ImageIndex = 6
          OnClick = ToolButton16Click
        end
        object ToolButton21: TToolButton
          Left = 223
          Top = 0
          Width = 8
          Caption = 'ToolButton21'
          ImageIndex = 10
          Style = tbsSeparator
        end
        object tbOnecard: TToolButton
          Left = 231
          Top = 0
          Hint = 
            'One card region:'#13#10'1. Choose card in grid'#13#10'2. Select rectangle ov' +
            'er a card '#13#10'3. Click in the rectangle outside the card (bkg.colo' +
            'r)'
          Caption = 'tbOnecard'
          ImageIndex = 10
          Style = tbsCheck
          OnClick = tbOnecardClick
        end
        object ToolButton20: TToolButton
          Left = 254
          Top = 0
          Hint = 'Autodetect all'
          Caption = 'ToolButton20'
          ImageIndex = 9
          OnClick = ToolButton20Click
        end
        object ToolButton23: TToolButton
          Left = 277
          Top = 0
          Width = 8
          Caption = 'ToolButton23'
          ImageIndex = 11
          Style = tbsSeparator
        end
        object TrackBar3: TTrackBar
          Left = 285
          Top = 0
          Width = 93
          Height = 26
          Hint = 'Autodetect contrast setting'
          Align = alLeft
          Max = 6
          Min = 1
          ParentShowHint = False
          PageSize = 4
          Position = 1
          ShowHint = True
          TabOrder = 0
          ThumbLength = 16
        end
        object cbFrameOrGround: TComboBox
          Left = 378
          Top = 0
          Width = 71
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'Ground'
          Items.Strings = (
            'Ground'
            'Frame')
        end
        object Panel2: TPanel
          Left = 449
          Top = 0
          Width = 47
          Height = 26
          Alignment = taRightJustify
          BevelOuter = bvNone
          BorderWidth = 5
          Caption = 'Blink'
          TabOrder = 3
        end
        object ColorBox1: TColorBox
          Left = 496
          Top = 0
          Width = 80
          Height = 22
          Selected = clLime
          Style = [cbStandardColors, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 1
        end
        object ColorBox2: TColorBox
          Left = 576
          Top = 0
          Width = 80
          Height = 22
          Selected = clGreen
          Style = [cbStandardColors, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 2
        end
        object Panel4: TPanel
          Left = 656
          Top = 0
          Width = 47
          Height = 26
          Alignment = taRightJustify
          BevelOuter = bvNone
          BorderWidth = 5
          Caption = 'Anchor'
          TabOrder = 5
        end
        object cbAnchor: TComboBox
          Left = 703
          Top = 0
          Width = 71
          Height = 21
          Hint = 'Rotation anchor'
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = 'Top-Left'
          Items.Strings = (
            'Top-Left'
            'Center')
        end
      end
    end
    object tsResult: TTabSheet
      Caption = 'Result'
      ImageIndex = 1
      ExplicitHeight = 697
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 697
        object imgResult: TImage
          Left = 3
          Top = 4
          Width = 756
          Height = 603
          Cursor = crCross
        end
      end
    end
    object tsBuffer: TTabSheet
      Caption = 'tsBuffer'
      ImageIndex = 2
      TabVisible = False
      ExplicitHeight = 697
      object ScrollBox3: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 697
        object imgBuffer: TImage
          Left = 0
          Top = 0
          Width = 756
          Height = 603
          Cursor = crCross
          OnMouseMove = imgSourceMouseMove
        end
      end
    end
    object tsSelected: TTabSheet
      Caption = 'Selected'
      ImageIndex = 3
      ExplicitHeight = 697
      object ScrollBox4: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 697
        object img1: TImage
          Left = 0
          Top = 0
          Width = 425
          Height = 337
          Cursor = crCross
          AutoSize = True
          OnMouseDown = img1MouseDown
          OnMouseMove = img1MouseMove
          OnMouseUp = img1MouseUp
        end
        object Shape1: TShape
          Left = 81
          Top = 106
          Width = 16
          Height = 64
          Brush.Color = clLime
          Brush.Style = bsBDiagonal
          Pen.Style = psDot
          Visible = False
        end
      end
    end
  end
  object pnRight: TPanel
    Left = 821
    Top = 0
    Width = 185
    Height = 722
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 185
    TabOrder = 1
    ExplicitHeight = 723
    object pnParams: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 702
      Align = alClient
      BorderWidth = 5
      TabOrder = 0
      ExplicitHeight = 703
      object gbFile: TGroupBox
        Left = 6
        Top = 6
        Width = 173
        Height = 82
        Align = alTop
        Caption = 'File'
        TabOrder = 0
        object lblDir: TLabel
          Left = 8
          Top = 46
          Width = 23
          Height = 13
          Caption = 'lblDir'
        end
        object lblFile: TLabel
          Left = 8
          Top = 62
          Width = 26
          Height = 13
          Caption = 'lblFile'
        end
        object ToolBar3: TToolBar
          Left = 2
          Top = 15
          Width = 169
          Height = 29
          ButtonHeight = 28
          ButtonWidth = 17
          Caption = 'ToolBar3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Wingdings'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          object tbtLoad: TToolButton
            Left = 0
            Top = 0
            Hint = 'Load'
            Caption = '1'
            ImageIndex = 0
            OnClick = sbSourceClick
          end
          object tbtSave: TToolButton
            Left = 17
            Top = 0
            Hint = 'Save'
            Caption = '<'
            ImageIndex = 3
            OnClick = Button1Click
          end
          object tbtSaveIni: TToolButton
            Left = 34
            Top = 0
            Hint = 'Save INI'
            Caption = '='
            ImageIndex = 1
            OnClick = Button2Click
          end
          object ToolButton27: TToolButton
            Left = 51
            Top = 0
            Width = 8
            Caption = 'ToolButton27'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tbtRotate: TToolButton
            Left = 59
            Top = 0
            Hint = 'Rotate 90'
            Caption = #1050
            ImageIndex = 2
            OnClick = tbtRotateClick
          end
          object tbtSplit: TToolButton
            Left = 76
            Top = 0
            Hint = 'Split to paper-size'
            Caption = '#'
            ImageIndex = 3
            OnClick = tbtSplitClick
          end
        end
      end
      object gbDimension: TGroupBox
        Left = 6
        Top = 88
        Width = 173
        Height = 128
        Align = alTop
        TabOrder = 1
        DesignSize = (
          173
          128)
        object Bevel1: TBevel
          Left = 104
          Top = 6
          Width = 2
          Height = 120
          Anchors = [akLeft, akTop, akBottom]
        end
        object lblX: TLabel
          Left = 88
          Top = 8
          Width = 9
          Height = 13
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblY: TLabel
          Left = 112
          Top = 8
          Width = 9
          Height = 13
          Caption = 'Y'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSize: TLabel
          Left = 8
          Top = 29
          Width = 20
          Height = 13
          Caption = 'Size'
        end
        object lblDelta: TLabel
          Left = 8
          Top = 53
          Width = 25
          Height = 13
          Caption = 'Delta'
        end
        object lblCount: TLabel
          Left = 8
          Top = 101
          Width = 28
          Height = 13
          Caption = 'Count'
        end
        object Label1: TLabel
          Left = 8
          Top = 77
          Width = 29
          Height = 13
          Caption = 'Frame'
        end
        object seSizeY: TSpinEdit
          Left = 108
          Top = 24
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 1070
          OnChange = seSizeYChange
        end
        object seSizeX: TSpinEdit
          Left = 44
          Top = 24
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 730
          OnChange = seSizeXChange
        end
        object seDeltaX: TSpinEdit
          Left = 44
          Top = 48
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 10
        end
        object seDeltaY: TSpinEdit
          Left = 108
          Top = 48
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 10
        end
        object seCountX: TSpinEdit
          Left = 44
          Top = 96
          Width = 57
          Height = 22
          MaxValue = 32
          MinValue = 1
          TabOrder = 6
          Value = 3
        end
        object seCountY: TSpinEdit
          Left = 108
          Top = 96
          Width = 57
          Height = 22
          MaxValue = 32
          MinValue = 1
          TabOrder = 7
          Value = 1
        end
        object seFrameX: TSpinEdit
          Left = 44
          Top = 72
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
          OnChange = seFrameXChange
        end
        object seFrameY: TSpinEdit
          Left = 108
          Top = 72
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 5
          Value = 0
          OnChange = seFrameYChange
        end
        object chbDimension: TCheckBox
          Left = 4
          Top = 0
          Width = 69
          Height = 17
          Caption = 'Dimension'
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = chbDimensionClick
        end
      end
      object gbResult: TGroupBox
        Left = 6
        Top = 216
        Width = 173
        Height = 191
        Align = alTop
        TabOrder = 2
        object lblBorder: TLabel
          Left = 8
          Top = 17
          Width = 31
          Height = 13
          Caption = 'Border'
          Transparent = True
        end
        object shFrameColor: TShape
          Left = 105
          Top = 11
          Width = 63
          Height = 92
          Align = alCustom
          Pen.Width = 8
          Shape = stRoundRect
        end
        object lblInterval: TLabel
          Left = 8
          Top = 43
          Width = 35
          Height = 13
          Caption = 'Interval'
        end
        object Label2: TLabel
          Left = 8
          Top = 140
          Width = 41
          Height = 13
          Caption = 'DPI calc'
        end
        object lblDPI: TLabel
          Left = 148
          Top = 110
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = 'DPI'
        end
        object img2: TImage
          Left = 114
          Top = 21
          Width = 45
          Height = 72
        end
        object seBorder: TSpinEdit
          Left = 44
          Top = 16
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
          OnChange = seBorderChange
        end
        object sbFrameColor: TPanel
          Left = 8
          Top = 64
          Width = 93
          Height = 23
          Caption = 'Frame color'
          TabOrder = 2
          OnClick = sbFrameColorClick
        end
        object chbRoundRect: TCheckBox
          Left = 8
          Top = 93
          Width = 81
          Height = 17
          Caption = 'Round Rect'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chbRoundRectClick
        end
        object chbCuttingLine: TCheckBox
          Left = 8
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Cutting line'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = chbCuttingLineClick
        end
        object seInterval: TSpinEdit
          Left = 44
          Top = 40
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = seFrameChange
        end
        object chkHex: TCheckBox
          Left = 112
          Top = 139
          Width = 51
          Height = 14
          Caption = 'Hex'
          TabOrder = 10
          Visible = False
        end
        object seSplitX: TSpinEdit
          Left = 51
          Top = 161
          Width = 57
          Height = 22
          MaxValue = 32
          MinValue = 1
          TabOrder = 8
          Value = 1
        end
        object seSplitY: TSpinEdit
          Left = 108
          Top = 161
          Width = 57
          Height = 22
          MaxValue = 32
          MinValue = 1
          TabOrder = 9
          Value = 1
        end
        object chbSplit: TCheckBox
          Left = 8
          Top = 166
          Width = 42
          Height = 14
          Caption = 'Split'
          TabOrder = 7
        end
        object chbMirror: TCheckBox
          Left = 8
          Top = 124
          Width = 65
          Height = 15
          Caption = 'Mirror'
          TabOrder = 5
          OnClick = chbMirrorClick
        end
        object seDPI: TSpinEdit
          Left = 51
          Top = 135
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 6
          Value = 300
          OnChange = seDPIChange
        end
        object chbResult: TCheckBox
          Left = 4
          Top = 0
          Width = 50
          Height = 17
          Caption = 'Result'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = chbResultClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 407
        Width = 173
        Height = 275
        Align = alClient
        Caption = 'Cards'
        TabOrder = 3
        ExplicitHeight = 276
        object imgPreview: TImage
          Left = 2
          Top = 173
          Width = 169
          Height = 100
          Align = alBottom
          Visible = False
          ExplicitTop = 181
        end
        object Splitter1: TSplitter
          Left = 2
          Top = 169
          Width = 169
          Height = 4
          Cursor = crVSplit
          Align = alBottom
          Beveled = True
          Visible = False
          OnMoved = Splitter1Moved
          ExplicitTop = 177
        end
        object ToolBar1: TToolBar
          Left = 2
          Top = 15
          Width = 169
          Height = 28
          AutoSize = True
          ButtonHeight = 26
          Caption = 'ToolBar1'
          EdgeBorders = [ebBottom]
          Images = ImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Hint = 'Left'
            Action = Action1
          end
          object ToolButton2: TToolButton
            Left = 23
            Top = 0
            Hint = 'Right'
            Action = Action2
          end
          object ToolButton3: TToolButton
            Left = 46
            Top = 0
            Hint = 'Up'
            Action = Action3
          end
          object ToolButton4: TToolButton
            Left = 69
            Top = 0
            Hint = 'Down'
            Action = Action4
          end
          object ToolButton5: TToolButton
            Left = 92
            Top = 0
            Hint = 'Turn counterclock'
            Action = Action5
          end
          object ToolButton6: TToolButton
            Left = 115
            Top = 0
            Hint = 'Turn clockwise'
            Action = Action6
          end
          object ToolButton7: TToolButton
            Left = 138
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object ToolButton8: TToolButton
            Left = 146
            Top = 0
            Hint = 'Reset grid'
            Caption = 'ToolButton8'
            ImageIndex = 6
            OnClick = ToolButton8Click
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 43
          Width = 169
          Height = 31
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvNone
          Caption = '~  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object TrackBar1: TTrackBar
            Left = 93
            Top = 0
            Width = 61
            Height = 31
            Hint = 'Turn step (0.02-1'#39')'#13#10'Also autodetect max angle (10-30)'
            Align = alLeft
            Max = 3
            Min = 1
            ParentShowHint = False
            Position = 2
            ShowHint = True
            TabOrder = 0
            TickMarks = tmTopLeft
          end
          object TrackBar2: TTrackBar
            Left = 0
            Top = 0
            Width = 93
            Height = 31
            Hint = 'Move step(1-100 pix)'
            Align = alLeft
            Max = 4
            Min = 1
            ParentShowHint = False
            Position = 1
            ShowHint = True
            TabOrder = 1
            TickMarks = tmTopLeft
          end
        end
        object sgCards: TStringGrid
          Left = 2
          Top = 74
          Width = 169
          Height = 95
          Align = alClient
          ColCount = 4
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 16
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          TabOrder = 2
          OnClick = sgCardsClick
          OnSetEditText = sgCardsSetEditText
          ExplicitHeight = 96
        end
      end
      object Panel3: TPanel
        Left = 6
        Top = 682
        Width = 173
        Height = 14
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitTop = 683
        object CheckBox1: TCheckBox
          Left = 8
          Top = -1
          Width = 97
          Height = 17
          Caption = 'Preview Corners '
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
    end
    object pnXY: TPanel
      Left = 0
      Top = 702
      Width = 185
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 703
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'JPG'
    Filter = 
      'All (*.jpg;*.jpeg;*.bmp)|*.jpg;*.jpeg;*.bmp;*.png|JPEG Image Fil' +
      'e (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|' +
      '*.bmp|PNG (*.png)|*.png'
    InitialDir = '.'
    Left = 695
    Top = 24
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'PNG'
    Filter = 'Portable Network Graphics (*.png)|*.png'
    InitialDir = '.'
    Left = 688
    Top = 80
  end
  object ImageList1: TImageList
    Left = 316
    Top = 132
    Bitmap = {
      494C01010D001800140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF00000000000000FF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
      FF00000000000000FF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00000000000000FF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000008080800000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000808080000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF0000800000008000000080000000FFFF0000FFFF0000800000FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080000000
      0000808080008080800080808000808080008080800080808000000000008080
      80000000000080808000000000000000000000000000FF000000008000000080
      00000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000800000FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000000000008080
      8000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000808080000000
      00008080800000000000000000000000000000000000FF0000000080000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF000080
      0000FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000808080000000000080808000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00008080
      80000000000000000000000000000000000000000000FF0000000080000000FF
      FF0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF000080
      0000FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      00000000000080808000000000000000000000000000FF000000FFFFFF000080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080
      0000FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF008080800000000000000000000000000000000000FF000000FFFFFF000080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000800000FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000080808000FFFFFF00FFFF
      0000000080000000800000008000000080000000800000008000FFFFFF00FFFF
      00008080800000000000000000000000000000000000FF000000FFFFFF000080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000800000FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000080808000FFFF0000FFFF
      FF00000080000000800000008000000080000000800000008000FFFF0000FFFF
      FF008080800000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000800000FFFFFF00FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      00008080800000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF000080000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      000000FFFF0000800000FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF000000000080808000000000000000000000000000FF000000FFFFFF00FFFF
      FF000080000000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000800000FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000808080000000000080808000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF008080
      80000000000000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF000080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080
      00000080000000800000FF000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000000000008080
      8000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00808080000000
      00008080800000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF000080000000FFFF0000FFFF00008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000808080000000
      0000808080008080800080808000808080008080800080808000000000008080
      80000000000000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080008080800080808000808080008080800080808000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000808080000000000080808000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF00FFFF00000000800000008000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000008080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000808080008080
      800000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF000000800000008000FFFF0000FFFFFF00FFFF0000FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      0000000080000000800000008000000080000000800000008000FFFFFF00FFFF
      0000808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFF0000FFFF
      FF00000080000000800000008000000080000000800000008000FFFF0000FFFF
      FF0080808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008080800080808000000000000000
      00008080800080808000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      0000FFFFFF00FFFF00000000800000008000FFFFFF00FFFF0000FFFFFF00FFFF
      000080808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008080800080808000000000000000
      00008080800080808000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080808000FFFF0000FFFF
      FF00FFFF0000FFFFFF000000800000008000FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000808080000000000080808000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080008080800080808000808080008080800080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00E007000000000000E007000000000000
      E007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E007000000000000
      E007000000000000E007000000000000FFFC80018007FE7FFFF88001FFF7E007
      E0318001FC37C003C0038001F817800180078001E817800100078001E8178001
      00038001E817800100038001E817000000038001E817000000038001E8178001
      00038001E817800100038001E817800100078001E81F800180078001EC3FC003
      C00F8001EFFFE007E01F8001E001FE7FFFFFFFFFFFFFFFFCF8FFFF1FFFC8FFF8
      F81FF81FFFB8E031F803C01FCFBFC003F003C00FCFBC8007F003C00FFFBC0007
      F007E00FDFBF0003E007E007CF7C0003E007E007E6FC0003E00FF007F37F0003
      C00FF00333BC0003C00FF00333BC0003C01FF80387BF0007F81FF81FFFB88007
      FF1FF8FFFFC8C00FFFFFFFFFFFFFE01FFFFFFFFFFC7FFEFFFFFFFFFFFC7FFEFF
      FFFFFFFFFC7FFC7FFF3FFFFFFC7FFC7FFC3FFCFFFC7FF83FF03FFC3FFC7FF83F
      C000FC0FE00FF01F00000003E00FF01FC0000000F01FE00FF03F0003F01FE00F
      FC3FFC0FF83FFC7FFF3FFC3FF83FFC7FFFFFFCFFFC7FFC7FFFFFFFFFFC7FFC7F
      FFFFFFFFFEFFFC7FFFFFFFFFFEFFFC7F00000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 532
    Top = 176
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 412
    Top = 300
    object Action1: TAction
      Caption = 'Action1'
      ImageIndex = 0
      ShortCut = 16421
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object Action2: TAction
      Caption = 'Action2'
      ImageIndex = 1
      ShortCut = 16423
      OnExecute = Action2Execute
      OnUpdate = Action1Update
    end
    object Action3: TAction
      Caption = 'Action3'
      ImageIndex = 2
      ShortCut = 16422
      OnExecute = Action3Execute
      OnUpdate = Action1Update
    end
    object Action4: TAction
      Caption = 'Action4'
      ImageIndex = 3
      ShortCut = 16424
      OnExecute = Action4Execute
      OnUpdate = Action1Update
    end
    object Action5: TAction
      Caption = 'Action5'
      ImageIndex = 4
      ShortCut = 16417
      OnExecute = Action5Execute
      OnUpdate = Action1Update
    end
    object Action6: TAction
      Caption = 'Action6'
      ImageIndex = 5
      ShortCut = 16418
      OnExecute = Action6Execute
      OnUpdate = Action1Update
    end
    object Action7: TAction
      Caption = 'Action7'
      Hint = 'Zoom 2x'
      ImageIndex = 7
      ShortCut = 16491
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Hint = 'Zoom 1/2'
      ImageIndex = 8
      ShortCut = 16493
      OnExecute = Action8Execute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 447
    Top = 135
  end
end
