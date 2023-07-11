object Kelas: TKelas
  Left = 227
  Top = 138
  Width = 1044
  Height = 541
  Caption = 'Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 24
    Top = 80
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit2: TEdit
    Left = 96
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 96
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 232
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 312
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 136
    Width = 369
    Height = 120
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZQuery1: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 504
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 568
    Top = 24
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
    Left = 440
    Top = 32
  end
end
