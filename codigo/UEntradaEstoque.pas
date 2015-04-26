unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask;

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
    DBLookupComboBox2: TDBLookupComboBox;
    eEan: TEdit;
    lEan: TLabel;
    eDescricaoProduto: TEdit;
    lDescricao: TLabel;
    procedure eEanExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
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
  DataModule1.qEntradaEan.Params.ParamByName('pean').Value := eEan.Text;
  DataModule1.qEntradaEan.Open;
  DBEidProduto.Text := DataModule1.qEntradaEan.fieldByName('idProduto').AsString;
  eDescricaoProduto.Text := DataModule1.qEntradaEan.fieldByName('descricao').AsString;
end;

procedure TFEntradaEstoque.btnNovoClick(Sender: TObject);
begin
  inherited;
  DBEdata.Text := DateToStr(Date);
end;

end.
