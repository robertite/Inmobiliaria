using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Perfil
/// </summary>
public class Perfil
{
    public string email { get; set; }
    public string formulario { get; set; }
    public string lectura { get; set; }
    public string escritura { get; set; }

    public Perfil GetByEmailUser(Login login) {
        return null;
    }
            

	public Perfil()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

}