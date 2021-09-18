unit unit_central;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, unit_funcoes, unit_pessoas;

type
  Tform_central = class(TForm)
    pnl_topo: TPanel;
    pnl_principal: TPanel;
    pnl_rodape: TPanel;
    img_logo: TImage;
    spb_fechar: TSpeedButton;
    lbl_central: TLabel;
    lbl_texto_central: TLabel;
    lbl_nome_central: TLabel;
    img_ajuda: TImage;
    lbl_central_ajuda: TLabel;
    lbl_texto_ajuda: TLabel;
    procedure spb_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_central: Tform_central;

implementation

{$R *.dfm}

procedure Tform_central.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_central.FormResize(Sender: TObject);
begin
  prcArredondaPainel( pnl_topo, 12);
  prcArredondaPainel( pnl_principal, 12);
  prcArredondaPainel( pnl_rodape, 12);
end;

procedure Tform_central.FormShow(Sender: TObject);
begin
  if var_gbl_modulo = 'PESSOAS' then
  begin
    //abre o modulo pessoas
    form_pessoas := Tform_pessoas.Create ( form_central );
    form_pessoas.Parent := pnl_principal;
    form_pessoas.Show;

    lbl_nome_central.Caption := 'Pessoas';
  end;
end;

procedure Tform_central.spb_fecharClick(Sender: TObject);
begin
  Close;
end;

end.
