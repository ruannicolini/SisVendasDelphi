unit uPadraoModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, ToolWin, uConexao, DB, StdCtrls,
  Grids, DBGrids, DBCtrls;

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
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    tbFiltros: TTabSheet;
    gbFiltros: TGroupBox;
    DBGrid1: TDBGrid;
    gbDados: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
  private
    procedure StatusBotoes(e: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
Uses  uPrincipal;

{$R *.dfm}

{ TForm2 }

procedure TForm2.StatusBotoes(e: integer);
begin
  btnSalvar.Enabled := e=1;
  btnCancelar.Enabled := e=1;

  btnAnterior.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnProximo.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnPrimeiro.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnUltimo.Enabled := (e=2) and not (DS.DataSet.IsEmpty);

  btnNovo.Enabled := e=2;
  btnDeletar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnAlterar.Enabled := (e=2) and not (DS.DataSet.IsEmpty);
  btnPesquisar.Enabled := e=2;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if( key = vk_return)
      and not (ActiveControl is tmemo)
      and not (ActiveControl is TDBMemo)
      and not (ActiveControl is TDBGrid) then
      Perform( WM_NEXTDLGCTL,0,0);
end;

procedure TForm2.DSStateChange(Sender: TObject);
begin
    tbFiltros.TabVisible := ds.DataSet.State in [dsBrowse, dsInactive];
    gbDados.Enabled      := ds.DataSet.State in dsEditModes;

    if ds.DataSet.State in dsEditModes then
      StatusBotoes(1)
    else
      StatusBotoes(2);

end;

procedure TForm2.FormShow(Sender: TObject);
begin
    StatusBotoes(2);
end;

procedure TForm2.btnNovoClick(Sender: TObject);
begin
    if not ds.DataSet.Active then
        ds.DataSet.Open;

    ds.DataSet.Append;

    PageControl1.ActivePageIndex := 0;
end;

procedure TForm2.btnAlterarClick(Sender: TObject);
begin
    if ds.DataSet.Active then
    begin
        if not ds.DataSet.IsEmpty then
        begin
            ds.DataSet.Edit;
            PageControl1.ActivePageIndex := 0;
        end else
            ShowMessage('Não Há Registros para Alteração.');
    end;
end;

procedure TForm2.btnSalvarClick(Sender: TObject);
begin
    ds.DataSet.Post;
end;

procedure TForm2.btnCancelarClick(Sender: TObject);
begin
    if (Application.MessageBox('Deseja Cancelar ', 'Cancelar', MB_YESNO + MB_ICONQUESTION )= id_yes) then
    begin
        ds.DataSet.Cancel;
    end;
end;

procedure TForm2.btnDeletarClick(Sender: TObject);
begin
  if ds.DataSet.Active then
  begin
    if not ds.DataSet.IsEmpty then
    begin
        if (Application.MessageBox('Deseja Deletar ', 'Deletar', MB_YESNO + MB_ICONQUESTION) = id_yes) then
        begin
          ds.DataSet.Cancel;
        end;
    end
    else
        ShowMessage('Não Há registros');
  end;
end;

procedure TForm2.btnPesquisarClick(Sender: TObject);
begin
    ds.DataSet.Close;
    ds.DataSet.Open;
end;

procedure TForm2.btnPrimeiroClick(Sender: TObject);
begin
    ds.DataSet.First;
end;

procedure TForm2.btnAnteriorClick(Sender: TObject);
begin
    ds.DataSet.Prior;
end;

procedure TForm2.btnProximoClick(Sender: TObject);
begin
    ds.DataSet.Next;
end;

procedure TForm2.btnUltimoClick(Sender: TObject);
begin
    ds.DataSet.Last;
end;

end.
