inherited FConsultaContas: TFConsultaContas
  Left = 195
  Top = 128
  Width = 913
  Height = 573
  Caption = 'FConsultaContas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 523
    Width = 905
  end
  inherited ToolBar1: TToolBar
    Width = 905
    ButtonWidth = 27
    inherited btnNovo: TToolButton
      Visible = False
    end
    inherited btnDeletar: TToolButton
      Left = 27
      Visible = False
    end
    inherited btnAlterar: TToolButton
      Left = 54
      Visible = False
    end
    inherited btnCancelar: TToolButton
      Left = 81
      Visible = False
    end
    inherited btnSalvar: TToolButton
      Left = 108
      Visible = False
    end
    inherited btnPesquisar: TToolButton
      Left = 135
    end
    inherited btnPrimeiro: TToolButton
      Left = 162
    end
    inherited btnAnterior: TToolButton
      Left = 189
    end
    inherited btnProximo: TToolButton
      Left = 216
    end
    inherited btnUltimo: TToolButton
      Left = 243
    end
    object ToolButton1: TToolButton
      Left = 270
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 11
      OnClick = ToolButton1Click
    end
  end
  inherited PageControl1: TPageControl
    Width = 905
    Height = 492
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      ParentShowHint = False
      inherited gbDados: TGroupBox
        Width = 897
        Height = 464
        object Label8: TLabel
          Left = 520
          Top = 8
          Width = 110
          Height = 32
          Caption = 'Enviar Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Kokila'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 296
          Top = 50
          Width = 39
          Height = 22
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Kokila'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 296
          Top = 81
          Width = 52
          Height = 22
          Caption = 'Assunto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Kokila'
          Font.Style = []
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 2
          Top = 8
          Width = 271
          Height = 443
          Align = alCustom
          TabOrder = 0
          object Label2: TLabel
            Left = 16
            Top = 57
            Width = 26
            Height = 13
            Caption = 'nome'
          end
          object Label3: TLabel
            Left = 16
            Top = 97
            Width = 84
            Height = 13
            Caption = 'numero_duplicata'
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 128
            Top = 97
            Width = 83
            Height = 13
            Caption = 'data_faturamento'
            FocusControl = DBEdit4
          end
          object Label5: TLabel
            Left = 16
            Top = 138
            Width = 51
            Height = 13
            Caption = 'data_venc'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 129
            Top = 138
            Width = 45
            Height = 13
            Caption = 'data_pag'
            FocusControl = DBEdit6
          end
          object Label7: TLabel
            Left = 16
            Top = 178
            Width = 41
            Height = 13
            Caption = 'idPedido'
            FocusControl = DBEdit7
          end
          object Label9: TLabel
            Left = 16
            Top = 218
            Width = 47
            Height = 13
            Caption = 'valorTotal'
            FocusControl = DBEdit9
          end
          object Label11: TLabel
            Left = 131
            Top = 180
            Width = 9
            Height = 13
            Caption = 'nf'
          end
          object Label1: TLabel
            Left = 16
            Top = 17
            Width = 36
            Height = 13
            Caption = 'idConta'
            FocusControl = DBEdit1
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 33
            Width = 134
            Height = 21
            DataField = 'idConta'
            DataSource = DS
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 16
            Top = 73
            Width = 217
            Height = 21
            DataField = 'nome'
            DataSource = DS
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 113
            Width = 105
            Height = 21
            DataField = 'numero_duplicata'
            DataSource = DS
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 128
            Top = 113
            Width = 105
            Height = 21
            DataField = 'data_faturamento'
            DataSource = DS
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 16
            Top = 154
            Width = 105
            Height = 21
            DataField = 'data_venc'
            DataSource = DS
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 129
            Top = 154
            Width = 104
            Height = 21
            DataField = 'data_pag'
            DataSource = DS
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 16
            Top = 194
            Width = 105
            Height = 21
            DataField = 'idPedido'
            DataSource = DS
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit8: TDBEdit
            Left = 129
            Top = 194
            Width = 104
            Height = 21
            DataField = 'nf'
            DataSource = DS
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit9: TDBEdit
            Left = 16
            Top = 234
            Width = 105
            Height = 21
            DataField = 'valorTotal'
            DataSource = DS
            ReadOnly = True
            TabOrder = 8
          end
        end
        object DBEdit10: TDBEdit
          Left = 360
          Top = 52
          Width = 513
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 1
        end
        object edt_Assunto: TEdit
          Left = 360
          Top = 82
          Width = 513
          Height = 21
          TabOrder = 2
        end
        object Memo1: TMemo
          Left = 296
          Top = 114
          Width = 577
          Height = 313
          Align = alCustom
          TabOrder = 3
        end
        object btnEnviarEmail: TBitBtn
          Left = 800
          Top = 432
          Width = 75
          Height = 25
          Caption = 'Enviar'
          TabOrder = 4
          OnClick = btnEnviarEmailClick
        end
        object BitBtn2: TBitBtn
          Left = 720
          Top = 432
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 5
          OnClick = BitBtn2Click
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        Width = 897
      end
      inherited DBGrid1: TDBGrid
        Width = 897
        Height = 399
        Columns = <
          item
            Expanded = False
            FieldName = 'idConta'
            Title.Caption = 'Cod Duplicata'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Cliente'
            Width = 231
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_faturamento'
            Title.Caption = 'Data Faturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_venc'
            Title.Caption = 'Data Vencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idPedido'
            Title.Caption = 'Cod Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nf'
            Title.Caption = 'NF'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorTotal'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'Email'
            Width = 165
            Visible = True
          end>
      end
    end
  end
  inherited DS: TDataSource
    DataSet = mConsulta
    Left = 728
    Top = 8
  end
  object mConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConsulta'
    Left = 808
    Top = 8
    object mConsultaidConta: TIntegerField
      FieldName = 'idConta'
    end
    object mConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object mConsultanumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      Size = 50
    end
    object mConsultadata_faturamento: TStringField
      FieldName = 'data_faturamento'
      Size = 10
    end
    object mConsultadata_venc: TStringField
      FieldName = 'data_venc'
      Size = 10
    end
    object mConsultadata_pag: TStringField
      FieldName = 'data_pag'
      Size = 10
    end
    object mConsultaidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object mConsultanf: TFloatField
      FieldName = 'nf'
    end
    object mConsultavalorTotal: TFloatField
      FieldName = 'valorTotal'
    end
    object mConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
  end
  object pConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 840
    Top = 8
  end
  object qConsulta: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      
        'select c.idConta, cli.nome, c.numero_duplicata, fat.data_faturam' +
        'ento, c.data_venc, c.data_pag, '
      'ped.idPedido, fat.nf, ped.valorTotal,  cli.email '
      'from contas c '
      
        'left outer join faturamento fat on c.idFaturamento = fat.idFatur' +
        'amento'
      'left outer join pedido ped on fat.idPedido = ped.idPedido'
      'left outer join cliente cli on ped.idCliente = cli.idCliente'
      'where c.statusPag = 0 '
      
        'and (SIGN(DATEDIFF(DAY,GETDATE(), CONVERT(DATETIME,c.data_venc,1' +
        '03))) = -1);')
    Left = 776
    Top = 8
    object qConsultaidConta: TIntegerField
      FieldName = 'idConta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qConsultanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qConsultanumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      Size = 50
    end
    object qConsultadata_faturamento: TStringField
      FieldName = 'data_faturamento'
      Size = 10
    end
    object qConsultadata_venc: TStringField
      FieldName = 'data_venc'
      Size = 10
    end
    object qConsultadata_pag: TStringField
      FieldName = 'data_pag'
      Size = 10
    end
    object qConsultaidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object qConsultanf: TFloatField
      FieldName = 'nf'
    end
    object qConsultavalorTotal: TFloatField
      FieldName = 'valorTotal'
    end
    object qConsultaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
  end
end
