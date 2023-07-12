unit frOrtu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TOrtu = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit6: TEdit;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    ComboBox3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZConnection: TZConnection;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Edit1: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  Ortu: TOrtu;
    id : string;
    
implementation

{$R *.dfm}

procedure TOrtu.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into ortu values(null, "'+Edit2.Text+'", "'+Edit3.Text+'", "'+ComboBox1.Text+'", "'+Edit4.Text+'", "'+Edit1.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+ComboBox2.Text+'", "'+ComboBox3.Text+'" )');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TOrtu.Button2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update ortu set nik="'+Edit2.Text+'", nama="'+Edit3.Text+'", pendidikan="'+ComboBox1.Text+'", pekerjaan="'+Edit4.Text+'", telp="'+Edit1.Text+'", alamat="'+Edit5.Text+'" , agama="'+Edit6.Text+'", jk="'+ComboBox2.Text+'", status="'+ComboBox3.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TOrtu.DBGrid1CellClick(Column: TColumn);
var

  nik: string;
  nama: string;
  pendidikan: string;
  pekerjaan: string;
  telp: string;
  alamat: string;
  agama: string;
  jk: string;
  status: string;
begin
  id := ZQuery1.Fields[0].AsString;
  
  nik := ZQuery1.FieldByName('nik').AsString;
  nama := ZQuery1.FieldByName('nama').AsString;
  pendidikan := ZQuery1.FieldByName('pendidikan').AsString;
  pekerjaan := ZQuery1.FieldByName('pekerjaan').AsString;
  telp := ZQuery1.FieldByName('telp').AsString;
  alamat := ZQuery1.FieldByName('alamat').AsString;
  agama := ZQuery1.FieldByName('agama').AsString;
  jk := ZQuery1.FieldByName('jk').AsString;
  status := ZQuery1.FieldByName('status').AsString;

  Edit2.Text := nik;
  Edit3.Text := nama;
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(pendidikan);
  Edit4.Text := pekerjaan;
  Edit1.Text := telp;
  Edit5.Text := alamat;
  Edit6.Text := agama;
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(jk);
  ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(status);
end;




procedure TOrtu.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('DELETE FROM ortu WHERE id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM ortu');
  ZQuery1.Open;
  ShowMessage('Data berhasil dihapus!.');
end;

procedure TOrtu.Button4Click(Sender: TObject);
begin
  Edit2.Text := '';
  Edit3.Text := '';
  ComboBox1.ItemIndex := -1;
  Edit4.Text := '';
  Edit1.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  ComboBox2.ItemIndex := -1;
  ComboBox3.ItemIndex := -1;
end;  

end.
