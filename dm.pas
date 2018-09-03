unit dm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Thelpdesk = class(TDataModule)
    conn: TADOConnection;
    TB_FUNCIONARIO: TADOTable;
    TB_FUNCIONARIOCD_FUNCIONARIO: TAutoIncField;
    TB_FUNCIONARIONM_FUNCIONARIO: TStringField;
    TB_FUNCIONARIONR_ANDAR: TIntegerField;
    TB_FUNCIONARIONR_RAMAL: TIntegerField;
    TB_FUNCIONARIONR_CELULAR: TIntegerField;
    TB_FUNCIONARIONM_EMAIL: TStringField;
    TB_FUNCIONARIONR_SALA: TIntegerField;
    TB_FUNCIONARIODT_ADMISSAO: TStringField;
    TB_FUNCIONARIONR_MATRICULA: TIntegerField;
    TB_FUNCIONARIONR_CPF: TStringField;
    TB_FUNCIONARIOCD_ACESSO: TIntegerField;
    TB_FUNCIONARIONR_SITUACAO: TIntegerField;
    TB_FUNCIONARIONM_SENHA: TStringField;
    TB_CHAMADO: TADOTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField5: TStringField;
    query: TADOQuery;
    DataSource1: TDataSource;
    dataset: TADODataSet;
    queryCOMBO: TADOQuery;
    dataCOMBO: TDataSource;
    TB_ACESSO: TADOTable;
    TB_STATUS: TADOTable;
    TB_AVALIACAO: TADOTable;
    TB_PROBLEMA: TADOTable;
    datasetCOMBO: TADODataSet;
    queryFUNCIONARIO: TADOQuery;
    dataFUNCIONARIO: TDataSource;
    datasetFUNCIONARIO: TADODataSet;
    queryRELATORIO: TADOQuery;
    dataRELATORIO: TDataSource;
    datasetRELATORIO: TADODataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  helpdesk: Thelpdesk;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
