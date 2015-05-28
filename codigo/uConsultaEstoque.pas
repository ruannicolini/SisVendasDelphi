unit uConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, Provider, DBClient, ExtCtrls, uConexao,
  DBGridBeleza;

type
  TFConsultaEstoque = class(TFormPadrao)
    mConsulta: TClientDataSet;
    pConsulta: TDataSetProvider;
    qConsulta: TQuery;
    Edit_Ean: TLabeledEdit;
    qConsultaOperacao: TStringField;
    qConsultacodOP: TFloatField;
    qConsultacodProduto: TIntegerField;
    qConsultaProduto: TStringField;
    qConsultaquantidade: TIntegerField;
    qConsultadata: TDateTimeField;
    mConsultaOperacao: TStringField;
    mConsultacodOP: TFloatField;
    mConsultacodProduto: TIntegerField;
    mConsultaProduto: TStringField;
    mConsultaquantidade: TIntegerField;
    mConsultadata: TDateTimeField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure Edit_EanKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaEstoque: TFConsultaEstoque;

implementation

{$R *.dfm}

procedure TFConsultaEstoque.btnPesquisarClick(Sender: TObject);
begin
  if(Edit_Ean.Text <> '') then
  begin
    qConsulta.Close;
    qConsulta.Open;
    qConsulta.ParamByName('Pean').AsString:=(Edit_Ean.Text);
    inherited;
  end else
  begin
    ShowMessage('Informe Ean do Produto');
    Edit_Ean.SetFocus;
  end;

end;

procedure TFConsultaEstoque.Edit_EanKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    btnPesquisar.OnClick(Sender);
  end;
end;

end.
