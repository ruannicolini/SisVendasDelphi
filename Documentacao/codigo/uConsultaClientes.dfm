inherited FConsultaClientes: TFConsultaClientes
  Top = 172
  Caption = 'FConsultaClientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tbFiltros
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
        object Date_Inic: TDateTimePicker
          Left = 48
          Top = 16
          Width = 89
          Height = 21
          Date = 42126.488447997680000000
          Time = 42126.488447997680000000
          TabOrder = 1
        end
        object Date_fim: TDateTimePicker
          Left = 144
          Top = 16
          Width = 89
          Height = 21
          Date = 42126.488549120370000000
          Time = 42126.488549120370000000
          TabOrder = 2
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = mConsulta
    Top = 8
  end
  object pConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 848
    Top = 8
  end
  object mConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConsulta'
    Left = 816
    Top = 8
    object mConsultaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object mConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mConsultaendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object mConsultanumero: TStringField
      FieldName = 'numero'
      FixedChar = True
      Size = 7
    end
    object mConsultabairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object mConsultacomplemento: TStringField
      FieldName = 'complemento'
    end
    object mConsultacep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 9
    end
    object mConsultacnpj: TStringField
      FieldName = 'cnpj'
      FixedChar = True
      Size = 15
    end
    object mConsultatelFixo: TStringField
      FieldName = 'telFixo'
      FixedChar = True
      Size = 15
    end
    object mConsultatelCel: TStringField
      FieldName = 'telCel'
      FixedChar = True
      Size = 15
    end
    object mConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object mConsultaie: TStringField
      FieldName = 'ie'
      FixedChar = True
      Size = 15
    end
    object mConsultaidCidade: TIntegerField
      FieldName = 'idCidade'
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      'select * from Cliente'
      'where idCliente not in '
      '(select ped.idCliente from pedido ped '
      'where CONVERT(DATETIME,ped.data,103) between ( :d1) and ( :d2) '
      ')')
    Left = 784
    Top = 8
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object qConsultaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object qConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qConsultaendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object qConsultanumero: TStringField
      FieldName = 'numero'
      FixedChar = True
      Size = 7
    end
    object qConsultabairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qConsultacomplemento: TStringField
      FieldName = 'complemento'
    end
    object qConsultacep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 9
    end
    object qConsultacnpj: TStringField
      FieldName = 'cnpj'
      FixedChar = True
      Size = 15
    end
    object qConsultatelFixo: TStringField
      FieldName = 'telFixo'
      FixedChar = True
      Size = 15
    end
    object qConsultatelCel: TStringField
      FieldName = 'telCel'
      FixedChar = True
      Size = 15
    end
    object qConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object qConsultaie: TStringField
      FieldName = 'ie'
      FixedChar = True
      Size = 15
    end
    object qConsultaidCidade: TIntegerField
      FieldName = 'idCidade'
    end
  end
end
