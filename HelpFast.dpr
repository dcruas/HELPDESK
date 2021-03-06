program HelpFast;

uses
  Forms,
  Login in 'Login.pas' {frmLogin},
  ChildWin in 'ChildWin.pas' {MDIChild},
  about in 'about.pas' {AboutBox},
  dm in 'dm.pas' {helpdesk: TDataModule},
  TelaInicial in 'TelaInicial.pas' {frmPrincipal},
  EsqueciSenha in 'EsqueciSenha.pas' {frmEsqueci},
  Chamados in 'Chamados.pas' {frmChamados},
  Encerrar in 'Encerrar.pas' {frmEncerrar},
  Relatorios in 'Relatorios.pas' {frmRelatorio},
  Funcionarios in 'Funcionarios.pas' {frmFuncionarios};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(Thelpdesk, helpdesk);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmEsqueci, frmEsqueci);
  Application.CreateForm(TfrmChamados, frmChamados);
  Application.CreateForm(TfrmEncerrar, frmEncerrar);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.Run;
end.
