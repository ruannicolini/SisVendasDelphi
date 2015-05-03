unit uConsultasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, DBClient, Provider;

type
  TFConsultaProdutos = class(TFormPadrao)
    pConsulta: TDataSetProvider;
    mConsulta: TClientDataSet;
    qConsulta: TQuery;
    date_inic: TDateTimePicker;
    date_fim: TDateTimePicker;
    qConsultaidProduto: TIntegerField;
    qConsultaQTDE: TIntegerField;
    mConsultaidProduto: TIntegerField;
    mConsultaQTDE: TIntegerField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaProdutos: TFConsultaProdutos;

implementation

{$R *.dfm}

procedure TFConsultaProdutos.btnPesquisarClick(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.Params.ParamByName('d1').AsDateTime := date_inic.DateTime;
  qConsulta.Params.ParamByName('d2').AsDateTime := date_fim.DateTime;
  qConsulta.Open;

  inherited;

end;

end.
