using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.Configuration;
using System.Web.SessionState;

public class login : SessionIDManager
{
    public override string CreateSessionID(HttpContext context)
    {
        return Guid.NewGuid().ToString();
    }
    public override bool Validate(string id)
    {
        try
        {
            Guid testGuid = new Guid(id);
            if(id == testGuid.ToString())
            return true;
        }
        catch { }

        return false;
    }
}