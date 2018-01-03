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

    }

    [WebMethod()]
    public static string GetAllSucursal()
    {

        csSucursal sucursal = new csSucursal();
        return JsonConvert.SerializeObject(sucursal.GetAll());

    }
    [WebMethod()]
    public static string Insert()
    {

        csSucursal sucursal = new csSucursal();
        return JsonConvert.SerializeObject(sucursal.GetAll());

    }
}