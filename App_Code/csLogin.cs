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
public class csLogin
{
    public string email { get; set; }
    public string pass { get; set; }
    public List<csPerfil> lstPerfil { get; set; }

    public string estado_transaccion { get; set; }

    public void GetLogin() {

       
            DataTable dt = new DataTable("Login");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.Connection = con;
            cmd.CommandText = "LoadPerfilByUser";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", SqlDbType.NVarChar).Value = email;
            cmd.Parameters.AddWithValue("@contrasena", SqlDbType.NVarChar).Value = pass;
            da.SelectCommand = cmd;
        try
        {
            con.Open();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count == 0)
            {
                //El email o contraseña son incorrectos verifique que el usuario no este deshabilitado
                estado_transaccion = "-1";
                return;
            }

            else
            {
                lstPerfil = new List<csPerfil>();
                foreach (DataRow dr in dt.Rows)
                {
                    lstPerfil.Add(new csPerfil(dr[0].ToString(), dr[1].ToString(), dr[2].ToString()));
                }
            }

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csLogin.cs", "GetLogin", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
        finally {

            cmd = null;
            GC.Collect();

        }

          
    }

	
}