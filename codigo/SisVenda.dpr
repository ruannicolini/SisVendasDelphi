program SisVenda;

uses
  Forms,
  uLogin in 'uLogin.pas' {FLogin},
  uConexao in 'uConexao.pas' {DataModule1: TDataModule};
  
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
