using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoEF
/// </summary>
public class csMedioPagoEF
{
    public int id { get; set; }
    public int vca_id { get; set; }
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }


    public csMedioPagoEF( int _vca_id,
                         string _fecha_docto, double _importe, string _est_id)
    {
        vca_id = _vca_id;
        fechaDocto = _fecha_docto;
        importe = _importe;
  
  
    }
    public csMedioPagoEF() { }

    public static csMedioPagoEF GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoEF");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoEF_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        csMedioPagoEF objMedioPagoEF = new csMedioPagoEF();

        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                objMedioPagoEF.vca_id = int.Parse(dt.Rows[0][0].ToString());
                objMedioPagoEF.fechaDocto = dt.Rows[0][1].ToString();
                objMedioPagoEF.importe = double.Parse(dt.Rows[0][2].ToString());
            }
            return objMedioPagoEF;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("MedioPagoEF.cs", "GetById", ex.ToString(), DateTime.Now);
            return null;

        }

    }
    public void Insert()
    {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        DateTime dt = Convert.ToDateTime(fechaDocto);

        cmd.CommandText = "MedioPagoEF_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.BigInt).Value = vca_id;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = Convert.ToDateTime(dt, DateTimeFormatInfo.InvariantInfo); ;
        cmd.Parameters.AddWithValue("@importe", SqlDbType.BigInt).Value = importe;
        cmd.Parameters.AddWithValue("@est_id", SqlDbType.Char).Value = 'A';


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
            GlobalClass.SaveLog("MedioPagoEF.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = ex.ToString();
        }

    }
}