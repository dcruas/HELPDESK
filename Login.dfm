object frmLogin: TfrmLogin
  Left = 194
  Top = 111
  Caption = 'HelpFast - Login'
  ClientHeight = 187
  ClientWidth = 365
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label2: TLabel
    Left = 95
    Top = 40
    Width = 47
    Height = 13
    Caption = 'Matr'#237'cula:'
  end
  object Label3: TLabel
    Left = 112
    Top = 96
    Width = 170
    Height = 13
    Caption = 'Esqueceu a senha? Clique aqui'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = Label3Click
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 170
    Width = 365
    Height = 17
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object btnEntrar: TButton
    Left = 156
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = btnEntrarClick
  end
  object txtMatricula: TEdit
    Left = 148
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object txtSenha: TEdit
    Left = 148
    Top = 69
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
end
