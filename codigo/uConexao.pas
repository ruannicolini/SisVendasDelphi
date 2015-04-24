unit uConexao;

interface

uses
  SysUtils, Classes, DB, DBTables, ImgList, Controls, Provider, DBClient, Dialogs;

type
  TDataModule1 = class(TDataModule)
    dbSisVenda: TDatabase;
    ImageList1: TImageList;
    qCliente: TQuery;
    mCliente: TClientDataSet;
    pCliente: TDataSetProvider;
    qClienteidCliente: TIntegerField;
    qClientenome: TStringField;
    qClienteendereco: TStringField;
    qClientenumero: TStringField;
    qClientebairro: TStringField;
    qClientecomplemento: TStringField;
    qClientecep: TStringField;
    qClientecnpj: TStringField;
    qClientetelFixo: TStringField;
    qClientetelCel: TStringField;
    qClienteemail: TStringField;
    qClienteie: TStringField;
    qClienteidCidade: TIntegerField;
    mClienteidCliente: TIntegerField;
    mClientenome: TStringField;
    mClienteendereco: TStringField;
    mClientenumero: TStringField;
    mClientebairro: TStringField;
    mClientecomplemento: TStringField;
    mClientecep: TStringField;
    mClientecnpj: TStringField;
    mClientetelFixo: TStringField;
    mClientetelCel: TStringField;
    mClienteemail: TStringField;
    mClienteie: TStringField;
    mClienteidCidade: TIntegerField;
    qCidade: TQuery;
    qCidadeidCidade: TIntegerField;
    qCidadenome: TStringField;
    qCidadeuf: TStringField;
    qClienteCidade: TStringField;
    qAux: TQuery;
    mCidade: TClientDataSet;
    pCidade: TDataSetProvider;
    mCidadeidCidade: TIntegerField;
    mCidadenome: TStringField;
    mCidadeuf: TStringField;
    mClienteCidade: TStringField;
    qPedido: TQuery;
    pPedido: TDataSetProvider;
    mPedido: TClientDataSet;
    qPedidoidPedido: TIntegerField;
    qPedidodescricao: TStringField;
    qPedidovalorTotal: TFloatField;
    qPedidoprazoPagamento: TIntegerField;
    qPedidoidCliente: TIntegerField;
    qPedidodata: TStringField;
    mPedidoidPedido: TIntegerField;
    mPedidodescricao: TStringField;
    mPedidovalorTotal: TFloatField;
    mPedidoprazoPagamento: TIntegerField;
    mPedidoidCliente: TIntegerField;
    mPedidodata: TStringField;
    mPedidoNomeCliente: TStringField;
    qProduto: TQuery;
    mProduto: TClientDataSet;
    pProduto: TDataSetProvider;
    qProdutoidProduto: TIntegerField;
    qProdutodescricao: TStringField;
    qProdutopreco: TFloatField;
    qProdutostatusVenda: TBooleanField;
    qProdutoqtdEstoque: TIntegerField;
    qProdutoean: TFloatField;
    mProdutoidProduto: TIntegerField;
    mProdutodescricao: TStringField;
    mProdutopreco: TFloatField;
    mProdutostatusVenda: TBooleanField;
    mProdutoqtdEstoque: TIntegerField;
    mProdutoean: TFloatField;
    qEntrada: TQuery;
    mEntrada: TClientDataSet;
    pEntrada: TDataSetProvider;
    qEntradaidUsuario: TIntegerField;
    qEntradaidProduto: TIntegerField;
    qEntradaqtd: TIntegerField;
    qEntradadataAlteracaoEstoque: TStringField;
    qEntradaidEntrada: TFloatField;
    mEntradaidEntrada: TFloatField;
    mEntradaidUsuario: TIntegerField;
    mEntradaidProduto: TIntegerField;
    mEntradaqtd: TIntegerField;
    mEntradadataAlteracaoEstoque: TStringField;
    mEntradaProduto: TStringField;
    procedure mClienteAfterPost(DataSet: TDataSet);
    procedure mClienteAfterDelete(DataSet: TDataSet);
    procedure mClienteAfterCancel(DataSet: TDataSet);
    procedure mClienteAfterInsert(DataSet: TDataSet);
    procedure mCidadeAfterPost(DataSet: TDataSet);
    procedure mCidadeAfterDelete(DataSet: TDataSet);
    procedure mCidadeAfterCancel(DataSet: TDataSet);
    procedure mCidadeAfterInsert(DataSet: TDataSet);
    procedure mPedidoAfterPost(DataSet: TDataSet);
    procedure mPedidoAfterDelete(DataSet: TDataSet);
    procedure mPedidoAfterCancel(DataSet: TDataSet);
    procedure mPedidoAfterInsert(DataSet: TDataSet);
    procedure mProdutoAfterPost(DataSet: TDataSet);
    procedure mProdutoAfterDelete(DataSet: TDataSet);
    procedure mProdutoAfterCancel(DataSet: TDataSet);
    procedure mProdutoAfterInsert(DataSet: TDataSet);
    procedure mEntradaAfterPost(DataSet: TDataSet);
    procedure mEntradaAfterDelete(DataSet: TDataSet);
    procedure mEntradaAfterCancel(DataSet: TDataSet);
    procedure mEntradaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function buscaProximoParametro(p:string):integer;
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.mClienteAfterPost(DataSet: TDataSet);
begin
  mCliente.ApplyUpdates(-1);
