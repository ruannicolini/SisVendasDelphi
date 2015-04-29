unit UEntradaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ExtCtrls, DBTables;

type
  TFEntradaEstoque = class(TFormPadrao)
    Label1: TLabel;
    DBEidEntrada: TDBEdit;
    Label2: TLabel;
    DBEidUsuario: TDBEdit;
    Label3: TLabel;
    DBEidProduto: TDBEdit;
    Label4: TLabel;
    DBEqtd: TDBEdit;
    Label5: TLabel;
    DBEdata: TDBEdit;
    eEan: TEdit;
    lEan: TLabel;
    lDescricao: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    rbGrup: TRadioGroup;
    rbAutomatico: TRadioButton;
    rbManual: TRadioButton;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure eEanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Click(Sender: TObject);
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

procedure TFEntradaEstoque.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  DBEidUsuario.Text := DataModule1.mEntradaidUsuario.AsString;
  ShowMessage('1');
end;

end.
