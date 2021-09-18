unit unit_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  unit_funcoes, Data.DB, Vcl.Grids, Vcl.DBGrids, unit_dados, unit_msg_confirma;

type
  Tform_consulta = class(TForm)
    pnl_fundo: TPanel;
    pnl_topo: TPanel;
    pnl_grid: TPanel;
    pnl_pesquisa: TPanel;
    Panel1: TPanel;
    shp_pesquisa: TShape;
    spb_pesquisa: TSpeedButton;
    edt_pesquisa: TEdit;
    lbl_pesquisar: TLabel;
    dbg_registros: TDBGrid;
    ds_padrao: TDataSource;
    pnl_rodape: TPanel;
    lbl_excluir: TLabel;
    lbl_alterar: TLabel;
    procedure FormResize(Sender: TObject);
    procedure dbg_registrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg_registrosDblClick(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
    procedure dbg_registrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta: Tform_consulta;

implementation

{$R *.dfm}

procedure Tform_consulta.dbg_registrosDblClick(Sender: TObject);
begin
  //abre o formulario de pessoas campos com a query ja posicionado no registro de alteração
  //qry_Pessoas.edit;
end;

procedure Tform_consulta.dbg_registrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //zebrando o dbgrid
  if Odd( dbg_registros.DataSource.DataSet.RecNo) then
    dbg_registros.Canvas.Brush.Color :=  $00FBFBFB
  else
    dbg_registros.Canvas.Brush.Color := clwhite;

  //mudando a cor da seleção
  if ( gdSelected in State ) then
  begin
    dbg_registros.Canvas.Brush.Color := $00FFE8CC;
    dbg_registros.Canvas.Font.Color  := clBlack;
    dbg_registros.Canvas.Font.Style  := [fsBold];
  end;

  dbg_registros.Canvas.FillRect(Rect);
  dbg_registros.DefaultDrawColumnCell( Rect, DataCol, Column, State);

  //mudando a posicao e alinhamento vertical do texto de cada linha
  dbg_registros.Canvas.TextRect( Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText );

end;

procedure Tform_consulta.dbg_registrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    form_msg_confirmacao := Tform_msg_confirmacao.Create( form_consulta );
    form_msg_confirmacao.lbl_pergunta.Caption:= 'Exclusão de Registro?';
    form_msg_confirmacao.lbl_texto.Caption   := 'Tem certeza que deseja excluir esse registro?';
    form_msg_confirmacao.ShowModal;

    if form_msg_confirmacao.bResposta then
      form_dados.qry_Pessoas.Delete;

  end;
end;

procedure Tform_consulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form_dados.qry_Pessoas.Close;

  Action:= caFree;
end;

procedure Tform_consulta.FormResize(Sender: TObject);
begin
  //posicionando o painel de pesquisa no centro
  pnl_pesquisa.Left := Round ( form_consulta.width/2 - pnl_pesquisa.Width/2 );


  prcArredondaPainel( pnl_topo, 12);
  prcArredondaPainel( pnl_grid, 12);
  prcArredondaPainel( pnl_fundo, 12);


end;

procedure Tform_consulta.FormShow(Sender: TObject);
begin
  form_dados.qry_Pessoas.Close;
end;

procedure Tform_consulta.spb_pesquisaClick(Sender: TObject);
begin
  ///montar aqui a clausula sql de busca com o parametro digitado no edit e abrir a query


  form_dados.qry_Pessoas.Open;

  prcAjustarColunasGrid( dbg_registros );
  prcAjustaTamanhoLinha( dbg_registros );
end;

end.
