inherited FPedido: TFPedido
  Left = 275
  Top = 103
  Width = 749
  Height = 635
  Caption = 'FPedido'
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 578
    Width = 733
  end
  inherited TBAcaoTela: TToolBar
    Width = 733
    ButtonWidth = 41
    inherited btnDeletar: TToolButton
      Left = 41
    end
    inherited btnAlterar: TToolButton
      Left = 82
    end
    inherited btnCancelar: TToolButton
      Left = 123
    end
    inherited btnSalvar: TToolButton
      Left = 164
    end
    inherited btnPesquisar: TToolButton
      Left = 205
    end
    inherited btnPrimeiro: TToolButton
      Left = 246
    end
    inherited btnAnterior: TToolButton
      Left = 287
    end
    inherited btnProximo: TToolButton
      Left = 328
    end
    inherited btnUltimo: TToolButton
      Left = 369
    end
    object btnFaturar: TToolButton
      Left = 410
      Top = 0
      Caption = 'Faturar'
      ImageIndex = 10
      OnClick = btnFaturarClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 733
    Height = 547
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Width = 725
        Height = 519
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 55
          Height = 13
          Caption = 'Cod Pedido'
          FocusControl = DBEcodPedido
        end
        object Label4: TLabel
          Left = 593
          Top = 106
          Width = 99
          Height = 13
          Caption = 'Prazo de Pagamento'
          FocusControl = DBprazo
        end
        object Label5: TLabel
          Left = 16
          Top = 65
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBEidCliente
        end
        object Label6: TLabel
          Left = 593
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdataAtual
        end
        object Label2: TLabel
          Left = 16
          Top = 106
          Width = 48
          Height = 13
          Caption = 'Descricao'
          FocusControl = DBEdescricao
        end
        object DBEcodPedido: TDBEdit
          Left = 16
          Top = 42
          Width = 65
          Height = 21
          DataField = 'idPedido'
          DataSource = DS
          TabOrder = 0
        end
        object DBprazo: TDBEdit
          Left = 594
          Top = 123
          Width = 128
          Height = 21
          DataField = 'prazoPagamento'
          DataSource = DS
          TabOrder = 1
        end
        object DBEidCliente: TDBEdit
          Left = 16
          Top = 82
          Width = 65
          Height = 21
          DataField = 'idCliente'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdataAtual: TDBEdit
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
        object DBEdescricao: TDBEdit
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
            Left = 21
            Top = 64
            Width = 51
            Height = 13
            Caption = 'Valor Total'
          end
          object Label7: TLabel
            Left = 21
            Top = 101
            Width = 41
            Height = 13
            Caption = 'idPedido'
            FocusControl = DBEidPedido
            Visible = False
          end
          object Label8: TLabel
            Left = 21
            Top = 141
            Width = 45
            Height = 13
            Caption = 'idProduto'
            FocusControl = DBEidProduto
            Visible = False
          end
          object Label9: TLabel
            Left = 21
            Top = 181
            Width = 53
            Height = 13
            Caption = 'quantidade'
            FocusControl = DBEqtde
            Visible = False
          end
          object Label10: TLabel
            Left = 21
            Top = 221
            Width = 59
            Height = 13
            Caption = 'precoParcial'
            FocusControl = DBEprecoParcial
            Visible = False
          end
          object Label11: TLabel
            Left = 21
            Top = 261
            Width = 63
            Height = 13
            Caption = 'precoUnitario'
            FocusControl = DBEprecoUnitario
            Visible = False
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
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
              OnKeyDown = DBGrid2KeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'idPedido'
                  Title.Caption = 'Ped'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'idProduto'
                  Title.Caption = 'Cod Prod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Title.Caption = 'Descricao'
                  Width = 183
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'quantidade'
                  Title.Caption = 'QTD'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'precoUnitario'
                  Title.Caption = 'Preco Unit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'precoParcial'
                  Title.Caption = 'Preco Parcial'
                  Visible = True
                end>
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
          object DBEidPedido: TDBEdit
            Left = 21
            Top = 117
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idPedido'
            ReadOnly = True
            TabOrder = 2
            Visible = False
          end
          object DBEidProduto: TDBEdit
            Left = 21
            Top = 157
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idProduto'
            ReadOnly = True
            TabOrder = 3
            Visible = False
          end
          object DBEqtde: TDBEdit
            Left = 21
            Top = 197
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'quantidade'
            TabOrder = 4
            Visible = False
          end
          object DBEprecoParcial: TDBEdit
            Left = 21
            Top = 237
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoParcial'
            ReadOnly = True
            TabOrder = 5
            Visible = False
          end
          object DBEprecoUnitario: TDBEdit
            Left = 21
            Top = 277
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoUnitario'
            ReadOnly = True
            TabOrder = 6
            Visible = False
          end
          object ed_vlTotal: TDBEdit
            Left = 21
            Top = 80
            Width = 134
            Height = 21
            DataField = 'valorTotal'
            DataSource = DS
            TabOrder = 7
            OnEnter = ed_vlTotalEnter
          end
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        Width = 725
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 725
        Height = 454
        Columns = <
          item
            Expanded = False
            FieldName = 'idPedido'
            Title.Caption = 'COD Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Caption = 'Cliente'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorTotal'
            Title.Caption = 'ValorTotal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descricao'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prazoPagamento'
            Title.Caption = 'Prazo Pag'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'faturado'
            Title.Caption = 'Faturado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCliente'
            Visible = False
          end>
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
    Left = 600
    Top = 63
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
  object qValorTotal: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      
        'select sum(precoparcial) total from pedido_item where idPedido =' +
        ' :PVlTotal')
    Left = 569
    Top = 63
    ParamData = <
      item
        DataType = ftFloat
        Name = 'PVlTotal'
        ParamType = ptUnknown
      end>
  end
end
