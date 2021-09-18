program Layout;

uses
  Vcl.Forms,
  unit_principal in 'Fontes\unit_principal.pas' {form_principal},
  unit_central in 'Fontes\unit_central.pas' {form_central},
  unit_funcoes in 'Fontes\unit_funcoes.pas',
  unit_pessoas in 'Fontes\unit_pessoas.pas' {form_pessoas},
  unit_consulta in 'Fontes\unit_consulta.pas' {form_consulta},
  unit_pessoas_campos in 'Fontes\unit_pessoas_campos.pas' {form_pessoas_campos},
  unit_dados in 'Fontes\unit_dados.pas' {form_dados: TDataModule},
  unit_msg_confirma in 'Fontes\unit_msg_confirma.pas' {form_msg_confirmacao},
  unit_esmaecer_fundo in 'Fontes\unit_esmaecer_fundo.pas' {form_esmaecer_fundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_dados, form_dados);
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_esmaecer_fundo, form_esmaecer_fundo);
  Application.Run;
end.
