unit uCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls,
  Buttons,
  DBGridBeleza;

type
  TFCidade = class(TFormPadrao)
    Label1: TLabel;
    DBEidCidade: TDBEdit;
    Label2: TLabel;
    DBEnome: TDBEdit;
    Label3: TLabel;
    DBEuf: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCidade: TFCidade;

implementation

{$R *.dfm}

procedure TFCidade.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mCidade);
end;

procedure TFCidade.btnNovoClick(Sender: TObject);
begin
  DBEidCidade.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFCidade.btnAlterarClick(Sender: TObject);
begin
  DBEidCidade.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFCidade.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DBEidCidade.Color := clWindow;

end;

procedure TFCidade.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DBEidCidade.Color := clWindow;
end;

end.
