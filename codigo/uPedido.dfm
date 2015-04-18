inherited FPedido: TFPedido
  Left = 322
  Top = 189
  Caption = 'FPedido'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 41
          Height = 13
          Caption = 'idPedido'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 46
          Height = 13
          Caption = 'descricao'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 16
          Top = 104
          Width = 47
          Height = 13
          Caption = 'valorTotal'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 16
          Top = 144
          Width = 80
          Height = 13
          Caption = 'prazoPagamento'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 184
          Width = 40
          Height = 13
          Caption = 'idCliente'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 16
          Top = 224
          Width = 21
          Height = 13
          Caption = 'data'
          FocusControl = DBEdit6
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 40
          Width = 134
          Height = 21
          DataField = 'idPedido'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 80
          Width = 1304
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 120
          Width = 134
          Height = 21
          DataField = 'valorTotal'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 160
          Width = 134
          Height = 21
          DataField = 'prazoPagamento'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 200
          Width = 134
          Height = 21
          DataField = 'idCliente'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 16
          Top = 240
          Width = 147
          Height = 21
          DataField = 'data'
          DataSource = DS
          TabOrder = 5
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mPedido
  end
end
