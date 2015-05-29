unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  jpeg;

type
  TFLogin = class(TForm)
    eLogin: TEdit;
    eSenha: TEdit;
    btnEntrar: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure eLoginKeyPress(Sender: TObject; var Key: Char);
    procedure eSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
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

procedure TFLogin.eLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
  begin
    eSenha.SetFocus;
  end;
end;

procedure TFLogin.eSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
  begin
    btnEntrar.OnClick(Sender);
  end;
end;

procedure TFLogin.Image2Click(Sender: TObject);
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
