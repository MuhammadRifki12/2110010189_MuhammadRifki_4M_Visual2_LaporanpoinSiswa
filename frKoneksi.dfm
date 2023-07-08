object Connection: TConnection
  Left = 278
  Top = 126
  Width = 1093
  Height = 556
  Caption = 'Koneksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 64
    Width = 89
    Height = 65
    Caption = 'Login'
    TabOrder = 0
  end
  object DsLogin: TDataSource
    DataSet = ZqLogin
    Left = 24
    Top = 80
  end
  object ZConn: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'mysql'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'data_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Novriyan09\Documents\Delphi Visual 2\Tugas Akhir\libmys' +
      'ql.dll'
    Left = 24
    Top = 16
  end
  object ZqLogin: TZQuery
    Connection = ZConn
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 64
    Top = 80
  end
end
