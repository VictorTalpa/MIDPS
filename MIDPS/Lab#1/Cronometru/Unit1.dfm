object Form1: TForm1
  Left = 365
  Top = 248
  Width = 362
  Height = 202
  Caption = 'MIDPS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 259
    Height = 18
    Hint = 'Tema programului'
    Caption = 'Realizarea unui cronometru in C++ Builder'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label2: TLabel
    Left = 117
    Top = 66
    Width = 190
    Height = 23
    Hint = 'Tema programului'
    Caption = 'C++ Builder Cronometru'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label3: TLabel
    Left = 345
    Top = 4
    Width = 6
    Height = 15
    Hint = 'Efectuat: Talpa Victor TI-144'
    Caption = '?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object startButton: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Hint = 'Porneste cronometrul'
    Caption = 'Start'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = startButtonClick
  end
  object stopButton: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Hint = 'Opreste cronometrul'
    Caption = 'Stop'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = stopButtonClick
  end
  object zeroButton: TButton
    Left = 8
    Top = 136
    Width = 75
    Height = 25
    Hint = 'Reseteaza cronometrul'
    Caption = 'Zero'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = zeroButtonClick
  end
  object exitButton: TButton
    Left = 272
    Top = 136
    Width = 75
    Height = 25
    Hint = 'Iesire din program'
    Caption = 'Exit'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = exitButtonClick
  end
  object textbox1: TEdit
    Left = 224
    Top = 32
    Width = 121
    Height = 20
    Hint = 'Timpul de sistem'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object textbox2: TEdit
    Left = 88
    Top = 96
    Width = 257
    Height = 31
    Hint = 'Cronometrul'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
  end
  object Timer2: TTimer
    Interval = 100
    OnTimer = Timer2Timer
    Top = 32
  end
end
