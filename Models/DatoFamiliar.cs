using Dapper;
using Newtonsoft.Json;
using Microsoft.Data.SqlClient;
namespace GrupoPresentacionWeb.Models;
public class DatoFamiliar{

public string nombre { get; private set; }
public string apellido{ get; private set; }
public string parentesco { get; private set; }
public string descripción {get; private set;}
public int Id{ get; private set; } 
public int IdUsuario { get; private set; }

  public DatoFamiliar() { }

public DatoFamiliar(string nombre, string apellido, string parentesco,string descripción,int Id,int IdUsuario ){
this.nombre = nombre;
this.apellido = apellido;
this.parentesco= parentesco;
this.descripción= descripción;
this.Id=Id;
this.IdUsuario=IdUsuario;

}


}