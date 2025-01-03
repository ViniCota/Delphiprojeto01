unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label6: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm2.txtBuscaChange(Sender: TObject);
begin
 DM.tbContatos.Locate('nome',txtBusca.Text,[loPartialKey]);
 DM.tbContatos.Locate('celular',txtBusca.Text,[loPartialKey]);
end;

end.
