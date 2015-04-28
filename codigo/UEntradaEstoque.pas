unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ExtCtrls, DBTables;

type
  TFEntradaEstoque = class(TFormPadrao)
    Label1: TLabel;
    DBEidEntrada: TDBEdit;
    Label2: TLabel;
    DBEidUsuario: TDBEdit;
    Label3: TLabel;
    DBEidProduto: TDBEdit;
    Label4: TLabel;
    DBEqtd: TDBEdit;
    Label5: TLabel;
    DBEdata: TDBEdit;
    eEan: TEdit;
    lEan: TLabel;
    eDescricaoProduto: TEdit;
    lDescricao: TLabel;
    rbAutomatico: TRadioButton;
    rbManual: TRadioButton;
    qAuxProduto: TQuery;
    qAuxUsuario: TQuery;
    qU: TQuery;
    qP: TQuery;
    Label7: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure eEanExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaEstoque: TFEntradaEstoque;

implementation

{$R *.dfm}

procedure TFEntradaEstoque.eEanExit(Sender: TObject);
begin
  inherited;
  DataModule1.qEntradaEan.Close;
  DataModule1.qEntradaEan.ParamByName('pean').AsString := eEan.Text;
  DataModule1.qEntradaEan.Open;

  if not (DataModule1.qEntradaEan.IsEmpty) then
  begin
    if not (DataModule1.mProduto.Active) then
      DataModule1.mProduto.Open;

    DataModule1.mProduto.Edit;
    DataModule1.mProdutoidProduto.AsInteger := StrToInt(DataModule1.qEntradaEan.fieldByName('idProduto').AsString);
    DataModule1.mProduto.Post;

    DBEidProduto.Text := DataModule1.mProdutoidProduto.AsString;
    eDescricaoProduto.Text := DataModule1.qEntradaEan.fieldByName('descricao').AsString;
  end
  else
  begin
    eDescricaoProduto.Clear;
    ShowMessage('Código de barra não encontrado.');
    eEan.SetFocus;
  end;
end;

procedure TFEntradaEstoque.btnNovoClick(Sender: TObject);
begin
  inherited;
  DBEdata.Text := DateToStr(Date);
  eEan.Enabled := True;
  rbAutomatico.Enabled := True;
  rbManual.Enabled := True;
  DBEqtd.Text := IntToStr(1);
end;

procedure TFEntradaEstoque.btnCancelarClick(Sender: TObject);
begin
  inherited;
  eEan.Enabled := False;
  eDescricaoProduto.Enabled := False;
  rbAutomatico.Enabled := False;
  rbManual.Enabled := False;
end;

end.
