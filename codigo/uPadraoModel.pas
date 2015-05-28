unit uPadraoModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, ToolWin, uConexao, DB, StdCtrls,
  Grids, DBGrids, DBCtrls, Buttons, ComObj, DBClient, MaskUtils,
  DBGridBeleza;

type
  TFormPadrao = class(TForm)
    StatusBar1: TStatusBar;
    TBAcaoTela: TToolBar;
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
    gbDados: TGroupBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGridBeleza;
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
    procedure FormCreate(Sender: TObject);
    procedure ExportarExcel(dado: TClientDataSet);
    function isData(Field : TDBEdit) : Boolean;
    function isCPF(Field : TDBEdit): boolean;
    function isCNPJ(Field : TDBEdit): boolean;
    function isEMail(Field : TDBEdit): Boolean;
    function isEmpty: Boolean;
    procedure NivelGerente(F : TForm);
    procedure NivelVendedor(F : TForm);
    procedure NivelEstagiario(F : TForm);
  private
    procedure StatusBotoes(e: integer);

    { Private declarations }
  public
    { Public declarations }
    function CorCamposOnlyRead():TColor;
  end;

var
  FormPadrao: TFormPadrao;

implementation
Uses  uPrincipal, uCliente, uProduto, uEntradaEstoque, uUsuario, uPedido, uConta, uConsultas,
      uCidade;

{$R *.dfm}

{ TForm2 }

procedure TFormPadrao.StatusBotoes(e: integer);
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

procedure TFormPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;
end;

procedure TFormPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {VK_RETURN é a tecla enter}
  if( key = vk_return)
      and not (ActiveControl is tmemo)
      and not (ActiveControl is TDBMemo)
      and not (ActiveControl is TDBGrid) then
      begin
        PERFORM(WM_NEXTDLGCTL,0,0); 
        KEY:=0;
        end
  end;

procedure TFormPadrao.DSStateChange(Sender: TObject);
begin
    tbFiltros.TabVisible := ds.DataSet.State in [dsBrowse, dsInactive];
    gbDados.Enabled      := ds.DataSet.State in dsEditModes;

    if ds.DataSet.State in dsEditModes then
      StatusBotoes(1)
    else
      StatusBotoes(2);

end;

procedure TFormPadrao.FormShow(Sender: TObject);
begin
    StatusBotoes(2);
    btnNovo.Visible := True;
    btnDeletar.Visible := True;
    btnAlterar.Visible := True;
    btnSalvar.Visible := True;
    //GERENTE
    if(DataModule1.qLoginnivel.AsInteger = 2) then
    begin
      NivelGerente(Self);
    end
    //VENDEDOR
    else if(DataModule1.qLoginnivel.AsInteger = 3) then
    begin
      NivelVendedor(Self);
    end
    //ESTAGIÁRIO
    else if(DataModule1.qLoginnivel.AsInteger = 4) then
    begin
      NivelEstagiario(Self);
    end;
end;

procedure TFormPadrao.btnNovoClick(Sender: TObject);
begin
    if not ds.DataSet.Active then
        ds.DataSet.Open;
    PageControl1.ActivePageIndex := 0;
    ds.DataSet.Append;


end;

procedure TFormPadrao.btnAlterarClick(Sender: TObject);
begin
  try
    if ds.DataSet.Active then
    begin

            ds.DataSet.Edit;
            PageControl1.ActivePageIndex := 0;
        end else
            ShowMessage('Não Há Registros para Alteração.');
  except
    on E: EDatabaseError do
    begin
      raise;
    end;
  end;
end;

procedure TFormPadrao.btnSalvarClick(Sender: TObject);
begin
  {try
    ds.DataSet.Post;
  except
    on E: EDatabaseError do
    begin
      raise;
    end;
  end;   }
  {if not isEmpty then
    ds.DataSet.Post;}
    ds.DataSet.Post;
end;

procedure TFormPadrao.btnCancelarClick(Sender: TObject);
begin
    if (Application.MessageBox('Deseja Cancelar ', 'Cancelar', MB_YESNO + MB_ICONQUESTION )= id_yes) then
    begin
        ds.DataSet.Cancel;
    end;
end;

