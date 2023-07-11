unit frKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDBSet;

type
  TKelas = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection: TZConnection;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kelas: TKelas;
  id : string;

implementation

{$R *.dfm}

procedure TKelas.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into kelas values(null, "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TKelas.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from kelas where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TKelas.DBGrid1CellClick(Column: TColumn);
var
  nama: string;
  jenis: string;
  jurusan: string;
begin
id := ZQuery1.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  nama := ZQuery1.FieldByName('nama').AsString;
  jenis := ZQuery1.FieldByName('jenis').AsString;
  jurusan := ZQuery1.FieldByName('jurusan').AsString;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Edit2.Text := nama;
  Edit3.Text := jenis;
  Edit4.Text := jurusan;
end;

procedure TKelas.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update kelas set nama="'+Edit2.Text+'", jenis="'+Edit3.Text+'", jurusan="'+Edit4.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TKelas.Button4Click(Sender: TObject);
begin
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
end;

end.

