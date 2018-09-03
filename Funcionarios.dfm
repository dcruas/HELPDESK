object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'HelpFast - Funcion'#225'rios'
  ClientHeight = 550
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbpPesquisar: TGroupBox
    Left = 8
    Top = 16
    Width = 201
    Height = 113
    Caption = 'Pesquisar'
    TabOrder = 0
    object rdbProtocolo: TRadioButton
      Left = 100
      Top = 51
      Width = 113
      Height = 17
      Caption = 'Nome'
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
      Left = 56
      Top = 74
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
    Width = 534
    Height = 217
    Caption = 'Funcion'#225'rios:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 16
      Width = 487
      Height = 182
      DataSource = helpdesk.dataFUNCIONARIO
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 235
    Top = 231
    Width = 534
    Height = 282
    Caption = 'Dados:'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Matr'#237'cula:'
    end
    object lblNome: TLabel
      Left = 111
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 255
      Top = 24
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label4: TLabel
      Left = 111
      Top = 74
      Width = 33
      Height = 13
      Caption = 'Ramal:'
    end
    object Label5: TLabel
      Left = 16
      Top = 74
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label6: TLabel
      Left = 199
      Top = 74
      Width = 37
      Height = 13
      Caption = 'Celular:'
    end
    object Label7: TLabel
      Left = 330
      Top = 74
      Width = 24
      Height = 13
      Caption = 'Sala:'
    end
    object Label8: TLabel
      Left = 111
      Top = 130
      Width = 75
      Height = 13
      Caption = 'Data Admiss'#227'o:'
    end
    object Label9: TLabel
      Left = 16
      Top = 130
      Width = 33
      Height = 13
      Caption = 'Andar:'
    end
    object Label10: TLabel
      Left = 16
      Top = 186
      Width = 32
      Height = 13
      Caption = 'E-mail:'
    end
    object txtRamal: TEdit
      Left = 111
      Top = 93
      Width = 82
      Height = 21
      TabOrder = 0
    end
    object txtNome: TEdit
      Left = 111
      Top = 43
      Width = 138
      Height = 21
      TabOrder = 1
    end
    object txtSenha: TEdit
      Left = 16
      Top = 93
      Width = 89
      Height = 21
      TabOrder = 2
    end
    object txtCPF: TEdit
      Left = 255
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object txtMatricula: TEdit
      Left = 16
      Top = 43
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object txtCelular: TEdit
      Left = 199
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object txtSala: TEdit
      Left = 326
      Top = 93
      Width = 82
      Height = 22
      TabOrder = 6
    end
    object txtAndar: TEdit
      Left = 16
      Top = 149
      Width = 89
      Height = 21
      TabOrder = 7
    end
    object txtDataAdmissao: TEdit
      Left = 111
      Top = 149
      Width = 89
      Height = 21
      TabOrder = 8
    end
    object txtEmail: TEdit
      Left = 16
      Top = 205
      Width = 305
      Height = 21
      TabOrder = 9
    end
    object btnNovo: TButton
      Left = 16
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 10
      OnClick = btnNovoClick
    end
    object btnSalvar: TButton
      Left = 111
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 11
      OnClick = btnSalvarClick
    end
  end
  object rdbTipo: TRadioGroup
    Left = 8
    Top = 231
    Width = 185
    Height = 105
    Caption = 'Tipo:'
    ItemIndex = 0
    Items.Strings = (
      'T'#233'cnico'
      'Usu'#225'rio')
    TabOrder = 3
  end
  object rdbStatus: TRadioGroup
    Left = 8
    Top = 351
    Width = 185
    Height = 105
    Caption = 'Status:'
    ItemIndex = 0
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 4
  end
end
