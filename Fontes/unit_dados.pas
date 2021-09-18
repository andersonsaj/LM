unit unit_dados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tform_dados = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    qry_Pessoas: TFDQuery;
    qry_PessoasCUST_NO: TIntegerField;
    qry_PessoasCUSTOMER: TStringField;
    qry_PessoasCONTACT_FIRST: TStringField;
    qry_PessoasCONTACT_LAST: TStringField;
    qry_PessoasPHONE_NO: TStringField;
    qry_PessoasADDRESS_LINE1: TStringField;
    qry_PessoasADDRESS_LINE2: TStringField;
    qry_PessoasCITY: TStringField;
    qry_PessoasSTATE_PROVINCE: TStringField;
    qry_PessoasCOUNTRY: TStringField;
    qry_PessoasPOSTAL_CODE: TStringField;
    qry_PessoasON_HOLD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_dados: Tform_dados;

implementation

{$R *.dfm}

end.
