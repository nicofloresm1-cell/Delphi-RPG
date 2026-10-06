object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 600
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  TextHeight = 15
  object Button1: TButton
    Left = 200
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 321
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
end
