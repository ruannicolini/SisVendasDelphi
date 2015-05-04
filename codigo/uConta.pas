unit uConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, Buttons;

type
  TFConta = class(TFormPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    BtnBaixarContas: TToolButton;
    procedure BtnBaixarContasClick(Sender: TObject);
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

end.
