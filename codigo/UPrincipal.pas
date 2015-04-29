unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, ComCtrls, ToolWin, jpeg, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Image2: TImage;
    Panel3: TPanel;
    imgUsuario: TImage;
    imgCliente: TImage;
    Image1: TImage;
    Image5: TImage;
    imgProduto: TImage;
    imgPedido: TImage;
    imgContas: TImage;
    imgEntradaEstoque: TImage;
    Image10: TImage;
    imgCidade: TImage;
    procedure FormShow(Sender: TObject);
    procedure imgClienteClick(Sender: TObject);
    procedure imgCidadeClick(Sender: TObject);
    procedure imgPedidoClick(Sender: TObject);
    procedure imgProdutoClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure imgEntradaEstoqueClick(Sender: TObject);
    procedure imgContasClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

Uses  uPadraoModel, UCliente, uCidade, uPedido, uProduto, uUsuario, UEntradaEstoque,
  uConta, uConsultas;


{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);

end;

procedure TForm1.imgClienteClick(Sender: TObject);
begin
  fcliente.show;
end;

procedure TForm1.imgCidadeClick(Sender: TObject);
begin
  FCidade.Show;
end;

procedure TForm1.imgPedidoClick(Sender: TObject);
begin
  FPedido.Show;
end;

procedure TForm1.imgProdutoClick(Sender: TObject);
begin
  FProduto.Show;
end;

procedure TForm1.imgUsuarioClick(Sender: TObject);
begin
  FUsuario.show;
  end;

procedure TForm1.imgEntradaEstoqueClick(Sender: TObject);
begin
  FEntradaEstoque.Show;
end;

procedure TForm1.imgContasClick(Sender: TObject);
begin
  FConta.Show;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  FConsultas.Show;
end;

end.
