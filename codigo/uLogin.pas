unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFLogin = class(TForm)
    lLogin: TLabel;
    lSenha: TLabel;
    eLogin: TEdit;
    eSenha: TEdit;
    btnEntrar: TButton;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses uPrincipal, uConexao, uPadraoModel;

{$R *.dfm}

procedure TFLogin.btnEntrarClick(Sender: TObject);
begin
  DataModule1.qLogin.Close;
  DataModule1.qLogin.SQL.Text := 'SELECT * FROM usuario WHERE username = "'+eLogin.Text+'" AND senha = "'+eSenha.Text+'"';
  DataModule1.qLogin.Open;

  if not (DataModule1.qLogin.IsEmpty) then
  begin
    Form1.Dinamico(TForm1, Form1);
    FLogin.Visible := False;
  end
  else
  begin
    ShowMessage('Login ou Senha Errada!');
    eLogin.SetFocus;
  end;
end;

end.
