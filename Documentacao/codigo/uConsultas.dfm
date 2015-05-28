object FConsultas: TFConsultas
  Left = 0
  Top = 28
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FConsultas'
  ClientHeight = 664
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnConsultaContas: TSpeedButton
    Left = 8
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Contas a Receber em Atraso'
    OnClick = btnConsultaContasClick
  end
  object BtnConsultaProdutos: TSpeedButton
    Left = 8
    Top = 56
    Width = 185
    Height = 41
    Caption = 'Produtos Mais Vendidos'
    OnClick = BtnConsultaProdutosClick
  end
  object btnConsultaEstoque: TSpeedButton
    Left = 8
    Top = 104
    Width = 185
    Height = 41
    Caption = 'Estoque'
    OnClick = btnConsultaEstoqueClick
  end
  object btnConsultaClientes: TSpeedButton
    Left = 8
    Top = 152
    Width = 185
    Height = 41
    Caption = 'Clientes Sem Venda '
    OnClick = btnConsultaClientesClick
  end
end
