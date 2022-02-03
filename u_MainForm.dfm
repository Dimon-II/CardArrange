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
  PixelsPerInch = 96
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
    object tsSource: TTabSheet
      Caption = 'Source'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 25
        Width = 810
        Height = 671
        HorzScrollBar.Style = ssFlat
        HorzScrollBar.Tracking = True
        VertScrollBar.Style = ssFlat
        VertScrollBar.Tracking = True
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitTop = 69
        ExplicitHeight = 627
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
          Height = 667
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
      object PageScroller1: TPageScroller
        Left = 0
        Top = 0
        Width = 810
        Height = 25
        Align = alTop
        Control = Panel5
        TabOrder = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 810
          Height = 28
          Align = alTop
          AutoSize = True
          BevelEdges = [beBottom]
          TabOrder = 0
          ExplicitTop = 8
          object TrackBar3: TTrackBar
            Left = 309
            Top = 1
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
            Left = 402
            Top = 1
            Width = 71
            Height = 21
            Align = alLeft
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 4
            Text = 'Ground'
            Items.Strings = (
              'Ground'
              'Frame')
            ExplicitLeft = 401
            ExplicitTop = 0
          end
          object Panel2: TPanel
            Left = 473
            Top = 1
            Width = 47
            Height = 26
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = 'Blink'
            TabOrder = 3
            ExplicitLeft = 467
            ExplicitTop = -5
          end
          object ColorBox1: TColorBox
            Left = 520
            Top = 1
            Width = 80
            Height = 22
            Align = alLeft
            Selected = clLime
            Style = [cbStandardColors, cbPrettyNames]
            TabOrder = 1
            ExplicitLeft = 519
            ExplicitTop = 0
          end
          object ColorBox2: TColorBox
            Left = 600
            Top = 1
            Width = 80
            Height = 22
            Align = alLeft
            Selected = clGreen
            Style = [cbStandardColors, cbPrettyNames]
            TabOrder = 2
            ExplicitLeft = 599
            ExplicitTop = 0
          end
          object Panel4: TPanel
            Left = 680
            Top = 1
            Width = 47
            Height = 26
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 5
            Caption = 'Anchor'
            TabOrder = 5
          end
          object cbAnchor: TComboBox
            Left = 727
            Top = 1
            Width = 71
            Height = 21
            Hint = 'Rotation anchor'
            Align = alLeft
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 6
            Text = 'Top-Left'
            Items.Strings = (
              'Top-Left'
              'Center')
            ExplicitLeft = 726
            ExplicitTop = 0
          end
          object ToolBar2: TToolBar
            Left = 1
            Top = 1
            Width = 308
            Height = 26
            Align = alLeft
            AutoSize = True
            ButtonHeight = 26
            Caption = 'ToolBar1'
            Images = ImageList1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
            object tbHideLines: TToolButton
              Left = 231
              Top = 0
              Hint = 'Hide lines'
              Caption = 'tbHideLines'
              ImageIndex = 13
              Style = tbsCheck
              OnClick = tbHideLinesClick
            end
            object tbOnecard: TToolButton
              Left = 254
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
              Left = 277
              Top = 0
              Hint = 'Autodetect all'
              Caption = 'ToolButton20'
              ImageIndex = 9
              OnClick = ToolButton20Click
            end
            object ToolButton23: TToolButton
              Left = 300
              Top = 0
              Width = 8
              Caption = 'ToolButton23'
              ImageIndex = 11
              Style = tbsSeparator
            end
          end
        end
      end
    end
    object tsResult: TTabSheet
      Caption = 'Result'
      ImageIndex = 1
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
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
      object ScrollBox3: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        Align = alClient
        TabOrder = 0
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
      object ScrollBox4: TScrollBox
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
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
    object TabSheet1: TTabSheet
      Caption = 'About'
      ImageIndex = 4
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 810
        Height = 696
        Align = alClient
        Lines.Strings = (
          '# CardArrange '
          'Program for processing scanned card games - slpit and align.'
          ''
          'https://github.com/Dimon-II/CardArrange'
          'Open-source software, free software'
          ''
          
            '1. The program allows you to select several rectangular areas lo' +
            'cated at different angles in the picture.'
          
            '2. Automatic recognition works for an angle of no more than 30 d' +
            'egrees (the default is 20), cards should be at clear but not too' +
            ' long intervals and have clearly visible '
          'borders of the card itself or a frame picture on the card.'
          
            '3. Open the image file (preferably 300 DPI, it'#8217's inconvenient to' +
            ' work with a larger one).'
          
            '4. Set the size of the cards (Size), the number of cards on the ' +
            'sheet (Count) and the approximate indent left / top (Delta)'
          
            '5. By double-clicking on the upper left corner of the card in th' +
            'e picture, you can set the frame and check the entered size.'
          
            '6. Button ?{: fills the table with approximate coordinates of th' +
            'e cards according to their size and number. '
          
            '7. If the picture is already loaded - auto-recognition is perfor' +
            'med. If the center of the recognized area is in the area of '#8203#8203'th' +
            'e '#8220'approximate'#8221' card, then new coordinates and an '
          'angle are set for it, otherwise a row is added to the table. '
          
            '8. If all cards have the same color frame, you can use the new [' +
            'Frame] auto-recognition mode. To do this, select a border color:'
          
            '  - (Frame color) button and click on the picture in the area wi' +
            'th the desired color'
          '  - switch (Ground / Frame) mode'
          '  - and try with different contrast options.'
          
            '(This mode solves the problem with shadows of cards on a light b' +
            'ackground).'
          
            '9. When you select a card in the table, it is displayed on the s' +
            'creen with a flickering frame. Coordinates and angles can be cor' +
            'rected using the buttons with arrows and '
          
            'card rotation, double-click on the upper left corner, or enter c' +
            'oordinates manually.'
          
            '19. This table is written to the INI file with the name of the i' +
            'mage file and is automatically loaded when the image is reloaded' +
            '.'
          
            '11. Cards are exported in the same block as in the original imag' +
            'e (for example 3x3), with the Split option you can save cards on' +
            'e at a time in a '
          'separate file.'
          
            '12. Frame - draws a single-color frame on over of the card, Roun' +
            'd rect - rounds the corners of the frame, the color is selected ' +
            'on the original image. If the visible elements '
          'of '
          
            'the cardp are far from its edge, you can temporarily assign a fr' +
            'ame for manual positioning and zero before exporting.'
          '13. Cutting line adds cut marks when exporting'
          
            '14. Parameters Border, Interval specify the placement of cards d' +
            'uring export, Mirror fills the interval between cards.'
          
            '15. The Selected tab allows you to see already rotated card and ' +
            'focusing on some vertical element to specify the degree of rotat' +
            'ion by combining the image in the enlarged '
          'block when the mouse button is pressed.'
          
            '16. The new "scissors" button allows to split a large image into' +
            ' separate sheets of a given size (you can use the paper settings' +
            ' of your printer) with "bleed" for cropping.'
          
            '17. Preview Cornesr -  precise manual fix tool: a separate pictu' +
            're on the right below shows the CORNER parts of the card, withou' +
            't scaling, combined side by side. The step '
          'is clearly visible if the edge of the cards is contrasting.'
          ''
          'Author - Dmitry Yatsenko (yatcenko@gmail.com)'
          'Development environment: Delphi (5-7-2007-10.4)'
          ''
          
            'PS: I highly recommend processing scanned cards with Sattva Desc' +
            'reen plug-in. '
          'http://www.descreen.net/eng/soft/descreen/descreen.htm'
          
            'Varning: the free version has a 2000x2000 pixel image size limit' +
            '.')
        ReadOnly = True
        TabOrder = 0
        ExplicitLeft = 160
        ExplicitTop = 184
        ExplicitWidth = 185
        ExplicitHeight = 89
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
    object pnParams: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 702
      Align = alClient
      BorderWidth = 5
      TabOrder = 0
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
          ButtonWidth = 31
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
            Left = 31
            Top = 0
            Hint = 'Save'
            Caption = '<'
            ImageIndex = 3
            OnClick = Button1Click
          end
          object tbtSaveIni: TToolButton
            Left = 62
            Top = 0
            Hint = 'Save INI'
            Caption = '='
            ImageIndex = 1
            OnClick = Button2Click
          end
          object ToolButton27: TToolButton
            Left = 93
            Top = 0
            Width = 8
            Caption = 'ToolButton27'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tbtRotate: TToolButton
            Left = 101
            Top = 0
            Hint = 'Rotate 90'
            Caption = #1050
            ImageIndex = 2
            OnClick = tbtRotateClick
          end
          object tbtSplit: TToolButton
            Left = 132
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
          Width = 74
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
        Height = 176
        Align = alTop
        TabOrder = 2
        object lblBorder: TLabel
          Left = 8
          Top = 35
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
          Top = 59
          Width = 35
          Height = 13
          Caption = 'Interval'
        end
        object Label2: TLabel
          Left = 69
          Top = 153
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
          Top = 32
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
          Top = 80
          Width = 93
          Height = 23
          Caption = 'Frame color'
          TabOrder = 2
          OnClick = sbFrameColorClick
        end
        object chbRoundRect: TCheckBox
          Left = 8
          Top = 106
          Width = 81
          Height = 17
          Caption = 'Round Rect'
          TabOrder = 4
          OnClick = chbRoundRectClick
        end
        object chbCuttingLine: TCheckBox
          Left = 8
          Top = 122
          Width = 97
          Height = 17
          Caption = 'Cutting line'
          TabOrder = 5
          OnClick = chbCuttingLineClick
        end
        object seInterval: TSpinEdit
          Left = 44
          Top = 56
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = seFrameChange
        end
        object chkHex: TCheckBox
          Left = 8
          Top = 154
          Width = 40
          Height = 14
          Caption = 'Arc'
          TabOrder = 7
        end
        object chbSplit: TCheckBox
          Left = 8
          Top = 17
          Width = 57
          Height = 14
          Caption = 'Split x1'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
        object chbMirror: TCheckBox
          Left = 8
          Top = 138
          Width = 65
          Height = 15
          Caption = 'Mirror'
          TabOrder = 6
          OnClick = chbMirrorClick
        end
        object seDPI: TSpinEdit
          Left = 112
          Top = 148
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 8
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
          TabOrder = 9
          OnClick = chbResultClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 392
        Width = 173
        Height = 290
        Align = alClient
        Caption = 'Cards'
        TabOrder = 3
        object imgPreview: TImage
          Left = 2
          Top = 188
          Width = 169
          Height = 100
          Align = alBottom
          Visible = False
          ExplicitTop = 181
        end
        object Splitter1: TSplitter
          Left = 2
          Top = 184
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            Left = 112
            Top = 0
            Width = 16
            Height = 31
            Align = alLeft
            Flat = True
            Glyph.Data = {
              4A020000424D4A02000000000000360000002800000009000000130000000100
              1800000000001402000074120000741200000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFFFFFFFFFF0000000000
              00000000FF00FFFF00FFFF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF0000
              0000000000FFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFF000000000000
              00FFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FF00000000000000FFFFFF
              FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFF
              FFFFFFFFFF0000FFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFF
              FF0000FFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF
              FFFFFFFFFFFF00000000000000FFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFF00
              00FF00000000000000FFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFF0000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF000000000000
              00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FF00FFFF00FF
              FF00FF000000000000000000FFFFFFFFFFFF00000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF00000000000000000000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF00}
            OnClick = SpeedButton1Click
            ExplicitTop = 6
          end
          object TrackBar1: TTrackBar
            Left = 64
            Top = 0
            Width = 48
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
            Width = 64
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
          object seShift: TSpinEdit
            AlignWithMargins = True
            Left = 128
            Top = 5
            Width = 40
            Height = 22
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 16
            MinValue = -16
            ParentFont = False
            TabOrder = 2
            Value = 0
            Visible = False
            OnChange = seShiftChange
            ExplicitLeft = 152
            ExplicitTop = 1
          end
        end
        object sgCards: TStringGrid
          Left = 2
          Top = 74
          Width = 169
          Height = 110
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
          OnSelectCell = sgCardsSelectCell
          OnSetEditText = sgCardsSetEditText
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
        object chbCorners: TCheckBox
          Left = 8
          Top = -1
          Width = 121
          Height = 17
          Caption = 'Preview Corners '
          TabOrder = 0
          OnClick = chbCornersClick
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
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 688
    Top = 80
  end
  object ImageList1: TImageList
    Left = 316
    Top = 132
    Bitmap = {
      494C01010E001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF0000000000FF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080808000808080008080800000000000FF000000FF0000000000
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C0008080800000000000FF000000FF00000000FF
      FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF00C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF00000000000000FF00C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
      FF00000000000000FF00C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00000000000000FF00C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C000C0C0C0008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080808000808080008080800000000000FF000000FF00000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000FF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000FF00000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00E0077FFF00000000E007BFFF00000000
      E007800300000000000080030000000000008003000000000000800300000000
      0000800300000000000080030000000000008003000000000000800300000000
      000080030000000000008003000000000000800300000000E007800300000000
      E007800100000000E007FFFE00000000FFFC80018007FE7FFFF88001FFF7E007
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
    Interval = 512
    OnTimer = Timer1Timer
    Left = 532
    Top = 176
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 412
    Top = 300
    object Action1: TAction
      Category = 'Move'
      Caption = 'Action1'
      ImageIndex = 0
      ShortCut = 16421
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object Action2: TAction
      Category = 'Move'
      Caption = 'Action2'
      ImageIndex = 1
      ShortCut = 16423
      OnExecute = Action2Execute
      OnUpdate = Action1Update
    end
    object Action3: TAction
      Category = 'Move'
      Caption = 'Action3'
      ImageIndex = 2
      ShortCut = 16422
      OnExecute = Action3Execute
      OnUpdate = Action1Update
    end
    object Action4: TAction
      Category = 'Move'
      Caption = 'Action4'
      ImageIndex = 3
      ShortCut = 16424
      OnExecute = Action4Execute
      OnUpdate = Action1Update
    end
    object Action5: TAction
      Category = 'Move'
      Caption = 'Action5'
      ImageIndex = 4
      ShortCut = 16417
      OnExecute = Action5Execute
      OnUpdate = Action1Update
    end
    object Action6: TAction
      Category = 'Move'
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
