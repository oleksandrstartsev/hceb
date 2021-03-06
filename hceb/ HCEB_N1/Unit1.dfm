object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Labradorite'
  ClientHeight = 546
  ClientWidth = 1084
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 840
    Top = 0
    Width = 163
    Height = 22
    Caption = 'Energy dissipation profile =>'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 312
    Top = 28
    Width = 46
    Height = 88
    Caption = 'Clear'
    OnClick = SpeedButton3Click
  end
  object SpeedButton11: TSpeedButton
    Left = 840
    Top = 24
    Width = 163
    Height = 21
    Caption = 'Global_3D=>'
    OnClick = SpeedButton11Click
  end
  object SpeedButton10: TSpeedButton
    Left = 920
    Top = 88
    Width = 33
    Height = 22
    Caption = 'at3'
    OnClick = SpeedButton10Click
  end
  object SpeedButton12: TSpeedButton
    Left = 920
    Top = 60
    Width = 33
    Height = 22
    Caption = 'Clear'
    OnClick = SpeedButton12Click
  end
  object SpeedButton13: TSpeedButton
    Left = 1001
    Top = 60
    Width = 23
    Height = 22
    Caption = 'X'
    OnClick = SpeedButton13Click
  end
  object SpeedButton19: TSpeedButton
    Left = 687
    Top = 0
    Width = 130
    Height = 22
    Caption = 'LG3D'
    OnClick = SpeedButton19Click
  end
  object Label2: TLabel
    Left = 1028
    Top = 26
    Width = 48
    Height = 19
    Caption = 'Time='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 11
    Top = 28
    Width = 311
    Height = 88
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object LabeledEdit1: TLabeledEdit
    Left = 364
    Top = 48
    Width = 121
    Height = 21
    EditLabel.Width = 101
    EditLabel.Height = 13
    EditLabel.Caption = 'A[Atomic mass, au]='
    PopupMenu = PopupMenu1
    TabOrder = 1
    Text = '29,92'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object LabeledEdit2: TLabeledEdit
    Left = 364
    Top = 87
    Width = 121
    Height = 21
    EditLabel.Width = 109
    EditLabel.Height = 13
    EditLabel.Caption = 'Z[Atomic charge, eu]='
    PopupMenu = PopupMenu1
    TabOrder = 2
    Text = '14,3'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object LabeledEdit3: TLabeledEdit
    Left = 491
    Top = 48
    Width = 121
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'En[MeV]='
    PopupMenu = PopupMenu1
    TabOrder = 3
    Text = '0,35'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object LabeledEdit4: TLabeledEdit
    Left = 491
    Top = 87
    Width = 121
    Height = 21
    EditLabel.Width = 126
    EditLabel.Height = 13
    EditLabel.Caption = 'x[penetration depth,sm]='
    PopupMenu = PopupMenu1
    TabOrder = 4
    Text = '0,1'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object Chart1: TChart
    Left = 30
    Top = 114
    Width = 455
    Height = 307
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = -15
    Title.Text.Strings = (
      'THE ENERGY DEPOSITION PROFILE')
    BottomAxis.Title.Caption = 'penetration depth,[sm]'
    LeftAxis.Title.Caption = 'Energy, [MeV/Sm]'
    View3D = False
    Color = clWhite
    TabOrder = 5
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clRed
      Brush.BackColor = clDefault
      LinePen.Width = 2
      Pointer.Brush.Gradient.EndColor = clRed
      Pointer.Gradient.EndColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object LabeledEdit5: TLabeledEdit
    Left = 637
    Top = 48
    Width = 96
    Height = 21
    EditLabel.Width = 94
    EditLabel.Height = 13
    EditLabel.Caption = 'Integral statistics ='
    PopupMenu = PopupMenu1
    TabOrder = 6
    Text = '100'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object LabeledEdit6: TLabeledEdit
    Left = 637
    Top = 87
    Width = 96
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = 'Density='
    TabOrder = 7
    Text = '2,8'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object LabeledEdit7: TLabeledEdit
    Left = 755
    Top = 87
    Width = 121
    Height = 21
    EditLabel.Width = 131
    EditLabel.Height = 13
    EditLabel.Caption = 'Initial temperature T(0,C)='
    TabOrder = 8
    Text = '1'
    OnKeyPress = LabeledEdit1KeyPress
  end
  object Chart2: TChart
    Left = 491
    Top = 114
    Width = 476
    Height = 315
    Cursor = 2020
    BottomWall.Color = 8454143
    BottomWall.Pen.Color = clRed
    BottomWall.Pen.Style = psDashDotDot
    BottomWall.Pen.EndStyle = esFlat
    BottomWall.Transparency = 80
    BottomWall.Transparent = True
    LeftWall.Brush.Gradient.EndColor = 16494225
    LeftWall.Brush.Gradient.MidColor = 11861246
    LeftWall.Brush.Gradient.StartColor = 10351788
    LeftWall.Brush.Gradient.Visible = True
    LeftWall.Transparency = 77
    Legend.Visible = False
    Title.Font.Color = 8388863
    Title.Text.Strings = (
      '')
    BottomAxis.Title.Caption = 'Depth, [sm]'
    ClipPoints = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Title.Caption = 'Temperature, [c]'
    View3DOptions.Elevation = 360
    View3DOptions.Orthogonal = False
    View3DOptions.Rotation = 300
    ParentColor = True
    TabOrder = 9
    ColorPaletteIndex = 14
    object Series3: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
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
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series33: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Visible = False
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Color = 8388863
      Pointer.Brush.Gradient.EndColor = clLime
      Pointer.Gradient.EndColor = clLime
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 12
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 592
    Top = 124
    Width = 395
    Height = 170
    BorderStyle = bsSingle
    Color = clHighlight
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object SpeedButton16: TSpeedButton
      Left = 352
      Top = 12
      Width = 28
      Height = 22
      Caption = 'X'
      OnClick = SpeedButton16Click
    end
    object Label6: TLabel
      Left = 56
      Top = 16
      Width = 162
      Height = 13
      Caption = 'Enter File Name for data saving:/ '
    end
    object Label7: TLabel
      Left = 127
      Top = 107
      Width = 3
      Height = 13
    end
    object SpeedButton20: TSpeedButton
      Left = 352
      Top = 64
      Width = 25
      Height = 22
      Caption = '->'
      OnClick = SpeedButton20Click
    end
    object Edit2: TEdit
      Left = 56
      Top = 64
      Width = 273
      Height = 21
      TabOrder = 0
    end
  end
  object CheckBox1: TCheckBox
    Left = 755
    Top = 50
    Width = 62
    Height = 17
    Caption = '#TF '#1063#1072#1089
    TabOrder = 11
  end
  object Panel2: TPanel
    Left = 993
    Top = 107
    Width = 64
    Height = 278
    Caption = 'Panel2'
    TabOrder = 12
    object SpeedButton6: TSpeedButton
      Left = 0
      Top = 114
      Width = 65
      Height = 73
      Align = alCustom
      Caption = 'Tem_Un'
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 0
      Top = 48
      Width = 22
      Height = 73
      Align = alCustom
      Caption = '-'
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 40
      Top = 48
      Width = 25
      Height = 73
      Align = alCustom
      Caption = '+'
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 20
      Top = 48
      Width = 22
      Height = 73
      Align = alCustom
      Caption = 'X'
      OnClick = SpeedButton9Click
    end
    object SpeedButton4: TSpeedButton
      Left = 0
      Top = 0
      Width = 65
      Height = 56
      Align = alCustom
      Caption = 'Diffusion'
      OnClick = SpeedButton4Click
    end
    object SpeedButton15: TSpeedButton
      Left = 0
      Top = 217
      Width = 66
      Height = 25
      Align = alCustom
      Caption = 'Write in dat'
      OnClick = SpeedButton15Click
    end
    object SpeedButton17: TSpeedButton
      Left = 0
      Top = 200
      Width = 65
      Height = 22
      Align = alCustom
      Caption = 'file'
      OnClick = SpeedButton17Click
    end
    object SpeedButton18: TSpeedButton
      Left = -2
      Top = 240
      Width = 67
      Height = 22
      Align = alCustom
      OnClick = SpeedButton18Click
    end
    object Edit1: TEdit
      Left = 0
      Top = 182
      Width = 61
      Height = 21
      Align = alCustom
      TabOrder = 0
      Text = 'data.dat'
    end
  end
  object Panel3: TPanel
    Left = 30
    Top = 496
    Width = 403
    Height = 42
    TabOrder = 13
    object SpeedButton14: TSpeedButton
      Left = 3
      Top = 23
      Width = 206
      Height = 17
      Caption = 'Beam[ A/microsec  ]'
      OnClick = SpeedButton14Click
    end
    object SpeedButton5: TSpeedButton
      Left = 215
      Top = 0
      Width = 91
      Height = 42
      Caption = 'Beam_Pr[A/m^2]'
      OnClick = SpeedButton5Click
    end
    object SpeedButton1: TSpeedButton
      Left = 306
      Top = 0
      Width = 89
      Height = 42
      Caption = 'Profile'
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 16
      Top = 0
      Width = 30
      Height = 13
      Caption = 'Time='
    end
    object Label4: TLabel
      Left = 50
      Top = 0
      Width = 6
      Height = 13
      Caption = '0'
    end
    object ScrollBar2: TScrollBar
      Left = 88
      Top = 5
      Width = 121
      Height = 12
      PageSize = 0
      TabOrder = 0
      OnChange = ScrollBar2Change
    end
  end
  object Panel4: TPanel
    Left = 480
    Top = 480
    Width = 494
    Height = 58
    TabOrder = 14
    object Label8: TLabel
      Left = 88
      Top = 28
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label1: TLabel
      Left = 20
      Top = 32
      Width = 87
      Height = 19
      Caption = 'Beam_width'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 128
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object ScrollBar1: TScrollBar
      Left = 169
      Top = 36
      Width = 121
      Height = 15
      PageSize = 0
      Position = 50
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
    object ScrollBar3: TScrollBar
      Left = 35
      Top = 0
      Width = 121
      Height = 11
      PageSize = 0
      Position = 100
      TabOrder = 1
      OnChange = ScrollBar3Change
    end
    object ScrollBar4: TScrollBar
      Left = 178
      Top = 0
      Width = 121
      Height = 11
      PageSize = 0
      TabOrder = 2
      OnChange = ScrollBar3Change
    end
    object ScrollBar5: TScrollBar
      Left = 305
      Top = 0
      Width = 121
      Height = 11
      PageSize = 0
      TabOrder = 3
      OnChange = ScrollBar3Change
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 65528
  end
  object MainMenu1: TMainMenu
    Left = 16
    object About1: TMenuItem
      Caption = 'About'
      object Developer1: TMenuItem
        Caption = 'Developer'
        OnClick = Developer1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 968
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 1032
    Top = 392
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer3Timer
    Left = 992
    Top = 392
  end
end
