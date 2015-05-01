inherited FConsultaContas: TFConsultaContas
  Caption = 'FConsultaContas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited btnNovo: TToolButton
      Visible = False
    end
    inherited btnDeletar: TToolButton
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
  inherited DS: TDataSource
    DataSet = mConsulta
  end
  object mConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConsulta'
    Left = 808
    Top = 8
    object mConsultaidConta: TIntegerField
      FieldName = 'idConta'
    end
    object mConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mConsultanumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      Size = 50
    end
    object mConsultadata_faturamento: TStringField
      FieldName = 'data_faturamento'
      Size = 10
    end
    object mConsultadata_venc: TStringField
      FieldName = 'data_venc'
      Size = 10
    end
    object mConsultadata_pag: TStringField
      FieldName = 'data_pag'
      Size = 10
    end
    object mConsultaidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object mConsultanf: TFloatField
      FieldName = 'nf'
    end
    object mConsultavalorTotal: TFloatField
      FieldName = 'valorTotal'
    end
    object mConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
  end
  object pConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 840
    Top = 8
  end
  object qConsulta: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      
        'select c.idConta, cli.nome, c.numero_duplicata, fat.data_faturam' +
        'ento, c.data_venc, c.data_pag, '
      'ped.idPedido, fat.nf, ped.valorTotal,  cli.email '
      'from contas c '
      
        'left outer join faturamento fat on c.idFaturamento = fat.idFatur' +
        'amento'
      'left outer join pedido ped on fat.idPedido = ped.idPedido'
      'left outer join cliente cli on ped.idCliente = cli.idCliente'
      'where c.statusPag = 0 '
      
        'and (SIGN(DATEDIFF(DAY,GETDATE(), CONVERT(DATETIME,c.data_venc,1' +
        '03))) = -1);')
    Left = 776
    Top = 8
    object qConsultaidConta: TIntegerField
      FieldName = 'idConta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qConsultanumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      Size = 50
    end
    object qConsultadata_faturamento: TStringField
      FieldName = 'data_faturamento'
      Size = 10
    end
    object qConsultadata_venc: TStringField
      FieldName = 'data_venc'
      Size = 10
    end
    object qConsultadata_pag: TStringField
      FieldName = 'data_pag'
      Size = 10
    end
    object qConsultaidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object qConsultanf: TFloatField
      FieldName = 'nf'
    end
    object qConsultavalorTotal: TFloatField
      FieldName = 'valorTotal'
    end
    object qConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
  end
end
