object frmPrincipal: TfrmPrincipal
  Left = 907
  Top = 28
  Caption = 'HelpFast - Tela Principal'
  ClientHeight = 299
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 852
    Height = 29
    ButtonWidth = 84
    Caption = 'ToolBar1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    List = True
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object btnFuncionario: TToolButton
      Left = 0
      Top = 0
      Caption = 'Funcion'#225'rios'
      ImageIndex = 0
      OnClick = btnFuncionarioClick
    end
    object btnChamados: TToolButton
      Left = 84
      Top = 0
      Caption = 'Chamados'
      ImageIndex = 1
      OnClick = btnChamadosClick
    end
  end
end
