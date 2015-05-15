inherited FCliente: TFCliente
  Left = 286
  Top = 171
  Height = 499
  Caption = 'FCliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 442
  end
  inherited PageControl1: TPageControl
    Height = 411
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Height = 383
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 40
          Height = 13
          Caption = 'idCliente'
          FocusControl = DBEidCliente
        end
        object Label2: TLabel
          Left = 24
          Top = 64
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEnome
        end
        object Label3: TLabel
          Left = 24
          Top = 104
          Width = 45
          Height = 13
          Caption = 'endereco'
          FocusControl = DBEendereco
        end
        object Label4: TLabel
          Left = 24
          Top = 144
          Width = 35
          Height = 13
          Caption = 'numero'
          FocusControl = DBEnumero
        end
        object Label5: TLabel
          Left = 128
          Top = 144
          Width = 26
          Height = 13
          Caption = 'bairro'
          FocusControl = DBEbairro
        end
        object Label6: TLabel
          Left = 24
          Top = 184
          Width = 63
          Height = 13
          Caption = 'complemento'
          FocusControl = DBEcomplemento
        end
        object Label7: TLabel
          Left = 296
          Top = 184
          Width = 18
          Height = 13
          Caption = 'cep'
          FocusControl = DBEcep
        end
        object Label8: TLabel
          Left = 24
          Top = 225
          Width = 20
          Height = 13
          Caption = 'cnpj'
          FocusControl = DBEcnpj
        end
        object Label9: TLabel
          Left = 232
          Top = 224
          Width = 30
          Height = 13
          Caption = 'telFixo'
          FocusControl = DBEtelFixo
        end
        object Label10: TLabel
          Left = 232
          Top = 264
          Width = 26
          Height = 13
          Caption = 'telCel'
          FocusControl = DBEtelCel
        end
        object Label11: TLabel
          Left = 24
          Top = 264
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEemail
        end
        object Label12: TLabel
          Left = 24
          Top = 303
          Width = 8
          Height = 13
          Caption = 'ie'
          FocusControl = DBEie
        end
        object Label13: TLabel
          Left = 233
          Top = 304
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBLookupComboBox1
        end
        object DBEidCliente: TDBEdit
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
        object DBEnome: TDBEdit
          Left = 24
          Top = 80
          Width = 409
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEendereco: TDBEdit
          Left = 24
          Top = 120
          Width = 409
          Height = 21
          DataField = 'endereco'
          DataSource = DS
          TabOrder = 2
        end
        object DBEnumero: TDBEdit
          Left = 24
          Top = 160
          Width = 95
          Height = 21
          DataField = 'numero'
          DataSource = DS
          TabOrder = 3
        end
        object DBEbairro: TDBEdit
          Left = 128
          Top = 160
          Width = 305
          Height = 21
          DataField = 'bairro'
          DataSource = DS
          TabOrder = 4
        end
        object DBEcomplemento: TDBEdit
          Left = 24
          Top = 200
          Width = 264
          Height = 21
          DataField = 'complemento'
          DataSource = DS
          TabOrder = 5
        end
        object DBEcep: TDBEdit
          Left = 296
          Top = 200
          Width = 137
          Height = 21
          DataField = 'cep'
          DataSource = DS
          TabOrder = 6
        end
        object DBEcnpj: TDBEdit
          Left = 24
          Top = 241
          Width = 199
          Height = 21
          DataField = 'cnpj'
          DataSource = DS
          TabOrder = 7
          OnExit = DBEcnpjExit
        end
        object DBEtelFixo: TDBEdit
          Left = 232
          Top = 240
          Width = 199
          Height = 21
          DataField = 'telFixo'
          DataSource = DS
          TabOrder = 8
        end
        object DBEtelCel: TDBEdit
          Left = 232
          Top = 280
          Width = 199
          Height = 21
          DataField = 'telCel'
          DataSource = DS
          TabOrder = 10
        end
        object DBEemail: TDBEdit
          Left = 24
          Top = 280
          Width = 199
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 9
          OnExit = DBEemailExit
        end
        object DBEie: TDBEdit
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
        object DBEidCidade: TDBEdit
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
      inherited gbFiltros: TGroupBox
        inherited BitBtn1: TBitBtn
          OnClick = BitBtn1Click
        end
      end
      inherited DBGrid1: TDBGrid
        Height = 318
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mCliente
  end
end
