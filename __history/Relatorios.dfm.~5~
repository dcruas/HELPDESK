object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'HelpFast - Relat'#243'rio Gerencial'
  ClientHeight = 486
  ClientWidth = 588
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
  object Label10: TLabel
    Left = 40
    Top = 45
    Width = 57
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label11: TLabel
    Left = 178
    Top = 45
    Width = 52
    Height = 13
    Caption = 'Data Final:'
  end
  object txtDataInicial: TMaskEdit
    Left = 103
    Top = 37
    Width = 66
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 0
    Text = '  /  /  '
  end
  object txtDataFinal: TMaskEdit
    Left = 236
    Top = 37
    Width = 71
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '  /  /  '
  end
  object cmbStatus: TComboBox
    Left = 384
    Top = 37
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Resumido'
      'Detalhado')
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 88
    Width = 489
    Height = 233
    DataSource = helpdesk.dataRELATORIO
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnGerar: TButton
    Left = 171
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 4
    OnClick = btnGerarClick
  end
  object btnLimpar: TButton
    Left = 272
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
  end
end
