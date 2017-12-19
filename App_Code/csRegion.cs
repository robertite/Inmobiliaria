using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csRegion
/// </summary>
public class csRegion
{
    public string id { get; set; }
    public string descripcion { get; set; }
    public string orden { get; set; }
    public string estado { get; set; }
    public csRegion() { }
    public csRegion(string _id, string _descripcion, string _orden, string _estado)
    {

        id = _id;
        descripcion = _descripcion;
        orden = _orden;
        estado = _estado;

    }

    public List<csRegion> GetAllRegion()
    {

        List<csRegion> lstRegion = new List<csRegion>();
        DataTable dt = new DataTable("Region");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Region_GetAll";
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
                lstRegion.Add(new csRegion(dr[0].ToString(), dr[1].ToString(), dr[2].ToString(), dr[3].ToString()));
            }

            return lstRegion;


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Region.cs", "GetAllRegion", ex.ToString(), DateTime.Now);
            return null;
        }

       
    }

}