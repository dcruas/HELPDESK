unit Relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TfrmRelatorio = class(TForm)
    Label10: TLabel;
    txtDataInicial: TMaskEdit;
    Label11: TLabel;
    txtDataFinal: TMaskEdit;
    cmbStatus: TComboBox;
    DBGrid1: TDBGrid;
    btnGerar: TButton;
    btnLimpar: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses dm, Chamados;

procedure TfrmRelatorio.btnGerarClick(Sender: TObject);
begin
if  cmbStatus.ItemIndex = 0 then
begin
     helpdesk.queryRELATORIO.SQL.Clear;
     helpdesk.queryRELATORIO.SQL.Add('SELECT Rel.Pendentes, Rel.Atrasados, Rel.[Encerradoc/Atraso], Rel.TotalEncerrados, CASE WHEN (Rel.TotalEncerrados+Rel.Pendentes) = 0 THEN 0 ELSE Rel.TotalEncerrados*100/(Rel.TotalEncerrados+Rel.Pendentes) END AS Atendidos');
     helpdesk.queryRELATORIO.SQL.Add(',CASE WHEN (Rel.TotalEncerrados+Rel.Pendentes) = 0 THEN 0 ELSE Rel.Pendentes*100/(Rel.TotalEncerrados+Rel.Pendentes) END AS ''Não Atendidos''');
     helpdesk.queryRELATORIO.SQL.Add(',CASE WHEN Rel.TotalEncerrados = 0 THEN 0 ELSE Rel.[Encerradoc/Atraso]*100/(Rel.TotalEncerrados) END AS ''Atendidos com Atraso''');
     helpdesk.queryRELATORIO.SQL.Add(',Rel.Media FROM(SELECT SUM(CASE WHEN CD_STATUS <= 2 THEN 1 ELSE 0 END) AS Pendentes,SUM(CASE WHEN CD_STATUS <= 2 AND convert(date,GETDATE()) > DT_ABERTURA THEN 1 ELSE 0 END) AS Atrasados');
     helpdesk.queryRELATORIO.SQL.Add(',SUM(CASE WHEN CD_STATUS = 3 THEN 1 ELSE 0 END) AS ''Encerradoc/Atraso'',SUM(CASE WHEN CD_STATUS >= 3 THEN 1 ELSE 0 END) AS TotalEncerrados,AVG(CD_AVALIACAO) As Media FROM TB_CHAMADO WHERE DT_ABERTURA between :di and :df) Rel');
     helpdesk.queryRELATORIO.Parameters.ParamByName('di').Value := strtodatetime(txtDataInicial.Text);
     helpdesk.queryRELATORIO.Parameters.ParamByName('df').Value := strtodatetime(txtDataFinal.Text);
     helpdesk.queryRELATORIO.Open;
end
else if cmbStatus.ItemIndex = 1 then
begin
     helpdesk.queryRELATORIO.SQL.Clear;
     helpdesk.queryRELATORIO.SQL.Add('EXECUTE RELATORIODETALHADO :di, :df');
     helpdesk.queryRELATORIO.Parameters.ParamByName('di').Value := strtodatetime(txtDataInicial.Text);
     helpdesk.queryRELATORIO.Parameters.ParamByName('df').Value := strtodatetime(txtDataFinal.Text);
     helpdesk.queryRELATORIO.Open;
end
else
begin
  ShowMessage('Selecione uma opção');
end;
end;

procedure TfrmRelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Hide;
frmChamados.Show;

end;

end.
