using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de csMedioPagoCH
/// </summary>
public class csMedioPagoCH
{
    public int numeroCheque { get; set; }
    public string fechaDocto { get; set; }
    public double importe { get; set; }
    public int banco { get; set; }
	public csMedioPagoCH(int _numeroCheque, string _fechaDocto,
                         double _importe, int _banco)
	{
        numeroCheque = _numeroCheque;
        fechaDocto = _fechaDocto;
        importe = _importe;
        banco = _banco;

	}
    public csMedioPagoCH() { }

    public List<csMedioPagoCH> GetById()
    {
        return null;
    }
    public void Insert() { 
    

    
    }

}