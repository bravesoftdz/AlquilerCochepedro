unit U_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Controls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.Grid, Vcl.Grids, Data.Bind.DBScope,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.DBGrids;

type
  Tfromcli = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fromcli: Tfromcli;

implementation
uses U_module;

{$R *.dfm}

procedure Tfromcli.BtnCancelarClick(Sender: TObject);
begin
DBEdit1.Clear;

 end;


procedure Tfromcli.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  Key:=#0;
  ShowMessage('el telefono debe ser numerico');
end;
end;

procedure Tfromcli.FormActivate(Sender: TObject);
begin
DataModule3.FDTclientes.Refresh;
DataModule3.FDTclientes.First;
end;

procedure Tfromcli.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
