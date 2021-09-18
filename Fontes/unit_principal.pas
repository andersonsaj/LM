unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, unit_central, unit_funcoes, Vcl.AppEvnts,
  unit_esmaecer_fundo;

type
  Tform_principal = class(TForm)
    pnl_principal: TPanel;
    pnl_topo: TPanel;
    pnl_barra_topo: TPanel;
    pnl_central: TPanel;
    spb_fechar: TSpeedButton;
    pnl_menu: TPanel;
    spb_pessoas: TSpeedButton;
    spb_produtos: TSpeedButton;
    spb_vendas: TSpeedButton;
    spb_caixa: TSpeedButton;
    spb_financeiro: TSpeedButton;
    pnl_barra_botao: TPanel;
    spb_minimizar: TSpeedButton;
    spb_usuario: TSpeedButton;
    spb_config: TSpeedButton;
    pnl_rapido_vendas: TPanel;
    lbl_acesso_rapido: TLabel;
    spb_rapido_vendas: TSpeedButton;
    shp_rapido_vendas: TShape;
    pnl_rapido_novo_cliente: TPanel;
    shp_rapido_novo_cliente: TShape;
    btn_rapido_cliente: TSpeedButton;
    pnl_rapido_produtos: TPanel;
    shp_rapido_produto: TShape;
    spb_rapido_produto: TSpeedButton;
    pnl_rapido_caixa: TPanel;
    shp_rapido_caixa: TShape;
    spb_rapido_caixa: TSpeedButton;
    pnl_rapido_contas: TPanel;
    shp_rapido_contas: TShape;
    spb_rapido_contas: TSpeedButton;
    lbl_pesquisar: TLabel;
    pnl_pesquisa: TPanel;
    spb_pesquisa: TSpeedButton;
    shp_pesquisa: TShape;
    edt_pesquisa: TEdit;
    img_logo: TImage;
    Label1: TLabel;
    lbl_desenvolvido: TLabel;
    ApplicationEvents: TApplicationEvents;
    procedure spb_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure spb_vendasMouseEnter(Sender: TObject);
    procedure spb_vendasMouseLeave(Sender: TObject);
    procedure spb_minimizarClick(Sender: TObject);
    procedure spb_rapido_vendasMouseEnter(Sender: TObject);
    procedure spb_rapido_vendasMouseLeave(Sender: TObject);
    procedure spb_pessoasClick(Sender: TObject);
    procedure ApplicationEventsModalBegin(Sender: TObject);
    procedure ApplicationEventsModalEnd(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}
procedure Tform_principal.ApplicationEventsModalBegin(Sender: TObject);
begin
  form_esmaecer_fundo.Show;
end;

procedure Tform_principal.ApplicationEventsModalEnd(Sender: TObject);
begin
  form_esmaecer_fundo.Hide;
end;

procedure Tform_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_principal.FormResize(Sender: TObject);
begin
  pnl_central.top := Round( form_principal.Height/2 - pnl_central.Height /2 ) - 70;
  pnl_central.Left:= Round( form_principal.Width/2 - pnl_central.Width /2 );
end;

procedure Tform_principal.spb_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tform_principal.spb_minimizarClick(Sender: TObject);
begin
  Application.Minimize; //minimiza a applicação
end;

procedure Tform_principal.spb_pessoasClick(Sender: TObject);
begin
  var_gbl_modulo := 'PESSOAS';

  form_central := Tform_central.Create( form_principal );
  form_central.Show;
end;

procedure Tform_principal.spb_rapido_vendasMouseEnter(Sender: TObject);
begin
  //MOSTRAR A BARRA ABAIXO DO BOTAO QUE O MOUSE ESTA FOCANDO
  prc_focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
                   True, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_vendasMouseLeave(Sender: TObject);
begin
  //ESCONDER A BARRA ABAIXO DO BOTAO QUE O MOUSE ESTA FOCANDO
  prc_focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
                   False, 'RAPIDO' );
end;

procedure Tform_principal.spb_vendasMouseEnter(Sender: TObject);
begin
  //MOSTRAR A BARRA ABAIXO DO BOTAO QUE O MOUSE ESTA FOCANDO
  prc_focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
                   True, 'MENU' );
end;

procedure Tform_principal.spb_vendasMouseLeave(Sender: TObject);
begin
  //ESCONDER A BARRA ABAIXO DO BOTAO QUE O MOUSE ESTA FOCANDO
  prc_focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
                   False, 'MENU' );
end;

end.
