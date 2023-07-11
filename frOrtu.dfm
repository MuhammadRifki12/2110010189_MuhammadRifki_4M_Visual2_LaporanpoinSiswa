object Ortu: TOrtu
  Left = 246
  Top = 160
  Width = 1044
  Height = 542
  Caption = 'Ortu'
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
    Left = 32
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 32
    Top = 112
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label1: TLabel
    Left = 32
    Top = 144
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label5: TLabel
    Left = 32
    Top = 208
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 32
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label7: TLabel
    Left = 32
    Top = 272
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label8: TLabel
    Left = 32
    Top = 304
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 32
    Top = 176
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Edit2: TEdit
    Left = 160
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 160
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 112
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'Sarjana')
  end
  object Edit6: TEdit
    Left = 160
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 160
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 160
    Top = 272
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object Edit5: TEdit
    Left = 160
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ComboBox3: TComboBox
    Left = 160
    Top = 304
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'hidup'
      'meninggal'
      'wali')
  end
  object Button1: TButton
    Left = 304
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 304
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 12
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 376
    Width = 569
    Height = 120
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 160
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object ZQuery1: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 480
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 544
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
    Left = 416
    Top = 48
  end
end
