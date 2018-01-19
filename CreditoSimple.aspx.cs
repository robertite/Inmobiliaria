using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class CreditoSimple : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod()]
    public static string GetByParams(string objCredito)
    {

        csMedioPagoCS medioPagoCS = JsonConvert.DeserializeObject<csMedioPagoCS>(objCredito);

        return JsonConvert.SerializeObject(medioPagoCS.GetByParams());

    }
    [WebMethod()]
    public static string Insert(string objCredito)
    {

        csMedioPagoCS objMedioPagoCS= JsonConvert.DeserializeObject<csMedioPagoCS>(objCredito);
        objMedioPagoCS.Insert();
        return JsonConvert.SerializeObject(objMedioPagoCS.estado_transaccion);

    }
}