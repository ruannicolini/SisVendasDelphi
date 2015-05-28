unit uConsultaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, DBClient, Provider;

type
  TFConsultaClientes = class(TFormPadrao)
    Date_Inic: TDateTimePicker;
    Date_fim: TDateTimePicker;
    pConsulta: TDataSetProvider;
    mConsulta: TClientDataSet;
    qConsulta: TQuery;
    qConsultaidCliente: TIntegerField;
    qConsultanome: TStringField;
    qConsultaendereco: TStringField;
    qConsultanumero: TStringField;
    qConsultabairro: TStringField;
    qConsultacomplemento: TStringField;
    qConsultacep: TStringField;
    qConsultacnpj: TStringField;
    qConsultatelFixo: TStringField;
    qConsultatelCel: TStringField;
    qConsultaemail: TStringField;
    qConsultaie: TStringField;
    qConsultaidCidade: TIntegerField;
    mConsultaidCliente: TIntegerField;
    mConsultanome: TStringField;
    mConsultaendereco: TStringField;
    mConsultanumero: TStringField;
    mConsultabairro: TStringField;
    mConsultacomplemento: TStringField;
    mConsultacep: TStringField;
    mConsultacnpj: TStringField;
    mConsultatelFixo: TStringField;
    mConsultatelCel: TStringField;
    mConsultaemail: TStringField;
    mConsultaie: TStringField;
    mConsultaidCidade: TIntegerField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaClientes: TFConsultaClientes;

implementation

uses uConexao;

{$R *.dfm}

procedure TFConsultaClientes.btnPesquisarClick(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.Params.ParamByName('d1').AsDateTime := date_inic.DateTime;
  qConsulta.Params.ParamByName('d2').AsDateTime := date_fim.DateTime;
  qConsulta.Open;

  inherited;

end;

procedure TFConsultaClientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(mConsulta);
end;

end.
