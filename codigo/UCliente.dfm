inherited FCliente: TFCliente
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
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Width = 904
        Height = 383
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Cod Cliente'
          FocusControl = DBEidCliente
        end
        object Label2: TLabel
          Left = 24
          Top = 64
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEnome
        end
        object Label3: TLabel
          Left = 24
          Top = 104
          Width = 46
          Height = 13
          Caption = 'Endereco'
          FocusControl = DBEendereco
        end
        object Label4: TLabel
          Left = 24
          Top = 144
          Width = 37
          Height = 13
          Caption = 'Numero'
          FocusControl = DBEnumero
        end
        object Label5: TLabel
          Left = 128
          Top = 144
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEbairro
        end
        object Label6: TLabel
          Left = 24
          Top = 184
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEcomplemento
        end
        object Label7: TLabel
          Left = 296
          Top = 184
          Width = 19
          Height = 13
          Caption = 'Cep'
          FocusControl = DBEcep
        end
        object Label8: TLabel
          Left = 24
          Top = 225
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          FocusControl = DBEcnpj
        end
        object Label9: TLabel
          Left = 232
          Top = 224
          Width = 40
          Height = 13
          Caption = 'Tel. Fixo'
          FocusControl = DBEtelFixo
        end
        object Label10: TLabel
          Left = 232
          Top = 264
          Width = 36
          Height = 13
          Caption = 'Tel. Cel'
          FocusControl = DBEtelCel
        end
        object Label11: TLabel
          Left = 24
          Top = 264
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEemail
        end
        object Label12: TLabel
          Left = 24
          Top = 303
          Width = 10
          Height = 13
          Caption = 'IE'
          FocusControl = DBEie
        end
        object Label13: TLabel
          Left = 233
          Top = 304
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object DBEidCliente: TDBEdit
          Left = 24
          Top = 40
          Width = 134
          Height = 21
          TabStop = False
          DataField = 'idCliente'
          DataSource = DS
          ReadOnly = True
          TabOrder = 12
        end
        object DBEnome: TDBEdit
          Left = 24
          Top = 80
          Width = 409
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 0
        end
        object DBEendereco: TDBEdit
          Left = 24
          Top = 120
          Width = 409
          Height = 21
          DataField = 'endereco'
          DataSource = DS
          TabOrder = 1
        end
        object DBEnumero: TDBEdit
          Left = 24
          Top = 160
          Width = 95
          Height = 21
          DataField = 'numero'
          DataSource = DS
          TabOrder = 2
        end
        object DBEbairro: TDBEdit
          Left = 128
          Top = 160
          Width = 305
          Height = 21
          DataField = 'bairro'
          DataSource = DS
          TabOrder = 3
        end
        object DBEcomplemento: TDBEdit
          Left = 24
          Top = 200
          Width = 264
          Height = 21
          DataField = 'complemento'
          DataSource = DS
          TabOrder = 4
        end
        object DBEcep: TDBEdit
          Left = 296
          Top = 200
          Width = 137
          Height = 21
          DataField = 'cep'
          DataSource = DS
          TabOrder = 5
        end
        object DBEcnpj: TDBEdit
          Left = 24
          Top = 241
          Width = 199
          Height = 21
          DataField = 'cnpj'
          DataSource = DS
          TabOrder = 6
          OnEnter = DBEcnpjEnter
          OnExit = DBEcnpjExit
        end
        object DBEtelFixo: TDBEdit
          Left = 232
          Top = 240
          Width = 199
          Height = 21
          DataField = 'telFixo'
          DataSource = DS
          TabOrder = 7
          OnEnter = DBEtelFixoEnter
        end
        object DBEtelCel: TDBEdit
          Left = 232
          Top = 280
          Width = 199
          Height = 21
          DataField = 'telCel'
          DataSource = DS
          TabOrder = 9
          OnEnter = DBEtelCelEnter
        end
        object DBEemail: TDBEdit
          Left = 24
          Top = 280
          Width = 199
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 8
          OnExit = DBEemailExit
        end
        object DBEie: TDBEdit
          Left = 24
          Top = 320
          Width = 199
          Height = 21
          DataField = 'ie'
          DataSource = DS
          TabOrder = 10
        end
        object DBEidCidade: TDBEdit
          Left = 233
          Top = 320
          Width = 25
          Height = 21
          TabStop = False
          DataField = 'idCidade'
          DataSource = DS
          ReadOnly = True
          TabOrder = 11
        end
        object DBEditBeleza1: TDBEditBeleza
          Left = 256
          Top = 320
          Width = 200
          Height = 21
          Color = 14737361
          DataField = 'Cidade'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Ativar_Pesquisa = True
          mostrar_Botao = False
          sql.Strings = (
            'select idCidade, nome from cidade where nome like :x')
          database = 'SistemaDeVendas'
          campo = 'nome'
          Sempre_Mostrar_Janela = False
          Outro_Edit = DBEidCidade
          campo_outro_edit = 'idCidade'
          CorBorda = clGray
          NovoLayout = False
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
        Height = 318
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mCliente
  end
end
