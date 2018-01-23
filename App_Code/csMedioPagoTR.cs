using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoTR
/// </summary>
public class csMedioPagoTR
{
	
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public int banco { get; set; }
    public int vca_id { get; set; }
    public int numero_transaccion { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }


    public csMedioPagoTR(string _fechaDocto, double _importe,
                         int _banco, int _vca_id, int _numero_transaccion,
                         string _est_id)
    {
       
        fechaDocto = _fechaDocto;
        importe = _importe;
        banco = _banco;
        vca_id = _vca_id;
        numero_transaccion = _numero_transaccion;
        est_id = _est_id;
    }
    public csMedioPagoTR() { }

    public static csMedioPagoTR GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoTR");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTR_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        csMedioPagoTR objMedioPagoTR = new csMedioPagoTR();
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();



            foreach (DataRow dr in dt.Rows)
            {
                objMedioPagoTR.fechaDocto = dr[0].ToString();
                objMedioPagoTR.importe = double.Parse(dr[1].ToString());
                objMedioPagoTR.banco = int.Parse(dr[2].ToString());
                objMedioPagoTR.vca_id = int.Parse(dr[3].ToString());
                objMedioPagoTR.numero_transaccion = int.Parse(dr[4].ToString());
               
            }
            return objMedioPagoTR;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csMedioPagoTR.cs", "GetById", ex.ToString(), DateTime.Now);
            return null;

        }
        
    }
    public void Insert()
    {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTR_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@numeroTransaccion", SqlDbType.BigInt).Value = numero_transaccion;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = Convert.ToDateTime(Convert.ToDateTime(fechaDocto), DateTimeFormatInfo.InvariantInfo); ;
        cmd.Parameters.AddWithValue("@importe", SqlDbType.BigInt).Value = importe;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.BigInt).Value = vca_id;
        cmd.Parameters.AddWithValue("@est_id", SqlDbType.Char).Value = 'A';
        cmd.Parameters.AddWithValue("@banco", SqlDbType.Int).Value = banco;

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
            GlobalClass.SaveLog("MedioPagoCH.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = ex.ToString();
        }

    }
}