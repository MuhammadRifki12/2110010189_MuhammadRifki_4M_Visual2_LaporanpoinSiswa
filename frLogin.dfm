object Login: TLogin
  Left = 730
  Top = 286
  Width = 356
  Height = 305
  Caption = 'frLogin'
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
    Left = 56
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object username: TEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object password: TEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Login'
    TabOrder = 2
  end
end
