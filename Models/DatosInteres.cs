using Dapper;
using Newtonsoft.Json;
using Microsoft.Data.SqlClient;
namespace GrupoPresentacionWeb.Models;
public class DatosInteres{
 public int Id{ get; private set; }
public int IdUsuario{ get; private set; }
public string Intereses  { get; private set; }
public int TipoInteres { get; private set; }

public DatosInteres() { }
public DatosInteres(int TipoInteres,string Intereses,int Id, int IdUsuario ){
    this.Id = Id;
this.IdUsuario = IdUsuario;
this.TipoInteres= TipoInteres;
this.Intereses= Intereses;
}
}