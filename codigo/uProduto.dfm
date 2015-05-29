inherited FProduto: TFProduto
  Left = 235
  Top = 144
  Height = 516
  Caption = 'FProduto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 459
  end
  inherited PageControl1: TPageControl
    Height = 428
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Width = 904
        Height = 400
        object Label1: TLabel
          Left = 40
          Top = 40
          Width = 59
          Height = 13
          Caption = 'Cod Produto'
          FocusControl = DBEidProduto
        end
        object Label2: TLabel
          Left = 40
          Top = 80
          Width = 48
          Height = 13
          Caption = 'Descricao'
          FocusControl = DBEdescricao
        end
        object Label3: TLabel
          Left = 40
          Top = 120
          Width = 28
          Height = 13
          Caption = 'Preco'
          FocusControl = DBEpreco
        end
        object Label4: TLabel
          Left = 192
          Top = 120
          Width = 65
          Height = 13
          Caption = 'QTD Estoque'
          FocusControl = DBEqtde
        end
        object Label5: TLabel
          Left = 344
          Top = 120
          Width = 19
          Height = 13
          Caption = 'Ean'
          FocusControl = DBEean
        end
        object DBEidProduto: TDBEdit
          Left = 40
          Top = 56
          Width = 134
          Height = 21
          TabStop = False
          DataField = 'idProduto'
          DataSource = DS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdescricao: TDBEdit
          Left = 40
          Top = 96
          Width = 441
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 0
        end
        object DBEpreco: TDBEdit
          Left = 40
          Top = 136
          Width = 134
          Height = 21
          DataField = 'preco'
          DataSource = DS
          TabOrder = 1
          Visible = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 40
          Top = 161
          Width = 97
          Height = 17
          Caption = 'statusVenda'
          DataField = 'statusVenda'
          DataSource = DS
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEqtde: TDBEdit
          Left = 192
          Top = 136
          Width = 134
          Height = 21
          DataField = 'qtdEstoque'
          DataSource = DS
          TabOrder = 2
        end
        object DBEean: TDBEdit
          Left = 344
          Top = 136
          Width = 134
          Height = 21
          DataField = 'ean'
          DataSource = DS
          TabOrder = 3
        end
        object EditDinheiro1: TEditDinheiro
          Left = 40
          Top = 136
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '0'
          OnExit = EditDinheiro1Exit
          Formato = '0.00'
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
      end
      inherited DBGrid1: TDBGridBeleza
        Height = 335
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mProduto
  end
end
