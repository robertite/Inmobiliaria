﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csVentaCabecera
/// </summary>
public class csVentaCabecera
{
    public int vca_id { get; set; }
    public int vca_folio { get; set; }
    public string vca_cli_rut { get; set; }
    public string vca_fecha_docto { get; set; }
    public int vca_suc_id { get; set; }
    public string vca_comentario { get; set; }
    public string vca_tipo_doc { get; set; }
    public double vca_impuesto { get; set; }
    public double vca_total { get; set; }
    public string vca_est_id { get; set; }
    public string vca_estado_docto { get; set; }
    public string vca_emp_rut { get; set; }
    public double vca_totalDescuento { get; set; }
    public int vca_porcDescuento { get; set; }
    public string estado_transaccion { get; set; }
    public List<csVentaDetalle> lstVentaDetalle { get; set; }
    public List<csMedioPagoCH> lstMedioPagoCH { get; set; }
    public csMedioPagoTR objMedioPagoTR { get; set; }
    public csMedioPagoEF objMedioPagoEF { get; set; }
    public csMedioPagoTC objMedioPagoTC { get; set; }
    public csMedioPagoTD objMedioPagoTD { get; set; }
    public csMedioPagoCS objMedioPagoCS { get; set; }
   
	public csVentaCabecera(){}

    public csVentaCabecera(int _vca_id, int _vca_folio, string _vca_cli_rut, string _vca_fecha_docto,
                           int _vca_suc_id, string _vca_comentario,string _vca_tipo_doc,
                           double _vca_impuesto, double _vca_total, string _vca_est_id,
                           string _vca_estado_docto, string _vca_emp_rut, double _vca_totalDescuento, int _vca_porcDescuento)
    {
    
        vca_id = _vca_id;
        vca_folio = _vca_folio;
        vca_cli_rut = _vca_cli_rut;
        vca_fecha_docto = _vca_fecha_docto;
        vca_suc_id = _vca_suc_id;
        vca_comentario = _vca_comentario;
        vca_tipo_doc = _vca_tipo_doc;
        vca_impuesto = _vca_impuesto;
        vca_total = _vca_total;
        vca_est_id = _vca_est_id;
        vca_estado_docto = _vca_estado_docto;
        vca_emp_rut = _vca_emp_rut;
        vca_totalDescuento = _vca_totalDescuento;
        vca_porcDescuento = _vca_porcDescuento;
        lstVentaDetalle = csVentaDetalle.GetByVcaId(vca_id);
        lstMedioPagoCH = csMedioPagoCH.GetByVcaId(vca_id);
        objMedioPagoTR = csMedioPagoTR.GetByVcaId(vca_id);
        objMedioPagoEF = csMedioPagoEF.GetByVcaId(vca_id);
        objMedioPagoTC = csMedioPagoTC.GetByVcaId(vca_id);
        objMedioPagoTD = csMedioPagoTD.GetByVcaId(vca_id);
        objMedioPagoCS = csMedioPagoCS.GetByVcaId(vca_id);
    }

