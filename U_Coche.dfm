object Formcoche: TFormcoche
  Left = 0
  Top = 0
  Caption = 'Coches'
  ClientHeight = 364
  ClientWidth = 649
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
    Width = 649
    Height = 364
    Align = alClient
    TabOrder = 0
    object Label6: TLabel
      Left = 136
      Top = 261
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label1: TLabel
      Left = 8
      Top = 261
      Width = 43
      Height = 13
      Caption = 'matricula'
    end
    object Label2: TLabel
      Left = 208
      Top = 261
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object Label3: TLabel
      Left = 280
      Top = 261
      Width = 18
      Height = 13
      Caption = 'a'#241'o'
    end
    object Label4: TLabel
      Left = 312
      Top = 261
      Width = 50
      Height = 13
      Caption = 'Capacidad'
    end
    object Label5: TLabel
      Left = 368
      Top = 261
      Width = 61
      Height = 13
      Caption = 'Coste_Diario'
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 331
      Width = 364
      Height = 25
      DataSource = DataModule3.DSCoches
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
      TabOrder = 0
    end
    object Button1: TButton
      Left = 378
      Top = 332
      Width = 145
      Height = 25
      Caption = 'Caracteristicas'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBImage1: TDBImage
      Left = 488
      Top = 0
      Width = 161
      Height = 240
      DataField = 'foto'
      DataSource = DataModule3.DSCoches
      TabOrder = 2
      OnClick = DBImage1Click
    end
    object DBGrid1: TDBGrid
      Left = -7
      Top = 0
      Width = 489
      Height = 240
      DataSource = DataModule3.DSCoches
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'matricula'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Marca'
          Title.Color = clHighlight
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Modelo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Capacidad'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'a'#241'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Coste_Diario'
          Visible = True
        end>
    end
    object DBNavigator2: TDBNavigator
      Left = 435
      Top = 280
      Width = 106
      Height = 25
      DataSource = DataModule3.DSCoches
      VisibleButtons = [nbPost, nbCancel]
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 0
      Top = 280
      Width = 95
      Height = 21
      DataField = 'matricula'
      DataSource = DataModule3.DSCoches
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 193
      Top = 280
      Width = 49
      Height = 21
      DataField = 'Modelo'
      DataSource = DataModule3.DSCoches
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 280
      Width = 42
      Height = 21
      DataField = 'a'#241'o'
      DataSource = DataModule3.DSCoches
      TabOrder = 7
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 304
      Top = 280
      Width = 58
      Height = 21
      DataField = 'Capacidad'
      DataSource = DataModule3.DSCoches
      TabOrder = 8
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 378
      Top = 280
      Width = 51
      Height = 21
      DataField = 'Coste_Diario'
      DataSource = DataModule3.DSCoches
      TabOrder = 9
      OnKeyPress = DBEdit5KeyPress
    end
  end
  object ComboBoxMarca: TComboBox
    Left = 109
    Top = 280
    Width = 76
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Ford'
    OnChange = ComboBoxMarcaChange
    Items.Strings = (
      'Ford'
      'Opel'
      'Renault'
      'Honda')
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 584
    Top = 312
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 68
    Top = 21
    object LinkFillControlToFieldMarca: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Marca'
      Control = ComboBoxMarca
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
