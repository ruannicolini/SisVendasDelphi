unit uPadraoModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, ToolWin, uConexao, DB, StdCtrls;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btnNovo: TToolButton;
    btnDeletar: TToolButton;
    btnAlterar: TToolButton;
    btnCancelar: TToolButton;
    btnSalvar: TToolButton;
    btnPesquisar: TToolButton;
    btnPrimeiro: TToolButton;
    btnAnterior: TToolButton;
    btnProximo: TToolButton;
    btnUltimo: TToolButton;
    DS: TDataSource;
    tb: TPageControl;
    tbDados: TTabSheet;
    tbFiltros: TTabSheet;
    GroupBox1: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
Uses  uPrincipal;

{$R *.dfm}

end.
