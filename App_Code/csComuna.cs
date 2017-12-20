using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csComuna
/// </summary>
public class csComuna
{
	public string id { get; set; }
    public string descripcion { get; set; }
    public string reg_id { get; set; }
    public string estado { get; set; }
    public csComuna() { }
    public csComuna(string _id, string _descripcion, string _reg_id, string _estado)
    {

        id = _id;
        descripcion = _descripcion;
        reg_id = _reg_id;
        estado = _estado;

    }

    public List<csComuna> GetAllComuna()
    {

        List<csComuna> lstComuna = new List<csComuna>();
        DataTable dt = new DataTable("Comuna");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Comuna_GetAll";
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
                lstComuna.Add(new csComuna(dr[0].ToString(), dr[1].ToString(), dr[2].ToString(), dr[3].ToString()));
            }

            return lstComuna;


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Comuna.cs", "GetAllComuna", ex.ToString(), DateTime.Now);
            return null;
        }

       
    }
}