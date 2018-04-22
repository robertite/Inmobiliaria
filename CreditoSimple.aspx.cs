using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;

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
    public static string Cuota_Insert(string valform)
    {

        csPagoCuota objPagoCuota = JsonConvert.DeserializeObject<csPagoCuota>(valform);
        objPagoCuota.Insert();
        return JsonConvert.SerializeObject(objPagoCuota.estado_transaccion);

    }
        protected void btn_Imprimir_Click(object sender, EventArgs e)
    {
        try
        {
            csPagoCuota pagoCuota = new csPagoCuota();
            pagoCuota = pagoCuota.GetById(int.Parse(txtId.Value));

            Document document = new Document();

            MemoryStream memorystream = new MemoryStream();

            PdfWriter.GetInstance(document, memorystream);

            document.Open();

            iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(Server.MapPath("img/logo.jpg"));
            image.Alignment = iTextSharp.text.Image.ALIGN_RIGHT;
            image.ScaleToFit(200, 80);
            image.SetAbsolutePosition(380, 710);
            //Agregar Imagen
            document.Add(image);
            //Agregar Linea de texto

            Font fuente = new Font();
            fuente.Size = 24;
            Paragraph parrafo = new Paragraph("Muebles Oliva", fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 23, BaseColor.BLACK);

            document.Add(parrafo);

            document.Add(new Paragraph("Comprobante de Pago"));

            //Fecha Documento
            fuente.Size = 12;
            parrafo = new Paragraph("Fecha: " + pagoCuota.fecha_pago, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Nombre
            fuente.Size = 12;
            parrafo = new Paragraph("Nombre: " + txtNombre.Value, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 23);
            document.Add(parrafo);

            //Rut
            fuente.Size = 12;
            parrafo = new Paragraph("Rut: " + txtRut.Value, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Salto de linea
            
            document.Add(new Chunk(""));
            
            //Tabla 

            PdfPTable table = new PdfPTable(3);
            table.HorizontalAlignment = 0;
            PdfPCell cell = new PdfPCell(new Phrase("COMPROBANTE PAGO"));

            cell.Colspan = 3;

            cell.HorizontalAlignment = 1; //0=Left, 1=Centre, 2=Right

            table.AddCell(cell);

            table.AddCell("CUOTA");

            table.AddCell("DESCRIPCION");

            table.AddCell("MONTO");


            float[] anchoDeColumnas = new float[] { 20f, 40f, 20f };
            table.SetWidths(anchoDeColumnas);

            table.AddCell(pagoCuota.numero_cuota_pagada.ToString() + " de " + txtNumeroCuotas.Value);

            table.AddCell("Pago Credito Simple");

            table.AddCell("$ " + txtMontoCuota.Value);

            document.Add(table);
            document.Close();

            byte[] pdfContent = memorystream.ToArray();

            //Return PDF
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-disposition", "attachment; filename=ComprobantePago.pdf");
            Response.BinaryWrite(pdfContent);
            Response.End();

        }
        catch (Exception ex) { GlobalClass.SaveLog("CreditoSimple.aspx.cs", "Imprimir", ex.ToString(), DateTime.Now); }
   

        
        }

}