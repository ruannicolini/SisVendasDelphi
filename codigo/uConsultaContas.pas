unit uConsultaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  ToolWin, DBTables, Provider, DBClient, Mask, DBCtrls, ExtCtrls;

type
  TFConsultaContas = class(TFormPadrao)
    mConsulta: TClientDataSet;
    pConsulta: TDataSetProvider;
    qConsulta: TQuery;
    qConsultaidConta: TIntegerField;
    qConsultanome: TStringField;
    qConsultanumero_duplicata: TStringField;
    qConsultadata_faturamento: TStringField;
    qConsultadata_venc: TStringField;
    qConsultadata_pag: TStringField;
    qConsultaidPedido: TIntegerField;
    qConsultanf: TFloatField;
    qConsultavalorTotal: TFloatField;
    qConsultaemail: TStringField;
    mConsultaidConta: TIntegerField;
    mConsultanome: TStringField;
    mConsultanumero_duplicata: TStringField;
    mConsultadata_faturamento: TStringField;
    mConsultadata_venc: TStringField;
    mConsultadata_pag: TStringField;
    mConsultaidPedido: TIntegerField;
    mConsultanf: TFloatField;
    mConsultavalorTotal: TFloatField;
    mConsultaemail: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    DBEidConta: TDBEdit;
    DBEnome: TDBEdit;
    Label3: TLabel;
    DBEnumDuplicata: TDBEdit;
    Label4: TLabel;
    DBEdataFat: TDBEdit;
    Label5: TLabel;
    DBEdataVenc: TDBEdit;
    Label6: TLabel;
    DBEdataPag: TDBEdit;
    Label7: TLabel;
    DBEidPedido: TDBEdit;
    DBEnf: TDBEdit;
    Label9: TLabel;
    DBEvalorTotal: TDBEdit;
    Label11: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdestinatario: TDBEdit;
    edt_Assunto: TEdit;
    mAssunto: TMemo;
    btnEnviarEmail: TBitBtn;
    ToolButton1: TToolButton;
    BitBtn2: TBitBtn;
    procedure ToolButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaContas: TFConsultaContas;

implementation

uses uConexao;

{$R *.dfm}

procedure TFConsultaContas.ToolButton1Click(Sender: TObject);
begin
  inherited;
  if ds.DataSet.Active then
    begin
        if not ds.DataSet.IsEmpty then
        begin
            ds.DataSet.Edit;
            PageControl1.ActivePageIndex := 0;
        end else
            ShowMessage('Não Há Registro Selecionado.');
    end;
end;

procedure TFConsultaContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if (Application.MessageBox('Cancelar Email ', 'Cancelar', MB_YESNO + MB_ICONQUESTION )= id_yes) then
    begin
        ds.DataSet.Cancel;
        edt_Assunto.Clear;
        mAssunto.Clear;
    end;
end;

procedure TFConsultaContas.btnEnviarEmailClick(Sender: TObject);
begin
  inherited;
  {Colocar aqui o código de Envio de Email}
  {...}

  {Fecha DataSet}
  ds.DataSet.Cancel;
  edt_Assunto.Clear;
  mAssunto.Clear;
end;

procedure TFConsultaContas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(mConsulta);
end;

end.
