object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 367
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 21
    Top = 16
    Width = 340
    Height = 25
    Caption = 'Calculadora de Valores Decimais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnArredondarCima: TButton
    Left = 8
    Top = 256
    Width = 143
    Height = 25
    Caption = 'Arredondar Para Cima'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnArredondarCimaClick
  end
  object btnArredondarBaixo: TButton
    Left = 8
    Top = 297
    Width = 144
    Height = 25
    Caption = 'Arredondar Para Baixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnArredondarBaixoClick
  end
  object btnVoltar: TButton
    Left = 306
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnVoltarClick
  end
  object Panel1: TPanel
    Left = 309
    Top = 102
    Width = 170
    Height = 105
    TabOrder = 3
    object lblResultado: TLabel
      Left = 9
      Top = 39
      Width = 70
      Height = 16
      Caption = 'Resultado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblResultadoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 21
    Top = 102
    Width = 260
    Height = 105
    Caption = 'Par'#226'metros de C'#225'lculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label2: TLabel
      Left = 3
      Top = 38
      Width = 79
      Height = 16
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 3
      Top = 60
      Width = 93
      Height = 16
      Caption = 'Valor Unit'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtValor: TEdit
      Left = 102
      Top = 60
      Width = 155
      Height = 22
      TabOrder = 0
      TextHint = 'Digite o valor unit'#225'rio'
    end
    object edtQuantidade: TEdit
      Left = 102
      Top = 33
      Width = 155
      Height = 22
      TabOrder = 1
      TextHint = 'Digite a quantidade'
    end
  end
end
