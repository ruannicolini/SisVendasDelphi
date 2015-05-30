object f_relatorios: Tf_relatorios
  Left = 282
  Top = 68
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios '
  ClientHeight = 349
  ClientWidth = 481
  Color = 16773849
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 8
    Top = 10
    Width = 463
    Height = 37
    Brush.Color = 16762447
    Pen.Color = clSilver
  end
  object lbTpRelat: TLabel
    Left = 14
    Top = 15
    Width = 75
    Height = 26
    Caption = 'Relat'#243'rios do'#13#10'Sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 128
    Top = 327
    Width = 75
    Height = 13
    Caption = 'Relat'#243'rio Atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbRelatAtual: TLabel
    Left = 206
    Top = 328
    Width = 30
    Height = 13
    Caption = '00000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbTela: TLabel
    Left = 73
    Top = 328
    Width = 30
    Height = 13
    Caption = '00000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 327
    Width = 61
    Height = 13
    Caption = 'Tela Origem:'
    Transparent = True
  end
  object barra: TToolBar
    Left = 189
    Top = 14
    Width = 279
    Height = 30
    Cursor = crHandPoint
    Align = alNone
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    Color = clWhite
    EdgeBorders = []
    Flat = True
    Images = f_principal.ILTelas
    ParentColor = False
    TabOrder = 0
    Transparent = True
    object btimprimir: TToolButton
      Left = 0
      Top = 0
      Hint = 'Imprimir Relat'#243'rio Atual'
      AutoSize = True
      Caption = 'btimprimir'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = btimprimirClick
    end
    object btEmail: TToolButton
      Left = 31
      Top = 0
      Hint = 'Enviar para eMail!!!'
      Caption = 'btEmail'
      ImageIndex = 14
      ParentShowHint = False
      ShowHint = True
      OnClick = btEmailClick
    end
    object btPDF: TToolButton
      Left = 62
      Top = 0
      Hint = 'Exportar Relat'#243'rio para Arquivo PDF'
      Caption = 'btPDF'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btPDFClick
    end
    object button5: TToolButton
      Left = 93
      Top = 0
      Caption = 'button5'
      Enabled = False
    end
    object ToolButton2: TToolButton
      Left = 124
      Top = 0
      Caption = 'ToolButton2'
      Enabled = False
    end
    object btnovo: TToolButton
      Left = 155
      Top = 0
      Hint = 'Novo Relat'#243'rio a partir do Atual'
      AutoSize = True
      Caption = 'btnovo'
      Enabled = False
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = btnovoClick
    end
    object btalterar: TToolButton
      Left = 186
      Top = 0
      Hint = 'Alterar Relat'#243'rio'
      AutoSize = True
      Caption = 'btalterar'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btalterarClick
    end
    object btexcluir: TToolButton
      Left = 217
      Top = 0
      Hint = 'Excluir Relat'#243'rio'
      AutoSize = True
      Caption = 'btexcluir'
      Enabled = False
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = btexcluirClick
    end
    object btsair: TToolButton
      Left = 248
      Top = 0
      Hint = 'Sair'
      AutoSize = True
      Caption = 'btsair'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = btsairClick
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 73
    Width = 466
    Height = 249
    ActivePage = tbRelatsSistema
    TabOrder = 1
    object tbRelatsSistema: TTabSheet
      Caption = 'Sistema'
      object gridRelatsSistema: TDBGrid
        Left = 0
        Top = 0
        Width = 458
        Height = 221
        Hint = 'DUPLO CLIQUE pra Imprimir o Relatorio'
        Align = alClient
        Ctl3D = False
        DataSource = ds_relats
        FixedColor = 16762447
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = gridRelatsSistemaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'num_relat'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 396
            Visible = True
          end>
      end
    end
    object tbRelatsUsuarios: TTabSheet
      Caption = 'Usu'#225'rios'
      ImageIndex = 1
      object gridRelatsUsuario: TDBGrid
        Left = 0
        Top = 0
        Width = 458
        Height = 221
        Hint = 'DUPLO CLIQUE pra Imprimir o Relatorio'
        Align = alClient
        Ctl3D = False
        DataSource = ds_relats_usur
        FixedColor = 16762447
        Options = [dgTitles, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = gridRelatsSistemaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'num_relat'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 394
            Visible = True
          end>
      end
    end
  end
  object btRelatsSistema: TXiButton
    Left = 10
    Top = 55
    Width = 57
    Height = 19
    Cursor = crHandPoint
    ColorFace = 14737632
    ColorGrad = 3653375
    ColorDark = 11447982
    ColorLight = 16250871
    ColorBorder = 6447714
    ColorText = clBlack
    OverColorFace = 13619151
    OverColorGrad = clWhite
    OverColorDark = 7960953
    OverColorLight = 15658734
    OverColorBorder = 7697781
    OverColorText = clBlack
    DownColorFace = 13882323
    DownColorGrad = clWhite
    DownColorDark = 15329769
    DownColorLight = 8158332
    DownColorBorder = 5131854
    DownColorText = clBlack
    DisabledColorFace = 14869218
    DisabledColorGrad = clWhite
    DisabledColorDark = 14211288
    DisabledColorLight = 15395562
    DisabledColorBorder = 12895428
    DisabledColorText = clGray
    ColorFocusRect = 9079434
    ColorScheme = csSilver
    Ctl3D = True
    Layout = blGlyphLeft
    Spacing = 4
    TransparentGlyph = True
    Gradient = False
    HotTrack = True
    Caption = 'Sistema'
    TabOrder = 3
    OnClick = btRelatsSistemaClick
  end
  object btRelatsUsuario: TXiButton
    Left = 66
    Top = 55
    Width = 55
    Height = 17
    Cursor = crHandPoint
    ColorFace = clSilver
    ColorGrad = 3653375
    ColorDark = 11447982
    ColorLight = 16250871
    ColorBorder = 6447714
    ColorText = clBlack
    OverColorFace = 13619151
    OverColorGrad = clWhite
    OverColorDark = 7960953
    OverColorLight = 15658734
    OverColorBorder = 7697781
    OverColorText = clBlack
    DownColorFace = 13882323
    DownColorGrad = clWhite
    DownColorDark = 15329769
    DownColorLight = 8158332
    DownColorBorder = 5131854
    DownColorText = clBlack
    DisabledColorFace = 14869218
    DisabledColorGrad = clWhite
    DisabledColorDark = 14211288
    DisabledColorLight = 15395562
    DisabledColorBorder = 12895428
    DisabledColorText = clGray
    ColorFocusRect = 9079434
    ColorScheme = csCustom
    Ctl3D = True
    Layout = blGlyphLeft
    Spacing = 4
    TransparentGlyph = True
    Gradient = False
    HotTrack = True
    Caption = 'Usuario'
    TabOrder = 2
    OnClick = btRelatsSistemaClick
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    SkipWhenNoRecords = False
    UserName = 'DBPipeline1'
    Left = 380
    Top = 83
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'data_recto'
      FieldName = 'data_recto'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'hist'
      FieldName = 'hist'
      FieldLength = 150
      DisplayWidth = 150
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'relacionamento'
      FieldName = 'relacionamento'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_contas_recebidas'
      FieldName = 'cod_contas_recebidas'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'cliente'
      FieldName = 'cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
  end
  object DataSource1: TDataSource
    Left = 412
    Top = 83
  end
  object ds_relats: TDataSource
    DataSet = Relatorios_sis
    Left = 144
    Top = 108
  end
  object ds_relats_usur: TDataSource
    DataSet = relats_usur
    Left = 144
    Top = 140
  end
  object DataSource2: TDataSource
    Left = 412
    Top = 112
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource2
    SkipWhenNoRecords = False
    UserName = 'DBPipeline2'
    Left = 380
    Top = 112
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'data_pagto'
      FieldName = 'data_pagto'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'hist'
      FieldName = 'hist'
      FieldLength = 150
      DisplayWidth = 150
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'relacionamento'
      FieldName = 'relacionamento'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_contas_pagas'
      FieldName = 'cod_contas_pagas'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'fornecedor'
      FieldName = 'fornecedor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBPipeline2ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'relacionamento'
      GuidCollationType = gcString
      DetailFieldName = 'relacionamento'
      DetailSortOrder = soAscending
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DataSource3
    SkipWhenNoRecords = False
    UserName = 'DBPipeline3'
    Left = 380
    Top = 141
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline3ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'relacionamento'
      FieldName = 'relacionamento'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppDBPipeline3ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'cliente'
      GuidCollationType = gcString
      DetailFieldName = 'relacionamento'
      DetailSortOrder = soAscending
    end
  end
  object DataSource3: TDataSource
    Left = 412
    Top = 141
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline4'
    Left = 380
    Top = 173
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline4ppField1: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline4ppField2: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline4ppField3: TppField
      FieldAlias = 'num_parcelas'
      FieldName = 'num_parcelas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline4ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'cliente'
      GuidCollationType = gcString
      DetailFieldName = 'cod_condicao'
      DetailSortOrder = soAscending
    end
  end
  object DataSource4: TDataSource
    Left = 412
    Top = 173
  end
  object ppDBPipeline5: TppDBPipeline
    DataSource = DataSource5
    UserName = 'DBPipeline5'
    Left = 380
    Top = 205
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline5ppField1: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField2: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField3: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField4: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField5: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
  end
  object DataSource5: TDataSource
    Left = 412
    Top = 205
  end
  object q_aux: TQuery
    DatabaseName = 'dbsisfab'
    Left = 272
    Top = 84
  end
  object Relatorios_sis: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tela'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_relat'
        DataType = ftSmallint
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'arquivo'
        DataType = ftString
        Size = 70
      end>
    IndexDefs = <
      item
        Name = 'Relatorios_sisIndex1'
        Fields = 'num_relat'
      end>
    IndexFieldNames = 'num_relat'
    Params = <>
    StoreDefs = True
    AfterScroll = Relatorios_sisAfterScroll
    Left = 112
    Top = 108
    object Relatorios_sistela: TStringField
      FieldName = 'tela'
      Origin = 'DBSISFAB.relatorios_sistema.tela'
    end
    object Relatorios_sisnum_relat: TSmallintField
      FieldName = 'num_relat'
      Origin = 'DBSISFAB.relatorios_sistema.num_relat'
    end
    object Relatorios_sisdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'DBSISFAB.relatorios_sistema.descricao'
      Size = 50
    end
    object Relatorios_sisarquivo: TStringField
      FieldName = 'arquivo'
      Origin = 'DBSISFAB.relatorios_sistema.arquivo'
      Size = 70
    end
  end
  object relats_usur: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'relats_usurIndex1'
        Fields = 'num_relat'
      end>
    IndexFieldNames = 'num_relat'
    Params = <>
    StoreDefs = True
    AfterScroll = Relatorios_sisAfterScroll
    Left = 112
    Top = 140
    object relats_usurTela: TStringField
      FieldName = 'tela'
      Origin = 'DBSISFAB.relatorios_sistema.tela'
    end
    object relats_usurNum_Relat: TSmallintField
      DisplayLabel = 'N'#186
      FieldName = 'num_relat'
      Origin = 'DBSISFAB.relatorios_sistema.num_relat'
    end
    object relats_usurDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'DBSISFAB.relatorios_sistema.descricao'
      Size = 50
    end
    object relats_usurArquivo: TStringField
      FieldName = 'arquivo'
      Origin = 'DBSISFAB.relatorios_sistema.arquivo'
      Size = 70
    end
  end
  object ppDBPipeline6: TppDBPipeline
    DataSource = DataSource6
    UserName = 'DBPipeline6'
    Left = 380
    Top = 237
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField2: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
  end
  object DataSource6: TDataSource
    Left = 412
    Top = 237
  end
  object ppDBPipeline7: TppDBPipeline
    DataSource = DataSource7
    UserName = 'DBPipeline7'
    Left = 380
    Top = 269
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField7: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
    object ppDBPipeline7ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'data_recto'
      GuidCollationType = gcString
      DetailFieldName = 'num_dias'
      DetailSortOrder = soAscending
    end
  end
  object DataSource7: TDataSource
    Left = 412
    Top = 269
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.Author = 'Matriz Sistemas Ltda'
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    ShowAutoSearchDialog = True
    TextSearchSettings.DefaultString = 'Pesquise no Relatorio'
    TextSearchSettings.Enabled = True
    TextSearchSettings.Visible = True
    Left = 412
    Top = 42
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.DatabaseName = 'dbsisfab'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtMSSQLServer
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL1
    Position = poScreenCenter
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 380
    Top = 42
  end
  object ppDBPipeline8: TppDBPipeline
    DataSource = DataSource8
    UserName = 'DBPipeline8'
    Left = 380
    Top = 301
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField1: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterFieldLink3: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
    object ppMasterFieldLink4: TppMasterFieldLink
      MasterFieldName = 'data_recto'
      GuidCollationType = gcString
      DetailFieldName = 'num_dias'
      DetailSortOrder = soAscending
    end
  end
  object DataSource8: TDataSource
    Left = 412
    Top = 301
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'PDF'
    Filter = 'Arquivos PDF|*.PDF'
    Left = 216
    Top = 353
  end
  object popEnvioEmail: TPopupMenu
    Left = 192
    Top = 29
    object EnviarporEmail1: TMenuItem
      Caption = 'Enviar por Email...'
      OnClick = EnviarporEmail1Click
    end
    object EnviarparaumEmaildeClientesRepresentantesFornecedores1: TMenuItem
      Caption = 
        'Enviar para um Email de Clientes / Representantes / Fornecedores' +
        ' ....'
      Visible = False
      OnClick = EnviarparaumEmaildeClientesRepresentantesFornecedores1Click
    end
  end
  object DataSource9: TDataSource
    Left = 412
    Top = 333
  end
  object ppDBPipeline9: TppDBPipeline
    DataSource = DataSource9
    UserName = 'DBPipeline9'
    Left = 380
    Top = 333
    object ppField16: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterFieldLink5: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
    object ppMasterFieldLink6: TppMasterFieldLink
      MasterFieldName = 'data_recto'
      GuidCollationType = gcString
      DetailFieldName = 'num_dias'
      DetailSortOrder = soAscending
    end
  end
  object ppInfoTelaAtual: TppDBPipeline
    DataSource = dsNTela
    RefreshAfterPost = True
    SkipWhenNoRecords = False
    UserName = 'InfoTelaAtual'
    Left = 388
    Top = 368
    object ppField21: TppField
      FieldAlias = 'cod_condicao'
      FieldName = 'cod_condicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'num_da_parcela'
      FieldName = 'num_da_parcela'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField23: TppField
      FieldAlias = 'num_dias'
      FieldName = 'num_dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = 'percentual'
      FieldName = 'percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = 'juros'
      FieldName = 'juros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterFieldLink7: TppMasterFieldLink
      MasterFieldName = 'cod_contas_recebidas'
      GuidCollationType = gcString
      DetailFieldName = 'juros'
      DetailSortOrder = soAscending
    end
    object ppMasterFieldLink8: TppMasterFieldLink
      MasterFieldName = 'data_recto'
      GuidCollationType = gcString
      DetailFieldName = 'num_dias'
      DetailSortOrder = soAscending
    end
  end
  object dsNTela: TDataSource
    DataSet = mNumTelaRelat
    Left = 420
    Top = 368
  end
  object mNumTelaRelat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 452
    Top = 368
    object mNumTelaRelatTela: TStringField
      FieldName = 'Tela'
      Size = 70
    end
    object mNumTelaRelatNomeRelatorio: TStringField
      FieldName = 'NomeRelatorio'
      Size = 100
    end
    object mNumTelaRelatFiltrosMarcados: TMemoField
      FieldName = 'FiltrosMarcados'
      BlobType = ftMemo
    end
  end
end
