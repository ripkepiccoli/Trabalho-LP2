object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 770
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
  object Panel1: TPanel
    Left = 0
    Top = -2
    Width = 769
    Height = 57
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 264
      Top = 16
      Width = 470
      Height = 33
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 61
    Width = 769
    Height = 108
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label4: TLabel
      Left = 16
      Top = 59
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label5: TLabel
      Left = 168
      Top = 13
      Width = 46
      Height = 13
      Caption = 'Descricao'
    end
    object Label6: TLabel
      Left = 168
      Top = 59
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label7: TLabel
      Left = 383
      Top = 59
      Width = 94
      Height = 13
      Caption = 'Quantidade(+ ou -)'
    end
    object Label8: TLabel
      Left = 510
      Top = 59
      Width = 37
      Height = 13
      Caption = 'Unitario'
    end
    object Label9: TLabel
      Left = 639
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object Label10: TLabel
      Left = 639
      Top = 59
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 78
      Width = 121
      Height = 21
      DataField = 'Data'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 168
      Top = 32
      Width = 465
      Height = 21
      DataField = 'Descricao'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 168
      Top = 78
      Width = 201
      Height = 21
      DataField = 'Fornecedor'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 383
      Top = 78
      Width = 121
      Height = 21
      DataField = 'Quantidade'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 512
      Top = 78
      Width = 121
      Height = 21
      DataField = 'Unitario'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 639
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Unidade'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 639
      Top = 78
      Width = 121
      Height = 21
      DataField = 'Total'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 175
    Width = 769
    Height = 130
    TabOrder = 2
    object Label2: TLabel
      Left = 14
      Top = 13
      Width = 155
      Height = 13
      Caption = 'Pesquisa,Ordena'#231#227'o e Filtragem'
    end
    object Label11: TLabel
      Left = 192
      Top = 37
      Width = 24
      Height = 13
      Caption = 'A'#231#227'o'
    end
    object Label12: TLabel
      Left = 376
      Top = 37
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label14: TLabel
      Left = 16
      Top = 37
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object Button1: TButton
      Left = 656
      Top = 56
      Width = 104
      Height = 25
      Caption = 'Executar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 56
      Width = 153
      Height = 21
      ItemIndex = 0
      TabOrder = 1
      Text = 'Codigo'
      Items.Strings = (
        'Codigo'
        'Descricao'
        'Unidade'
        'Fornecedor'
        'Data'
        'Quantidade'
        'Unitario'
        'Total'
        'EstoqueQtd'
        'EstoqueVlr')
    end
    object Edit1: TEdit
      Left = 376
      Top = 56
      Width = 255
      Height = 21
      TabOrder = 2
    end
    object ComboBox2: TComboBox
      Left = 192
      Top = 56
      Width = 161
      Height = 21
      ItemIndex = 0
      TabOrder = 3
      Text = 'Indexar'
      Items.Strings = (
        'Indexar'
        'Locate'
        'FindKey'
        'Limpar'
        'Percorrer'
        'Filtrar'
        'Limpar Filtro')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 311
    Width = 769
    Height = 162
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 479
    Width = 769
    Height = 58
    Caption = 'Totais'
    TabOrder = 4
    object Label3: TLabel
      Left = 280
      Top = 24
      Width = 115
      Height = 13
      Caption = 'Qunatidade em Estoque'
    end
    object Label13: TLabel
      Left = 537
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Valor do Estoque'
    end
    object DBEdit3: TDBEdit
      Left = 401
      Top = 24
      Width = 121
      Height = 21
      DataField = 'EstoqueQtd'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 624
      Top = 24
      Width = 121
      Height = 21
      DataField = 'EstoqueVlr'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = ClientDataSet1BeforePost
    Left = 144
    Top = 16
    object ClientDataSet1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object ClientDataSet1Unidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object ClientDataSet1Fornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSet1Unitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object ClientDataSet1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSet1EstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade)'
    end
    object ClientDataSet1EstoqueVlr: TAggregateField
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade* Unitario)'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 16
  end
end
