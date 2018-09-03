unit Chamados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmChamados = class(TForm)
    gbpPesquisar: TGroupBox;
    rdbProtocolo: TRadioButton;
    rdbMatricula: TRadioButton;
    txtPesquisar: TEdit;
    GroupBox2: TGroupBox;
    btnPesquisar: TButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtProblema: TEdit;
    btnNovo: TButton;
    btnSalvar: TButton;
    txtSolicitante: TEdit;
    txtNome: TEdit;
    txtAndar: TEdit;
    txtSala: TEdit;
    txtCelular: TEdit;
    txtRamal: TEdit;
    txtEmail: TEdit;
    btnValidar: TButton;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    cmbStatus: TComboBox;
    btnEncerrar: TButton;
    btnRelatorio: TButton;
    cmbTipo: TComboBox;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cmbStatusChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEncerrarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
     var codigochamado:Integer;
  end;

var
  frmChamados: TfrmChamados;


implementation

{$R *.dfm}

uses dm, Login, TelaInicial, Encerrar, Relatorios;

procedure TfrmChamados.btnEncerrarClick(Sender: TObject);
begin
if DBGrid1.Fields[8].AsInteger >= 3 then
begin
   ShowMessage('Este chamado j� foi encerrado, n�o � poss�vel encerrar-lo novamente');
end
else
begin
   frmEncerrar.Show;
   btnEncerrar.Enabled := false;
end;
end;

procedure TfrmChamados.btnNovoClick(Sender: TObject);
begin
txtSolicitante.Enabled := true;
btnValidar.Enabled := true;
txtNome.Text := ''  ;
txtAndar.Text := '' ;
txtRamal.Text := '' ;
txtSala.Text := '' ;
txtCelular.Text := '' ;
txtEMAIL.Text := '' ;
txtSolicitante.Text := '';
txtProblema.Text := '';
end;

procedure TfrmChamados.btnPesquisarClick(Sender: TObject);
var
codigo:integer;
begin
codigo := strtoint(txtPesquisar.Text)-20000000;
if rdbMatricula.checked then
begin
          helpdesk.query.SQL.Clear;
          helpdesk.query.SQL.Add('SELECT CD_CHAMADO,CD_TECNICO, DT_ABERTURA, DS_JUSTIFICATIVA, DS_PROBLEMA,DT_ENCERRAMENTO, CD_FUNCIONARIO,CD_PROBLEMA,CD_STATUS,CD_AVALIACAO FROM TB_CHAMADO WHERE CD_FUNCIONARIO = :matricula ORDER BY CD_CHAMADO');
          helpdesk.query.Parameters.ParamByName('matricula').Value := codigo;
          helpdesk.query.Open;
end
else  if rdbProtocolo.checked  then
begin
          helpdesk.query.SQL.Clear;
          helpdesk.query.SQL.Add('SELECT CD_CHAMADO,CD_TECNICO, DT_ABERTURA, DS_JUSTIFICATIVA, DS_PROBLEMA,DT_ENCERRAMENTO, CD_FUNCIONARIO,CD_PROBLEMA,CD_STATUS,CD_AVALIACAO FROM TB_CHAMADO WHERE CD_CHAMADO = :protocolo ORDER BY CD_CHAMADO');
          helpdesk.query.Parameters.ParamByName('protocolo').Value := strtoint(txtPesquisar.Text);
          helpdesk.query.Open;
end
else
begin
        ShowMessage('Voc� n�o escolheu nenhuma op��o ou n�o colocou nenhum valor no campo de pesquisa');
end;
end;



procedure TfrmChamados.btnRelatorioClick(Sender: TObject);
begin
frmRelatorio.Show;
Self.Hide;
end;

procedure TfrmChamados.btnSalvarClick(Sender: TObject);
begin
if txtSolicitante.Enabled then
begin
   helpdesk.queryFUNCIONARIO.SQL.Clear;
   helpdesk.queryFUNCIONARIO.SQL.Add('INSERT INTO TB_CHAMADO (DT_ABERTURA, DS_PROBLEMA, CD_FUNCIONARIO, CD_PROBLEMA, CD_STATUS) VALUES (getdate(), :descricao, :codigofuncionario, :codproblema,1)');
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('codproblema').Value := cmbTIPO.ItemIndex+1;
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('descricao').Value := txtProblema.Text;
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('codigofuncionario').Value := strtoint(txtSolicitante.Text)-20000000;
   helpdesk.queryFUNCIONARIO.ExecSQL;
end
else
begin
helpdesk.queryFUNCIONARIO.SQL.Clear;
   helpdesk.queryFUNCIONARIO.SQL.Add('UPDATE TB_CHAMADO SET CD_PROBLEMA = :codproblema, DS_PROBLEMA =:descricao WHERE CD_CHAMADO = :codigo ');
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('codproblema').Value := cmbTIPO.ItemIndex+1;
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('descricao').Value := txtProblema.Text;
   helpdesk.queryFUNCIONARIO.Parameters.ParamByName('codigo').Value := codigochamado;
   helpdesk.queryFUNCIONARIO.ExecSQL;

end;
txtSolicitante.Enabled := true;
btnValidar.Enabled := true;
txtNome.Text := ''  ;
txtAndar.Text := '' ;
txtRamal.Text := '' ;
txtSala.Text := '' ;
txtCelular.Text := '' ;
txtEMAIL.Text := '' ;
txtSolicitante.Text := '';
txtProblema.Text := '';

end;



