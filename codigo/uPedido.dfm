inherited FPedido: TFPedido
  Left = 229
  Top = 108
  Width = 755
  Height = 638
  Caption = 'FPedido'
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 588
    Width = 747
  end
  inherited ToolBar1: TToolBar
    Width = 747
  end
  inherited PageControl1: TPageControl
    Width = 747
    Height = 557
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Width = 739
        Height = 529
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 55
          Height = 13
          Caption = 'Cod Pedido'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 593
          Top = 106
          Width = 99
          Height = 13
          Caption = 'Prazo de Pagamento'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 65
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 593
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit6
        end
        object Label2: TLabel
          Left = 16
          Top = 106
          Width = 48
          Height = 13
          Caption = 'Descricao'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 42
          Width = 65
          Height = 21
          DataField = 'idPedido'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 594
          Top = 123
          Width = 128
          Height = 21
          DataField = 'prazoPagamento'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 82
          Width = 65
          Height = 21
          DataField = 'idCliente'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 593
          Top = 82
          Width = 128
          Height = 21
          DataField = 'data'
          DataSource = DS
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 82
          Width = 505
          Height = 21
          DataField = 'NomeCliente'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 122
          Width = 569
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 152
          Width = 705
          Height = 361
          Caption = 'ITENS'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
          object Label3: TLabel
            Left = 16
            Top = 64
            Width = 51
            Height = 13
            Caption = 'Valor Total'
            FocusControl = DBEdit3
          end
          object Label7: TLabel
            Left = 8
            Top = 126
            Width = 41
            Height = 13
            Caption = 'idPedido'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 8
            Top = 166
            Width = 45
            Height = 13
            Caption = 'idProduto'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 8
            Top = 206
            Width = 53
            Height = 13
            Caption = 'quantidade'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 8
            Top = 246
            Width = 59
            Height = 13
            Caption = 'precoParcial'
            FocusControl = DBEdit10
          end
          object Label11: TLabel
            Left = 8
            Top = 286
            Width = 63
            Height = 13
            Caption = 'precoUnitario'
            FocusControl = DBEdit11
          end
          object GroupBox2: TGroupBox
            Left = 176
            Top = 16
            Width = 513
            Height = 329
            Caption = 'PRODUTO'
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 509
              Height = 312
              Align = alClient
              DataSource = DataModule1.DsPedidoItem
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
          object GroupBox3: TGroupBox
            Left = 16
            Top = 16
            Width = 145
            Height = 41
            Caption = 'F5 - Cod Produto '
            TabOrder = 1
            object ed_barra: TEdit
              Left = 8
              Top = 16
              Width = 129
              Height = 21
              TabOrder = 0
              OnKeyDown = ed_barraKeyDown
            end
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 80
            Width = 145
            Height = 21
            BevelKind = bkFlat
            DataField = 'valorTotal'
            DataSource = DS
            TabOrder = 2
            OnEnter = DBEdit3Enter
          end
          object DBEdit7: TDBEdit
            Left = 8
            Top = 142
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idPedido'
            TabOrder = 3
          end
          object DBEdit8: TDBEdit
            Left = 8
            Top = 182
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idProduto'
            TabOrder = 4
          end
          object DBEdit9: TDBEdit
            Left = 8
            Top = 222
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'quantidade'
            TabOrder = 5
          end
          object DBEdit10: TDBEdit
            Left = 8
            Top = 262
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoParcial'
            TabOrder = 6
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 302
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoUnitario'
            TabOrder = 7
          end
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        Width = 739
      end
      inherited DBGrid1: TDBGrid
        Width = 739
        Height = 464
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mPedido
    Left = 672
    Top = 8
  end
  object qProduto: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      'select * from produto where ean =:PEan ')
    Left = 704
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'PEan'
        ParamType = ptUnknown
      end>
    object qProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'SISTEMADEVENDAS.produto.idProduto'
    end
    object qProdutodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'SISTEMADEVENDAS.produto.descricao'
      Size = 100
    end
    object qProdutopreco: TFloatField
      FieldName = 'preco'
      Origin = 'SISTEMADEVENDAS.produto.preco'
    end
    object qProdutostatusVenda: TBooleanField
      FieldName = 'statusVenda'
      Origin = 'SISTEMADEVENDAS.produto.statusVenda'
    end
    object qProdutoqtdEstoque: TIntegerField
      FieldName = 'qtdEstoque'
      Origin = 'SISTEMADEVENDAS.produto.qtdEstoque'
    end
    object qProdutoean: TFloatField
      FieldName = 'ean'
      Origin = 'SISTEMADEVENDAS.produto.ean'
    end
  end
end
