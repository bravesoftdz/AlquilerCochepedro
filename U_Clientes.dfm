object fromcli: Tfromcli
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 388
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 388
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 187
      Width = 65
      Height = 13
      Caption = 'dni_con_letra'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 128
      Top = 188
      Width = 48
      Height = 13
      Caption = 'nom_apell'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 0
      Top = 245
      Width = 39
      Height = 13
      Caption = 'domicilio'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 224
      Top = 245
      Width = 40
      Height = 13
      Caption = 'telefono'
      FocusControl = DBEdit4
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 529
      Height = 181
      DataSource = DataModule3.DSclientes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dni_con_letra'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_apell'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefono'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'domicilio'
          Width = 123
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 304
      Width = 539
      Height = 25
      DataSource = DataModule3.DSclientes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 0
      Top = 218
      Width = 97
      Height = 21
      DataField = 'dni_con_letra'
      DataSource = DataModule3.DSclientes
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 218
      Width = 409
      Height = 21
      DataField = 'nom_apell'
      DataSource = DataModule3.DSclientes
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 0
      Top = 264
      Width = 193
      Height = 21
      DataField = 'domicilio'
      DataSource = DataModule3.DSclientes
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 208
      Top = 264
      Width = 134
      Height = 21
      DataField = 'telefono'
      DataSource = DataModule3.DSclientes
      TabOrder = 5
      OnKeyPress = DBEdit4KeyPress
    end
    object DBNavigator2: TDBNavigator
      Left = 384
      Top = 261
      Width = 134
      Height = 25
      DataSource = DataModule3.DSclientes
      VisibleButtons = [nbPost, nbCancel]
      TabOrder = 6
    end
  end
end
