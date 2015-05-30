unit uConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, Buttons,
  DBGridBeleza,
  DBEdit_Calendario,
  DBTables,
  EditDinheiro;

type
  TFConta = class(TFormPadrao)
    Label1: TLabel;
    DBEidConta: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEnumDuplicata: TDBEdit;
    Label5: TLabel;
    DBEidFaturamento: TDBEdit;
    BtnBaixarContas: TToolButton;
    DBEdataPag: TDBEdit_Calendario;
    DBEdataVenc: TDBEdit_Calendario;
    qAuxiliar: TQuery;
    EditDinheiro1: TEditDinheiro;
    procedure BtnBaixarContasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure tbDadosEnter(Sender: TObject);
    procedure tbDadosContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tbDadosShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConta: TFConta;

implementation

{$R *.dfm}

procedure TFConta.BtnBaixarContasClick(Sender: TObject);
begin
  inherited;
  if ds.DataSet.Active then
  begin
    if not ds.DataSet.IsEmpty then
    begin
        {Faz o controle - Contas já baixadas não podem ser baixadas novamente}
        if(Ds.DataSet.FieldByName('statusPag').AsBoolean = false)then
        begin
            {Abre Edição}
            if not DataModule1.mConta.Active then
              DataModule1.mConta.Open;

            {Registro Conta a Receber}
              DataModule1.mConta.Edit;
              DataModule1.mContastatusPag.AsBoolean := true;
              DataModule1.mContadata_pag.AsString := InputBox('Informe a Data','Data de Pagamento',DateToStr(Date));

            {Salva Conta A Receber}
              DataModule1.mConta.Post;
              DataModule1.mConta.ApplyUpdates(-1);

            ShowMessage('Conta Paga.');
        end else
            ShowMessage('Conta já esta Paga. Não Pode ser dado baixa Novamente.');
    end
    else
        ShowMessage('Não Há registros');
  end;
end;

procedure TFConta.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mConta);
end;

procedure TFConta.btnDeletarClick(Sender: TObject);
begin
  {Faz o controle - Contas já pagas não devem ser excluidos}
  if(Ds.DataSet.FieldByName('statusPag').AsBoolean = false) then
  begin
    inherited;
  end
  else
    ShowMessage('Conta Já Paga =  Não pode ser Excluída!');
end;

procedure TFConta.tbDadosEnter(Sender: TObject);
begin
  inherited;
  ShowMessage('entrou');
end;

procedure TFConta.tbDadosContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  ShowMessage('oi');
end;

procedure TFConta.tbDadosShow(Sender: TObject);
begin
  inherited;
  if(DS.DataSet.IsEmpty = false)then
  begin
    qAuxiliar.Close;
    qAuxiliar.ParamByName('idC').AsString:= DataModule1.mContaidConta.AsString;
    qAuxiliar.Open;
    EditDinheiro1.Text := FloatToStr( qAuxiliar.FieldByName('valorTotal').AsFloat );
  end;


end;

procedure TFConta.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  qAuxiliar.Close;
  qAuxiliar.ParamByName('idC').AsString:= DataModule1.mContaidConta.AsString;
  qAuxiliar.Open;
  EditDinheiro1.Text := FloatToStr( qAuxiliar.FieldByName('valorTotal').AsFloat )
end;

procedure TFConta.FormShow(Sender: TObject);
begin
  inherited;
  btnNovo.Visible := false;
  btnAlterar.Visible := false;
  btnDeletar.Visible := false;
end;

end.
