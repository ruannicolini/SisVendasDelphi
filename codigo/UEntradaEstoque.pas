unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ExtCtrls;

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
    rbAutomatico: TRadioButton;
    rbManual: TRadioButton;
    procedure eEanExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
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
  DataModule1.qEntradaEan.Params.ParamByName('pean').AsString := eEan.Text;
  DataModule1.qEntradaEan.Open;
  if not (DataModule1.qEntradaEan.IsEmpty) then
  begin
    DBEidProduto.Text := DataModule1.qEntradaEan.fieldByName('idProduto').AsString;
    eDescricaoProduto.Text := DataModule1.qEntradaEan.fieldByName('descricao').AsString;
  end
  else
  begin
    eDescricaoProduto.Clear;
    DBEidProduto.Clear;
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

procedure TFEntradaEstoque.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if (trim(eEan.Text) <> '') then
  begin
    DataModule1.mEntrada.Append;
    if(rbAutomatico.Checked) then
    begin
      DataModule1.mEntradaqtd.AsInteger := 1;
    end
    else
      DataModule1.mEntradaqtd.AsInteger := StrToInt(DBEqtd.Text);

    DataModule1.mEntradaidEntrada.Value := StrToInt64 (DBEidEntrada.Text);
    ShowMessage('Entrada: ' + DataModule1.mEntradaidEntrada.AsString);
    DataModule1.mEntradaidUsuario.AsInteger := StrToInt(DBEidUsuario.Text);
    ShowMessage('Usuário: ' + DataModule1.mEntradaidUsuario.AsString);
    DataModule1.mEntradaidProduto.AsInteger := StrToInt(DataModule1.mEntradaEan.fieldByName('idProduto').AsString);
    ShowMessage('Produto: ' + DataModule1.mEntradaidProduto.AsString);
    DataModule1.mEntradadataAlteracaoEstoque.AsString := DBEdata.Text;
    ShowMessage('Data: ' + DataModule1.mEntradadataAlteracaoEstoque.AsString);
    DataModule1.mEntrada.Post;

    eEan.Clear;
    eDescricaoProduto.Clear;
    eEan.Enabled := False;
    rbAutomatico.Enabled := False;
    rbManual.Enabled := False;
  end
  else
    ShowMessage('Digite o código de barra do produto.');

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
