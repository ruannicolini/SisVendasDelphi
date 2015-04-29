inherited FEntradaEstoque: TFEntradaEstoque
  Left = 227
  Top = 180
  Caption = 'FEntradaEstoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 0
    Top = 224
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  inherited PageControl1: TPageControl
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 56
          Top = 48
          Width = 45
          Height = 13
          Caption = 'idEntrada'
          FocusControl = DBEidEntrada
        end
        object Label2: TLabel
          Left = 56
          Top = 88
          Width = 44
          Height = 13
          Caption = 'idUsuario'
          FocusControl = DBEidUsuario
        end
        object Label3: TLabel
          Left = 56
          Top = 168
          Width = 44
          Height = 13
          Caption = 'Cod Prod'
          FocusControl = DBEidProduto
        end
        object Label4: TLabel
          Left = 320
          Top = 168
          Width = 15
          Height = 13
          Caption = 'qtd'
          FocusControl = DBEqtd
        end
        object Label5: TLabel
          Left = 56
          Top = 216
          Width = 111
          Height = 13
          Caption = 'Data altera'#231#227'o estoque'
          FocusControl = DBEdata
        end
        object lEan: TLabel
          Left = 56
          Top = 128
          Width = 22
          Height = 13
          Caption = 'EAN'
        end
        object lDescricao: TLabel
          Left = 104
          Top = 168
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label6: TLabel
          Left = 104
          Top = 88
          Width = 36
          Height = 13
          Caption = 'Usuario'
        end
        object Label8: TLabel
          Left = 80
          Top = 280
          Width = 34
          Height = 13
          Caption = 'usuario'
          FocusControl = DBLookupComboBox1
        end
        object DBEidEntrada: TDBEdit
          Left = 56
          Top = 64
          Width = 73
          Height = 21
          TabStop = False
          Color = 15790320
          DataField = 'idEntrada'
          DataSource = DS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEidUsuario: TDBEdit
          Left = 56
          Top = 104
          Width = 49
          Height = 21
          TabStop = False
          Color = 15790320
          DataField = 'idUsuario'
          DataSource = DS
          ReadOnly = True
          TabOrder = 6
        end
        object DBEidProduto: TDBEdit
          Left = 56
          Top = 184
          Width = 49
          Height = 21
          TabStop = False
          Color = 15790320
          DataField = 'idProduto'
          DataSource = DS
          ReadOnly = True
          TabOrder = 2
        end
        object DBEqtd: TDBEdit
          Left = 318
          Top = 184
          Width = 75
          Height = 21
          DataField = 'qtd'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdata: TDBEdit
          Left = 56
          Top = 232
          Width = 134
          Height = 21
          TabStop = False
          Color = 15790320
          DataField = 'dataAlteracaoEstoque'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object eEan: TEdit
          Left = 56
          Top = 144
          Width = 97
          Height = 21
          Enabled = False
          TabOrder = 3
          OnKeyDown = eEanKeyDown
        end
        object DBEdit1: TDBEdit
          Left = 112
          Top = 184
          Width = 200
          Height = 21
          TabStop = False
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 1
        end
        object rbGrup: TRadioGroup
          Left = 160
          Top = 136
          Width = 233
          Height = 33
          DragMode = dmAutomatic
          TabOrder = 7
        end
        object rbAutomatico: TRadioButton
          Left = 184
          Top = 146
          Width = 81
          Height = 17
          Caption = 'Autom'#225'tico'
          Checked = True
          Enabled = False
          TabOrder = 8
          TabStop = True
        end
        object rbManual: TRadioButton
          Left = 294
          Top = 146
          Width = 65
          Height = 17
          Caption = 'Manual'
          Enabled = False
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 296
          Width = 273
          Height = 21
          DataField = 'usuario'
          DataSource = DS
          TabOrder = 10
          OnClick = DBLookupComboBox1Click
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'idEntrada'
            Title.Caption = 'Cod Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Title.Caption = 'Cod Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataAlteracaoEstoque'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario'
            Visible = True
          end>
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mEntrada
  end
end
