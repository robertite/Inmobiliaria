﻿using System;
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
    public string Insert(string rut)
    {
        return JsonConvert.SerializeObject("roberto");
    }
}