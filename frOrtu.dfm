object Ortu: TOrtu
  Left = 189
  Top = 126
  Width = 1044
  Height = 542
  Caption = 'Ortu'
  Color = clHighlight
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
    Left = 416
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 464
    Top = 112
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
    Left = 304
    Top = 208
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 376
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45119.327142419000000000
    ReportOptions.LastChange = 45119.336839814820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 313.700990000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'REPORT DATA ORTU')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 83.149660000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'id')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'nik')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'nama')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 234.330860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'pendidikan')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 328.819110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'pekerjaan')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 423.307360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'telp')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'alamat')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 612.283860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'agama')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 234.330860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pendidikan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."pendidikan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 328.819110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pekerjaan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."pekerjaan"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 423.307360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'agama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."agama"]')
          ParentFont = False
        end
      end
    end
  end
end
