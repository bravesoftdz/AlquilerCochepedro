unit U_Accesorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBLookupListBox1: TDBLookupListBox;
    Accesorios: TLabeledEdit;
    Precio: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PrecioKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses U_module;

{$R *.dfm}






procedure TForm1.FormActivate(Sender: TObject);
begin
DataModule3.FDTAcces.Refresh;
end;

procedure TForm1.PrecioKeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  Key:=#0;
  ShowMessage('precio debe ser numerico');
end;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
cad :string;
begin
cad := Accesorios.Text;
if DataModule3.FDTAcces.Locate( 'nombre_acces' , VarArrayof([cad]),[])
         then ShowMessage('este eccesorio ya exisite')
         else
begin
   if DataModule3.InsertarA(Accesorios.Text,precio.Text) then
   begin
     showmessage('Dato insertado');
   end
   Else
   begin
Showmessage('Error al insertar');
   end;
   DataModule3.FDTAcces.Refresh;
   Accesorios.Clear;
   precio.Clear;
end;
end;



procedure TForm1.SpeedButton2Click(Sender: TObject);
var
cad :String   ;

begin

cad:=DBLookupListBox1.SelectedItem;
if MessageDlg('Desea Eliminar el registro',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes
 then
 begin
 DataModule3.FDTAcces.close;
DataModule3.FDTAcces.SQL.Text:='Delete from ACCESORIOS where nombre_acces='+QuotedStr(cad)  ;
   DataModule3.FDTAcces.ExecSQL;
   DataModule3.FDTAcces .close;
   DataModule3.FDTAcces.Open;
 end;
end;


end.
