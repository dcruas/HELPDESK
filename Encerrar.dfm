object frmEncerrar: TfrmEncerrar
  Left = 0
  Top = 0
  Caption = 'HelpFast - Encerrar Chamado'
  ClientHeight = 276
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 40
    Width = 47
    Height = 13
    Caption = 'Matr'#237'cula:'
  end
  object Label2: TLabel
    Left = 94
    Top = 80
    Width = 57
    Height = 13
    Caption = 'Justificativa'
  end
  object btnEncerrar: TButton
    Left = 219
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Encerrar'
    TabOrder = 0
    OnClick = btnEncerrarClick
  end
  object txtMatricula: TEdit
    Left = 157
    Top = 37
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object txtJustificativa: TEdit
    Left = 157
    Top = 77
    Width = 220
    Height = 127
    TabOrder = 2
  end
end
