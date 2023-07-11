unit frWaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TWaliKelas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZConnection: TZConnection;
    DBGrid1: TDBGrid;
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
  WaliKelas: TWaliKelas;
  id : string;

implementation

{$R *.dfm}

procedure TWaliKelas.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into wali_kelas values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+ComboBox1.Text+'", "'+Edit3.Text+'",  "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+ComboBox2.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from wali_kelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TWaliKelas.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update wali_kelas set nik="'+Edit1.Text+'", nama="'+Edit2.Text+'", jk="'+ComboBox1.Text+'", alamat="'+Edit3.Text+'", telp="'+Edit4.Text+'",  matpel="'+Edit5.Text+'", pendidikan="'+Edit6.Text+'" , status="'+ComboBox2.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from wali_kelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TWaliKelas.DBGrid1CellClick(Column: TColumn);
var
  nik: string;
  nama: string;
  jk: string;
  alamat: string;
  telp: string;
  matpel: string;
  pendidikan: string;
  status: string;
begin
 id := ZQuery1.Fields[0].AsString;
 nik := ZQuery1.FieldByName('nik').AsString;
 nama := ZQuery1.FieldByName('nama').AsString;
 pendidikan := ZQuery1.FieldByName('pendidikan').AsString;
 telp := ZQuery1.FieldByName('telp').AsString;
 alamat := ZQuery1.FieldByName('alamat').AsString;
 matpel := ZQuery1.FieldByName('matpel').AsString;
 jk := ZQuery1.FieldByName('jk').AsString;
 status := ZQuery1.FieldByName('status').AsString;

  Edit1.Text := nik;
  Edit2.Text := nama;
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(jk);
  Edit3.Text := alamat;
  Edit4.Text := telp;
  Edit5.Text := matpel;
  Edit6.Text := pendidikan;
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(status);
end;

procedure TWaliKelas.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM wali_kelas WHERE id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM wali_kelas');
  ZQuery1.Open;
  ShowMessage('Data berhasil dihapus!.');
end;

procedure TWaliKelas.Button4Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  ComboBox1.ItemIndex := -1;
  ComboBox2.ItemIndex := -1;
end;

end.
