unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, ComCtrls, ToolWin, jpeg, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Image2: TImage;
    Panel3: TPanel;
    Image4: TImage;
    Image3: TImage;
    Image1: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

Uses  uPadraoModel;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);

end;

end.
