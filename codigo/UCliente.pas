unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls, Buttons;

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
    DBLookupComboBox1: TDBLookupComboBox;
    DBEidCidade: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEemailExit(Sender: TObject);
    procedure DBEcnpjExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

uses MaskUtils;

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
begin
  inherited;
   ShowMessage(DBEcnpj.Text);
   if isCNPJ(DBEcnpj) then
  begin
    ShowMessage('CNPJ Inválido');
    DBEcnpj.SetFocus;
  end;
end;

procedure TFCliente.FormCreate(Sender: TObject);
begin
  inherited;
  DBEidCliente.Color := CorCamposOnlyRead();
  DBEidCidade.Color := CorCamposOnlyRead();
end;

end.
