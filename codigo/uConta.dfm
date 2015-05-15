inherited FConta: TFConta
  Top = 91
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
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 36
          Height = 13
          Caption = 'idConta'
          FocusControl = DBEidConta
        end
        object Label2: TLabel
          Left = 24
          Top = 72
          Width = 51
          Height = 13
          Caption = 'data_venc'
          FocusControl = DBEdataVenc
        end
        object Label3: TLabel
          Left = 24
          Top = 112
          Width = 45
          Height = 13
          Caption = 'data_pag'
          FocusControl = DBEdataPag
        end
        object Label4: TLabel
          Left = 24
          Top = 176
          Width = 84
          Height = 13
          Caption = 'numero_duplicata'
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
        object DBEdataVenc: TDBEdit
          Left = 24
          Top = 88
          Width = 134
          Height = 21
          DataField = 'data_venc'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdataPag: TDBEdit
          Left = 24
          Top = 128
          Width = 134
          Height = 21
          DataField = 'data_pag'
          DataSource = DS
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 24
          Top = 152
          Width = 97
          Height = 17
          Caption = 'statusPag'
          DataField = 'statusPag'
          DataSource = DS
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEnumDuplicata: TDBEdit
          Left = 24
          Top = 192
          Width = 654
          Height = 21
          DataField = 'numero_duplicata'
          DataSource = DS
          TabOrder = 4
        end
        object DBEidFaturamento: TDBEdit
          Left = 24
          Top = 232
          Width = 134
          Height = 21
          DataField = 'idFaturamento'
          DataSource = DS
          TabOrder = 5
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
end
