using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Cliente
/// </summary>
public class Cliente
{
    public string rut { get; set; }
    public string nombre { get; set; }
    public string email { get; set; }
    public string giro { get; set; }
    public int telefono { get; set; }
    public char activo { get; set; }
    public int region { get; set; }
    public int comuna { get; set; }
    public string calle { get; set; }
    public int numero { get; set; }
    public string departamento { get; set; }


	public Cliente(){}

    public string Insert()
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Cliente_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;

        

        try { 
        con.Open();
        int ret = cmd.ExecuteNonQuery();
        con.Close();

        if (ret == 0)
        {
            return "Error al insertar";
        }
        else { return "Registrado Exitosamente"; }

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("Cliente.cs", "Insert", ex.ToString(), DateTime.Now);
            return "Error BD";
        }
    }
    public string GetByRut()
    {
        return "";
    }
}