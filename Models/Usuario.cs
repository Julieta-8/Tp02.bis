using Microsoft.Data.SqlClient;
using Dapper;
using Newtonsoft.Json;
namespace GrupoPresentacionWeb.Models;
public class Usuario
{
    [JsonProperty]
    public string Nombre { get; set; }
    [JsonProperty]
    public string Apellido { get; set; }
    [JsonProperty]
    public DateTime FechaNacimiento { get; set; }
    [JsonProperty]
    public string Foto { get; set; }
    [JsonProperty]
    public string Email { get; set; }
    [JsonProperty]
    public string Contraseña { get; set; }
    [JsonProperty]
    public int Id { get; set; }

 

      public Usuario() { }

    public int ObtenerEdad()
    {
        DateTime hoy = DateTime.Today;
        int edad = (hoy.Year - FechaNacimiento.Year);
        return edad;
    }
}