program TugasAkhir;

uses
  Forms,
  frLogin in 'frLogin.pas' {Login},
  frSiswa in 'frSiswa.pas' {Siswa},
  frKelas in 'frKelas.pas' {Kelas},
  frOrtu in 'frOrtu.pas' {Ortu},
  frPoin in 'frPoin.pas' {Poin},
  frWaliKelas in 'frWaliKelas.pas' {WaliKelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWaliKelas, WaliKelas);
  Application.CreateForm(TSiswa, Siswa);
  Application.CreateForm(TOrtu, Ortu);
  Application.CreateForm(TKelas, Kelas);
  Application.CreateForm(TPoin, Poin);
  Application.CreateForm(TLogin, Login);
  Application.Run;
end.
