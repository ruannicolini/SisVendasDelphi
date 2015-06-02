unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls, Buttons,
  DBGridBeleza,
  DBEditBeleza,
  ppDB, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppPrnabl, ppCtrls;

type
  TFCliente = class(TFormPadrao)
    Label1: TLabel;
    DBEidCliente: TDBEdit;
    Label2: TLabel;
    DBEnome: TDBEdit;
    Label3: TLabel;
    DBEendereco: TDBEdit;
    Label4: TLabel;
    DBEnumero: TDBEdit;
    Label5: TLabel;
    DBEbairro: TDBEdit;
    Label6: TLabel;
    DBEcomplemento: TDBEdit;
    Label7: TLabel;
    DBEcep: TDBEdit;
    Label8: TLabel;
    DBEcnpj: TDBEdit;
    Label9: TLabel;
    DBEtelFixo: TDBEdit;
    Label10: TLabel;
    DBEtelCel: TDBEdit;
    Label11: TLabel;
    DBEemail: TDBEdit;
    Label12: TLabel;
    DBEie: TDBEdit;
    Label13: TLabel;
    DBEidCidade: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEemailExit(Sender: TObject);
    procedure DBEcnpjExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBEcnpjEnter(Sender: TObject);
    procedure DBEtelFixoEnter(Sender: TObject);
    procedure DBEtelCelEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

uses MaskUtils, uPrincipal;

{$R *.dfm}

procedure TFCliente.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mCliente);
end;

procedure TFCliente.DBEemailExit(Sender: TObject);
begin
  inherited;
  if not isEMail(DBEemail) then
  begin
    ShowMessage('Email Inválido');
    DBEemail.SetFocus;
  end;
end;

procedure TFCliente.DBEcnpjExit(Sender: TObject);
var
  texto : String;
begin
  inherited;
  texto := DBEcnpj.EditText;
  texto := StringReplace(texto, '.', '', [rfReplaceAll,rfIgnoreCase]);
  texto := StringReplace(texto, '/', '', [rfReplaceAll,rfIgnoreCase]);
  texto := StringReplace(texto, '-', '', [rfReplaceAll,rfIgnoreCase]);
  if not isCNPJ(DBEcnpj) then
  begin
    ShowMessage('CNPJ Inválido');
    DBEcnpj.SetFocus;
  end;
end;

procedure TFCliente.btnNovoClick(Sender: TObject);
begin
  DBEidCliente.Color := CorCamposOnlyRead();
  DBEidCidade.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFCliente.btnAlterarClick(Sender: TObject);
begin
  DBEidCliente.Color := CorCamposOnlyRead();
  DBEidCidade.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFCliente.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DBEidCliente.Color := clWindow;
  DBEidCidade.Color := clWindow;
end;

procedure TFCliente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DBEidCliente.Color := clWindow;
  DBEidCidade.Color := clWindow;
end;

procedure TFCliente.DBEcnpjEnter(Sender: TObject);
begin
  inherited;
  DBEcnpj.Field.EditMask:= '99.999.999/9999-99;0';
  //DBEcnpj.Field.EditMask:= '00.000.000/0000-00;1;_';
end;

procedure TFCliente.DBEtelFixoEnter(Sender: TObject);
begin
  inherited;
  DBEtelFixo.Field.EditMask:= '(00)0000-0000;1;_';
end;

procedure TFCliente.DBEtelCelEnter(Sender: TObject);
begin
  inherited;
  DBEtelCel.Field.EditMask:= '(00)00000-0000;1;_';
end;

end.
