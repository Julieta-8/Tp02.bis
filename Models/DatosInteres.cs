using Dapper;
namespace GrupoPresentacionWeb.Models;
public class DatosInteres{
 public int Id{ get; private set; }
public int IdUsuario{ get; private set; }
public string Interes  { get; private set; }
public string TipoInteres { get; private set; }

public DatosInteres(string TipoInteres,string Interes,int Id, int IdUsuario ){
    this.Id = Id;
this.IdUsuario = IdUsuario;
this.TipoInteres= TipoInteres;
this.Interes= Interes;
}
}