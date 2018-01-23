using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoTD
/// </summary>
public class csMedioPagoTD
{
    public int id { get; set; }
    public int vca_id { get; set; }
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public int numero_tran { get; set; }
    public int banco { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }

	public csMedioPagoTD()
	{	}
    public csMedioPagoTD(int _vca_id, string _fechaDocto,
                         double _importe, int _numero_tran,
                         int _banco)
	{
        vca_id = _vca_id;
        fechaDocto = _fechaDocto;
        importe = _importe;
        numero_tran = _numero_tran;
        banco = _banco;
       
	}

    public static csMedioPagoTD GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoTD");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTD_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        csMedioPagoTD objMedioPagoTD = new csMedioPagoTD();

        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();



            foreach (DataRow dr in dt.Rows)
            {
                objMedioPagoTD.vca_id = int.Parse(dr[0].ToString());
                objMedioPagoTD.fechaDocto = dr[1].ToString();
                objMedioPagoTD.importe = double.Parse(dr[2].ToString());
                objMedioPagoTD.numero_tran = int.Parse(dr[3].ToString());
                objMedioPagoTD.banco = int.Parse(dr[4].ToString());

            }
            return objMedioPagoTD;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csMedioPagoTD.cs", "GetById", ex.ToString(), DateTime.Now);
            return null;

        }

    }
    public void Insert()
    {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTD_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@numero_tran", SqlDbType.BigInt).Value = numero_tran;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = Convert.ToDateTime(Convert.ToDateTime(fechaDocto), DateTimeFormatInfo.InvariantInfo);
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
            GlobalClass.SaveLog("MedioPagoTD.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = ex.ToString();
        }

    }
}