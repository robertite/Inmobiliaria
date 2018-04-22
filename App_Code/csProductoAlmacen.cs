using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csAlmacen
/// </summary>
public class csProductoAlmacen
{
    public int alm_id { get; set; }
    public string alm_nombre { get; set; }
    public string alm_estado { get; set; }
    public int alm_stock { get; set; }
    public string estado_transaccion { get; set; }
   

    public csProductoAlmacen() { }

    public csProductoAlmacen(int _alm_id, string _alm_nombre, string _alm_estado, int _alm_stock)
    {

        alm_id = _alm_id;
        alm_nombre = _alm_nombre;
        alm_estado = _alm_estado;
        alm_stock = _alm_stock;

    }

    public List<csProductoAlmacen> GetAlmacenByProductoId(string id)
    {
        DataTable dt = new DataTable("ProductoAlmacen");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Almacen_GetByProductoId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pro_id", SqlDbType.NVarChar).Value = id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        List<csProductoAlmacen> lstProductoAlmacen = new List<csProductoAlmacen>();
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                lstProductoAlmacen.Add(new csProductoAlmacen(int.Parse(dr[0].ToString()), dr[1].ToString(), dr[2].ToString(), int.Parse(dr[3].ToString())));
            }
            return lstProductoAlmacen;

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("ProductoAlmacen.cs", "GetAlmacenByProductoId", ex.ToString(), DateTime.Now);
            return null;
        }



    }

    public void SetAlmacenByProductId(string pro_id)
    {
        try
        {
            List<csAlmacen> lstAlmacen = new List<csAlmacen>();
            csAlmacen almacen = new csAlmacen();
            lstAlmacen = almacen.GetAll();

            foreach (csAlmacen item in lstAlmacen)
            {

                DataTable dt = new DataTable("ProductoAlmacen");
                SqlConnection con = new SqlConnection(GlobalClass.conexion);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "ProductoAlmacen_SetByProductId";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@pro_id", SqlDbType.NVarChar).Value = pro_id;
                cmd.Parameters.AddWithValue("@alm_id", SqlDbType.Int).Value = item.alm_id;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                con.Open();
                da.Fill(dt);
                con.Close();

                estado_transaccion = "Producto Registrado Exitosamente";
            }


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csProductoAlmacen.cs", "SetAlmacenByProductId", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error creando almacen";
        }

    }

    public void Stock_Add(string pro_id)
    {
        DataTable dt = new DataTable("ProductoAlmacen");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "ProductoAlmacen_StockAdd";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pro_id", SqlDbType.NVarChar).Value = pro_id;
        cmd.Parameters.AddWithValue("@alm_id", SqlDbType.Int).Value = alm_id;
        cmd.Parameters.AddWithValue("@stock", SqlDbType.Int).Value = alm_stock;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            estado_transaccion = "";

        }
        catch (Exception ex) {
            GlobalClass.SaveLog("csProductoAlmacen.cs", "Stock_Add", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error actualizando Stock";
        }
        }

}