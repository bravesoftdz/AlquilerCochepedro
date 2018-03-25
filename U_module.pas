unit U_module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  Vcl.Dialogs, frxClass, frxDBSet;

type
  TDataModule3 = class(TDataModule)
    DSclientes: TDataSource;
    FDTclientes: TFDTable;
    DSCoches: TDataSource;
    FDTCoches: TFDTable;
    DSAlquiler: TDataSource;
    DSacces: TDataSource;
    FDTAcces: TFDTable;
    DSCaract: TDataSource;
    DSAcces_Alq: TDataSource;
    DSCaract_Coche: TDataSource;
    conexion: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTCochesmatricula: TStringField;
    FDTCochesMarca: TStringField;
    FDTCochesModelo: TStringField;
    FDTCochesCapacidad: TIntegerField;
    FDTCochesa�o: TIntegerField;
    FDTCochesCoste_Diario: TIntegerField;
    FDTCochesfoto: TBlobField;
    FDTclientesdni_con_letra: TStringField;
    FDTclientesnom_apell: TStringField;
    FDTclientestelefono: TIntegerField;
    FDTclientesdomicilio: TStringField;
    QCaractCoche: TFDQuery;
    DSqCaractCoche: TDataSource;
    DsBuscarDNI: TDataSource;
    Q_BuscarDNI: TFDQuery;
    DSBuscarPorNom: TDataSource;
    Q_BuscarPorNom: TFDQuery;
    OpenDFotocoche: TOpenDialog;
    DSFiltroModelo: TDataSource;
    Q_FiltroModelo: TFDQuery;
    DSFiltroMarca: TDataSource;
    Q_filtroMarca: TFDQuery;
    DSGrid: TDataSource;
    Q_Grid: TFDQuery;
    DSConsMarcaMod: TDataSource;
    Q_ConsMarcaMod: TFDQuery;
    DSQAlquiler: TDataSource;
    Q_Alquiler: TFDQuery;
    DSQPrecioDia: TDataSource;
    Q_PrecioDia: TFDQuery;
    DSQInsertar: TDataSource;
    Q_Insertar: TFDQuery;
    DSQVerCaractCoche: TDataSource;
    DSQ_DetAlqVeh: TDataSource;
    DSQVerClienteAlq: TDataSource;
    Q_VerClienteAlq: TFDQuery;
    Q_VerClienteAlqdni_con_letra: TStringField;
    Q_VerClienteAlqnom_apell: TStringField;
    Q_VerClienteAlqtelefono: TIntegerField;
    Q_VerClienteAlqdomicilio: TStringField;
    DSqDatosAlq: TDataSource;
    DSqVerAccesAlq: TDataSource;
    Q_VerAccesAlq: TFDQuery;
    Q_DatosAlq: TFDQuery;
    Q_DatosAlqFecha: TDateField;
    Q_DatosAlqFecha_Devolucion: TDateField;
    Q_DatosAlqTotal: TIntegerField;
    FDTAcces_Aql: TFDTable;
    Q_VerCaractCoche: TFDQuery;
    FDTCaract: TFDTable;
    DSqCalcPrecio: TDataSource;
    Q_CalcPrecio: TFDQuery;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField1: TIntegerField;
    FDTAcces_Aqlid_tab: TFDAutoIncField;
    FDTAcces_Aqlnom_acces: TStringField;
    FDTAcces_AqlAlquiler: TIntegerField;
    DSqcalcprecio1: TDataSource;
    Q_CalcPrecio1: TFDQuery;
    DateField3: TDateField;
    DateField4: TDateField;
    IntegerField2: TIntegerField;
    DSqdelete: TDataSource;
    Q_delete: TFDQuery;
    DBqSelectAql: TDataSource;
    q_SelectAlq: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Q_DetAlqVeh: TFDQuery;
    FDTAccesnombre_acces: TStringField;
    FDTAccesprecio: TIntegerField;
    DataSource2: TDataSource;
    FDQuery2: TFDQuery;
    FDTCaractCoche: TFDTable;
    DBqPrecAcces: TDataSource;
    Q_PrecAcces: TFDQuery;
    DSqCaractCoch: TDataSource;
    Q_CaractCoch: TFDQuery;
    FDTAlquiler: TFDTable;
    ReportAccesAlq: TfrxReport;
    DBDSAlq: TfrxDBDataset;
    DBDSAcces: TfrxDBDataset;
    DBDSAlqCliente: TfrxDBDataset;
    DBDSCliente: TfrxDBDataset;
    ReportClienteAlq: TfrxReport;
    DataSource3: TDataSource;
    FDTable1: TFDTable;
    FDQuery3: TFDQuery;
    DataSource4: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    ReportCoche: TfrxReport;
    DBDScaract: TfrxDBDataset;
    ReportCocheCaract: TfrxReport;
    DBDSCocheCaract: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    ReportCliente: TfrxReport;
    DSqDeleteAcces: TDataSource;
    Q_deleteAcces: TFDQuery;
    ReportDetalles: TfrxReport;
    DBDataSqDetalles: TfrxDBDataset;
    FDQuery4: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDTCochesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FDTCochesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FDTclientesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FDTclientesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);



  private

    { Private declarations }
  public
    Function InsertarA(nombreA,precio:String):Boolean;
    Function InsertarC(nombrec:String):Boolean;
    Function EliminarA(nombreA:String):Boolean;
    Function EliminarC(nombrec:String):Boolean;

  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}




