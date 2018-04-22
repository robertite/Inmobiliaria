using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoCS
/// </summary>
public class csMedioPagoCS
{
    public int id { get; set; }
    public int vca_id { get; set; }
    public string cli_rut { get; set; }
    public string cli_nombre { get; set; }
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public int numero_cuota { get; set; }
    public int numero_cuota_pagada { get; set; }
    public double monto_cuota { get; set; }
    public string estado_transaccion { get; set; }
    public List<csPagoCuota> lstPagoCuota { get; set; }

    public csMedioPagoCS() { }
    public csMedioPagoCS(int _vca_id, string _cli_rut, string _cli_nombre, string _fechaDocto,
                         double _importe, int _numero_cuota, int _numero_cuota_pagada,
                         double _monto_cuota)
    {
        vca_id = _vca_id;
        cli_rut = _cli_rut;
        cli_nombre = _cli_nombre;
        fechaDocto = _fechaDocto;
        importe = _importe;
        numero_cuota = _numero_cuota;
        numero_cuota_pagada = _numero_cuota_pagada;
        monto_cuota = _monto_cuota;

    }
    public csMedioPagoCS(int _id, int _vca_id, string _cli_rut, string _cli_nombre, string _fechaDocto,
                     double _importe, int _numero_cuota, int _numero_cuota_pagada,
                     double _monto_cuota, List<csPagoCuota> _lstPagoCuota)
    {
        id = _id;
        vca_id = _vca_id;
        cli_rut = _cli_rut;
        cli_nombre = _cli_nombre;
        fechaDocto = _fechaDocto;
        importe = _importe;
        numero_cuota = _numero_cuota;
        numero_cuota_pagada = _numero_cuota_pagada;
        monto_cuota = _monto_cuota;
        lstPagoCuota = _lstPagoCuota;

    }

    public static csMedioPagoCS GetByVcaId(int _vca_id)
    {
        DataTable dt = new DataTable("MedioPagoCS");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoCS_GetByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.NVarChar).Value = _vca_id;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        csMedioPagoCS objMedioPagoCS = new csMedioPagoCS();

        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

            foreach (DataRow dr in dt.Rows)
            {
                objMedioPagoCS.vca_id = int.Parse(dr[0].ToString());
                objMedioPagoCS.fechaDocto = dr[1].ToString();
                objMedioPagoCS.cli_rut = dr[2].ToString();
                objMedioPagoCS.cli_nombre = dr[3].ToString();
                objMedioPagoCS.importe = double.Parse(dr[4].ToString());
                objMedioPagoCS.numero_cuota = int.Parse(dr[5].ToString());
                objMedioPagoCS.numero_cuota_pagada = int.Parse(dr[6].ToString());
                objMedioPagoCS.monto_cuota = double.Parse(dr[7].ToString());

            }
            return objMedioPagoCS;
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
        SqlParameter param = new SqlParameter("@retorno", SqlDbType.NVarChar, 50);
        param.Direction = ParameterDirection.Output;
        

        cmd.CommandText = "MedioPagoCS_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.BigInt).Value = vca_id;
        cmd.Parameters.AddWithValue("@fechaDocto", SqlDbType.DateTime).Value = Convert.ToDateTime(Convert.ToDateTime(fechaDocto), DateTimeFormatInfo.InvariantInfo);
        cmd.Parameters.AddWithValue("@importe", SqlDbType.BigInt).Value = importe;
        cmd.Parameters.AddWithValue("@numero_cuota", SqlDbType.BigInt).Value = numero_cuota;
        cmd.Parameters.AddWithValue("@numero_cuota_pagada", SqlDbType.Int).Value = numero_cuota_pagada;
        cmd.Parameters.AddWithValue("@monto_cuota", SqlDbType.BigInt).Value = monto_cuota;
        cmd.Parameters.AddWithValue("@est_id", SqlDbType.Char).Value = 'A';
        cmd.Parameters.Add(param);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (int.Parse(param.Value.ToString()) == -1)
            {
                estado_transaccion = "-1";
            }
            if (int.Parse(param.Value.ToString()) == -2)
            {
                estado_transaccion = "-2";
            }
            else
            {
                estado_transaccion = "Actualizado Exitosamente";
            }



        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("MedioPagoCS.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = ex.ToString();
        }


    }
    public void ValidaCredito()
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        SqlParameter param = new SqlParameter("@retorno", SqlDbType.NVarChar, 50);
        param.Direction = ParameterDirection.Output;

        cmd.CommandText = "MedioPagoCS_ValidaCredito";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@cli_rut", SqlDbType.NVarChar).Value = cli_rut;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.Int).Value = vca_id;
        cmd.Parameters.Add(param);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (int.Parse(param.Value.ToString()) >= 2)
            {
                estado_transaccion = "-3";
            }
            else
            {
                estado_transaccion = "";
            }


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("MedioPagoCS.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
    }
    public List<csMedioPagoCS> GetByParams()
    {
        DataTable dt = new DataTable("Credito");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "MedioPagoCS_GetByParams";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.Int).Value = vca_id;
        cmd.Parameters.AddWithValue("@cli_rut", SqlDbType.Int).Value = cli_rut;
        SqlDataAdapter da = new SqlDataAdapter();



        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();


            return armaObjeto(dt);
             


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csMedioPagoCS.cs", "GetByParams", ex.ToString(), DateTime.Now);
            return null;
        }

    }
    public List<csMedioPagoCS> armaObjeto(DataTable dt)
    {
        List<csMedioPagoCS> lstMedioPagoCS = new List<csMedioPagoCS>();
        List<csPagoCuota> listaPagoCuota = null;
        csPagoCuota pagoCuota = null;
        try
        {
            foreach (DataRow dr in dt.Rows)
            {

                if (dt.Rows.Count == 1)
                {
                    pagoCuota = new csPagoCuota();
                    listaPagoCuota = pagoCuota.GetByVcaId(vca_id);
                }

                lstMedioPagoCS.Add(new csMedioPagoCS(
                id = int.Parse(dr[0].ToString()),
                vca_id = int.Parse(dr[1].ToString()),
                cli_rut = dr[2].ToString(),
                cli_nombre = dr[3].ToString(),
                fechaDocto = dr[4].ToString(),
                importe = double.Parse(dr[5].ToString()),
                numero_cuota = int.Parse(dr[6].ToString()),
                numero_cuota_pagada = int.Parse(dr[7].ToString()),
                monto_cuota = double.Parse(dr[8].ToString()),
                lstPagoCuota = listaPagoCuota)
                );




            }
            return lstMedioPagoCS;

        }
        catch (Exception ex) { GlobalClass.SaveLog("csMedioPagoCS", "armaObjeto", ex.ToString(), DateTime.Now); return null; }
        finally {

            listaPagoCuota = null;
            pagoCuota = null;
           
            
        }
    }
}