
unit U_CaractCoche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses U_module, U_coche;


{$R *.dfm}




procedure TForm4.FormActivate(Sender: TObject);
begin
DataModule3.FDTCaractCoche.Refresh;
end;

procedure TForm4.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;



procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
DataModule3.FDTAlquiler.Open;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin

DataModule3.FDTCaractCoche.Delete;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
  var
  cad,mat:String;
  indice:integer;
  begin
   mat:=datamodule3.FDTCoches.FieldByName('matricula').AsString;
   cad:=DBLookupListBox1.SelectedItem;
   if not (datamodule3.FDTCaractCoche.Locate('caract',VarArrayOf([cad]),[])) then
        begin
             datamodule3.FDTCaractCoche.Append;
               datamodule3.FDTCaractCoche.FieldByName('matri').AsString:=mat;
               datamodule3.FDTCaractCoche.FieldByName('caract').AsString:=cad;

              datamodule3.FDTCaractCoche.Post;
              datamodule3.FDTCaractCoche.Refresh;
        end;

end;

end.
