inherited FCliente: TFCliente
  Left = 351
  Height = 499
  Caption = 'FCliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 449
  end
  inherited PageControl1: TPageControl
    Height = 418
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Height = 390
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 40
          Height = 13
          Caption = 'idCliente'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 24
          Top = 64
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 24
          Top = 104
          Width = 45
          Height = 13
          Caption = 'endereco'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 24
          Top = 144
          Width = 35
          Height = 13
          Caption = 'numero'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 128
          Top = 144
          Width = 26
          Height = 13
          Caption = 'bairro'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 24
          Top = 184
          Width = 63
          Height = 13
          Caption = 'complemento'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 296
          Top = 184
          Width = 18
          Height = 13
          Caption = 'cep'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 24
          Top = 225
          Width = 20
          Height = 13
          Caption = 'cnpj'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 232
          Top = 224
          Width = 30
          Height = 13
          Caption = 'telFixo'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 232
          Top = 264
          Width = 26
          Height = 13
          Caption = 'telCel'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 24
          Top = 264
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 24
          Top = 303
          Width = 8
          Height = 13
          Caption = 'ie'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 233
          Top = 304
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBLookupComboBox1
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 40
          Width = 134
          Height = 21
          Color = 14876413
          DataField = 'idCliente'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 80
          Width = 409
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 120
          Width = 409
          Height = 21
          DataField = 'endereco'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 160
          Width = 95
          Height = 21
          DataField = 'numero'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 128
          Top = 160
          Width = 305
          Height = 21
          DataField = 'bairro'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 24
          Top = 200
          Width = 264
          Height = 21
          DataField = 'complemento'
          DataSource = DS
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 296
          Top = 200
          Width = 137
          Height = 21
          DataField = 'cep'
          DataSource = DS
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 24
          Top = 241
          Width = 199
          Height = 21
          DataField = 'cnpj'
          DataSource = DS
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 232
          Top = 240
          Width = 199
          Height = 21
          DataField = 'telFixo'
          DataSource = DS
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 232
          Top = 280
          Width = 199
          Height = 21
          DataField = 'telCel'
          DataSource = DS
          TabOrder = 10
        end
        object DBEdit11: TDBEdit
          Left = 24
          Top = 280
          Width = 199
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 24
          Top = 320
          Width = 199
          Height = 21
          DataField = 'ie'
          DataSource = DS
          TabOrder = 11
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 256
          Top = 320
          Width = 177
          Height = 21
          DataField = 'Cidade'
          DataSource = DS
          TabOrder = 12
        end
        object DBEdit13: TDBEdit
          Left = 233
          Top = 320
          Width = 25
          Height = 21
          TabStop = False
          Color = 14089980
          DataField = 'idCidade'
          DataSource = DS
          ReadOnly = True
          TabOrder = 13
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 325
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mCliente
  end
end
