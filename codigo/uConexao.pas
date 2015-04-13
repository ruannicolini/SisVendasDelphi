unit uConexao;

interface

uses
  SysUtils, Classes, DB, DBTables, ImgList, Controls;

type
  TDataModule1 = class(TDataModule)
    dbSisVenda: TDatabase;
    ImageList1: TImageList;
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
