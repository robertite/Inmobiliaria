using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Login
/// </summary>
public class Login
{
    public string email { get; set; }
    public string pass { get; set; }
    public Perfil perfil { get; set; }

    public Login validaLogin(Login login) {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "LoadPerfilByUser";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        con.Open();
        int ret = cmd.ExecuteNonQuery();
        con.Close();
        if (ret == 0)
        {
            return login;
        }

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        con.Open();
        da.Fill(dt);
        con.Close();



        return null;
    }

	public Login()	
    {
        //
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}