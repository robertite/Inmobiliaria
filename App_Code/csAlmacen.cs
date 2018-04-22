using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Almacen
/// </summary>
public class csAlmacen
{
     public int alm_id {get;set;}
     public string alm_nombre {get;set;}
     public string alm_calle {get;set;}
     public int alm_numero {get;set;}
     public int alm_suc_id {get;set;}
     public int alm_com_id {get;set;}
     public string alm_est_id { get; set; }

     public csAlmacen() { }
     public csAlmacen(int _alm_id, string _alm_nombre, string _alm_calle, int _alm_numero, int _alm_suc_id, int _alm_com_id, string _alm_est_id)
	 {
         alm_id = _alm_id;
         alm_nombre = _alm_nombre;
         alm_calle = _alm_calle;
         alm_numero = _alm_numero;
         alm_suc_id = _alm_suc_id;
         alm_com_id = _alm_com_id;
         alm_est_id = _alm_est_id;
	 }

     public List<csAlmacen> GetAll()
     {
         DataTable dt = new DataTable("Almacen");
         SqlConnection con = new SqlConnection(GlobalClass.conexion);
         SqlCommand cmd = new SqlCommand();
         
         cmd.CommandText = "Almacen_GetAll";
         cmd.CommandType = System.Data.CommandType.StoredProcedure;
         cmd.Connection = con;        
         SqlDataAdapter da = new SqlDataAdapter();
         da.SelectCommand = cmd;
         List<csAlmacen> lstAlmacen = new List<csAlmacen>();
         try
         {

             con.Open();
             da.Fill(dt);
             con.Close();

             foreach (DataRow dr in dt.Rows)
             {
                 lstAlmacen.Add(new csAlmacen(int.Parse(dr[0].ToString()), dr[1].ToString(), dr[2].ToString(), int.Parse(dr[3].ToString()), int.Parse(dr[4].ToString()),int.Parse(dr[4].ToString()),dr[4].ToString()));
             }
             return lstAlmacen;

         }
         catch (Exception ex)
         {
             GlobalClass.SaveLog("ProductoAlmacen.cs", "GetAlmacenByProductoId", ex.ToString(), DateTime.Now);
             return null;
         }
     }

}