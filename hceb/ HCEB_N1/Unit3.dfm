object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Temperature 3D Plot'
  ClientHeight = 544
  ClientWidth = 1028
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 824
    Top = 8
    Width = 57
    Height = 59
    Caption = 'Plot'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 854
    Top = 470
    Width = 3
    Height = 13
  end
  object SpeedButton2: TSpeedButton
    Left = 744
    Top = 8
    Width = 57
    Height = 59
    Caption = 'X'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 715
    Top = 8
    Width = 38
    Height = 59
    Caption = '-'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 792
    Top = 8
    Width = 41
    Height = 59
    Caption = '+'
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 871
    Top = 8
    Width = 41
    Height = 59
    Caption = 'Clear'
    OnClick = SpeedButton5Click
  end
  object Gauge1: TGauge
    Left = 715
    Top = 194
    Width = 300
    Height = 24
    ForeColor = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqProof
    ParentFont = False
    Progress = 0
  end
  object SpeedButton6: TSpeedButton
    Left = 715
    Top = 72
    Width = 54
    Height = 22
    Caption = 'Wd write'
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 894
    Top = 174
    Width = 121
    Height = 22
    Caption = 'Test'
    OnClick = SpeedButton7Click
  end
  object Chart3: TChart
    Left = -8
    Top = 8
    Width = 701
    Height = 506
    Legend.Visible = False
    Title.Text.Strings = (
      '')
    Chart3DPercent = 5
    View3DOptions.Elevation = 319
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 312
    View3DWalls = False
    ParentColor = True
    TabOrder = 0
    ColorPaletteIndex = 4
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series7: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series8: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series9: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series10: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series11: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series12: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series13: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series14: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series15: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series16: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series17: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series18: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series19: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series20: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series21: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series22: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series23: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series24: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series25: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series26: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series27: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series28: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series29: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series30: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series31: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series32: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clBlue
      Brush.Color = clWhite
      Brush.Style = bsClear
      Brush.BackColor = clDefault
      LineBrush = bsClear
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object ScrollBar1: TScrollBar
    Left = 727
    Top = 470
    Width = 121
    Height = 12
    PageSize = 0
    Position = 90
    TabOrder = 1
  end
  object ScrollBar2: TScrollBar
    Left = 727
    Top = 488
    Width = 121
    Height = 12
    PageSize = 0
    Position = 100
    TabOrder = 2
  end
  object ScrollBar3: TScrollBar
    Left = 727
    Top = 506
    Width = 121
    Height = 12
    PageSize = 0
    Position = 15
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 715
    Top = 224
    Width = 300
    Height = 225
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 918
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Write into file'
    TabOrder = 5
  end
  object LabeledEdit1: TLabeledEdit
    Left = 894
    Top = 73
    Width = 121
    Height = 19
    Cursor = crCross
    Color = clBlack
    Ctl3D = False
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Cursor = crHSplit
    EditLabel.Caption = 'layot number->'
    EditLabel.DragCursor = crCross
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    Text = '333'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 894
    Top = 98
    Width = 121
    Height = 21
    Cursor = crCross
    Color = clHighlightText
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'file name-> '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 7
    Text = 'data.dat'
  end
  object LabeledEdit3: TLabeledEdit
    Left = 894
    Top = 125
    Width = 121
    Height = 23
    Cursor = crCross
    Color = clHighlightText
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Stop Time->'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Berlin Sans FB Demi'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Layout = tlBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 8
  end
  object CheckBox2: TCheckBox
    Left = 918
    Top = 31
    Width = 97
    Height = 17
    Caption = 'depth-to-heat'
    TabOrder = 9
  end
  object LabeledEdit4: TLabeledEdit
    Left = 894
    Top = 154
    Width = 121
    Height = 21
    Color = clHighlightText
    EditLabel.Width = 111
    EditLabel.Height = 13
    EditLabel.Caption = 'time interval to write->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 10
    Text = '1e-8'
  end
  object CheckBox3: TCheckBox
    Left = 715
    Top = 100
    Width = 97
    Height = 17
    Caption = 'time-to-heat'
    TabOrder = 11
  end
  object CheckBox4: TCheckBox
    Left = 715
    Top = 120
    Width = 97
    Height = 17
    Caption = 'wd'
    TabOrder = 12
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 719
    Top = 143
  end
end