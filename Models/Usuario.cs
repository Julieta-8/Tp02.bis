using Microsoft.Data.SqlClient;
using Dapper;
using Newtonsoft.Json;
namespace GrupoPresentacionWeb.Models;
public class Usuario{
[JsonProperty]
public string Nombre { get;  set; }
[JsonProperty]
public string Apellido{ get;  set; }
[JsonProperty]
public DateTime FechaNacimiento { get;  set; }
[JsonProperty]
public string Foto {get;  set;}
[JsonProperty]
public string Email {get;  set;}
[JsonProperty]
public string Contraseña {get;  set;}
[JsonProperty]
public int Id {get;  set;}


public Usuario(string Nombre, string Apellido, DateTime FechaNacimiento,string Foto,string Email,string Contraseña, int Id){
this.Nombre = Nombre;
this.Apellido = Apellido;
this.FechaNacimiento= FechaNacimiento;
this.Foto= Foto;
this.Email= Email;
this.Contraseña=Contraseña;
this.Id= Id;

}
public int ObtenerEdad(){
    DateTime hoy =DateTime.Today;
    int edad = (hoy.Year -FechaNacimiento.Year);
    return edad;
}
}