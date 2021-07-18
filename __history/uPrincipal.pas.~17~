unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnPrincipal: TPanel;
    pnTopo: TPanel;
    pnBarraTopo: TPanel;
    pnCentral: TPanel;
    spbFechar: TSpeedButton;
    pnMenu: TPanel;
    spbVendas: TSpeedButton;
    spbCaixa: TSpeedButton;
    spbProdutos: TSpeedButton;
    spbClientes: TSpeedButton;
    spbFinanceiro: TSpeedButton;
    pnBarraBotao: TPanel;
    procedure spbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure spbVendasMouseEnter(Sender: TObject);
    procedure spbVendasMouseLeave(Sender: TObject);
  private
    procedure focarBotao(barraPainel: TPanel; botao : TSpeedButton; focar: boolean; local: string);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.focarBotao(barraPainel: TPanel; botao: TSpeedButton;
  focar: boolean; local: string);
begin
  if focar then
  begin
    if local = 'Menu' then
    begin
      botao.Font.Color := clNavy;

      barraPainel.Parent := botao.Parent;
      barraPainel.BringToFront;

      barraPainel.Left := botao.Left;
      barraPainel.top  := botao.Top +(botao.Height -2);
      barraPainel.width := botao.Width;
      barraPainel.Visible := true;
    end;
  end
  else
  begin
    if local = 'Menu' then
    begin
      botao.Font.Color := clGrayText;

      barraPainel.Visible := false;
    end;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  pnCentral.Top := Round(frmPrincipal.Height/2 - pnCentral.Height/2);
  pnCentral.Left := Round(frmPrincipal.Width/2 - pnCentral.Width/2);
end;

procedure TfrmPrincipal.spbFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.spbVendasMouseEnter(Sender: TObject);
begin
  focarBotao(pnBarraBotao,(TComponent (Sender) as TSpeedButton), true,'Menu');
end;

procedure TfrmPrincipal.spbVendasMouseLeave(Sender: TObject);
begin
  focarBotao(pnBarraBotao, (TComponent (Sender) as TSpeedButton), false, 'Menu');
end;

end.
