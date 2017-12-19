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
    public static string GetAllRegion() {

        csRegion region = new csRegion();
        List<csRegion> lstRegion = region.GetAllRegion();

        return JsonConvert.SerializeObject(lstRegion);

    }
}