object helpdesk: Thelpdesk
  OldCreateOrder = False
  Height = 563
  Width = 712
  object conn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=HELP_DESK;Data Source=DESKT' +
      'OP-UTR2P7O\DANIELSERVER;Initial File Name="";Server SPN=DESKTOP-' +
      'UTR2P7O\DANIELSERVER'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 176
    Top = 54
  end
  object TB_FUNCIONARIO: TADOTable
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=HELP_DESK;Data Source=DESKT' +
      'OP-UTR2P7O\DANIELSERVER;Initial File Name="";Server SPN=""'
    CursorType = ctStatic
    TableName = 'TB_FUNCIONARIO'
    Left = 247
    Top = 478
    object TB_FUNCIONARIOCD_FUNCIONARIO: TAutoIncField
      FieldName = 'CD_FUNCIONARIO'
      ReadOnly = True
    end
    object TB_FUNCIONARIONM_FUNCIONARIO: TStringField
      FieldName = 'NM_FUNCIONARIO'
      Size = 255
    end
    object TB_FUNCIONARIONR_ANDAR: TIntegerField
      FieldName = 'NR_ANDAR'
    end
    object TB_FUNCIONARIONR_RAMAL: TIntegerField
      FieldName = 'NR_RAMAL'
    end
    object TB_FUNCIONARIONR_CELULAR: TIntegerField
      FieldName = 'NR_CELULAR'
    end
    object TB_FUNCIONARIONM_EMAIL: TStringField
      FieldName = 'NM_EMAIL'
      Size = 255
    end
    object TB_FUNCIONARIONR_SALA: TIntegerField
      FieldName = 'NR_SALA'
    end
    object TB_FUNCIONARIODT_ADMISSAO: TStringField
      FieldName = 'DT_ADMISSAO'
      Size = 255
    end
    object TB_FUNCIONARIONR_MATRICULA: TIntegerField
      FieldName = 'NR_MATRICULA'
    end
    object TB_FUNCIONARIONR_CPF: TStringField
      FieldName = 'NR_CPF'
      Size = 11
    end
    object TB_FUNCIONARIOCD_ACESSO: TIntegerField
      FieldName = 'CD_ACESSO'
    end
    object TB_FUNCIONARIONR_SITUACAO: TIntegerField
      FieldName = 'NR_SITUACAO'
    end
    object TB_FUNCIONARIONM_SENHA: TStringField
      FieldName = 'NM_SENHA'
      Size = 255
    end
  end
  object TB_CHAMADO: TADOTable
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=HELP_DESK;Data Source=DESKT' +
      'OP-UTR2P7O\DANIELSERVER;Initial File Name="";Server SPN=""'
    CursorType = ctStatic
    TableName = 'TB_CHAMADO'
    Left = 335
    Top = 478
    object AutoIncField1: TAutoIncField
      FieldName = 'CD_FUNCIONARIO'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'NM_FUNCIONARIO'
      Size = 255
    end
    object IntegerField1: TIntegerField
      FieldName = 'NR_ANDAR'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NR_RAMAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NR_CELULAR'
    end
    object StringField2: TStringField
      FieldName = 'NM_EMAIL'
      Size = 255
    end
    object IntegerField4: TIntegerField
      FieldName = 'NR_SALA'
    end
    object StringField3: TStringField
      FieldName = 'DT_ADMISSAO'
      Size = 255
    end
    object IntegerField5: TIntegerField
      FieldName = 'NR_MATRICULA'
    end
    object StringField4: TStringField
      FieldName = 'NR_CPF'
      Size = 11
    end
    object IntegerField6: TIntegerField
      FieldName = 'CD_ACESSO'
    end
    object IntegerField7: TIntegerField
      FieldName = 'NR_SITUACAO'
    end
    object StringField5: TStringField
      FieldName = 'NM_SENHA'
      Size = 255
    end
  end
  object query: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 64
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 176
    Top = 248
  end
  object dataset: TADODataSet
    Connection = conn
    DataSource = DataSource1
    Parameters = <>
    Left = 296
    Top = 248
  end
  object queryCOMBO: TADOQuery
    Connection = conn
    Parameters = <>
    SQL.Strings = (
      'SELECT CD_PROBLEMA, NM_PROBLEMA FROM TB_PROBLEMA')
    Left = 72
    Top = 192
  end
  object dataCOMBO: TDataSource
    DataSet = queryCOMBO
    Left = 176
    Top = 192
  end
  object TB_ACESSO: TADOTable
    Connection = conn
    TableName = 'TB_ACESSO'
    Left = 408
    Top = 480
  end
  object TB_STATUS: TADOTable
    Connection = conn
    TableName = 'TB_STATUS'
    Left = 472
    Top = 480
  end
  object TB_AVALIACAO: TADOTable
    Connection = conn
    TableName = 'TB_AVALIACAO'
    Left = 544
    Top = 480
  end
  object TB_PROBLEMA: TADOTable
    Connection = conn
    CursorType = ctStatic
    IndexName = 'PK__TB_PROBL__7E1E7E409E6853FB'
    TableName = 'TB_PROBLEMA'
    Left = 624
    Top = 480
  end
  object datasetCOMBO: TADODataSet
    Connection = conn
    DataSource = dataCOMBO
    Parameters = <>
    Left = 296
    Top = 192
  end
  object queryFUNCIONARIO: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 72
    Top = 136
  end
  object dataFUNCIONARIO: TDataSource
    DataSet = queryFUNCIONARIO
    Left = 176
    Top = 136
  end
  object datasetFUNCIONARIO: TADODataSet
    Connection = conn
    DataSource = dataFUNCIONARIO
    Parameters = <>
    Left = 296
    Top = 136
  end
  object queryRELATORIO: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 64
    Top = 320
  end
  object dataRELATORIO: TDataSource
    DataSet = queryRELATORIO
    Left = 176
    Top = 320
  end
  object datasetRELATORIO: TADODataSet
    Connection = conn
    DataSource = dataRELATORIO
    Parameters = <>
    Left = 296
    Top = 320
  end
end
