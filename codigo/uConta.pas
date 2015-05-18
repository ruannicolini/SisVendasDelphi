unit uConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, Buttons;

type
  TFConta = class(TFormPadrao)
    Label1: TLabel;
    DBEidConta: TDBEdit;
    Label2: TLabel;
    DBEdataVenc: TDBEdit;
    Label3: TLabel;
    DBEdataPag: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEnumDuplicata: TDBEdit;
    Label5: TLabel;
    DBEidFaturamento: TDBEdit;
    BtnBaixarContas: TToolButton;
    procedure BtnBaixarContasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
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
        {Faz o controle - Contas j� baixadas n�o podem ser baixadas novamente}
        if(Ds.DataSet.FieldByName('statusPag').AsBoolean = false)then
        begin
            {Abre Edi��o}
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
            ShowMessage('Conta j� esta Paga. N�o Pode ser dado baixa Novamente.');
    end
    else
        ShowMessage('N�o H� registros');
  end;
end;

procedure TFConta.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mConta);
end;

procedure TFConta.btnDeletarClick(Sender: TObject);
begin
  {Faz o controle - Contas j� pagas n�o devem ser excluidos}
  if(Ds.DataSet.FieldByName('statusPag').AsBoolean = false)then
  begin
      inherited;
  end else
    ShowMessage('Conta J� Paga - N�o pode ser Exclu�da!');
end;

end.
