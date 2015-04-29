unit uConsultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TFConsultas = class(TForm)
    btnConsultaContas: TSpeedButton;
    BtnConsultaProdutos: TSpeedButton;
    btnConsultaEstoque: TSpeedButton;
    btnConsultaClientes: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultas: TFConsultas;

implementation

{$R *.dfm}

end.
