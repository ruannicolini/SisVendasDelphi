unit uConsultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, uConsultacontas, uConsultaClientes, uConsultasProdutos, uConsultaEstoque;

type
  TFConsultas = class(TForm)
    btnConsultaContas: TSpeedButton;
    BtnConsultaProdutos: TSpeedButton;
    btnConsultaEstoque: TSpeedButton;
    btnConsultaClientes: TSpeedButton;
    procedure btnConsultaContasClick(Sender: TObject);
    procedure btnConsultaClientesClick(Sender: TObject);
    procedure BtnConsultaProdutosClick(Sender: TObject);
    procedure btnConsultaEstoqueClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultas: TFConsultas;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFConsultas.btnConsultaContasClick(Sender: TObject);
begin
  Form1.Dinamico(TFConsultaContas, FConsultaContas);
end;

procedure TFConsultas.btnConsultaClientesClick(Sender: TObject);
begin
  Form1.Dinamico(TFConsultaClientes, FConsultaClientes);
end;

procedure TFConsultas.BtnConsultaProdutosClick(Sender: TObject);
begin
  Form1.Dinamico(TFConsultaProdutos, FConsultaProdutos);
end;

procedure TFConsultas.btnConsultaEstoqueClick(Sender: TObject);
begin
  Form1.Dinamico(TFConsultaEstoque, FConsultaEstoque);
end;

end.
