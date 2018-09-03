unit TelaInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Chamados;

type
    TfrmPrincipal = class(TForm)
    ToolBar1: TToolBar;
    btnFuncionario: TToolButton;
    btnChamados: TToolButton;
    procedure btnFuncionarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChamadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Login, Funcionarios;

procedure TfrmPrincipal.btnChamadosClick(Sender: TObject);
begin
frmChamados.Show();
Self.Hide;
end;

procedure TfrmPrincipal.btnFuncionarioClick(Sender: TObject);
begin
frmFuncionarios.Show();
Self.Hide;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Show;
end;
end.
