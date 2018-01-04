using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csProducto
/// </summary>
public class csProducto
{
    public string id { get; set; }
    public string descripcion { get; set; }
    public double precio { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }

	public csProducto()	{}
    public csProducto(string _id,string _descripcion,double _precio,string _est_id) {

        id = _id;
        descripcion = _descripcion;
        precio = _precio;
        est_id = _est_id;
    }
    public csProducto(string _id, string _descripcion, double _precio)
    {

        id = _id;
        descripcion = _descripcion;
        precio = _precio;
      
    }

    public void Insert()
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Producto_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pro_id", SqlDbType.NVarChar).Value = id;
        cmd.Parameters.AddWithValue("@pro_descripcion", SqlDbType.NVarChar).Value = descripcion;
        cmd.Parameters.AddWithValue("@pro_precio", SqlDbType.BigInt).Value = precio;
        cmd.Parameters.AddWithValue("@pro_est_id", SqlDbType.Char).Value = est_id;
       
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
            GlobalClass.SaveLog("Producto.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
    }
    public void GetById(string id)
    {
        DataTable dt = new DataTable("Producto");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Producto_GetById";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@id", SqlDbType.NVarChar).Value = id;
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
            GlobalClass.SaveLog("Producto.cs", "GetById", ex.ToString(), DateTime.Now);
           
        }

 

    }
    public List<csProducto> GetAll()
    {
        List<csProducto> lstProducto = new List<csProducto>();
        DataTable dt = new DataTable("Producto");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Producto_GetAll";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

        foreach(DataRow dr in dt.Rows)
        {
            lstProducto.Add(new csProducto(dr[0].ToString(),dr[1].ToString(),double.Parse(dr[2].ToString())));
        }

        return lstProducto;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Producto.cs", "GetById", ex.ToString(), DateTime.Now);
            return null;
        }
    }
    public void armaObjeto(DataTable dt)
    {
        foreach (DataRow dr in dt.Rows)
        {
            id = dr[0].ToString();
            descripcion= dr[1].ToString();
            precio = double.Parse(dr[2].ToString());
            est_id = dr[3].ToString();           
            estado_transaccion = "cargado";

        }

    }
}