  unit U_Alquiler_Acces;

  interface

  uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
    FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
    FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
    FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
    Vcl.ExtCtrls, Vcl.StdCtrls;

  type
    TForm13 = class(TForm)
      Panel1: TPanel;
      SpeedButton1: TSpeedButton;
      SpeedButton2: TSpeedButton;
      DBLookupListBox2: TDBLookupListBox;
      DBLookupListBox1: TDBLookupListBox;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;

 

      procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
        var Resize: Boolean);
      procedure SpeedButton1Click(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure FormActivate(Sender: TObject);



    private
      { Private declarations }
    public
      { Public declarations }
    end;

  var
    Form13: TForm13;


  implementation
  uses U_module,U_cochesAlquilados;

  {$R *.dfm}

  procedure TForm13.FormActivate(Sender: TObject);
  begin
  DataModule3.FDTAcces.Refresh;
  DataModule3.FDTAcces_Aql.Refresh;
  end;

  procedure TForm13.FormCanResize(Sender: TObject; var NewWidth,
    NewHeight: Integer; var Resize: Boolean);
  begin
  Resize:=false;
  end;

  procedure TForm13.SpeedButton1Click(Sender: TObject);
  var
  AccesSelectedItem,idalq ,prec ,total ,precio1,total3   :string;
  precio,total1:integer;
  begin
        AccesSelectedItem:=DBLookupListBox1.SelectedItem;
        idAlq:=GroupBox2.Caption;
    DataModule3.FDTAcces_Aql.Append;
    DataModule3.FDTAcces_Aql.FieldByName('Alquiler').AsString:=IdAlq;
    DataModule3.FDTAcces_Aql.FieldByName('nom_acces').AsString:=AccesSelectedItem;
    dataModule3.FDTAcces_Aql.Post;
    DataModule3.FDTAcces_Aql.Refresh;

    precio:=DBLookupListBox1.ListSource.DataSet.FieldByName('precio').Value;
    total:=DataModule3.FDTAlquiler.FieldByName('TotalAcces').AsString;

    prec  :=inttostr(precio);
    total1:=strtoint(total);

    total1 :=total1 + precio;
    total3 := IntToStr(total1);

    DataModule3.Q_CalcPrecio.Close;
    DataModule3.Q_CalcPrecio.SQL.Clear;
    DataModule3.Q_CalcPrecio.SQL.text:= 'update ALQUILER set TotalAcces = '+QuotedStr(total3)+' where id_tabla ='+QuotedStr(idAlq);
    DataModule3.Q_CalcPrecio.ExecSQL;
     DataModule3.FDTAlquiler.Refresh;
    end;




    procedure TForm13.SpeedButton2Click(Sender: TObject);
  var
   precio1,t :integer;
   tot,acces,precio2,total3,idalq1 :String;
  begin
  //precio1:=DBLookupListBox1.ListSource.DataSet.FieldByName('precio').Value;
  idAlq1:=GroupBox2.Caption;

  tot:=DataModule3.FDTAlquiler.FieldByName('TotalAcces').AsString;
   acces :=DBLookupListBox2.SelectedItem;
   DataModule3.FDQuery1.Close;
   DataModule3.FDQuery1.SQL.Clear;

   DataModule3.FDQuery1.SQL.text:= 'select precio from ACCESORIOS , ACCES_ALQ where nombre_acces=nom_acces and  nom_acces='+QuotedStr(acces);
   DataModule3.FDQuery1.open;
   precio2:= DataModule3.FDQuery1.FieldByName('precio').AsString;
   precio1:=StrToInt(precio2);
   t:=strtoint(tot);
   t:=t-precio1;
   total3 :=IntToStr(t);

    DataModule3.Q_CalcPrecio1.Close;
    DataModule3.Q_CalcPrecio1.SQL.Clear;
    DataModule3.Q_CalcPrecio1.SQL.text:= 'update ALQUILER set TotalAcces = '+QuotedStr(total3)+' where id_tabla ='+QuotedStr(idAlq1);
    DataModule3.Q_CalcPrecio1.ExecSQL;

    DataModule3.FDTAcces_Aql.Delete;
    DataModule3.FDTAlquiler.Refresh;
  end;

  end.
