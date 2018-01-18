using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csVentaDetalle
/// </summary>
public class csVentaDetalle
{
    public int vde_id { get; set; }
    public int vde_vca_id { get; set; }
    public string vde_pro_id { get; set; }
    public string vde_pro_descripcion { get; set; }
    public int vde_cantidad { get; set; }
    public double vde_total { get; set; }
    public string vde_est_id { get; set; }
    public int vde_precio_unitario { get; set; }
    public string estado_transaccion { get; set; }


    public csVentaDetalle() { }

    public csVentaDetalle(int _vde_id, int _vde_vca_id, string _vde_pro_id,
                          int _vde_cantidad, double _vde_total, string _vde_est_id, int _vde_precio_unitario, string _vde_pro_descripcion)
    {

        vde_id = _vde_id;
        vde_vca_id = _vde_vca_id;
        vde_pro_id = _vde_pro_id;
        vde_cantidad = _vde_cantidad;
        vde_total = _vde_total;
        vde_est_id = _vde_est_id;
        vde_precio_unitario = _vde_precio_unitario;
        vde_pro_descripcion = _vde_pro_descripcion;
    }



    public void Insert()
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaDetalle_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vde_id", SqlDbType.BigInt).Value = vde_id;
        cmd.Parameters.AddWithValue("@vde_vca_id", SqlDbType.Int).Value = vde_vca_id;
        cmd.Parameters.AddWithValue("@vde_pro_id", SqlDbType.NVarChar).Value = vde_pro_id;
        cmd.Parameters.AddWithValue("@vde_cantidad", SqlDbType.DateTime).Value = vde_cantidad;
        cmd.Parameters.AddWithValue("@vde_total", SqlDbType.Int).Value = vde_total;
        cmd.Parameters.AddWithValue("@vde_est_id", SqlDbType.Text).Value = vde_est_id;
        cmd.Parameters.AddWithValue("@vde_precio_unitario", SqlDbType.Text).Value = vde_precio_unitario;
        cmd.Parameters.AddWithValue("@vde_pro_descripcion", SqlDbType.NVarChar).Value = vde_pro_descripcion;

        try
        {
            con.Open();
            int ret = cmd.ExecuteNonQuery();
            con.Close();

            if (ret != 0)
            {
                estado_transaccion = "Registrado Exitosamente";
            }


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaDetalle.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
    }
    public static List<csVentaDetalle> GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("VentaDetalle");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaDetalle_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.Int).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        List<csVentaDetalle> lstVentaDetalle = new List<csVentaDetalle>();

        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                lstVentaDetalle.Add(new csVentaDetalle(
                    int.Parse(dr[0].ToString()),
                    int.Parse(dr[1].ToString()),
                    dr[2].ToString(),
                    int.Parse(dr[3].ToString()),
                    double.Parse(dr[4].ToString()),
                    dr[5].ToString(),
                    int.Parse(dr[6].ToString()),
                    dr[7].ToString()));

            }

            return lstVentaDetalle;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaDetalle.cs", "GetByVcaId", ex.ToString(), DateTime.Now);
            return null;
        }



    }
    public void GetById(int _vde_id)
    {
        DataTable dt = new DataTable("VentaDetalle");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaDetalle_GetById";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vde_id", SqlDbType.Int).Value = _vde_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            armaObjeto(dt);


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaDetalle.cs", "GetById", ex.ToString(), DateTime.Now);

        }



    }
    public void armaObjeto(DataTable dt)
    {
        foreach (DataRow dr in dt.Rows)
        {
            vde_id = int.Parse(dr[0].ToString());
            vde_vca_id = int.Parse(dr[1].ToString());
            vde_pro_id = dr[2].ToString();
            vde_cantidad = int.Parse(dr[3].ToString());
            vde_total = double.Parse(dr[4].ToString());
            vde_est_id = dr[5].ToString();
            vde_precio_unitario = int.Parse(dr[6].ToString());
            vde_pro_descripcion = dr[7].ToString();
            estado_transaccion = "cargado";
        }

    }


}