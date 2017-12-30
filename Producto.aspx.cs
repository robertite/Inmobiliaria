using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Producto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod()]
    public static string GetById(string id)
    {
        csProducto producto = new csProducto();
        producto.GetById(JsonConvert.DeserializeObject(id).ToString());
        return JsonConvert.SerializeObject(producto);
    }
    [WebMethod()]
    public static string Insert(string objProducto)
    {
        csProducto producto = JsonConvert.DeserializeObject<csProducto>(objProducto);
        producto.Insert();
        return JsonConvert.SerializeObject(producto.estado_transaccion);
    }
    [WebMethod()]
    public static string GetAll()
    {
        csProducto producto = new csProducto();
        
        return JsonConvert.SerializeObject(producto.GetAll());
    }
}