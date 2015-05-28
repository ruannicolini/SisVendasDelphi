object FLogin: TFLogin
  Left = 403
  Top = 250
  Width = 510
  Height = 292
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lLogin: TLabel
    Left = 176
    Top = 48
    Width = 33
    Height = 13
    Caption = 'LOGIN'
  end
  object lSenha: TLabel
    Left = 176
    Top = 104
    Width = 37
    Height = 13
    Caption = 'SENHA'
  end
  object eLogin: TEdit
    Left = 176
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eSenha: TEdit
    Left = 176
    Top = 120
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnEntrar: TButton
    Left = 200
    Top = 168
    Width = 75
    Height = 25
    Caption = 'ENTRAR'
    TabOrder = 2
    OnClick = btnEntrarClick
  end
end