procedure TfrmChamados.btnValidarClick(Sender: TObject);
begin
helpdesk.queryFUNCIONARIO.SQL.Clear;
helpdesk.queryFUNCIONARIO.SQL.Add('SELECT CD_FUNCIONARIO, NM_FUNCIONARIO, NR_ANDAR,NR_RAMAL, NR_CELULAR,NM_EMAIL, NR_SALA, DT_ADMISSAO, NR_MATRICULA, NR_CPF, CD_ACESSO, NR_SITUACAO FROM TB_FUNCIONARIO WHERE NR_MATRICULA = :matricula');
helpdesk.queryFUNCIONARIO.Parameters.ParamByName('matricula').Value := strtoint(txtSolicitante.Text);
helpdesk.queryFUNCIONARIO.Open;
txtNome.Text := helpdesk.queryFUNCIONARIO.FieldByName('NM_FUNCIONARIO').ASSTRING;
txtAndar.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_ANDAR').ASSTRING;
txtRamal.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_RAMAL').ASSTRING;
txtSala.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_SALA').ASSTRING;
txtCelular.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_CELULAR').ASSTRING;
txtEMAIL.Text := helpdesk.queryFUNCIONARIO.FieldByName('NM_EMAIL').ASSTRING;
if txtSolicitante.Text = '' then
begin
  ShowMessage('Nenhum funcion�rio encontrado, verifique se o n�mero de matr�cula foi digitado corretamente');
end;

end;

procedure TfrmChamados.cmbStatusChange(Sender: TObject);
begin
if  cmbStatus.ItemIndex = 0 then
begin
     helpdesk.query.SQL.Clear;
     helpdesk.query.SQL.Add('SELECT * FROM TB_CHAMADO WHERE DT_ABERTURA >= :di AND DT_ABERTURA <= :df AND CD_STATUS <= 2');
     helpdesk.query.Parameters.ParamByName('di').Value := strtodatetime(txtDataInicial.Text);
     helpdesk.query.Parameters.ParamByName('df').Value := strtodatetime(txtDataFinal.Text);
end
else if cmbStatus.ItemIndex = 1 then
begin
     helpdesk.query.SQL.Clear;
     helpdesk.query.SQL.Add('SELECT * FROM TB_CHAMADO WHERE DT_ABERTURA >= :di AND DT_ABERTURA <= :df AND CD_STATUS >= 3');
     helpdesk.query.Parameters.ParamByName('di').Value := txtDataInicial.Text;
     helpdesk.query.Parameters.ParamByName('df').Value := txtDataFinal.Text;
end
else
begin
     helpdesk.query.SQL.Clear;
     helpdesk.query.SQL.Add('SELECT * FROM TB_CHAMADO WHERE DT_ABERTURA >= :di AND DT_ABERTURA <= :df');
     helpdesk.query.Parameters.ParamByName('di').Value := txtDataInicial.Text;
     helpdesk.query.Parameters.ParamByName('df').Value := txtDataFinal.Text;
end;
     helpdesk.query.Open;
end;

procedure TfrmChamados.DBGrid1CellClick(Column: TColumn);
begin
btnEncerrar.Enabled := true;
codigochamado := DBGrid1.Fields[0].AsInteger;
end;

procedure TfrmChamados.DBGrid1DblClick(Sender: TObject);
var
matricula:integer;
begin
  txtSolicitante.Enabled := false;
  btnValidar.Enabled := false;
  matricula :=(DBGrid1.Fields[6].AsInteger+20000000);
  txtSolicitante.Text :=  inttostr(matricula);
  helpdesk.queryFUNCIONARIO.SQL.Clear;
  helpdesk.queryFUNCIONARIO.SQL.Add('SELECT CD_FUNCIONARIO, NM_FUNCIONARIO, NR_ANDAR,NR_RAMAL, NR_CELULAR,NM_EMAIL, NR_SALA, DT_ADMISSAO, NR_MATRICULA, NR_CPF, CD_ACESSO, NR_SITUACAO FROM TB_FUNCIONARIO WHERE NR_MATRICULA = :matricula');
  helpdesk.queryFUNCIONARIO.Parameters.ParamByName('matricula').Value := matricula;
  helpdesk.queryFUNCIONARIO.Open;
  txtNome.Text := helpdesk.queryFUNCIONARIO.FieldByName('NM_FUNCIONARIO').ASSTRING;
  txtAndar.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_ANDAR').ASSTRING;
  txtRamal.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_RAMAL').ASSTRING;
  txtSala.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_SALA').ASSTRING;
  txtCelular.Text := helpdesk.queryFUNCIONARIO.FieldByName('NR_CELULAR').ASSTRING;
  txtEMAIL.Text := helpdesk.queryFUNCIONARIO.FieldByName('NM_EMAIL').ASSTRING;
  cmbTIPO.ItemIndex :=  DBGrid1.Fields[7].AsInteger-1;
  txtproblema.Text := DBGrid1.Fields[4].AsString;
  codigochamado := DBGrid1.Fields[0].AsInteger;
end;

procedure TfrmChamados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       frmLogin.Close;
       frmPrincipal.Close;
end;

procedure TfrmChamados.FormCreate(Sender: TObject);
begin
  {helpdesk.queryCOMBO.SQL.Clear;
  helpdesk.queryCOMBO.SQL.Add('SELECT CD_PROBLEMA, NM_PROBLEMA FROM TB_PROBLEMA');
  helpdesk.queryCOMBO.Open;   }
end;

end.
