inherited FConta: TFConta
  Left = 236
  Top = 118
  Caption = 'FConta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited TBAcaoTela: TToolBar
    inherited btnNovo: TToolButton
      Visible = False
    end
    inherited btnAlterar: TToolButton
      Visible = False
    end
    inherited btnCancelar: TToolButton
      Visible = False
    end
    inherited btnSalvar: TToolButton
      Visible = False
    end
    object BtnBaixarContas: TToolButton
      Left = 230
      Top = 0
      Caption = 'BtnBaixarContas'
      ImageIndex = 12
      OnClick = BtnBaixarContasClick
    end
  end
  inherited PageControl1: TPageControl
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      OnShow = tbDadosShow
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 19
          Height = 13
          Caption = 'Cod'
          FocusControl = DBEidConta
        end
        object Label2: TLabel
          Left = 24
          Top = 72
          Width = 82
          Height = 13
          Caption = 'Data Vencimento'
        end
        object Label3: TLabel
          Left = 24
          Top = 112
          Width = 80
          Height = 13
          Caption = 'Data Pagamento'
        end
        object Label4: TLabel
          Left = 24
          Top = 176
          Width = 85
          Height = 13
          Caption = 'Numero Duplicata'
          FocusControl = DBEnumDuplicata
        end
        object Label5: TLabel
          Left = 24
          Top = 216
          Width = 67
          Height = 13
          Caption = 'idFaturamento'
          FocusControl = DBEidFaturamento
        end
        object DBEidConta: TDBEdit
          Left = 24
          Top = 48
          Width = 134
          Height = 21
          DataField = 'idConta'
          DataSource = DS
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 24
          Top = 152
          Width = 97
          Height = 17
          Caption = 'Pago'
          DataField = 'statusPag'
          DataSource = DS
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEnumDuplicata: TDBEdit
          Left = 24
          Top = 192
          Width = 137
          Height = 21
          DataField = 'numero_duplicata'
          DataSource = DS
          TabOrder = 2
        end
        object DBEidFaturamento: TDBEdit
          Left = 25
          Top = 232
          Width = 134
          Height = 21
          DataField = 'idFaturamento'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdataPag: TDBEdit_Calendario
          Left = 24
          Top = 128
          Width = 137
          Height = 21
          Hint = 'Duplo Clique para Buscar a data de hoje!'
          DataField = 'data_pag'
          DataSource = DS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Formato_Data = 'dd/mm/yy'
        end
        object DBEdataVenc: TDBEdit_Calendario
          Left = 24
          Top = 88
          Width = 137
          Height = 21
          Hint = 'Duplo Clique para Buscar a data de hoje!'
          DataField = 'data_venc'
          DataSource = DS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Formato_Data = 'dd/mm/yy'
        end
        object EditDinheiro1: TEditDinheiro
          Left = 24
          Top = 272
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '0'
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
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mConta
  end
  object qAuxiliar: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      'SELECT cont.*,'
      'ped.idPedido, ped.valorTotal, fat.data_faturamento, fat.nf'
      'FROM contas cont'
      
        'left outer join faturamento fat on cont.idFaturamento = fat.idFa' +
        'turamento'
      'left outer join pedido ped on fat.idPedido = ped.idPedido '
      'where cont.idConta =:idC')
    Left = 576
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idC'
        ParamType = ptUnknown
      end>
  end
end
