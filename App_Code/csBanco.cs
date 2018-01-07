using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csBanco
/// </summary>
public class csBanco
{
	 public int id { get; set; }
    public string descripcion { get; set; }
    public string est_id { get; set; }
    
	public csBanco()	{	}
    public csBanco(int _id, string _descripcion, string _est_id)
    {

        id = _id;
        descripcion = _descripcion;
        est_id = _est_id;
    }
    public List<csBanco> GetAll()
    {
        List<csBanco> lstBanco = new List<csBanco>();
        DataTable dt = new DataTable("Banco");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Banco_GetAll";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                lstBanco.Add(new csBanco(int.Parse(dr[0].ToString()), dr[1].ToString(), dr[2].ToString()));
            }

            return lstBanco;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Banco.cs", "GetAll", ex.ToString(), DateTime.Now);
            return null;           
        }
    }
}