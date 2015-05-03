inherited FConsultaClientes: TFConsultaClientes
  Top = 125
  Height = 528
  Caption = 'FConsultaClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 478
  end
  inherited ToolBar1: TToolBar
    inherited btnNovo: TToolButton
      Visible = False
    end
    inherited btnAlterar: TToolButton
      Visible = False
    end
    inherited btnCancelar: TToolButton
      Visible = False
    end
    inherited btnSalvar: TToolButton
      Visible = False
    end
  end
  inherited PageControl1: TPageControl
    Height = 447
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Height = 419
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 40
          Height = 13
          Caption = 'idCliente'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 16
          Top = 96
          Width = 45
          Height = 13
          Caption = 'endereco'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 16
          Top = 136
          Width = 35
          Height = 13
          Caption = 'numero'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 120
          Top = 136
          Width = 26
          Height = 13
          Caption = 'bairro'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 376
          Top = 136
          Width = 63
          Height = 13
          Caption = 'complemento'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 16
          Top = 178
          Width = 18
          Height = 13
          Caption = 'cep'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 16
          Top = 224
          Width = 20
          Height = 13
          Caption = 'cnpj'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 144
          Top = 176
          Width = 30
          Height = 13
          Caption = 'telFixo'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 376
          Top = 176
          Width = 26
          Height = 13
          Caption = 'telCel'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 224
          Top = 224
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 16
          Top = 269
          Width = 8
          Height = 13
          Caption = 'ie'
          FocusControl = DBEdit12
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 32
          Width = 134
          Height = 21
          DataField = 'idCliente'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 72
          Width = 561
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 112
          Width = 561
          Height = 21
          DataField = 'endereco'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 152
          Width = 95
          Height = 21
          DataField = 'numero'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 152
          Width = 249
          Height = 21
          DataField = 'bairro'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 376
          Top = 152
          Width = 201
          Height = 21
          DataField = 'complemento'
          DataSource = DS
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 16
          Top = 194
          Width = 121
          Height = 21
          DataField = 'cep'
          DataSource = DS
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 16
          Top = 240
          Width = 199
          Height = 21
          DataField = 'cnpj'
          DataSource = DS
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 144
          Top = 192
          Width = 225
          Height = 21
          DataField = 'telFixo'
          DataSource = DS
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 376
          Top = 192
          Width = 199
          Height = 21
          DataField = 'telCel'
          DataSource = DS
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 224
          Top = 240
          Width = 345
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 285
          Width = 199
          Height = 21
          DataField = 'ie'
          DataSource = DS
          TabOrder = 11
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
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
      inherited DBGrid1: TDBGrid
        Height = 354
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
