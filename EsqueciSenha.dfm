object frmEsqueci: TfrmEsqueci
  Left = 0
  Top = 0
  Caption = 'HelpFast - Esqueci minha Senha'
  ClientHeight = 238
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCPF: TLabel
    Left = 64
    Top = 72
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object lblEmail: TLabel
    Left = 59
    Top = 115
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object txtCPF: TEdit
    Left = 93
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object txtEMAIL: TEdit
    Left = 93
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnEnviar: TButton
    Left = 64
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = btnEnviarClick
  end
  object btnVoltar: TButton
    Left = 160
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 3
  end
end
