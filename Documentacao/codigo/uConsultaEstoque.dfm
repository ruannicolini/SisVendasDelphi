inherited FConsultaEstoque: TFConsultaEstoque
  Caption = 'FConsultaEstoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited TBAcaoTela: TToolBar
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
  inherited PageControl1: TPageControl
    ActivePage = tbFiltros
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
        object Edit_Ean: TLabeledEdit
          Left = 72
          Top = 24
          Width = 129
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = 'Ean'
          TabOrder = 1
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = mConsulta
    Left = 712
    Top = 8
  end
  object mConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConsulta'
    Left = 744
    Top = 8
    object mConsultaidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object mConsultadescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object mConsultaean: TFloatField
      FieldName = 'ean'
    end
    object mConsultaqtd: TIntegerField
      FieldName = 'qtd'
    end
    object mConsultadataAlteracaoEstoque: TStringField
      FieldName = 'dataAlteracaoEstoque'
      Size = 10
    end
    object mConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object pConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 776
    Top = 8
  end
  object qConsulta: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      
        'select prod.idProduto, prod.descricao, prod.ean, re.qtd, re.data' +
        'AlteracaoEstoque, us.nome '
      'from dbo.responsavel_estoque re, produto prod, usuario us'
      
        'where re.idProduto = prod.idProduto and re.idUsuario = us.idUsua' +
        'rio and re.idProduto = :idProd')
    Left = 808
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idProd'
        ParamType = ptUnknown
      end>
    object qConsultaidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'SISTEMADEVENDAS.produto.idProduto'
    end
    object qConsultadescricao: TStringField
      FieldName = 'descricao'
      Origin = 'SISTEMADEVENDAS.produto.descricao'
      Size = 100
    end
    object qConsultaean: TFloatField
      FieldName = 'ean'
      Origin = 'SISTEMADEVENDAS.produto.ean'
    end
    object qConsultaqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'SISTEMADEVENDAS.responsavel_estoque.qtd'
    end
    object qConsultadataAlteracaoEstoque: TStringField
      FieldName = 'dataAlteracaoEstoque'
      Origin = 'SISTEMADEVENDAS.responsavel_estoque.dataAlteracaoEstoque'
      Size = 10
    end
    object qConsultanome: TStringField
      FieldName = 'nome'
      Origin = 'SISTEMADEVENDAS.usuario.nome'
      Size = 50
    end
  end
end
