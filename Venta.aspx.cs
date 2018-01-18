using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Venta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //csVentaDetalle ventaDetalle = new csVentaDetalle();
        //ventaDetalle.vde_vca_id = 1;
        //ventaDetalle.vde_id = 0;
        //ventaDetalle.vde_pro_id = "200001";
        //ventaDetalle.vde_cantidad = 2;
        //ventaDetalle.vde_precio_unitario = 10000;
        //ventaDetalle.vde_total = 20000;



    }

    [WebMethod()]
    public static string GetAllSucursal()
    {

        csSucursal sucursal = new csSucursal();
        return JsonConvert.SerializeObject(sucursal.GetAll());

    }
    [WebMethod()]
    public static string GetAllBanco()
    {

        csBanco banco = new csBanco();
        return JsonConvert.SerializeObject(banco.GetAll());

    }
    
    [WebMethod()]
    public static string GetMaxDocNum()
    {
       
        return JsonConvert.SerializeObject(csVentaCabecera.GetMaxDocNum());

    }
   
    [WebMethod()]
    public static string Insert(string objVenta)
    {

        csVentaCabecera ventaCabecera = JsonConvert.DeserializeObject<csVentaCabecera>(objVenta);
        ventaCabecera.Insert();
        return JsonConvert.SerializeObject(ventaCabecera.estado_transaccion);        

    }

    [WebMethod()]
    public static string GetByParams(string objVenta)
    {

        csVentaCabecera ventaCabecera = JsonConvert.DeserializeObject<csVentaCabecera>(objVenta);

        return JsonConvert.SerializeObject(ventaCabecera.GetByParams());

    }
}


