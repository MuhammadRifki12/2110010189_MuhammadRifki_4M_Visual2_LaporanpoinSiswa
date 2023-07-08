object Siswa: TSiswa
  Left = 308
  Top = 84
  Width = 957
  Height = 648
  Caption = 'frSiswa'
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
    Left = 16
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label4: TLabel
    Left = 16
    Top = 88
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label5: TLabel
    Left = 16
    Top = 112
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label6: TLabel
    Left = 16
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 16
    Top = 160
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label8: TLabel
    Left = 16
    Top = 184
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object Label9: TLabel
    Left = 16
    Top = 208
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Label10: TLabel
    Left = 16
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object Label11: TLabel
    Left = 16
    Top = 256
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label12: TLabel
    Left = 16
    Top = 280
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label13: TLabel
    Left = 16
    Top = 304
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label14: TLabel
    Left = 16
    Top = 328
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit2: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 104
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 104
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit8: TEdit
    Left = 104
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit9: TEdit
    Left = 104
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit10: TEdit
    Left = 104
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit11: TEdit
    Left = 104
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 232
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 368
    Width = 857
    Height = 176
    DataSource = dsSiswa
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 160
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object ComboBox2: TComboBox
    Left = 104
    Top = 184
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'IX'
      'X'
      'XI')
  end
  object ComboBox3: TComboBox
    Left = 104
    Top = 208
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'TKJ'
      'MM')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 136
    Width = 121
    Height = 21
    Date = 0.007645451390999369
    Time = 0.007645451390999369
    TabOrder = 18
  end
  object ComboBox4: TComboBox
    Left = 104
    Top = 328
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 19
    Items.Strings = (
      'aktif'
      'nonaktif')
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
      'C:\Users\Novriyan09\Documents\Delphi Visual 2\Tugas Akhir\libmys' +
      'ql.dll'
    Left = 880
    Top = 368
  end
  object dsSiswa: TDataSource
    DataSet = ZQuery1
    Left = 880
    Top = 464
  end
  object ZQuery1: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 880
    Top = 416
  end
end
