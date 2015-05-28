unit uConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, Provider, DBClient, ExtCtrls, uConexao;

type
  TFConsultaEstoque = class(TFormPadrao)
    mConsulta: TClientDataSet;
    pConsulta: TDataSetProvider;
    qConsulta: TQuery;
    qConsultaidProduto: TIntegerField;
    qConsultadescricao: TStringField;
    qConsultaean: TFloatField;
    qConsultaqtd: TIntegerField;
    qConsultadataAlteracaoEstoque: TStringField;
    qConsultanome: TStringField;
    mConsultaidProduto: TIntegerField;
    mConsultadescricao: TStringField;
    mConsultaean: TFloatField;
    mConsultaqtd: TIntegerField;
    mConsultadataAlteracaoEstoque: TStringField;
    mConsultanome: TStringField;
    Edit_Ean: TLabeledEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
  DataModule1.qAux.Close;
  DataModule1.qAux.SQL.Text := 'Select idProduto from Produto where idProduto = ' + Edit_Ean.Text;
  DataModule1.qAux.Open;
  qConsulta.ParamByName(':idProd').Text :=  IntToStr( DataModule1.qAux.FieldByName('idProduto').AsInteger);

  inherited;
end;

procedure TFConsultaEstoque.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(mConsulta);
end;

end.
