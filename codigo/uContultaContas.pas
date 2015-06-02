unit uContultaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPadrao, DB, StdCtrls, ComCtrls, Grids, DBGrids,
  DBTables, DBClient, Provider, Buttons;

type
  TFConsultaContas = class(TFConsultaPadrao)
    pConsulta: TDataSetProvider;
    mConsulta: TClientDataSet;
    qContulta: TQuery;
    btnPesq: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaContas: TFConsultaContas;

implementation

{$R *.dfm}

end.
