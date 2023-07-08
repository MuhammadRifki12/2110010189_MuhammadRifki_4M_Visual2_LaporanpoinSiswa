object WaliKelas: TWaliKelas
  Left = 210
  Top = 86
  Width = 1044
  Height = 541
  Caption = 's'
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
    Top = 8
    Width = 38
    Height = 13
    Caption = 'NIK/NIP'
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 24
    Top = 200
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label4: TLabel
    Left = 24
    Top = 72
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label5: TLabel
    Left = 24
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 24
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Matpel'
  end
  object Label7: TLabel
    Left = 24
    Top = 232
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label8: TLabel
    Left = 24
    Top = 136
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Edit1: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 128
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 128
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object ComboBox2: TComboBox
    Left = 128
    Top = 232
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'aktif'
      'nonaktif')
  end
  object Button1: TButton
    Left = 272
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 272
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 12
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 272
    Width = 521
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
  object ZQuery1: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 440
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 504
    Top = 8
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
    Left = 376
    Top = 8
  end
end
