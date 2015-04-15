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
    pCidade: TDataSetProvider;
    mCidade: TClientDataSet;
    procedure mClienteAfterPost(DataSet: TDataSet);
    procedure mClienteAfterDelete(DataSet: TDataSet);
    procedure mClienteAfterCancel(DataSet: TDataSet);
    procedure mClienteAfterInsert(DataSet: TDataSet);
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

procedure TDataModule1.mCidadeAfterInsert(DataSet: TDataSet);
begin
  mCidadeidCidade.AsInteger := buscaProximoParametro('SeqCidade');
end;

end.
