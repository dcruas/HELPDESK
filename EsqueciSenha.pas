unit EsqueciSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEsqueci = class(TForm)
    txtCPF: TEdit;
    txtEMAIL: TEdit;
    lblCPF: TLabel;
    lblEmail: TLabel;
    btnEnviar: TButton;
    btnVoltar: TButton;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEsqueci: TfrmEsqueci;

implementation

{$R *.dfm}

uses dm;

procedure TfrmEsqueci.btnEnviarClick(Sender: TObject);
begin

helpdesk.query.SQL.Text := 'SELECT NM_SENHA FROM TB_FUNCIONARIO WHERE NR_CPF =:cpf AND NM_EMAIL =:email';
helpdesk.query.Parameters.ParamByName('cpf').Value := txtCPF.Text;
helpdesk.query.Parameters.ParamByName('email').Value := txtEMAIL.Text;

helpdesk.query.Open;
ShowMessage('SENHA:' + helpdesk.query.FieldByName('NM_SENHA').AsString);
Close();


end;

end.
