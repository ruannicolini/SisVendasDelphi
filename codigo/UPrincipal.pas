unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, ComCtrls, ToolWin, jpeg, Buttons,
  StdCtrls, AppEvnts, DBTables, BDE, DBClient, Mask, DB;

type
  TForm1 = class(TForm)
    Pprincipal: TPanel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Image2: TImage;
    PMenuDeOpcoes: TPanel;
    imgUsuario: TImage;
    imgCliente: TImage;
    Image1: TImage;
    imgRecalcular: TImage;
    imgProduto: TImage;
    imgPedido: TImage;
    imgContas: TImage;
    imgEntradaEstoque: TImage;
    Image10: TImage;
    imgCidade: TImage;
    AELog: TApplicationEvents;
    mLog: TMemo;
    procedure FormShow(Sender: TObject);
    procedure imgClienteClick(Sender: TObject);
    procedure imgCidadeClick(Sender: TObject);
    procedure imgPedidoClick(Sender: TObject);
    procedure imgProdutoClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure imgEntradaEstoqueClick(Sender: TObject);
    procedure imgContasClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AELogMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure Dinamico(F: TFormClass; F2: TForm);
    procedure AELogException(Sender: TObject; E: Exception);
    procedure imgRecalcularClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

Uses  uPadraoModel, UCliente, uCidade, uPedido, uProduto, uUsuario, UEntradaEstoque,
  uConta, uConsultas,
  uConexao;


{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  ShowMessage(DataModule1.qLoginnome.AsString + ' Bem vindo ao Real System!!!');
   mLog.Lines.Add('DATA: ' + FormatDateTime('dd/mm/yyyy',date) + ' ENTROU NO SISTEMA.');
   //VENDEDOR OU ESTAGIÁRIO
   if(DataModule1.qLoginnivel.AsInteger = 3) OR (DataModule1.qLoginnivel.AsInteger = 4) then
   begin
    imgRecalcular.Enabled := False;
    imgRecalcular.Hint := 'ACESSO NEGADO!!!';
   end;

  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);
end;

procedure TForm1.imgClienteClick(Sender: TObject);
begin
  Dinamico(TFCliente, FCliente);
end;

procedure TForm1.imgCidadeClick(Sender: TObject);
begin
  Dinamico(TFCidade, FCidade);
end;

procedure TForm1.imgPedidoClick(Sender: TObject);
begin
  Dinamico(TFPedido, FPedido);
end;

procedure TForm1.imgProdutoClick(Sender: TObject);
begin
  Dinamico(TFProduto, FProduto);
end;

procedure TForm1.imgUsuarioClick(Sender: TObject);
begin
  Dinamico(TFUsuario, FUsuario);
end;

procedure TForm1.imgEntradaEstoqueClick(Sender: TObject);
begin
  Dinamico(TFEntradaEstoque, FEntradaEstoque);
end;

procedure TForm1.imgContasClick(Sender: TObject);
begin
  Dinamico(TFConta, FConta);
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  Dinamico(TFConsultas, FConsultas);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mLog.Lines.Add('HORA: ' + FormatDateTime('hh:mm:ss',now) + ' SAIU DO SISTEMA');
  mLog.Lines.SaveToFile('log\'+FormatDateTime('dd-mm-yyyy',date)+FormatDateTime('-hh.mm.ss.',now)+DataModule1.qLoginusername.AsString+'log.txt');
  Application.Terminate;
end;

procedure TForm1.AELogMessage(var Msg: tagMSG; var Handled: Boolean);
var
  Componente: TWinControl;
begin

  Case Msg.message of
	  WM_LBUTTONUP:
	  begin
	    Componente := FindVCLWindow(Mouse.CursorPos);
          mLog.Lines.Add('HORA: ' + FormatDateTime('hh:mm:ss ',now) +
          DataModule1.qLoginusername.AsString + ' Interagiu com o ' + Componente.Name);
		    //Showmessage('Classe: ' + Componente.ClassName + ' - Nome: ' + Componente.Name  );
	  end;
  end;//fim case
end;

procedure TForm1.Dinamico(F: TFormClass; F2: TForm);
begin
  Application.CreateForm(F,F2);
  try
    F2.ShowModal;
  finally
    F2.Free;
  end;
end;


procedure TForm1.AELogException(Sender: TObject; E: Exception);
begin
  if(Sender is TClientDataSet) then
  begin
    ShowMessage(Sender.ClassName);
  end;

  if (E is EReconcileError) then
  begin
    if pos('THE DELETE STATEMENT CONFLICTED WITH THE REFERENCE CONSTRAINT', UpperCase(E.Message)) > 0 then
      ShowMessage('Registro vinculado a outra tabela, ERRO Chave Estrangeira!');
  end
  else if(E is EDBEngineError) then
  begin
    with EDBEngineError(E) do
      case Errors[0].ErrorCode of
        DBIERR_KEYVIOL:
          ShowMessage('Já cadastrado.');
        DBIERR_REQDERR:
          ShowMessage('Campo obrigatório não preenchido.');
        DBIERR_FORIEGNKEYERR:
          ShowMessage ('Erro integridade referencial.');
    end;
  end
  else if(E is EDBEditError)then
  begin
      ShowMessage('Quantidade de dígitos inválida!');
  end
  else if(E is EDatabaseError) then
  begin
    ShowMessage('Não encontrado');
  end
  else
    ShowMessage('Erro no banco de dados:' + #13#13 + E.Message);
end;

procedure TForm1.imgRecalcularClick(Sender: TObject);
begin
  try
    DataModule1.spRecalcularEstoque.ExecProc;
    ShowMessage('Recalculo efetuado.');
  except
  on E: Exception do
    begin
      raise;
    end;
  end;
end;


end.
