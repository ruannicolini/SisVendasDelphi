unit uConsultasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, DBClient, Provider,
  DBGridBeleza,
  ExtCtrls, uFiltroDatas,
  ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe;

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
    filtroData: tFiltroDatas;
    qConsultadescricao: TStringField;
    mConsultadescricao: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  //qConsulta.Params.ParamByName('d1').AsDateTime := date_inic.DateTime;
  //qConsulta.Params.ParamByName('d2').AsDateTime := date_fim.DateTime;

  qConsulta.Params.ParamByName('d1').AsDateTime := filtroData.Data1;
  qConsulta.Params.ParamByName('d2').AsDateTime := filtroData.Data2;

  qConsulta.Open;

  inherited;

end;

procedure TFConsultaProdutos.FormShow(Sender: TObject);
begin
  inherited;
  btnNovo.Visible := false;
  btnAlterar.Visible := false;
  btnDeletar.Visible := false;
  tbDados.TabVisible := false;
end;

end.
