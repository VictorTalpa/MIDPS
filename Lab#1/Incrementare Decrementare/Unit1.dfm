object Form1: TForm1
  Left = 425
  Top = 271
  Width = 350
  Height = 220
  Caption = 'MIDPS 1-A'
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
    Left = 64
    Top = 8
    Width = 196
    Height = 19
    Hint = 'Tema programului'
    Caption = 'Incrementare/Decrementare'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object status: TLabel
    Left = 144
    Top = 64
    Width = 37
    Height = 18
    Caption = 'status'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 8
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
  object Label2: TLabel
    Left = 9
    Top = 101
    Width = 21
    Height = 18
    Caption = 'Nr.:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object upButton: TButton
    Left = 32
    Top = 64
    Width = 75
    Height = 25
    Hint = 'Incrementare'
    Caption = 'Up'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = upButtonClick
  end
  object downButton: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Hint = 'Decrementare'
    Caption = 'Down'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = downButtonClick
  end
  object exitButton: TButton
    Left = 256
    Top = 160
    Width = 75
    Height = 25
    Hint = 'Iesire din program'
    Caption = 'Exit'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = exitButtonClick
  end
  object textBox: TEdit
    Left = 32
    Top = 96
    Width = 73
    Height = 26
    Hint = 'Introduceti numarul dorit'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
end
