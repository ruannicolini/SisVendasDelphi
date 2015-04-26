inherited FEntradaEstoque: TFEntradaEstoque
  Left = 389
  Top = 267
  Caption = 'FEntradaEstoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
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
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 104
          Top = 104
          Width = 274
          Height = 21
          DataField = 'Usuario'
          DataSource = DS
          TabOrder = 5
        end
        object eEan: TEdit
          Left = 56
          Top = 144
          Width = 97
          Height = 21
          TabOrder = 6
          OnExit = eEanExit
        end
        object eDescricaoProduto: TEdit
          Left = 104
          Top = 184
          Width = 217
          Height = 21
          Color = 15790320
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mEntrada
  end
end
