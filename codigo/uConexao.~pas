unit uConexao;

interface

uses
  SysUtils, Classes, DB, DBTables, ImgList, Controls, Provider, DBClient;

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
    procedure mClienteAfterPost(DataSet: TDataSet);
    procedure mClienteAfterDelete(DataSet: TDataSet);
    procedure mClienteAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
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

end.
