inherited FCidade: TFCidade
  Left = 226
  Top = 160
  Caption = 'FCidade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tbFiltros
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 22
          Top = 21
          Width = 41
          Height = 13
          Caption = 'idCidade'
          FocusControl = DBEidCidade
        end
        object Label2: TLabel
          Left = 22
          Top = 61
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEnome
        end
        object Label3: TLabel
          Left = 22
          Top = 101
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEuf
        end
        object DBEidCidade: TDBEdit
          Left = 22
          Top = 37
          Width = 134
          Height = 21
          TabStop = False
          DataField = 'idCidade'
          DataSource = DS
          ReadOnly = True
          TabOrder = 2
        end
        object DBEnome: TDBEdit
          Left = 22
          Top = 77
          Width = 394
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 0
        end
        object DBEuf: TDBEdit
          Left = 22
          Top = 117
          Width = 30
          Height = 21
          DataField = 'uf'
          DataSource = DS
          TabOrder = 1
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
    DataSet = DataModule1.mCidade
    Top = 8
  end
end
