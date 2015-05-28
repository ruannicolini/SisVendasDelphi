inherited FUsuario: TFUsuario
  Left = 244
  Top = 182
  Caption = 'FUsuario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 44
          Height = 13
          Caption = 'idUsuario'
          FocusControl = DBidUsuario
        end
        object Label2: TLabel
          Left = 24
          Top = 72
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEnome
        end
        object Label3: TLabel
          Left = 24
          Top = 152
          Width = 29
          Height = 13
          Caption = 'senha'
          FocusControl = DBEsenha
        end
        object Label4: TLabel
          Left = 24
          Top = 192
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEemail
        end
        object Label5: TLabel
          Left = 24
          Top = 112
          Width = 46
          Height = 13
          Caption = 'username'
          FocusControl = DBEusername
        end
        object Label6: TLabel
          Left = 64
          Top = 232
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label7: TLabel
          Left = 24
          Top = 232
          Width = 26
          Height = 13
          Caption = 'N'#237'vel'
          FocusControl = DBEidNivel
        end
        object DBidUsuario: TDBEdit
          Left = 24
          Top = 48
          Width = 97
          Height = 21
          TabStop = False
          DataField = 'idUsuario'
          DataSource = DS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEnome: TDBEdit
          Left = 24
          Top = 88
          Width = 345
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 0
        end
        object DBEsenha: TDBEdit
          Left = 24
          Top = 168
          Width = 345
          Height = 21
          DataField = 'senha'
          DataSource = DS
          TabOrder = 2
        end
        object DBEemail: TDBEdit
          Left = 24
          Top = 208
          Width = 345
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 3
          OnExit = DBEemailExit
        end
        object DBEusername: TDBEdit
          Left = 24
          Top = 128
          Width = 345
          Height = 21
          DataField = 'username'
          DataSource = DS
          TabOrder = 1
        end
        object DBEidNivel: TDBEdit
          Left = 24
          Top = 248
          Width = 41
          Height = 21
          Color = 15790320
          DataField = 'nivel'
          DataSource = DS
          ReadOnly = True
          TabOrder = 4
        end
        object DBEditBeleza1: TDBEditBeleza
          Left = 64
          Top = 248
          Width = 305
          Height = 21
          Color = 14737361
          DataField = 'NivelUsuario'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Ativar_Pesquisa = True
          mostrar_Botao = False
          sql.Strings = (
            'select idNivel, descricao from nivel where descricao like :x')
          database = 'SistemaDeVendas'
          campo = 'descricao'
          Sempre_Mostrar_Janela = False
          Outro_Edit = DBEidNivel
          campo_outro_edit = 'idNivel'
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
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mUsuario
  end
end
