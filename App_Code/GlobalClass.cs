using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de GlobalClass
/// </summary>
public class GlobalClass
{
    public static string conexion = ConfigurationManager.ConnectionStrings["conn"].ToString();
    public GlobalClass() { }

    public static void SaveLog(string clase, string metodo, string error, DateTime fecha)
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Log_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@clase", SqlDbType.NVarChar).Value = clase;
        cmd.Parameters.AddWithValue("@metodo", SqlDbType.NVarChar).Value = metodo;
        cmd.Parameters.AddWithValue("@error", SqlDbType.NVarChar).Value = error;
        cmd.Parameters.AddWithValue("@fecha", SqlDbType.DateTime).Value = fecha;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        
    }

    public string absoluteUrl(string Url)
    {
        string strUrl;
        int index = Url.IndexOf('?');
        if (index >= 0)
        {
            strUrl = Url.Substring(0, index);
        }
        else {
            strUrl = Url;
        }
        return strUrl;

    }
    
}