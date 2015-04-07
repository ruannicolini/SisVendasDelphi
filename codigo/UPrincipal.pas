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
    procedure Image3DblClick(Sender: TObject);
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

var Form2: TForm2;

{$R *.dfm}

procedure TForm1.Image3DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);

  {Posicionamento do Form2 dentro do painel com logo do programa
  Form2.Left := Round((Panel1.Width- Form2.Width)/2);
  Form2.Top := Round((Panel1.Height - Form2.Height)/2);   }

  Form2.ShowModal;
  
  Form2.free;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);

end;

end.
