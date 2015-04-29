unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ExtCtrls, DBTables;

type
  TFEntradaEstoque = class(TFormPadrao)
    eEan: TEdit;
    lEan: TLabel;
    Label7: TLabel;
    rbGrup: TRadioGroup;
    rbAutomatico: TRadioButton;
    rbManual: TRadioButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEqtd: TDBEdit;
    Label8: TLabel;
    DBEdata: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure eEanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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

  end else
  begin
    ShowMessage('Código de barra não encontrado.');
    eEan.SetFocus;
  end;
  END;


end;

end.