procedure TFormPadrao.btnDeletarClick(Sender: TObject);
begin
  if ds.DataSet.Active then
  begin
    if not ds.DataSet.IsEmpty then
    begin
        if (Application.MessageBox('Deseja Deletar ', 'Deletar', MB_YESNO + MB_ICONQUESTION) = id_yes) then
        begin
          ds.DataSet.Delete;
        end;
    end
    else
        ShowMessage('Não Há registros');
  end;
end;

procedure TFormPadrao.btnPesquisarClick(Sender: TObject);
begin
    ds.DataSet.Close;
    ds.DataSet.Open;
end;

procedure TFormPadrao.btnPrimeiroClick(Sender: TObject);
begin
    ds.DataSet.First;
end;

procedure TFormPadrao.btnAnteriorClick(Sender: TObject);
begin
    ds.DataSet.Prior;
end;

procedure TFormPadrao.btnProximoClick(Sender: TObject);
begin
    ds.DataSet.Next;
end;

procedure TFormPadrao.btnUltimoClick(Sender: TObject);
begin
    ds.DataSet.Last;
end;

procedure TFormPadrao.FormCreate(Sender: TObject);
begin
{Esta propriedade define se o Delphi ira detectar as teclas que sao acionadas no form.}
  KeyPreview:=true;
end;

procedure TFormPadrao.ExportarExcel(dado: TClientDataSet);
var
	 	linha, coluna: integer;
	 	planilha: variant;
	 	valorCampo: string;
	begin
  inherited;
    planilha := CreateOleObject ('Excel.Application');
		planilha.Workbooks.add(1);
		planilha.Cells.Select;
		planilha.Selection.NumberFormat := '@';
		planilha.Caption := 'Exportação de dados para o excel';
		planilha.Visible := True;
		dado.First;

		for linha := 0 to dado.RecordCount -1 do
		begin
			for coluna := 1 to dado.FieldCount do
			begin
				valorCampo := dado.Fields[coluna-1].AsString;
				planilha.Cells[linha+2, coluna] := valorCampo;
			end;
			dado.Next;
		end;

		for coluna := 1 to dado.FieldCount do
		begin
			valorCampo := dado.Fields[coluna-1].DisplayLabel;
			planilha.Cells[1, coluna] := valorCampo;
		end;
		planilha.Columns.AutoFit;

end;

function TFormPadrao.isData(Field : TDBEdit) : Boolean;
var
   Data : String;
begin
    Data := Copy(Field.Text,1,2) + '/' + Copy(Field.Text,3,2) + '/' + Copy(Field.Text,5,4);
    try
       StrToDate(Data);
       Result := True;
    except
       Result := False;
    end;
end;

function TFormPadrao.isCPF(Field : TDBEdit): boolean;
var
	dig10, dig11: string;
	s, i, r, peso: integer;

	begin
	// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)

		if ((Field.Text = '00000000000') or (Field.Text = '11111111111') or
		(Field.Text = '22222222222') or (Field.Text = '33333333333') or
		(Field.Text = '44444444444') or (Field.Text = '55555555555') or
		(Field.Text = '66666666666') or (Field.Text = '77777777777') or
		(Field.Text = '88888888888') or (Field.Text = '99999999999') or
		(length(Field.Text) <> 11)) then
		begin
			isCPF := false;
			exit;
		end;
		// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
		try
{ *-- Cálculo do 1o. Digito Verificador --* }
			s := 0;
			peso := 10;
			for i := 1 to 9 do
			begin
			// StrToInt converte o i-ésimo caractere do CPF em um número
				s := s + (StrToInt(Field.Text[i]) * peso);
				peso := peso - 1;
			end;
			r := 11 - (s mod 11);
			if ((r = 10) or (r = 11)) then
				dig10 := '0'
			else
				str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
			s := 0;
			peso := 11;
			for i := 1 to 10 do
			begin
				s := s + (StrToInt(Field.Text[i]) * peso);
				peso := peso - 1;
			end;
			r := 11 - (s mod 11);
			if ((r = 10) or (r = 11)) then
				dig11 := '0'
			else
				str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
			if ((dig10 = Field.Text[10]) and (dig11 = Field.Text[11])) then
				isCPF := true
			else
				isCPF := false;
		except
			isCPF := false
		end;

	end;

