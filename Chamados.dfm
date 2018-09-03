object frmChamados: TfrmChamados
  Left = 0
  Top = 0
  Caption = 'HelpFast - Chamados'
  ClientHeight = 644
  ClientWidth = 901
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbpPesquisar: TGroupBox
    Left = 17
    Top = 8
    Width = 193
    Height = 105
    Caption = 'Pesquisar'
    TabOrder = 0
    object rdbProtocolo: TRadioButton
      Left = 100
      Top = 51
      Width = 113
      Height = 17
      Caption = 'Protocolo'
      TabOrder = 0
    end
    object rdbMatricula: TRadioButton
      Left = 32
      Top = 51
      Width = 62
      Height = 17
      Caption = 'Matr'#237'cula'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object txtPesquisar: TEdit
      Left = 32
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnPesquisar: TButton
      Left = 40
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btnPesquisarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 235
    Top = 8
    Width = 602
    Height = 252
    Caption = 'Chamados'
    TabOrder = 1
    object Label10: TLabel
      Left = 16
      Top = 45
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label11: TLabel
      Left = 154
      Top = 45
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 64
      Width = 500
      Height = 171
      DataSource = helpdesk.DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDblClick = DBGrid1DblClick
    end
    object txtDataInicial: TMaskEdit
      Left = 79
      Top = 37
      Width = 67
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 1
      Text = '  /  /  '
    end
    object txtDataFinal: TMaskEdit
      Left = 212
      Top = 37
      Width = 71
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 2
      Text = '  /  /  '
    end
    object cmbStatus: TComboBox
      Left = 360
      Top = 37
      Width = 145
      Height = 21
      TabOrder = 3
      OnChange = cmbStatusChange
      Items.Strings = (
        'Pendente'
        'Encerrados'
        'Todos')
    end
    object btnEncerrar: TButton
      Left = 509
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Encerrar'
      Enabled = False
      TabOrder = 4
      OnClick = btnEncerrarClick
    end
    object btnRelatorio: TButton
      Left = 509
      Top = 95
      Width = 75
      Height = 25
      Caption = 'Relat'#243'rios'
      TabOrder = 5
      OnClick = btnRelatorioClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 17
    Top = 266
    Width = 820
    Height = 370
    Caption = 'Dados:'
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 42
      Width = 99
      Height = 13
      Caption = 'Matricula Solicitante:'
    end
    object Label2: TLabel
      Left = 206
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 400
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Andar:'
    end
    object Label4: TLabel
      Left = 141
      Top = 88
      Width = 32
      Height = 13
      Caption = 'E-mail:'
    end
    object Label5: TLabel
      Left = 24
      Top = 88
      Width = 37
      Height = 13
      Caption = 'Celular:'
    end
    object Label6: TLabel
      Left = 456
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Sala:'
    end
    object Label7: TLabel
      Left = 512
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Ramal:'
    end
    object Label8: TLabel
      Left = 21
      Top = 141
      Width = 86
      Height = 13
      Caption = 'Tipo de problema:'
    end
    object Label9: TLabel
      Left = 21
      Top = 187
      Width = 112
      Height = 13
      Caption = 'Descri'#231#227'o do problema:'
    end
    object txtProblema: TEdit
      Left = 21
      Top = 206
      Width = 361
      Height = 94
      TabOrder = 0
    end
    object txtNome: TEdit
      Left = 210
      Top = 59
      Width = 172
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object txtAndar: TEdit
      Left = 400
      Top = 59
      Width = 33
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object txtSala: TEdit
      Left = 456
      Top = 59
      Width = 41
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object txtCelular: TEdit
      Left = 21
      Top = 107
      Width = 97
      Height = 21
      Enabled = False
      MaxLength = 9
      TabOrder = 4
    end
    object txtRamal: TEdit
      Left = 512
      Top = 59
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object txtEmail: TEdit
      Left = 141
      Top = 107
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object btnValidar: TButton
      Left = 129
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Validar'
      TabOrder = 7
      OnClick = btnValidarClick
    end
    object cmbTipo: TComboBox
      Left = 21
      Top = 160
      Width = 241
      Height = 21
      TabOrder = 8
      Items.Strings = (
        'M'#193'QUINA N'#195'O LIGA'
        'INTERNET N'#195'O PEGA'
        'IMPRESSORA N'#195'O FUCNIONA'
        'SISTEMA TRAVANDO'
        'PROBLEMA COM A MAQUINA'
        'ACESS'#211'RIO COM PROBLEMA')
    end
  end
  object btnNovo: TButton
    Left = 45
    Top = 572
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 126
    Top = 572
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object txtSolicitante: TEdit
    Left = 38
    Top = 327
    Width = 102
    Height = 21
    MaxLength = 8
    TabOrder = 5
  end
end
