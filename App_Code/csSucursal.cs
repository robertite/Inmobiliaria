using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csSucursal
/// </summary>
public class csSucursal
{
    public int id { get; set; }
    public string descripcion { get; set; }
    public string direccion { get; set; }
    public string estado { get; set; }
	public csSucursal()	{	}
    public csSucursal(int _id, string _descripcion, string _direccion, string _estado) {

        id = _id;
        descripcion = _descripcion;
        direccion = _direccion;
        estado = _estado;
    }
    public List<csSucursal> GetAll()
    {
        List<csSucursal> lstSucursal = new List<csSucursal>();
        DataTable dt = new DataTable("Sucursal");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Sucursal_GetAll";
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
                lstSucursal.Add(new csSucursal(int.Parse(dr[0].ToString()), dr[1].ToString(), dr[2].ToString(), dr[3].ToString()));
            }

            return lstSucursal;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Sucursal.cs", "GetAll", ex.ToString(), DateTime.Now);
            return null;           
        }
    }
}