procedure TDataModule3.DataModuleCreate(Sender: TObject);
begin
   conexion.Connected:=true;
    FDTclientes.Active:=  true;
    FDTCoches.active:=true;
    FDTAcces.active:=true;
    QCaractCoche.active:=true;
    Q_BuscarDNI.active:=true;
    Q_BuscarPorNom.active:=true;
    Q_FiltroModelo.active:=true;
    Q_filtroMarca.active:=true;
    Q_Grid.active:=true;
    Q_ConsMarcaMod.active:=true;
        Q_Alquiler.active:=true;
    Q_PrecioDia.active:=true;
    Q_Insertar.active:=true;
    Q_VerClienteAlq.active:=true;
    Q_DetAlqVeh.active:=true;
    Q_VerAccesAlq.active:=true;
    Q_DatosAlq.active:=true;
    FDTAcces_Aql.active:=true;
    Q_VerCaractCoche.active:=true;
    FDTCaractCoche.active:=true;
    FDTCaract.active:=true;
        Q_CalcPrecio.active:=true;
    FDTAlquiler.active:=true;
    Q_CalcPrecio1.active:=true;
    Q_delete.active:=true;
    q_SelectAlq.active:=true;
    FDQuery1.active:=true;
     FDQuery3.active:=true;
      FDQuery4.active:=true;

end;

Function TDataModule3.EliminarA(nombreA: string):Boolean;
var
sql:String;
begin
  result:=false;
  Sql:='delete from ACCESORIOS where nombre_acces='''+nombreA+''';';
 try
 conexion.ExecSQL(sql,[]);
 result:=true;
 except
 end;
end;




Function TDataModule3.InsertarA(nombreA: string;precio: string):Boolean;
var
sql:String;
begin
  result:=false;
  Sql:='insert into ACCESORIOS (nombre_acces,precio) values('''+nombreA+''','''+precio+''')';
 try
 Conexion.ExecSQL(sql,[]);
 result:=true;
 except
 end;
end;

Function TDataModule3.InsertarC(nombrec: string):Boolean;
var
sql:String;
begin
  result:=false;
  Sql:='insert into CARACTERISTICAS (nombre_caract) values('''+nombrec+''')';
 try
 Conexion.ExecSQL(sql,[]);
 result:=true;
 except
 end;
end;




Function TDataModule3.EliminarC(nombreC: string):Boolean;
var
sql:String;
begin
  result:=false;
  Sql:='delete from CARACTERISTICAS where nombre_caract='''+nombreC+''';';
 try
 conexion.ExecSQL(sql,[]);
 result:=true;
 except
 end;
end;











procedure TDataModule3.FDTclientesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
ShowMessage('Error es posible que este cliente tenga alquilado un coche , por lo tanto no se podra eliminar hasta que se elimine su alquiler');
end;

procedure TDataModule3.FDTclientesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
ShowMessage('Error es posible que el DNI de este cliente ya exisita');
end;

procedure TDataModule3.FDTCochesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
ShowMessage('error al eliminar el coche es posible que este alquilado, por lo tanto no se puede eliminar');
end;

procedure TDataModule3.FDTCochesPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
ShowMessage('Error es posible que esta matricula ya exisita');
end;

end.
