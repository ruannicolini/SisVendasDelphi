unit uConsultaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, DBClient, Provider, Mask, DBCtrls;

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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure btnPesquisarClick(Sender: TObject);
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

end.
