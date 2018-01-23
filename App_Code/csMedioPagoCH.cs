using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoCH
/// </summary>
public class csMedioPagoCH
{
    public int numeroCheque { get; set; }
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public int banco { get; set; }
    public int vca_id { get; set; }
    public string est_id { get; set; }
    public string estado_transaccion { get; set; }


    public csMedioPagoCH(int _numeroCheque, string _fechaDocto,
                         double _importe, int _banco, int _vca_id)
    {
        numeroCheque = _numeroCheque;
        fechaDocto = _fechaDocto;
        importe = _importe;
        banco = _banco;
        vca_id = _vca_id;
    }
    public csMedioPagoCH() { }

    public static List<csMedioPagoCH> GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoCH");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoCH_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        List<csMedioPagoCH> lstMedioPagoCH = new List<csMedioPagoCH>();
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                lstMedioPagoCH.Add(new csMedioPagoCH(int.Parse(dr[0].ToString()), dr[1].ToString(), double.Parse(dr[2].ToString()), int.Parse(dr[3].ToString()),int.Parse(dr[4].ToString())));
            }

            return lstMedioPagoCH;
        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csMedioPagoCH.cs", "GetByVcaId", ex.ToString(), DateTime.Now);
            return null;

        }
        
    }
    public void Insert()
    {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        DateTime dt = Convert.ToDateTime(fechaDocto);

        cmd.CommandText = "MedioPagoCH_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@numeroCheque", SqlDbType.Int).Value = numeroCheque;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = Convert.ToDateTime(dt, DateTimeFormatInfo.InvariantInfo);
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