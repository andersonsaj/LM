unit unit_pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, unit_funcoes, unit_consulta,
  unit_pessoas_campos;

type
  Tform_pessoas = class(TForm)
    pnl_consultar: TPanel;
    pnl_pessoas_principal: TPanel;
    lbl_consultar_titulo: TLabel;
    img_consultar: TImage;
    pnl_btn_consultar: TPanel;
    spb_consultar: TSpeedButton;
    lbl_consultar_texto: TLabel;
    sph_consultar: TShape;
    pnl_inserir: TPanel;
    lbl_inserir_titulo: TLabel;
    img_inserir: TImage;
    lbl_inserir_texto: TLabel;
    pnl_btn_inserir: TPanel;
    shp_inserir: TShape;
    spb_inserir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure spb_consultarClick(Sender: TObject);
    procedure spb_inserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_pessoas: Tform_pessoas;

implementation

{$R *.dfm}

procedure Tform_pessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_pessoas.FormResize(Sender: TObject);
begin
  prcArredondaPainel( pnl_consultar, 12);
  prcArredondaPainel( pnl_inserir, 12);
  prcArredondaPainel( pnl_pessoas_principal, 12);

  pnl_pessoas_principal.top := Round( form_pessoas.Height/2 - pnl_pessoas_principal.Height /2 );
  pnl_pessoas_principal.Left:= Round( form_pessoas.Width/2 - pnl_pessoas_principal.Width /2 );
end;

procedure Tform_pessoas.spb_consultarClick(Sender: TObject);
begin
  form_consulta        := Tform_consulta.Create ( form_pessoas );
  form_consulta.Parent := form_pessoas.Parent;
  form_consulta.Show;
end;

procedure Tform_pessoas.spb_inserirClick(Sender: TObject);
begin
  form_pessoas_campos        := Tform_pessoas_campos.Create ( form_pessoas );
  form_pessoas_campos.Parent := form_pessoas.Parent;
  form_pessoas_campos.Show;
end;

end.
