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
    Image4: TImage;
    Image3: TImage;
    Image1: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

Uses  uPadraoModel, UCliente, uCidade, uPedido, uProduto, UEntradaEstoque;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);

end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  fcliente.show;
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  FCidade.Show;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  FPedido.Show;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  FProduto.Show;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  FEntradaEstoque.Show;
end;

end.
