unit uPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls, ExtCtrls, DBTables;

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
    DBEdit3: TDBEdit;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Query1: TQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPedido: TFPedido;

implementation

{$R *.dfm}

procedure TFPedido.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
    Edit1.SetFocus;
end;

end.
