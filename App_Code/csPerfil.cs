using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Perfil
/// </summary>
public class csPerfil
{
    public string formulario { get; set; }
    public string lectura { get; set; }
    public string escritura { get; set; }


    public csPerfil()
    { }
    public csPerfil(string _formulario, string _lectura, string _escritura)
    {
   
        formulario = _formulario;
        lectura = _lectura;
        escritura = _escritura;
    }
}