unit frKoneksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TConnection = class(TForm)
    GroupBox1: TGroupBox;
    DsLogin: TDataSource;
    ZConn: TZConnection;
    ZqLogin: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Connection: TConnection;

implementation

{$R *.dfm}

end.
