object form_consulta: Tform_consulta
  Left = 0
  Top = 0
  Margins.Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 362
  ClientWidth = 1004
  Color = 15395562
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_fundo: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 362
    Margins.Top = 0
    Align = alClient
    BevelOuter = bvNone
    Color = 15395562
    ParentBackground = False
    TabOrder = 0
    object pnl_topo: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 1004
      Height = 76
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnl_pesquisa: TPanel
        Left = 8
        Top = 10
        Width = 649
        Height = 56
        Margins.Left = 0
        Margins.Right = 0
        BevelOuter = bvNone
        TabOrder = 0
        object lbl_pesquisar: TLabel
          Left = 6
          Top = 4
          Width = 332
          Height = 17
          Caption = 'Texto (Digite o que deseja encontrar e pressione ENTER)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8011008
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 8
          Top = 23
          Width = 633
          Height = 28
          BevelOuter = bvNone
          TabOrder = 0
          object shp_pesquisa: TShape
            Left = 0
            Top = 0
            Width = 633
            Height = 28
            Align = alClient
            Pen.Color = clSilver
            ExplicitLeft = 280
            ExplicitWidth = 745
            ExplicitHeight = 34
          end
          object spb_pesquisa: TSpeedButton
            Left = 2
            Top = 1
            Width = 27
            Height = 26
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F0030000120B0000120B00000000000000000000E6E1DEE6E1DE
              E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEB3B0AECBC7C50000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9B
              99986C6C6CAFACAA0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9F9D9B6C6C6C9D9B9ADED9D6
              0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              E6E1DEE6E1DEE6E1DE9E9C9B6C6C6CA19F9EE6E1DEE6E1DE0000E6E1DEE6E1DE
              E6E1DEE6E1DEE5E0DDC1BEBCA3A09FA09E9CBBB8B6DDD8D6E6E1DEE6E1DE9C9A
              996C6C6CA2A09FE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEBAB6B46D6D
              6D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CB1AEACA6A4A36C6C6CA3A19FE6E1DEE6
              E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEAAA7A66C6C6C7B7B7ABCB9B7D9D5D2DD
              D8D6C5C1BF8D8C8B6C6C6C6C6C6CAEABA9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              0000E6E1DEC7C3C16C6C6C92908FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              B0AEAC6C6C6CB5B2B0E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E1DCD9767675
              6F6F6FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE8B89896C6C
              6CDFDBD8E6E1DEE6E1DEE6E1DEE6E1DE0000BAB7B56C6C6CA8A5A4E6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DECDC9C76C6C6CB8B5B3E6E1DEE6
              E1DEE6E1DEE6E1DE0000A2A09F6C6C6CC6C3C0E6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DEE6E1DEE2DDDA6C6C6C9D9B9AE6E1DEE6E1DEE6E1DEE6E1DE
              0000A5A3A26C6C6CC4C0BEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              E6E1DEDFDBD86C6C6CA19F9EE6E1DEE6E1DEE6E1DEE6E1DE0000C4C0BE6C6C6C
              9A9897E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEC1BDBB6C6C
              6CC2BFBCE6E1DEE6E1DEE6E1DEE6E1DE0000E5E0DD8483826C6C6CDDD9D6E6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE7979796C6C6CE5E0DDE6E1DEE6
              E1DEE6E1DEE6E1DE0000E6E1DED7D2D06C6C6C787777D9D4D1E6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DE9492916C6C6CBCB9B7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
              0000E6E1DEE6E1DEC1BDBB6C6C6C6C6C6C999796BEBAB8C3C0BDA6A4A36D6D6D
              6C6C6CABA8A7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DE
              E6E1DED1CDCA8A89886C6C6C6C6C6C6C6C6C6C6C6C7E7D7DC2BEBCE6E1DEE6E1
              DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
              DEC4C0BEAAA8A6A6A4A2BDBAB8E1DCD9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
              E1DEE6E1DEE6E1DE0000}
            OnClick = spb_pesquisaClick
          end
          object edt_pesquisa: TEdit
            Left = 38
            Top = 6
            Width = 572
            Height = 20
            TabStop = False
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'DIGITE O QUE VOCE DESEJA PESQUISAR E TECLE ENTER'
          end
        end
      end
    end
    object pnl_grid: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 81
      Width = 1004
      Height = 264
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object dbg_registros: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 10
        Width = 1004
        Height = 254
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BorderStyle = bsNone
        DataSource = ds_padrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_registrosDrawColumnCell
        OnDblClick = dbg_registrosDblClick
        OnKeyDown = dbg_registrosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CUST_NO'
            Title.Caption = 'C'#243'd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMER'
            Title.Caption = 'Nome'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PHONE_NO'
            Title.Caption = 'Telefone'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS_LINE1'
            Title.Caption = 'Endere'#231'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS_LINE2'
            Title.Caption = 'Bairro'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CITY'
            Title.Caption = 'Cidade'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATE_PROVINCE'
            Title.Caption = 'UF'
            Width = 64
            Visible = True
          end>
      end
    end
    object pnl_rodape: TPanel
      Left = 0
      Top = 345
      Width = 1004
      Height = 17
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object lbl_excluir: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 435
        Height = 14
        Margins.Left = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 
          'Para excluir, selecione a linha desejada e pressione a tecla DEL' +
          ' ou DELETE no Teclado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lbl_alterar: TLabel
        AlignWithMargins = True
        Left = 736
        Top = 0
        Width = 258
        Height = 17
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Para alterar Clique Duas Vezes na linha que deseja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
    end
  end
  object ds_padrao: TDataSource
    DataSet = form_dados.qry_Pessoas
    Left = 584
    Top = 289
  end
end