    public static int GetMaxDocNum() {

        DataTable dt = new DataTable("VentaCabecera");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaCabecera_GetMaxDocNum";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();

           

            if (dt.Rows[0][0].ToString().Equals("")) { return 1; }

            return int.Parse(dt.Rows[0][0].ToString()) + 1;


        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaCabecera.cs", "GetById", ex.ToString(), DateTime.Now);
            return 0;
        }
    }
    public void Insert()
    {
        if (objMedioPagoCS != null && objMedioPagoCS.importe > 0)
        {
            if (objMedioPagoCS.numero_cuota > 5)
            {
                estado_transaccion = "Exede Maximo de 5 cuotas";
                
            }
            objMedioPagoCS.ValidaCredito();
            if (!objMedioPagoCS.estado_transaccion.Equals(""))
            {
                estado_transaccion = objMedioPagoCS.estado_transaccion;               
            }
        }

        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        SqlParameter param = new SqlParameter("@retorno", SqlDbType.NVarChar, 50);
        param.Direction = ParameterDirection.Output;
        DateTime dt = Convert.ToDateTime(vca_fecha_docto); //DateTimeFormatInfo.InvariantInfo


        cmd.CommandText = "VentaCabecera_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.BigInt).Value = vca_id;
        cmd.Parameters.AddWithValue("@vca_folio", SqlDbType.Int).Value = vca_folio;
        cmd.Parameters.AddWithValue("@vca_cli_rut", SqlDbType.NVarChar).Value = vca_cli_rut;
        cmd.Parameters.AddWithValue("@vca_fecha_docto", SqlDbType.DateTime).Value = Convert.ToDateTime(dt, DateTimeFormatInfo.InvariantInfo);
        cmd.Parameters.AddWithValue("@vca_suc_id", SqlDbType.Int).Value = vca_suc_id;
        cmd.Parameters.AddWithValue("@vca_comentario", SqlDbType.Text).Value = vca_comentario;
        cmd.Parameters.AddWithValue("@vca_tipo_docto", SqlDbType.NVarChar).Value = vca_tipo_doc;
        cmd.Parameters.AddWithValue("@vca_impuesto", SqlDbType.BigInt).Value = vca_impuesto;
        cmd.Parameters.AddWithValue("@vca_total", SqlDbType.BigInt).Value = vca_total;
        cmd.Parameters.AddWithValue("@vca_est_id", SqlDbType.Char).Value = vca_est_id;
        cmd.Parameters.AddWithValue("@vca_estado_docto", SqlDbType.Char).Value = 'C';
        cmd.Parameters.AddWithValue("@vca_emp_rut", SqlDbType.NVarChar).Value = vca_emp_rut;
        cmd.Parameters.AddWithValue("@vca_totalDescuento", SqlDbType.Decimal).Value = vca_totalDescuento;
        cmd.Parameters.AddWithValue("@vca_porcDescuento", SqlDbType.Int).Value = vca_porcDescuento;
        cmd.Parameters.Add(param);



        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (int.Parse(param.Value.ToString()) == -1)
            {
                estado_transaccion = param.Value.ToString();
                
                

                DeleteByVcaId();
                VentaDetalle_Insert(0);
                if (!estado_transaccion.Equals("-1")) { return; }
                if (lstMedioPagoCH != null)
                {
                    MedioPagoCH_Insert(0);
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                if (objMedioPagoTR != null)
                {
                    MedioPagoTR_Insert();
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                if (objMedioPagoEF != null)
                {
                    MedioPagoEF_Insert();
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                if (objMedioPagoTC != null)
                {
                    MedioPagoTC_Insert();
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                if (objMedioPagoTD != null)
                {
                    MedioPagoTD_Insert();
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                if (objMedioPagoCS != null)
                {
                    MedioPagoCS_Insert();
                }
                if (!estado_transaccion.Equals("-1")) { return; }
                
                
                return;
            }
            else if (int.Parse(param.Value.ToString()) == -2)
            {
                estado_transaccion = param.Value.ToString();
                return;
            }
            else if (int.Parse(param.Value.ToString()) > 0)
            {
                estado_transaccion = param.Value.ToString();
                vca_id = int.Parse(param.Value.ToString());
                
                VentaDetalle_Insert(vca_id);
                
                if (lstMedioPagoCH != null)
                {
                    MedioPagoCH_Insert(vca_id);
                }
              
                if (objMedioPagoTR != null)
                {
                    MedioPagoTR_Insert();
                }
               
                if (objMedioPagoEF != null)
                {
                    MedioPagoEF_Insert();
                }
               
                if (objMedioPagoTC != null)
                {
                    MedioPagoTC_Insert();
                }
             
                if (objMedioPagoTD != null)
                {
                    MedioPagoTD_Insert();
                }
              
                if (objMedioPagoCS != null)
                {
                    MedioPagoCS_Insert();
                }
             
                
                return;
            }

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaCabecera.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
    }

   

    private void DeleteByVcaId() {
        
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaDetalle_DeleteByVcaId";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.Int).Value = vca_id;
       
       
        try
        {

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaCabecera.cs", "DeleteByVcaId", ex.ToString(), DateTime.Now);

        }
    }
    private void VentaDetalle_Insert(int _vca_id)
    {
        try
        {
            foreach (csVentaDetalle item in lstVentaDetalle)
            {
                if (_vca_id > 0)
                {
                    
                    item.vde_vca_id = _vca_id;

                    if (objMedioPagoTR != null) { objMedioPagoTR.vca_id = _vca_id; }
                    if (objMedioPagoCS != null) { objMedioPagoCS.vca_id = _vca_id; }
                    if (objMedioPagoEF != null) { objMedioPagoEF.vca_id = _vca_id; }
                    if (objMedioPagoTC != null) { objMedioPagoTC.vca_id = _vca_id; }
                    if (objMedioPagoTD != null) { objMedioPagoTD.vca_id = _vca_id; }
                    
                }

                item.Insert();
            }
        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "VentaDetalle_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en venta detalle";
        }
    }
    private void MedioPagoCH_Insert(int _vca_id) {
        try
        {
            foreach (csMedioPagoCH item in lstMedioPagoCH)
            {
                if (_vca_id > 0)
                {

                    item.vca_id = _vca_id;
                }
                item.Insert();
            }
        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoCH_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Cheque";
        }

    }
   
    private void MedioPagoTR_Insert()
    {
        try
        {         
                objMedioPagoTR.Insert();
           
        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoTR_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Transferencia";
        }

    }
    private void MedioPagoEF_Insert()
    {
        try
        {
            objMedioPagoEF.Insert();

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoEF_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Efectivo";
        }

    }
    private void MedioPagoTC_Insert()
    {
        try
        {
            objMedioPagoTC.Insert();

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoTC_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Tarjeta Credito";
        }

    }
    private void MedioPagoTD_Insert()
    {
        try
        {
            objMedioPagoTD.Insert();

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoTD_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Tarjeta Debito";
        }

    }
    private void MedioPagoCS_Insert()
    {
        try
        {
            objMedioPagoCS.Insert();

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("csVentaCabecera.cs", "MedioPagoCS_Insert", ex.ToString(), DateTime.Now);
            DeleteByVcaId();
            estado_transaccion = "Error en Medio Pago Credito Simple";
        }

    }
    public List<csVentaCabecera> GetByParams()
    {
        DataTable dt = new DataTable("VentaCabecera");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "VentaCabecera_GetByParams";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@vca_id", SqlDbType.Int).Value = vca_id;
        cmd.Parameters.AddWithValue("@vca_folio", SqlDbType.Int).Value = vca_folio;
        cmd.Parameters.AddWithValue("@vca_cli_rut", SqlDbType.Int).Value = vca_cli_rut;
        SqlDataAdapter da = new SqlDataAdapter();
        List<csVentaCabecera> lstVentaCabecera = new List<csVentaCabecera>();

        
        da.SelectCommand = cmd;
        try
        {

            con.Open();
            da.Fill(dt);
            con.Close();


           lstVentaCabecera = armaObjeto(dt);
           return lstVentaCabecera;
           

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaCabecera.cs", "GetByParams", ex.ToString(), DateTime.Now);
            return null;
        }

    }


    public List<csVentaCabecera> armaObjeto(DataTable dt)
    {
        List<csVentaCabecera> lstVentaCabecera = new List<csVentaCabecera>();
        foreach (DataRow dr in dt.Rows)
        {
            lstVentaCabecera.Add(new csVentaCabecera(
            vca_id = int.Parse(dr[0].ToString()),
            vca_folio = int.Parse(dr[1].ToString()),
            vca_cli_rut = dr[2].ToString(),
            vca_fecha_docto = dr[3].ToString(),
            vca_suc_id = int.Parse(dr[4].ToString()),
            vca_comentario = dr[5].ToString(),
            vca_tipo_doc = dr[6].ToString(),
            vca_impuesto = double.Parse(dr[7].ToString()),
            vca_total = double.Parse(dr[8].ToString()),
            vca_est_id = dr[9].ToString(),
            vca_estado_docto = dr[10].ToString(),
            vca_emp_rut = dr[11].ToString(),
            vca_totalDescuento = double.Parse(dr[12].ToString()),
            vca_porcDescuento = int.Parse(dr[13].ToString())));

            
        }
        return lstVentaCabecera;

    }

    public string Delete()
    {

        try {
            foreach (csVentaDetalle item in lstVentaDetalle)
            {
                item.Delete();
            
            }

            DeleteByVcaId();
            estado_transaccion = "";

        }catch (Exception ex)
        {
            GlobalClass.SaveLog("csVentaCabecera.cs", "GetByParams", ex.ToString(), DateTime.Now);
            return "-1";
        }


        return "";
    
    }
   
       

}