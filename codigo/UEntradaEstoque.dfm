inherited FEntradaEstoque: TFEntradaEstoque
  Top = 175
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
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object lEan: TLabel
          Left = 56
          Top = 128
          Width = 22
          Height = 13
          Caption = 'EAN'
        end
        object Label1: TLabel
          Left = 56
          Top = 48
          Width = 59
          Height = 13
          Caption = 'Cod Entrada'
          FocusControl = DBEidEntrada
        end
        object Label4: TLabel
          Left = 56
          Top = 171
          Width = 37
          Height = 13
          Caption = 'Produto'
          FocusControl = DBEidProduto
        end
        object Label6: TLabel
          Left = 304
          Top = 171
          Width = 17
          Height = 13
          Caption = 'Qtd'
          FocusControl = DBEqtd
        end
        object Label8: TLabel
          Left = 56
          Top = 211
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdata
        end
        object Label2: TLabel
          Left = 56
          Top = 88
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
          FocusControl = DBEidUsuario
        end
        object eEan: TEdit
          Left = 56
          Top = 144
          Width = 97
          Height = 21
          Enabled = False
          TabOrder = 0
          OnKeyDown = eEanKeyDown
        end
        object rbGrup: TRadioGroup
          Left = 160
          Top = 136
          Width = 233
          Height = 33
          DragMode = dmAutomatic
          TabOrder = 1
        end
        object rbAutomatico: TRadioButton
          Left = 184
          Top = 146
          Width = 81
          Height = 17
          Caption = 'Autom'#225'tico'
          Checked = True
          Enabled = False
          TabOrder = 2
          TabStop = True
        end
        object rbManual: TRadioButton
          Left = 294
          Top = 146
          Width = 65
          Height = 17
          Caption = 'Manual'
          Enabled = False
          TabOrder = 3
        end
        object DBEidEntrada: TDBEdit
          Left = 56
          Top = 64
          Width = 65
          Height = 21
          DataField = 'idEntrada'
          DataSource = DS
          ReadOnly = True
          TabOrder = 4
        end
        object DBEidProduto: TDBEdit
          Left = 56
          Top = 187
          Width = 49
          Height = 21
          DataField = 'idProduto'
          DataSource = DS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdescricao: TDBEdit
          Left = 104
          Top = 187
          Width = 201
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 6
        end
        object DBEqtd: TDBEdit
          Left = 304
          Top = 187
          Width = 89
          Height = 21
          DataField = 'qtd'
          DataSource = DS
          TabOrder = 7
        end
        object DBEdata: TDBEdit
          Left = 56
          Top = 227
          Width = 134
          Height = 21
          DataField = 'dataAlteracaoEstoque'
          DataSource = DS
          ReadOnly = True
          TabOrder = 8
          OnExit = DBEdataExit
        end
        object DBEidUsuario: TDBEdit
          Left = 56
          Top = 104
          Width = 65
          Height = 21
          DataField = 'idUsuario'
          DataSource = DS
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 120
          Top = 104
          Width = 273
          Height = 21
          DataField = 'usuario'
          DataSource = DS
          TabOrder = 10
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
      end
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
