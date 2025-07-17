using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP2_Usoz.Models;

namespace GrupoPresentacionWeb.Models;
public class HomeController : Controller
{
   

    public IActionResult Index()
    {  
         return View("Index");
    }
  
  [HttpPost]
  public IActionResult Login(string Email, string Contraseña){
      int id = BD.Login(Email, Contraseña);
      if(id != -1){
        HttpContext.Session.SetString("idUser",id.ToString());
        ViewBag.Usuario = BD.GetUsuario(id);
        return View("infoDatosPersonales"); 
      }
      else{
      ViewBag.Error ="Login incorrecto";
    return View("Index");
      }
  }

    public IActionResult MostrarDatosInteres(int Id) 
    { 
         int id = int.Parse(HttpContext.Session.GetString("idUser"));
         ViewBag.interes = BD.GetDatoInteres(Id); 
            return View("infoDatosInteres");
    }
    
    public IActionResult MostrarDatosFamiliares() 
    { 
        int id = int.Parse(HttpContext.Session.GetString("idUser"));
        ViewBag.DatosFamiliares = BD.GetDatoFamiliar(id); 
            return View("infoDatosFamiliares");
    }
}
