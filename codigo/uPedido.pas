unit uPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls, ExtCtrls, DBTables, Provider, DBClient, Buttons, DateUtils;

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
    btnFaturar: TToolButton;
    procedure ed_barraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_vlTotalEnter(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure ed_teclaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFaturarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
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


         {Mostra a linha da DBGrid separadamente}
         DBEdit7.Text := DataModule1.mPedidoItemidPedido.AsString;
         DBEdit8.Text := DataModule1.mPedidoItemidProduto.AsString;
         DBEdit9.Text := DataModule1.mPedidoItemquantidade.AsString;
         DBEdit10.Text := DataModule1.mPedidoItemprecoParcial.AsString;
         DBEdit11.Text := DataModule1.mPedidoItemprecoUnitario.AsString;
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
          DataModule1.mPedidoItemdescricao.AsString := qProdutodescricao.AsString;
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

procedure TFPedido.btnNovoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  btnFaturar.Enabled := false;

  inherited;

  {Indica a data Atual Como data do Pedido}
  DataModule1.mPedidodata.Text :=DateToStr(date);

  {Indica um prazo padrão}
  DataModule1.mPedidoprazoPagamento.Text := IntToStr(7);
  
end;

procedure TFPedido.ed_teclaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  ShowMessage('O nº da tecla: '+Char(ORD(Key))+' é => '+IntToStr(key));
end;

procedure TFPedido.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ShowMessage(IntToStr(DBGrid2.SelectedIndex));
end;

procedure TFPedido.btnSalvarClick(Sender: TObject);
begin
  
  inherited;
  btnFaturar.Enabled := true;


end;

procedure TFPedido.btnAlterarClick(Sender: TObject);
begin
  btnFaturar.Enabled := false;
  {Faz o controle - Pedidos já faturados não devem ser alterados}
  if(Ds.DataSet.FieldByName('faturado').AsBoolean = false)then
  begin
    inherited;
  end else
    ShowMessage('Pedido Ja Faturado - Não pode ser Alterado!');

end;

procedure TFPedido.btnFaturarClick(Sender: TObject);
var
data : tdatetime;
prazo : integer;
begin
  inherited;
  if ds.DataSet.Active then
  begin
    if not ds.DataSet.IsEmpty then
    begin
        {Faz o controle - Pedidos já faturados não devem ser Faturados novamente;}
        if(Ds.DataSet.FieldByName('faturado').AsBoolean = false)then
        begin
            if (Application.MessageBox('Deseja Faturar Pedido ?', 'Faturamento', MB_YESNO + MB_ICONQUESTION) = id_yes) then
            begin

              {Abre Edição}
              if not DataModule1.mFaturamento.Active then
                  DataModule1.mFaturamento.Open;
              if not DataModule1.mConta.Active then
                  DataModule1.mConta.Open;

              {Alteração do Status do Pedido}
              DataModule1.mPedido.Edit;
              DataModule1.mPedidofaturado.AsBoolean := True;
              DataModule1.mPedido.Post;
              DataModule1.mPedido.ApplyUpdates(-1);


              {Registro Faturamento}
              DataModule1.mFaturamento.Append;
              DataModule1.mFaturamentoidFaturamento.AsInteger := DataModule1.buscaProximoParametro('SeqFaturamento');
              DataModule1.mFaturamentoidPedido.AsInteger := Ds.DataSet.FieldByName('idPedido').AsInteger;
              DataModule1.mFaturamentodata_faturamento.AsString := DateToStr(date);
              DataModule1.mFaturamentonf.AsInteger := DataModule1.buscaProximoParametro('SeqNf');

              {Registro Conta a Receber}
              DataModule1.mConta.Append;
              DataModule1.mContaidConta.AsInteger := DataModule1.buscaProximoParametro('SeqConta');
              DataModule1.mContastatusPag.AsBoolean := false;
              DataModule1.mContaidFaturamento.AsInteger := DataModule1.mFaturamentoidFaturamento.AsInteger;
              DataModule1.mContanumero_duplicata.AsString := IntToStr(DataModule1.mContaidConta.AsInteger);

              DataModule1.qAux.SQL.Text := 'select prazoPagamento from pedido where pedido.idPedido = :i';
              DataModule1.qAux.ParamByName('i').AsInteger:= (DataModule1.mFaturamentoidPedido.AsInteger);
              DataModule1.qAux.Open;
              prazo := DataModule1.qAux.FieldByName('prazoPagamento').AsInteger;
              data := IncDay(date, prazo);
              DataModule1.mContadata_venc.AsString := DateToStr(data);

              {Salva Conta A Receber}
              DataModule1.mConta.Post;
              DataModule1.mConta.ApplyUpdates(-1);
              

              {Salva Faturamento}
              DataModule1.mFaturamento.Post;
              DataModule1.mFaturamento.ApplyUpdates(-1);

              ShowMessage('Pedido Faturado! '+ #13
                        + ' Cod Faturamento: ' + DataModule1.mFaturamentoidFaturamento.AsString       + #13
                        + 'Cod Pedido: ' +  DataModule1.mFaturamentoidPedido.AsString                 + #13
                        +'Data de Faturamento: ' + DataModule1.mFaturamentodata_faturamento.AsString  + #13
                        +'NF: ' +  DataModule1.mFaturamentonf.AsString
                        );
            end;
        end else
            ShowMessage('Pedido Já Faturado. Não Pode Ser Faturado Novamente.');
    end
    else
        ShowMessage('Não Há registros');
  end;
end;

procedure TFPedido.btnCancelarClick(Sender: TObject);
begin
  inherited;
  
  btnFaturar.Enabled := true;
end;

procedure TFPedido.FormCreate(Sender: TObject);
begin
  inherited;
  btnFaturar.Enabled := false;
end;

procedure TFPedido.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  btnFaturar.Enabled := true;
end;

procedure TFPedido.DBGrid2DblClick(Sender: TObject);
var
  texto : String;
begin
  inherited;

  if DataModule1.DsPedidoItem.DataSet.Active then
  begin
  texto := InputBox('Alterar','Quantidade', DataModule1.mPedidoItemquantidade.AsString);
  DataModule1.mPedidoItem.Edit;
  
  DataModule1.mPedidoItemquantidade.AsInteger := StrToInt(texto);
  DataModule1.mPedidoItemprecoParcial.AsFloat := ((DataModule1.mPedidoItemquantidade.AsInteger)*(DataModule1.mPedidoItemprecoUnitario.AsFloat));
  DataModule1.mPedidoItem.Post;
  DataModule1.mPedidoItem.ApplyUpdates(-1);

  {Altera Preço Total do Pedido}
  DataModule1.qAux.Close;
  DataModule1.qAux.SQL.Text := 'select SUM(precoParcial) as precototal from pedido_item where idPedido =:i';
  DataModule1.qAux.ParamByName('i').AsString:=(DataModule1.mPedidoidPedido.AsString);
  DataModule1.qAux.Open;
  DataModule1.mPedidovalorTotal.AsFloat := DataModule1.qAux.FieldByName('precototal').AsFloat;

  end;
end;

procedure TFPedido.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  begin
    if MessageDlg('Deseja Apagar Item Selecionado ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        Datamodule1.mPedidoItem.Delete;
        Datamodule1.mPedidoItem.ApplyUpdates(-1);

        {Altera Preço Total do Pedido}
        DataModule1.qAux.Close;
        DataModule1.qAux.SQL.Text := 'select SUM(precoParcial) as precototal from pedido_item where idPedido =:i';
        DataModule1.qAux.ParamByName('i').AsString:=(DataModule1.mPedidoidPedido.AsString);
        DataModule1.qAux.Open;
        DataModule1.mPedidovalorTotal.AsFloat := DataModule1.qAux.FieldByName('precototal').AsFloat;

     end;
  end;
end;

procedure TFPedido.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mPedido);
end;

end.
