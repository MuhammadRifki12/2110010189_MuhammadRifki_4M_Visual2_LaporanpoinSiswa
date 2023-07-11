unit frSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, frxClass,
  frxDBSet;

type
  TSiswa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    dsSiswa: TDataSource;
    ZQuery1: TZQuery;
    ZConnection: TZConnection;
    DateTimePicker1: TDateTimePicker;
    ComboBox4: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Siswa: TSiswa;
    id : string;
implementation

{$R *.dfm}

procedure TSiswa.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into siswa values(null, "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", "'+ComboBox1.Text+'", "'+ComboBox2.Text+'", "'+ComboBox3.Text+'", "'+Edit8.Text+'", "'+Edit9.Text+'", "'+Edit10.Text+'", "'+Edit11.Text+'", "'+ComboBox4.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TSiswa.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update siswa set nis="'+Edit2.Text+'", nisn="'+Edit3.Text+'", nama_siswa="'+Edit4.Text+'", nik="'+Edit5.Text+'", tempat_lahir="'+Edit6.Text+'", jenis_kelamin="'+ComboBox1.Text+'", tingkat_kelas="'+ComboBox2.Text+'", jurusan="'+ComboBox3.Text+'", wali_kelas="'+Edit8.Text+'", alamat="'+Edit9.Text+'", telp="'+Edit10.Text+'", hp="'+Edit11.Text+'", status="'+ComboBox4.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TSiswa.DBGrid1CellClick(Column: TColumn);
var
  nis: string;
  nisn: string;
  nama_siswa: string;
  nik: string;
  tempat_lahir: string;
  jenis_kelamin: string;
  tingkat_kelas: string;
  jurusan: string;
  wali_kelas: string;
  alamat: string;
  telp: string;
  hp: string;
  status: string;
begin
  id := ZQuery1.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  nis := ZQuery1.FieldByName('nis').AsString;
  nisn := ZQuery1.FieldByName('nisn').AsString;
  nama_siswa := ZQuery1.FieldByName('nama_siswa').AsString;
  nik := ZQuery1.FieldByName('nik').AsString;
  tempat_lahir := ZQuery1.FieldByName('tempat_lahir').AsString;
  jenis_kelamin := ZQuery1.FieldByName('jenis_kelamin').AsString;
  tingkat_kelas := ZQuery1.FieldByName('tingkat_kelas').AsString;
  jurusan := ZQuery1.FieldByName('jurusan').AsString;
  wali_kelas := ZQuery1.FieldByName('wali_kelas').AsString;
  alamat := ZQuery1.FieldByName('alamat').AsString;
  telp := ZQuery1.FieldByName('telp').AsString;
  hp := ZQuery1.FieldByName('hp').AsString;
  status := ZQuery1.FieldByName('status').AsString;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Edit2.Text := nis;
  Edit3.Text := nisn;
  Edit4.Text := nama_siswa;
  Edit5.Text := nik;
  Edit6.Text := tempat_lahir;
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(jenis_kelamin);
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(tingkat_kelas);
  ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(jurusan);
  Edit8.Text := wali_kelas;
  Edit9.Text := alamat;
  Edit10.Text := telp;
  Edit11.Text := hp;
  ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(status);
end;


procedure TSiswa.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from siswa where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');

end;

procedure TSiswa.Button4Click(Sender: TObject);
begin
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit6.Text := '';
Edit8.Text := '';
Edit9.Text := '';
Edit10.Text := '';
Edit11.Text := '';

ComboBox1.Clear;
ComboBox1.ItemIndex := -1;
ComboBox2.Clear;
ComboBox2.ItemIndex := -1;
ComboBox3.Clear;
ComboBox3.ItemIndex := -1;
ComboBox4.Clear;
ComboBox4.ItemIndex := -1;

end;

procedure TSiswa.Button5Click(Sender: TObject);
begin
     frxReport1.ShowReport();
end;

end.
