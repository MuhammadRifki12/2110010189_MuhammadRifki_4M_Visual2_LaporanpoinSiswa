unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tuser = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1name: TEdit;
    edt2Pass: TEdit;
    btnLogin: TButton;
    dbgrd1: TDBGrid;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user: Tuser;

implementation

{$R *.dfm}

procedure Tuser.btnLoginClick(Sender: TObject);
var nama, password, level, loginLevel, querylogin: string;
  sts: integer;
begin
nama := editUsername.Text;
  password := editPassword.Text;

  querylogin := 'SELECT * FROM user WHERE nama = :nama AND `password` = :password';

  formConnection.zqUserLogin.SQL.Clear;
  formConnection.zqUserLogin.SQL.Add(querylogin);

  formConnection.zqUserLogin.ParamByName('nama').AsString := nama;
  formConnection.zqUserLogin.ParamByName('password').AsString := password;
  formConnection.zqUserLogin.Open;

  if (formConnection.zqUserLogin.RecordCount > 0) then
    begin
      sts := formConnection.zqUserLogin.FieldValues['status'];
      if (sts = 1) then
        begin
          loginLevel := formConnection.zqUserLogin.FieldValues['level'];
          if (loginLevel = 'admin') then
            begin
              ShowMessage('Anda Login Sebagai Admin');
            end
          else if (loginLevel = 'guru') then
            begin
              ShowMessage('Anda Login Sebagai Guru');
            end
          else
            begin
              ShowMessage('Anda Login Sebagai Siswa');
            end;
        end
      else
        begin
          ShowMessage('Login Gagal');
        end;
    end;
end;

end.
