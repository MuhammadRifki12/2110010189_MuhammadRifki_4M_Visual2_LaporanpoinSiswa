unit frPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TPoin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZConnection: TZConnection;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Poin: TPoin;
  id: string;
  
implementation

{$R *.dfm}

procedure TPoin.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into poin values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+ComboBox1.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TPoin.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update poin set nama="'+Edit1.Text+'", bobot="'+Edit2.Text+'", jenis="'+ComboBox1.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TPoin.DBGrid1CellClick(Column: TColumn);
var
  nama: string;
  bobot: string;
  jenis: string;
begin
id := ZQuery1.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  nama := ZQuery1.FieldByName('nama').AsString;
  bobot := ZQuery1.FieldByName('bobot').AsString;
  jenis := ZQuery1.FieldByName('jenis').AsString;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Edit1.Text := nama;
  Edit2.Text := bobot;
  ComboBox1.Text := jenis;
end;
procedure TPoin.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from poin where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TPoin.Button4Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  ComboBox1.ItemIndex := -1;
end;

end.
