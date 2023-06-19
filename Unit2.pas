unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm2 = class(TForm)
    grp1: TGroupBox;
    grp2: TGroupBox;
    dsDsLogin: TDataSource;
    ZConn: TZConnection;
    ZqLogin: TZQuery;
    dsDsSiswa: TDataSource;
    ZqSiswa: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
