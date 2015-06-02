unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ExtCtrls, DBTables,
  Buttons,
  DBGridBeleza,
  DBEditBeleza,
  DBEdit_Calendario,
  ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TFEntradaEstoque = class(TFormPadrao)
    eEan: TEdit;
    lEan: TLabel;
    Label7: TLabel;
    rbGrup: TRadioGroup;
    rbAutomatico: TRadioButton;
    rbManual: TRadioButton;
    Label1: TLabel;
    DBEidEntrada: TDBEdit;
    Label4: TLabel;
    DBEidProduto: TDBEdit;
    DBEdescricao: TDBEdit;
    Label6: TLabel;
    DBEqtd: TDBEdit;
    Label8: TLabel;
    Label2: TLabel;
    DBEidUsuario: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    DBEdata: TDBEdit_Calendario;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure eEanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdataExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eEanKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaEstoque: TFEntradaEstoque;

implementation

{$R *.dfm}

procedure TFEntradaEstoque.btnNovoClick(Sender: TObject);
begin
  DBEidEntrada.Color := CorCamposOnlyRead();
  DBEidProduto.Color := CorCamposOnlyRead();
  DBEidUsuario.Color := CorCamposOnlyRead();
  inherited;
  
  DBEdata.Text := DateToStr(Date);
  DBEdata.Enabled := False;
  eEan.Enabled := True;
  rbAutomatico.Enabled := True;
  rbManual.Enabled := True;
  DBEqtd.Text := IntToStr(1);
end;

procedure TFEntradaEstoque.btnCancelarClick(Sender: TObject);
begin

  inherited;
  DBEidEntrada.Color := clWindow;
  DBEidProduto.Color := clWindow;
  DBEidUsuario.Color := clWindow;

  eEan.Enabled := False;
  rbAutomatico.Enabled := False;
  rbManual.Enabled := False;
end;

procedure TFEntradaEstoque.eEanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  texto :string;
begin
  inherited;

  if (key = 13) and (trim(eEan.Text) <> '') then
  begin
  DataModule1.qEntradaEan.Close;
  DataModule1.qEntradaEan.ParamByName('pean').AsInteger := StrToInt(eEan.Text);
  DataModule1.qEntradaEan.Open;

  if not (DataModule1.qEntradaEan.IsEmpty) then
  begin
    if not (DataModule1.mEntrada.Active) then
      DataModule1.mEntrada.Open;

    {OBS> qEntradaEan consulta um produto}
    DataModule1.mEntradaidProduto.AsInteger := StrToInt(DataModule1.qEntradaEan.fieldByName('idProduto').AsString);
    DataModule1.mEntradadescricao.AsString := DataModule1.qEntradaEan.fieldByName('descricao').AsString
    {}
  end else
  begin
    ShowMessage('Código de barra não encontrado.');
    eEan.SetFocus;
  end;
  END;


end;

procedure TFEntradaEstoque.DBEdataExit(Sender: TObject);
begin
  inherited;
  if not isData(DBEdata) then
  begin
    ShowMessage('Data Inválida');
    DBEdata.SetFocus;
  end;
end;

procedure TFEntradaEstoque.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mEntrada);
end;

procedure TFEntradaEstoque.eEanKeyPress(Sender: TObject; var Key: Char);
  begin
  inherited;
  if key=#13 then begin
    if (key = #13) and (trim(eEan.Text) <> '') then
      begin
        DataModule1.qEntradaEan.Close;
        DataModule1.qEntradaEan.ParamByName('pean').AsInteger := StrToInt(eEan.Text);
        DataModule1.qEntradaEan.Open;

        if not (DataModule1.qEntradaEan.IsEmpty) then
        begin
          if not (DataModule1.mEntrada.Active) then
            DataModule1.mEntrada.Open;
          {OBS> qEntradaEan consulta um produto}
          DataModule1.mEntradaidProduto.AsInteger := StrToInt(DataModule1.qEntradaEan.fieldByName('idProduto').AsString);
          DataModule1.mEntradadescricao.AsString := DataModule1.qEntradaEan.fieldByName('descricao').AsString
        end else
        begin
          ShowMessage('Código de barra não encontrado.');
          eEan.SetFocus;
      end;
    end;
    SelectNext(ActiveControl as TWinControl,True,True);
    key:=#0;
  end;
end;

procedure TFEntradaEstoque.btnAlterarClick(Sender: TObject);
begin
  DBEidEntrada.Color := CorCamposOnlyRead();
  DBEidProduto.Color := CorCamposOnlyRead();
  DBEidUsuario.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFEntradaEstoque.btnSalvarClick(Sender: TObject);
begin
  inherited;

  {Chama a Função de Recalcular Estoque}
  try
    DataModule1.spRecalcularEstoque.ExecProc;
  except
  on E: Exception do
    begin
      raise;
    end;
  end;
  DBEidEntrada.Color := clWindow;
  DBEidProduto.Color := clWindow;
  DBEidUsuario.Color := clWindow;
end;

end.
