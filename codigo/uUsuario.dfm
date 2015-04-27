inherited FUsuario: TFUsuario
  Left = 261
  Top = 89
  Caption = 'FUsuario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 44
          Height = 13
          Caption = 'idUsuario'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 24
          Top = 72
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 24
          Top = 152
          Width = 29
          Height = 13
          Caption = 'senha'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 24
          Top = 192
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 24
          Top = 112
          Width = 46
          Height = 13
          Caption = 'username'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 48
          Width = 134
          Height = 21
          DataField = 'idUsuario'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 88
          Width = 345
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 168
          Width = 345
          Height = 21
          DataField = 'senha'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 208
          Width = 345
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 24
          Top = 128
          Width = 345
          Height = 21
          DataField = 'username'
          DataSource = DS
          TabOrder = 4
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mUsuario
  end
end
