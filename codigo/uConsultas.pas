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

{$R *.dfm}

procedure TFConsultas.btnConsultaContasClick(Sender: TObject);
begin
  FConsultaContas.show;
end;

procedure TFConsultas.btnConsultaClientesClick(Sender: TObject);
begin
  FConsultaClientes.show;
end;

procedure TFConsultas.BtnConsultaProdutosClick(Sender: TObject);
begin
  FConsultaProdutos.Show;
end;

procedure TFConsultas.btnConsultaEstoqueClick(Sender: TObject);
begin
  FConsultaEstoque.Show;
end;

end.
