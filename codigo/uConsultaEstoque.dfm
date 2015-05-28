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
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        object Edit_Ean: TLabeledEdit
          Left = 72
          Top = 24
          Width = 129
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = 'Ean'
          TabOrder = 1
          OnKeyPress = Edit_EanKeyPress
        end
      end
      inherited DBGrid1: TDBGridBeleza
        Columns = <
          item
            Expanded = False
            FieldName = 'Operacao'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codOP'
            Title.Caption = 'Cod OP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codProduto'
            Title.Caption = 'Cod Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Width = 504
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Visible = True
          end>
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
    object mConsultaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 7
    end
    object mConsultacodOP: TFloatField
      FieldName = 'codOP'
    end
    object mConsultacodProduto: TIntegerField
      FieldName = 'codProduto'
    end
    object mConsultaProduto: TStringField
      FieldName = 'Produto'
      Size = 100
    end
    object mConsultaquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object mConsultadata: TDateTimeField
      FieldName = 'data'
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
      
        'select '#39'ENTRADA'#39' as Operacao, re.idEntrada as codOP, re.idProdut' +
        'o as codProduto,'
      'prod.descricao as Produto, re.qtd as quantidade, '
      'CONVERT(DATETIME,re.dataAlteracaoEstoque,103)  as data '
      'from responsavel_estoque re'
      'left outer join produto prod on re.idProduto = prod.idProduto'
      'where prod.ean = :Pean'
      'UNION'
      
        'select '#39'SAIDA'#39' as Operacao, ped.idPedido as codOP, pit.idProduto' +
        ' as codProduto, '
      'prod.descricao as Produto, pit.quantidade as quantidade,'
      'CONVERT(DATETIME,fat.data_faturamento,103)  as data'
      'from faturamento fat, pedido ped'
      
        'left outer join pedido_item  as pit on pit.idPedido = ped.idPedi' +
        'do'
      'left outer join produto prod on pit.idProduto = prod.idProduto'
      'where prod.ean = :Pean'
      'order by data desc')
    Left = 808
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Pean'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Pean'
        ParamType = ptUnknown
      end>
    object qConsultaOperacao: TStringField
      FieldName = 'Operacao'
      ProviderFlags = [pfInWhere]
      Size = 7
    end
    object qConsultacodOP: TFloatField
      FieldName = 'codOP'
      ProviderFlags = [pfInWhere]
    end
    object qConsultacodProduto: TIntegerField
      FieldName = 'codProduto'
      ProviderFlags = [pfInWhere]
    end
    object qConsultaProduto: TStringField
      FieldName = 'Produto'
      ProviderFlags = [pfInWhere]
      Size = 100
    end
    object qConsultaquantidade: TIntegerField
      FieldName = 'quantidade'
      ProviderFlags = [pfInWhere]
    end
    object qConsultadata: TDateTimeField
      FieldName = 'data'
      ProviderFlags = [pfInWhere]
    end
  end
end
