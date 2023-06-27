unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    dbgrdKelas: TDBGrid;
    grpGrupBox1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtNamaKelas: TEdit;
    edtJenis: TEdit;
    edtJurusan: TEdit;
    btnEdit: TButton;
    btnHapus: TButton;
    btnTambah: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
