object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 173
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object btnClose: TButton
    Left = 173
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
  object btnLock: TButton
    Left = 173
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Lock'
    TabOrder = 2
    OnClick = btnLockClick
  end
  object btnUnlock: TButton
    Left = 173
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Unlock'
    TabOrder = 3
    OnClick = btnUnlockClick
  end
  object memLog: TMemo
    Left = 254
    Top = 8
    Width = 185
    Height = 185
    TabOrder = 4
  end
end
