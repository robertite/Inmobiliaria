using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoTC
/// </summary>
public class csMedioPagoTC
{
    public int id { get; set; }
    public int vca_id { get; set; }
    public string fechaDocto { get; set; }
    public int numero_cuota { get; set; }
    public double importe { get; set; }
    public int numero_tran { get; set; }
    public int banco { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }

    public csMedioPagoTC() { }
	public csMedioPagoTC(int _vca_id, string _fechaDocto,
                         int _numero_cuota, double _importe, int _numero_tran,
                         int _banco)
	{
        vca_id = _vca_id;
        fechaDocto = _fechaDocto;
        numero_cuota = _numero_cuota;
        importe = _importe;
        numero_tran = _numero_tran;
        banco = _banco;
       
	}

    public static csMedioPagoTC GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoTC");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTC_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        csMedioPagoTC objMedioPagoTC = new csMedioPagoTC();

        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();



            foreach (DataRow dr in dt.Rows)
            {
                objMedioPagoTC.vca_id = int.Parse(dr[0].ToString());
                objMedioPagoTC.fechaDocto = dr[1].ToString();
                objMedioPagoTC.importe = double.Parse(dr[2].ToString());
                objMedioPagoTC.numero_cuota = int.Parse(dr[3].ToString()); 
                objMedioPagoTC.numero_tran = int.Parse(dr[4].ToString());
                objMedioPagoTC.banco = int.Parse(dr[5].ToString());
                
            }
            return objMedioPagoTC;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csMedioPagoTC.cs", "GetById", ex.ToString(), DateTime.Now);
            return null;

        }

    }
    public void Insert()
    {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoTC_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@numero_tran", SqlDbType.BigInt).Value = numero_tran;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = fechaDocto;
        cmd.Parameters.AddWithValue("@importe", SqlDbType.BigInt).Value = importe;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.BigInt).Value = vca_id;
        cmd.Parameters.AddWithValue("@est_id", SqlDbType.Char).Value = 'A';
        cmd.Parameters.AddWithValue("@banco", SqlDbType.Int).Value = banco;
        cmd.Parameters.AddWithValue("@numerocuota", SqlDbType.Int).Value = numero_cuota;

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
            GlobalClass.SaveLog("MedioPagoTC.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }

    }
   
}