function TFormPadrao.isCNPJ(Field : TDBEdit): boolean;
var 
	dig13, dig14: string; 
	sm, i, r, peso: integer; 
	begin
	// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
		if ((Field.Text = '00000000000000') or (Field.Text = '11111111111111') or
		(Field.Text = '22222222222222') or (Field.Text = '33333333333333') or
		(Field.Text = '44444444444444') or (Field.Text = '55555555555555') or
		(Field.Text = '66666666666666') or (Field.Text = '77777777777777') or
		(Field.Text = '88888888888888') or (Field.Text = '99999999999999') or
		(length(Field.Text) <> 14)) then
			begin 
				isCNPJ := false; 
				exit; 
			end; 

	// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt" 
		try 

	{ *-- Cálculo do 1o. Digito Verificador --* } 
			sm := 0; 
			peso := 2; 
			for i := 12 downto 1 do 
				begin 
				// StrToInt converte o i-ésimo caractere do CNPJ em um número 
					sm := sm + (StrToInt(Field.Text[i]) * peso);
					peso := peso + 1;
					
					if (peso = 10) then 
						peso := 2; 
				end; 
				r := sm mod 11; 
				if ((r = 0) or (r = 1)) then 
					dig13 := '0' 
				else str((11-r):1, dig13); // converte um número no respectivo caractere numérico 

	{ *-- Cálculo do 2o. Digito Verificador --* } 
			sm := 0; 
			peso := 2; 
			for i := 13 downto 1 do 
				begin 
					sm := sm + (StrToInt(Field.Text[i]) * peso);
					peso := peso + 1; 
					if (peso = 10) then 
						peso := 2; 
				end; 
				r := sm mod 11;
				if ((r = 0) or (r = 1)) then 
					dig14 := '0' 
				else str((11-r):1, dig14); 

	{ Verifica se os digitos calculados conferem com os digitos informados. } 
			if ((dig13 = Field.Text[13]) and (dig14 = Field.Text[14])) then
				isCNPJ := true 
			else isCNPJ := false; 
		except 
			isCNPJ := false
		end; 
	end;

function TFormPadrao.isEMail(Field : TDBEdit): Boolean;
var
  aStr: string;

begin
  aStr := Field.Text;
  aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

function TFormPadrao.isEmpty: Boolean;
var
  I: Integer;

begin

  for I := 0 to ComponentCount - 1 do

  begin

    if Components[I].ClassType = TDBEdit then

    if TDBEdit(Components[I]).Text = '' then

    begin

      Result := true;

      TDBEdit(Components[I]).ShowHint := True;
      TDBEdit(Components[I]).Hint := 'Campo Obrigatório!';
      TDBEdit(Components[I]).SetFocus;

      Exit;

    end;

    if Components[I].ClassType = TDBLookupComboBox then

    if TDBLookupComboBox(Components[I]).Text = '' then

    begin

      Result := true;

      TDBLookupComboBox(Components[I]).ShowHint := True;
      TDBLookupComboBox(Components[I]).Hint := 'Campo Obrigatório!';
      TDBLookupComboBox(Components[I]).SetFocus;

      Exit;

    end;

  end;

end;

function TFormPadrao.CorCamposOnlyRead: TColor;
begin
  Result := $009393FF;
end;

procedure TFormPadrao.NivelGerente(F : TForm);
begin
  if(F is TFUsuario) then
  begin
    btnNovo.Visible := False;
    btnDeletar.Visible := False;
    btnAlterar.Visible := False;
    btnSalvar.Visible := False;
  end;
end;

procedure TFormPadrao.NivelVendedor(F : TForm);
begin

  if(F is TFUsuario) then
    NivelGerente(F)
  else if(F is TFEntradaEstoque)then
  begin
    btnNovo.Visible := False;
    btnDeletar.Visible := False;
    btnAlterar.Visible := False;
    btnSalvar.Visible := False;
  end;

end;

procedure TFormPadrao.NivelEstagiario(F : TForm);
begin

  if(F is TFCliente) OR (F is TFCidade) then
  begin
    btnNovo.Visible := True;
    btnDeletar.Visible := False;
    btnAlterar.Visible := False;
    btnSalvar.Visible := True;
  end
  else
  begin
    btnNovo.Visible := False;
    btnDeletar.Visible := False;
    btnAlterar.Visible := False;
    btnSalvar.Visible := False;
  end;

end;

end.
