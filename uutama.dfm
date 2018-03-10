object Form1: TForm1
  Left = 427
  Top = 264
  Width = 660
  Height = 371
  Caption = 'Syllable Parser'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 440
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Pola :'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Teks :'
  end
  object Label3: TLabel
    Left = 440
    Top = 123
    Width = 46
    Height = 13
    Caption = 'Pemisah :'
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 425
    Height = 297
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Button1: TButton
    Left = 440
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 440
    Top = 24
    Width = 185
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 496
    Top = 120
    Width = 41
    Height = 21
    MaxLength = 1
    TabOrder = 3
    Text = '\'
  end
end
