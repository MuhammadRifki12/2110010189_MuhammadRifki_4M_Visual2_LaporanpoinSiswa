object Poin: TPoin
  Left = 498
  Top = 109
  Width = 1044
  Height = 541
  Caption = 'Poin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 51
    Height = 13
    Caption = 'Bobot Poin'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 47
    Height = 13
    Caption = 'Jenis Poin'
  end
  object Edit1: TEdit
    Left = 112
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 352
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 304
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 168
    Width = 505
    Height = 120
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 112
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'prestasi'
      'pelanggaran')
  end
  object ZQuery1: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 528
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 592
    Top = 48
  end
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'data_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Laporan Poin Sis' +
      'wa\libmysql.dll'
    Left = 464
    Top = 48
  end
end
