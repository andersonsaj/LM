unit unit_funcoes;

interface

uses
  Vcl.ExtCtrls, Winapi.Windows, Vcl.Buttons, Vcl.Graphics, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

  procedure prcAjustarColunasGrid(const xDBGrid: TDBGrid);
  procedure prcAjustaTamanhoLinha (dbg: TDBGrid);
  procedure prc_ocultar_tabs ( PageControl : TPageControl );
  procedure prc_focar_botao(BarraPainel: Tpanel; Botao: TspeedButton;
      Focar: boolean; Local: String);
  procedure prcArredondaPainel ( Painel :TPanel; Tamanho : Integer);

type
  TDBGridPadrao = class(TCustomGrid);

var
  var_gbl_modulo : String;

implementation


procedure prcAjustarColunasGrid(const xDBGrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
  ShowScrollBar( xDBGrid.Handle,SB_Vert, True );

  For I := 0 to xDBGrid.FieldCount - 1 do
  begin

    {if ( xDBGrid.Fields[I].FieldName = 'ds_razaosocial' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_fantasia' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_endereco')or
       ( xDBGrid.Fields[I].FieldName = 'ds_bairro' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_municipio' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_descricao' ) then}
      xDBGrid.Fields[I].Tag := 15;
    {else
      xDBGrid.Fields[I].Tag := 0;  }

  end;

  // Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;

  // Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;

    if xDBGrid.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

  // Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

  // width vale "Left"
  VarWidth :=  xDBGrid.ClientWidth - TotalWidht;

  // Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];

    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;

      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;

end;


procedure prcAjustaTamanhoLinha (dbg: TDBGrid);
begin
  //Define o tamanho de cada linha do dbgrid apos ativar a query
  TDBGridPadrao(dbg).DefaultRowHeight := 32;
  TDBGridPadrao(dbg).ClientHeight     := ( 33  * TDBGridPadrao(dbg).RowCount ) + 33 ;

  TDBGridPadrao(dbg).RowHeights[0] := 30;
end;


procedure prc_ocultar_tabs ( PageControl : TPageControl );
var
  page :Integer;

begin
  // funcao percorre o pagecontrol passado por parametro escondendo todas as abas
  for page := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[page].tabvisible := False;

  PageControl.ActivePageIndex := 0;

end;

PROCEDURE prc_focar_botao ( BarraPainel: Tpanel; Botao: TspeedButton;
                                            Focar: boolean; Local: String);
begin

  if Focar then // se focar = true entao a barra aparece
  begin
    if local = 'MENU' then
      Botao.Font.Color := ClNavy
    else
    if local = 'RAPIDO' then
      Botao.Font.Color := $007A3D00;

    BarraPainel.Parent := Botao.Parent;
    BarraPainel.BringToFront;

    BarraPainel.left  := Botao.Left;
    BarraPainel.top   := Botao.Top + ( Botao.Height - 1);
    BarraPainel.Width := Botao.Width;
    BarraPainel.Visible := True;

  end else // se focar = false entao a barra desaparece
  begin
    if local = 'MENU' then
      Botao.Font.Color := clGray
    else
    if local = 'RAPIDO' then
      Botao.Font.Color := $00424244;

    BarraPainel.Visible := False;
  end;
end;

procedure prcArredondaPainel ( Painel :TPanel; Tamanho : Integer);
var
  rgn: HRGN;
  dc: HDC;

begin
  rgn := CreateRoundRectRgn(0, 0, Painel.Width, Painel.Height, Tamanho, Tamanho);
  dc := GetDC(Painel.Handle);
  SetWindowRgn(Painel.Handle, rgn, true);
  ReleaseDC(Painel.Handle, dc);
  DeleteObject(rgn);
end;

end.
