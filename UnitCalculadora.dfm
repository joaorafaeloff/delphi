object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Calculadora'
  ClientHeight = 148
  ClientWidth = 210
  Color = clWindowFrame
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object EdtResultado: TEdit
    Left = 0
    Top = 2
    Width = 210
    Height = 23
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object Bt7: TButton
    Left = 0
    Top = 29
    Width = 50
    Height = 25
    Caption = '7'
    TabOrder = 1
    OnClick = NumeroClick
  end
  object Bt8: TButton
    Left = 56
    Top = 29
    Width = 50
    Height = 25
    Caption = '8'
    TabOrder = 2
    OnClick = NumeroClick
  end
  object Bt9: TButton
    Left = 112
    Top = 29
    Width = 51
    Height = 25
    Caption = '9'
    TabOrder = 3
    OnClick = NumeroClick
  end
  object BtSoma: TButton
    Left = 169
    Top = 29
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = BtSomaClick
  end
  object Bt5: TButton
    Left = 56
    Top = 60
    Width = 50
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = NumeroClick
  end
  object BtSubtrair: TButton
    Left = 169
    Top = 60
    Width = 41
    Height = 25
    Caption = '-'
    TabOrder = 6
    OnClick = BtSubtrairClick
  end
  object Bt6: TButton
    Left = 112
    Top = 60
    Width = 51
    Height = 25
    Caption = '6'
    TabOrder = 7
    OnClick = NumeroClick
  end
  object Bt4: TButton
    Left = 0
    Top = 60
    Width = 50
    Height = 25
    Caption = '4'
    TabOrder = 8
    OnClick = NumeroClick
  end
  object Bt2: TButton
    Left = 56
    Top = 91
    Width = 50
    Height = 25
    Caption = '2'
    TabOrder = 9
    OnClick = NumeroClick
  end
  object BtMultiplicar: TButton
    Left = 169
    Top = 91
    Width = 41
    Height = 25
    Caption = 'x'
    TabOrder = 10
    OnClick = BtMultiplicarClick
  end
  object Bt3: TButton
    Left = 112
    Top = 91
    Width = 51
    Height = 25
    Caption = '3'
    TabOrder = 11
    OnClick = NumeroClick
  end
  object Bt1: TButton
    Left = 0
    Top = 91
    Width = 50
    Height = 25
    Caption = '1'
    TabOrder = 12
    OnClick = NumeroClick
  end
  object Bt0: TButton
    Left = 56
    Top = 122
    Width = 50
    Height = 25
    Caption = '0'
    TabOrder = 13
    OnClick = NumeroClick
  end
  object BtDividir: TButton
    Left = 169
    Top = 122
    Width = 41
    Height = 25
    Caption = '/'
    TabOrder = 14
    OnClick = BtDividirClick
  end
  object BtIgual: TButton
    Left = 112
    Top = 122
    Width = 51
    Height = 25
    Caption = '='
    TabOrder = 15
    OnClick = BtIgualClick
  end
  object BtLimpar: TButton
    Left = 0
    Top = 122
    Width = 50
    Height = 25
    Caption = 'Limpar'
    TabOrder = 16
    OnClick = BtLimparClick
  end
end
