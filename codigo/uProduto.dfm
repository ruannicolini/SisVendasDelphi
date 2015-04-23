inherited FormPadrao1: TFormPadrao1
  Left = 358
  Top = 120
  Height = 516
  Caption = 'FProduto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 459
  end
  inherited PageControl1: TPageControl
    Height = 428
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Height = 400
        object Label1: TLabel
          Left = 40
          Top = 40
          Width = 45
          Height = 13
          Caption = 'idProduto'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 40
          Top = 80
          Width = 46
          Height = 13
          Caption = 'descricao'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 40
          Top = 120
          Width = 27
          Height = 13
          Caption = 'preco'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 40
          Top = 184
          Width = 54
          Height = 13
          Caption = 'qtdEstoque'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 40
          Top = 224
          Width = 18
          Height = 13
          Caption = 'ean'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 40
          Top = 56
          Width = 134
          Height = 21
          DataField = 'idProduto'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 40
          Top = 96
          Width = 1304
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 40
          Top = 136
          Width = 134
          Height = 21
          DataField = 'preco'
          DataSource = DS
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 40
          Top = 160
          Width = 97
          Height = 17
          Caption = 'statusVenda'
          DataField = 'statusVenda'
          DataSource = DS
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit4: TDBEdit
          Left = 40
          Top = 200
          Width = 134
          Height = 21
          DataField = 'qtdEstoque'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 40
          Top = 240
          Width = 134
          Height = 21
          DataField = 'ean'
          DataSource = DS
          TabOrder = 5
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mProduto
  end
end