end;

procedure TDataModule1.mClienteAfterDelete(DataSet: TDataSet);
begin
    mCliente.ApplyUpdates(-1);
end;

procedure TDataModule1.mClienteAfterCancel(DataSet: TDataSet);
begin
    mCliente.CancelUpdates;
end;

function TDataModule1.buscaProximoParametro(p: string): integer;
var i : integer;
begin
  qAux.SQL.Text := 'select valor from parametro where idParametro =:p';
  qAux.ParamByName('p').AsString := p;
  qAux.Open;
  
  if not qAux.IsEmpty then
  begin
    i := StrToInt(qAux.Fields[0].AsString);
    qAux.SQL.Text := 'update parametro set valor =:v where idParametro =:p';
    qAux.ParamByName('p').AsString := p;
    qAux.ParamByName('v').AsString := IntToStr(i+1);
    qAux.ExecSQL;
    buscaProximoParametro := i;
  end
  else
    showmessage('Parametro Inválido');
end;

procedure TDataModule1.mClienteAfterInsert(DataSet: TDataSet);
begin
  mClienteidCliente.AsInteger := buscaProximoParametro('SeqCliente');
end;

procedure TDataModule1.mCidadeAfterPost(DataSet: TDataSet);
begin
  mCidade.ApplyUpdates(-1);
end;

procedure TDataModule1.mCidadeAfterDelete(DataSet: TDataSet);
begin
  mCidade.ApplyUpdates(-1);
end;

procedure TDataModule1.mCidadeAfterCancel(DataSet: TDataSet);
begin
  mCidade.CancelUpdates;
end;

procedure TDataModule1.mCidadeAfterInsert(DataSet: TDataSet);
begin
  mCidadeidCidade.AsInteger := buscaProximoParametro('SeqCidade');
end;

procedure TDataModule1.mPedidoAfterPost(DataSet: TDataSet);
begin
 mPedido.ApplyUpdates(-1);
end;

procedure TDataModule1.mPedidoAfterDelete(DataSet: TDataSet);
begin
  mPedido.ApplyUpdates(-1);
end;

procedure TDataModule1.mPedidoAfterCancel(DataSet: TDataSet);
begin
  mPedido.CancelUpdates;
end;

procedure TDataModule1.mPedidoAfterInsert(DataSet: TDataSet);
begin
  mPedidoidPedido.AsInteger := buscaProximoParametro('SeqPedido');
end;

procedure TDataModule1.mProdutoAfterPost(DataSet: TDataSet);
begin
  mProduto.ApplyUpdates(-1);
end;

procedure TDataModule1.mProdutoAfterDelete(DataSet: TDataSet);
begin
  mProduto.ApplyUpdates(-1);
end;

procedure TDataModule1.mProdutoAfterCancel(DataSet: TDataSet);
begin
  mProduto.CancelUpdates;
end;

procedure TDataModule1.mProdutoAfterInsert(DataSet: TDataSet);
begin
  mProdutoidProduto.AsInteger := buscaProximoParametro('SeqProduto');
end;

procedure TDataModule1.mEntradaAfterPost(DataSet: TDataSet);
begin
  mEntrada.ApplyUpdates(-1);
end;

procedure TDataModule1.mEntradaAfterDelete(DataSet: TDataSet);
begin
  mEntrada.ApplyUpdates(-1);
end;

procedure TDataModule1.mEntradaAfterCancel(DataSet: TDataSet);
begin
  mEntrada.CancelUpdates;
end;

procedure TDataModule1.mEntradaAfterInsert(DataSet: TDataSet);
begin
  mEntradaidEntrada.AsInteger := buscaProximoParametro('SeqEntrada');
end;

end.
