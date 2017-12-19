using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Cliente
/// </summary>
public class csCliente
{
    public string rut { get; set; }
    public string nombre { get; set; }
    public string email { get; set; }
    public string giro { get; set; }
    public int telefono { get; set; }
    public string estado { get; set; }
    public int region { get; set; }
    public int comuna { get; set; }
    public string calle { get; set; }
    public int numero { get; set; }
    public string departamento { get; set; }

    public string estado_transaccion { get; set; }

	public csCliente(){}

    public void Insert()
    {
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Cliente_Insert";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;

        try { 
        con.Open();
        int ret = cmd.ExecuteNonQuery();
        con.Close();

        if (ret == 0)
        {
                estado_transaccion = "No Existe Cliente";
        }
        else { estado_transaccion = ""; }

        }
        catch (Exception ex) { 
            GlobalClass.SaveLog("Cliente.cs", "Insert", ex.ToString(), DateTime.Now);
            estado_transaccion = "Error BD";
        }
    }
    public string SetInactive(string rut)
    {

        return "";
    }
    public string GetByRut(string rut)
    {
        DataTable dt = new DataTable("Cliente");
        SqlConnection con = new SqlConnection(GlobalClass.conexion);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Cliente_GetByRut";
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@rut",SqlDbType.NVarChar).Value = rut;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        try
        {
            con.Open();
            int ret = cmd.ExecuteNonQuery();
            con.Close();

            if (ret == 0)
            {
                return "No Existe Cliente";
            }
            else {
                con.Open();
                da.Fill(dt);
                con.Close();
                armaObjeto(dt);
            }

        }
        catch (Exception ex)
        {
            GlobalClass.SaveLog("Cliente.cs", "GetByRut", ex.ToString(), DateTime.Now);
            return "Error de BBDD";
        }

        return "";

    }
    public void armaObjeto(DataTable dt)
    {
        foreach(DataRow dr in dt.Rows)
        {
            rut = dr[0].ToString();
            nombre = dr[1].ToString();
            email = dr[2].ToString();
            giro = dr[3].ToString();
            telefono = int.Parse(dr[4].ToString());
            estado = dr[5].ToString();
            comuna = int.Parse(dr[6].ToString());
            calle = dr[7].ToString();
            numero = int.Parse(dr[8].ToString());
            departamento = dr[9].ToString();

        }

    
    }
}