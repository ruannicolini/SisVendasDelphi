inherited FCidade: TFCidade
  Caption = 'FCidade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 22
          Top = 21
          Width = 41
          Height = 13
          Caption = 'idCidade'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 22
          Top = 61
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 22
          Top = 101
          Width = 9
          Height = 13
          Caption = 'uf'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 22
          Top = 37
          Width = 134
          Height = 21
          Color = 14155258
          DataField = 'idCidade'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 22
          Top = 77
          Width = 394
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 22
          Top = 117
          Width = 30
          Height = 21
          DataField = 'uf'
          DataSource = DS
          TabOrder = 2
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mCidade
    Top = 8
  end
end
