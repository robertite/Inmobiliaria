using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string GetLogin(string valform)
    {
        csLogin login = JsonConvert.DeserializeObject<csLogin>(valform);
        login.GetLogin();

        return JsonConvert.SerializeObject(login);
    }
}