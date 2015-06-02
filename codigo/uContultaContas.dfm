inherited FConsultaContas: TFConsultaContas
  Caption = 'FConsultaContas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Top = 57
    Height = 373
  end
  inherited GroupBox1: TGroupBox
    Height = 57
    object btnPesq: TSpeedButton
      Left = 0
      Top = 8
      Width = 23
      Height = 22
    end
  end
  object pConsulta: TDataSetProvider
    Left = 848
    Top = 8
  end
  object mConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 8
  end
  object qContulta: TQuery
    Left = 768
    Top = 8
  end
end
