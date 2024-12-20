object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form2'
  ClientHeight = 517
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object History: TMemo
    Left = 311
    Top = 0
    Width = 185
    Height = 281
    Lines.Strings = (
      'History')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnClearHistory: TButton
    Left = 403
    Top = 257
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = btnClearHistoryClick
  end
  object PanelButtons: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 517
    Align = alLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btn1: TButton
      Left = 6
      Top = 421
      Width = 75
      Height = 49
      Caption = '1'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 77
      Top = 421
      Width = 75
      Height = 49
      Caption = '2'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 150
      Top = 421
      Width = 75
      Height = 49
      Caption = '3'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 6
      Top = 374
      Width = 75
      Height = 49
      Caption = '4'
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 77
      Top = 374
      Width = 75
      Height = 49
      Caption = '5'
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 150
      Top = 374
      Width = 75
      Height = 49
      Caption = '6'
      TabOrder = 5
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 6
      Top = 327
      Width = 75
      Height = 49
      Caption = '7'
      TabOrder = 6
      OnClick = btn7Click
    end
    object btn8: TButton
      Left = 77
      Top = 327
      Width = 75
      Height = 49
      Caption = '8'
      TabOrder = 7
      OnClick = btn8Click
    end
    object btn9: TButton
      Left = 150
      Top = 327
      Width = 75
      Height = 49
      Caption = '9'
      TabOrder = 8
      OnClick = btn9Click
    end
    object btnAdd: TButton
      Left = 222
      Top = 421
      Width = 75
      Height = 49
      Caption = '+'
      TabOrder = 9
      OnClick = btnAddClick
    end
    object btnClearClick: TButton
      Left = 6
      Top = 280
      Width = 75
      Height = 49
      Caption = 'AC'
      TabOrder = 10
      OnClick = btnClearClickClick
    end
    object btnDiv: TButton
      Left = 222
      Top = 280
      Width = 75
      Height = 49
      Caption = '/'
      TabOrder = 11
      OnClick = btnDivClick
    end
    object btnEqual: TButton
      Left = 222
      Top = 467
      Width = 75
      Height = 49
      Caption = '='
      TabOrder = 12
      OnClick = btnEqualClick
    end
    object btnMul: TButton
      Left = 222
      Top = 327
      Width = 75
      Height = 49
      Caption = '*'
      TabOrder = 13
      OnClick = btnMulClick
    end
    object btnPercent: TButton
      Left = 150
      Top = 280
      Width = 75
      Height = 49
      Caption = '%'
      TabOrder = 14
      OnClick = btnPercentClick
    end
    object btnSub: TButton
      Left = 222
      Top = 374
      Width = 75
      Height = 49
      Caption = '-'
      TabOrder = 15
      OnClick = btnSubClick
    end
    object PanelDisplay: TPanel
      Left = 0
      Top = 254
      Width = 305
      Height = 27
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0'
      TabOrder = 16
    end
    object btn0: TButton
      Left = 77
      Top = 467
      Width = 75
      Height = 49
      Caption = '0'
      TabOrder = 17
      OnClick = btn0Click
    end
    object btnDecimal: TButton
      Left = 150
      Top = 467
      Width = 75
      Height = 49
      Caption = ','
      TabOrder = 18
      OnClick = btnDecimalClick
    end
    object btnBackspace: TButton
      Left = 77
      Top = 280
      Width = 75
      Height = 49
      Caption = '<'
      TabOrder = 19
      OnClick = btnBackspaceClick
    end
  end
  object btnValorProximo: TButton
    Left = 336
    Top = 304
    Width = 123
    Height = 25
    Caption = 'Valor Pr'#243'ximo'
    TabOrder = 3
    OnClick = btnValorProximoClick
  end
end
