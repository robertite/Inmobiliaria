using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csPagoCuota
/// </summary>
public class csPagoCuota
{
    public int id { get; set; }
    public int pcs_id { get; set; }
    public int numero_cuota_pagada { get; set; }
    public string forma_pago { get; set; }
    public string fecha_pago { get; set; }
    public string estado_transaccion { get; set; }

	public csPagoCuota() {}

    public csPagoCuota(int _id, int _pcs_id, int _numero_cuota_pagada, string _formaPago, string _fechaPago) {

        id = _id;
        pcs_id = _pcs_id;
        numero_cuota_pagada = _numero_cuota_pagada;
        forma_pago = _formaPago;
        fecha_pago = _fechaPago;
    
    }

    public List<csPagoCuota> GetByVcaId(int vcaId)
    {
        DataTable dt = new DataTable("PagoCuota");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "PagoCuota_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vcaId", SqlDbType.Int).Value = vcaId;
        SqlDataAdapter da = new SqlDataAdapter();

        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            return armaObjeto(dt);
        }
        catch (Exception ex) { GlobalClass.SaveLog("csPagoCuota", "GetByVcaId", ex.ToString(), DateTime.Now); return null; }
    }
    public List<csPagoCuota> armaObjeto(DataTable dt)
    {
        try
        {
            List<csPagoCuota> lstPagoCuota = new List<csPagoCuota>();
            foreach (DataRow dr in dt.Rows)
            {
                lstPagoCuota.Add(new csPagoCuota(
                id = int.Parse(dr[0].ToString()),
                pcs_id = int.Parse(dr[1].ToString()),
                numero_cuota_pagada = int.Parse(dr[2].ToString()),
                forma_pago = dr[3].ToString(),
                fecha_pago = dr[4].ToString()
                ));



            }
            return lstPagoCuota;
        }
        catch (Exception ex) { GlobalClass.SaveLog("csPagoCuota", "armaObjeto", ex.ToString(), DateTime.Now); return null; }
    }

    public void Insert() {

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        DateTime dt = Convert.ToDateTime(fecha_pago);


        cmd.CommandText = "PagoCuota_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pcu_pcs_id", SqlDbType.BigInt).Value = pcs_id;
        cmd.Parameters.AddWithValue("@pcu_fecha_pago", SqlDbType.DateTime).Value = Convert.ToDateTime(dt, DateTimeFormatInfo.InvariantInfo);
        cmd.Parameters.AddWithValue("@pcu_numero_cuota", SqlDbType.Int).Value = numero_cuota_pagada;
        cmd.Parameters.AddWithValue("@pcu_forma_pago", SqlDbType.NVarChar).Value = forma_pago;
        cmd.Parameters.AddWithValue("@pcu_est_id", SqlDbType.Char).Value = 'A';
        try
        {
            con.Open();
           int ret = cmd.ExecuteNonQuery();
            con.Close();


            if (ret == 2)
            {
                estado_transaccion = "Pago de Cuota registrado Exitosamente";
            }
            else {
                estado_transaccion = "Error registrando Pago";
            }

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csPagoCuota.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error registrando Pago de Cuota";
        }
    }

    public csPagoCuota GetById(int id)
    {
        DataTable dt = new DataTable("PagoCuota");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "PagoCuota_GetById";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
        SqlDataAdapter da = new SqlDataAdapter();

        csPagoCuota pagoCuota = null;

        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            pagoCuota = new csPagoCuota(int.Parse(dt.Rows[0][0].ToString()), int.Parse(dt.Rows[0][1].ToString()), int.Parse(dt.Rows[0][2].ToString()), dt.Rows[0][3].ToString(), dt.Rows[0][4].ToString());
            
            return pagoCuota;

        }
        catch (Exception ex) { GlobalClass.SaveLog("csPagoCuota", "GetByVcaId", ex.ToString(), DateTime.Now); return null; }
    }
}