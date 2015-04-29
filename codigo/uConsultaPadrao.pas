unit uConsultaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DB, Provider, DBClient,
  DBTables;

type
  TFConsultaPadrao = class(TForm)
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    DS: TDataSource;
    Query1: TQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaPadrao: TFConsultaPadrao;

implementation

{$R *.dfm}

end.
