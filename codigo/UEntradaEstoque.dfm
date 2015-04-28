inherited FEntradaEstoque: TFEntradaEstoque
  Left = 293
  Top = 120
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
          FocusControl = DBLookupComboBox1
        end
        object DBEidEntrada: TDBEdit
          Left = 56
          Top = 64
          Width = 134
          Height = 21
          Color = 15790320
          DataField = 'idEntrada'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEidUsuario: TDBEdit
          Left = 56
          Top = 104
          Width = 49
          Height = 21
          Color = 15790320
          DataField = 'idUsuario'
          DataSource = DS
          ReadOnly = True
          TabOrder = 1
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
          Left = 320
          Top = 184
          Width = 134
          Height = 21
          DataField = 'qtd'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdata: TDBEdit
          Left = 56
          Top = 232
          Width = 134
          Height = 21
          Color = 15790320
          DataField = 'dataAlteracaoEstoque'
          DataSource = DS
          ReadOnly = True
          TabOrder = 4
        end
        object eEan: TEdit
          Left = 56
          Top = 144
          Width = 97
          Height = 21
          Enabled = False
          TabOrder = 5
          OnExit = eEanExit
        end
        object eDescricaoProduto: TEdit
          Left = 104
          Top = 184
          Width = 217
          Height = 21
          Color = 15790320
          ReadOnly = True
          TabOrder = 6
        end
        object rbAutomatico: TRadioButton
          Left = 176
          Top = 144
          Width = 113
          Height = 17
          Caption = 'Autom'#225'tico'
          Checked = True
          Enabled = False
          TabOrder = 7
          TabStop = True
        end
        object rbManual: TRadioButton
          Left = 264
          Top = 144
          Width = 113
          Height = 17
          Caption = 'Manual'
          Enabled = False
          TabOrder = 8
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 104
          Top = 104
          Width = 217
          Height = 21
          DataField = 'Usuario'
          DataSource = DS
          TabOrder = 9
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mEntrada
  end
  object qAuxProduto: TQuery
    DatabaseName = 'SistemaDeVendas'
    Left = 688
    Top = 16
  end
  object qAuxUsuario: TQuery
    DatabaseName = 'SistemaDeVendas'
    Left = 736
    Top = 16
  end
  object qU: TQuery
    DatabaseName = 'SistemaDeVendas'
    Left = 632
    Top = 16
  end
  object qP: TQuery
    DatabaseName = 'SistemaDeVendas'
    Left = 784
    Top = 16
  end
end
