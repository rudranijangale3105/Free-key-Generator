object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Free Key Generator'
  ClientHeight = 271
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 78
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Language'
  end
  object Shape1: TShape
    Left = -4
    Top = -7
    Width = 417
    Height = 49
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Pen.Style = psClear
    Pen.Width = 0
  end
  object Label5: TLabel
    Left = 94
    Top = 8
    Width = 183
    Height = 23
    Caption = 'Free Key Generator'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 203
    Width = 366
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 140
    Top = 234
    Width = 105
    Height = 25
    Caption = 'Generate'
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 229
    Top = 88
    Width = 145
    Height = 102
    Caption = 'The key will contains  '
    TabOrder = 2
    object CheckBox2: TCheckBox
      Left = 16
      Top = 49
      Width = 121
      Height = 17
      Caption = 'Big letters'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 72
      Width = 97
      Height = 17
      Caption = 'Small letters'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 88
    Width = 209
    Height = 102
    Caption = 'Key length  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 57
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 162
      Top = 55
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 87
      Top = 55
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object ScrollBar1: TScrollBar
      Left = 16
      Top = 32
      Width = 177
      Height = 17
      Max = 50
      Min = 4
      PageSize = 0
      Position = 8
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
  end
  object CheckBox1: TCheckBox
    Left = 245
    Top = 114
    Width = 113
    Height = 17
    Caption = 'Numbers'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object Button2: TButton
    Left = 8
    Top = 234
    Width = 105
    Height = 25
    Caption = 'Copy to clipboard'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 269
    Top = 234
    Width = 105
    Height = 25
    Caption = 'Close'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 132
    Top = 53
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'English'
    OnChange = ComboBox1Change
    Items.Strings = (
      'English'
      'Slovensk'#253)
  end
  object XPManifest1: TXPManifest
    Left = 328
    Top = 48
  end
end
