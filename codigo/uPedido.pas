unit uPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls, ExtCtrls, DBTables, Provider, DBClient;

type
  TFPedido = class(TFormPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    ed_barra: TEdit;
    qProduto: TQuery;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBGrid2: TDBGrid;
    qProdutoidProduto: TIntegerField;
    qProdutodescricao: TStringField;
    qProdutopreco: TFloatField;
    qProdutostatusVenda: TBooleanField;
    qProdutoqtdEstoque: TIntegerField;
    qProdutoean: TFloatField;
    qValorTotal: TQuery;
    ed_vlTotal: TDBEdit;
    procedure ed_barraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_vlTotalEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPedido: TFPedido;

implementation

{$R *.dfm}

procedure TFPedido.ed_barraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) and (trim(ed_barra.Text) <> '') then
  begin
      qProduto.Close;
      qProduto.ParamByName('PEan').AsString:=(ed_barra.Text);
      qProduto.Open;

      {Abre Edição}
      if not DataModule1.mpedidoitem.Active then
            DataModule1.mpedidoitem.Open;

      if DataModule1.mPedidoItem.Locate('idproduto',qProdutoidProduto.AsString,[]) then
      begin
         DataModule1.mPedidoItem.Edit;
         DataModule1.mPedidoItemquantidade.AsInteger :=DataModule1.mPedidoItemquantidade.AsInteger +1;
         DataModule1.mPedidoItemprecoParcial.AsFloat := ((DataModule1.mPedidoItemquantidade.AsInteger)*(DataModule1.mPedidoItemprecoUnitario.AsFloat));
      end
      else
      begin
          DataModule1.mpedidoitem.Append;

          DBEdit7.Text := DBEdit1.Text;
          DBEdit8.Text := qProduto.FieldByName('idProduto').AsString;
          DBEdit9.Text := IntToStr(1);
          DBEdit10.Text := IntToStr(StrToInt(qProduto.FieldByName('preco').AsString) * StrToInt(DBEdit9.Text));
          DBEdit11.Text := qProduto.FieldByName('preco').AsString;

          DataModule1.mPedidoItemidPedido.AsInteger := DataModule1.mPedidoidPedido.AsInteger;
          DataModule1.mPedidoItemidProduto.AsInteger := qProdutoidProduto.AsInteger;
          DataModule1.mPedidoItemquantidade.AsInteger := 1;
          DataModule1.mPedidoItemprecoUnitario.AsFloat := qProdutopreco.AsFloat;
          DataModule1.mPedidoItemprecoParcial.AsFloat  := qProdutopreco.AsFloat;
      end;

      {Salva}
      DataModule1.mPedidoItem.Post;
      DataModule1.mPedidoItem.ApplyUpdates(-1);

      {Atualiza Edit vl_Total}
      qValorTotal.Close;
      qValorTotal.ParamByName('PVlTotal').AsString:=(DBEdit1.Text);
      qValorTotal.Open;
      
      if not DataModule1.mpedidoitem.Active then {Atualiza Edit vl_Total - Abre Edição}
            DataModule1.mpedidoitem.Open;


      {ShowMessage(qValorTotal.FieldByName('total').AsString);}
      DataModule1.mPedidovalorTotal.AsFloat := StrToInt(qValorTotal.FieldByName('total').AsString);

      {Volta o Foco pro Edit EAN}
      ed_barra.clear;
      ed_barra.SetFocus;
  end;

end;

procedure TFPedido.ed_vlTotalEnter(Sender: TObject);
begin
  inherited;
  ed_barra.SetFocus;
end;

end.
