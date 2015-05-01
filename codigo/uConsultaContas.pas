unit uConsultaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, Provider, DBClient;

type
  TFConsultaContas = class(TFormPadrao)
    mConsulta: TClientDataSet;
    pConsulta: TDataSetProvider;
    qConsulta: TQuery;
    qConsultaidConta: TIntegerField;
    qConsultanome: TStringField;
    qConsultanumero_duplicata: TStringField;
    qConsultadata_faturamento: TStringField;
    qConsultadata_venc: TStringField;
    qConsultadata_pag: TStringField;
    qConsultaidPedido: TIntegerField;
    qConsultanf: TFloatField;
    qConsultavalorTotal: TFloatField;
    qConsultaemail: TStringField;
    mConsultaidConta: TIntegerField;
    mConsultanome: TStringField;
    mConsultanumero_duplicata: TStringField;
    mConsultadata_faturamento: TStringField;
    mConsultadata_venc: TStringField;
    mConsultadata_pag: TStringField;
    mConsultaidPedido: TIntegerField;
    mConsultanf: TFloatField;
    mConsultavalorTotal: TFloatField;
    mConsultaemail: TStringField;
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
