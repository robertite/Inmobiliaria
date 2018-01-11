using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod()]
    public static string GetByRut(string rut)
    {
        csCliente cliente = new csCliente();
        cliente.GetByRut(JsonConvert.DeserializeObject(rut).ToString());
        return JsonConvert.SerializeObject(cliente);
    }
    [WebMethod()]
    public static string GetByRutActive(string rut)
    {
        csCliente cliente = new csCliente();
        cliente.GetByRutActive(JsonConvert.DeserializeObject(rut).ToString());
        return JsonConvert.SerializeObject(cliente);
    }
    [WebMethod()]
    public static string Insert(string objCliente)
    {
        csCliente cliente = JsonConvert.DeserializeObject<csCliente>(objCliente);
        cliente.Insert();
        return JsonConvert.SerializeObject(cliente.estado_transaccion);
    }
    [WebMethod()]
    public static string GetAllRegion()
    {

        csRegion region = new csRegion();
        List<csRegion> lstRegion = region.GetAllRegion();

        return JsonConvert.SerializeObject(lstRegion);

    }
    [WebMethod()]
    public static string GetAllComuna()
    {

        csComuna comuna = new csComuna();
        List<csComuna> lstComuna = comuna.GetAllComuna();

        return JsonConvert.SerializeObject(lstComuna);

    }
}




