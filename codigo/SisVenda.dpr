program SisVenda;

uses
  Forms,
  uPrincipal in 'UPrincipal.pas' {Form1},
  uConexao in 'uConexao.pas' {DataModule1: TDataModule},
  uPadraoModel in 'uPadraoModel.pas' {FormPadrao},
  UCliente in 'UCliente.pas' {FCliente},
  uCidade in 'uCidade.pas' {FCidade},
  uPedido in 'uPedido.pas' {FPedido},
  uProduto in 'uProduto.pas' {FProduto},
  uUsuario in 'uUsuario.pas' {FUsuario},
  UEntradaEstoque in 'UEntradaEstoque.pas' {FEntradaEstoque},
  uConta in 'uConta.pas' {FConta};


{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPadrao, FormPadrao);
  Application.CreateForm(TFCliente, FCliente);
  Application.CreateForm(TFCidade, FCidade);
  Application.CreateForm(TFPedido, FPedido);
  Application.CreateForm(TFProduto, FProduto);
  Application.CreateForm(TFUsuario, FUsuario);
  Application.CreateForm(TFEntradaEstoque, FEntradaEstoque);
  Application.CreateForm(TFConta, FConta);
  Application.CreateForm(TFEntradaEstoque, FEntradaEstoque);
  Application.Run;
end.
