using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Microsoft.Reporting.WebForms;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;

public partial class Venta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //csVentaDetalle ventaDetalle = new csVentaDetalle();
        //ventaDetalle.vde_vca_id = 1;
        //ventaDetalle.vde_id = 0;
        //ventaDetalle.vde_pro_id = "200001";
        //ventaDetalle.vde_cantidad = 2;
        //ventaDetalle.vde_precio_unitario = 10000;
        //ventaDetalle.vde_total = 20000;



    }

    [WebMethod()]
    public static string GetAllSucursal()
    {

        csSucursal sucursal = new csSucursal();
        return JsonConvert.SerializeObject(sucursal.GetAll());

    }
    [WebMethod()]
    public static string GetAllBanco()
    {

        csBanco banco = new csBanco();
        return JsonConvert.SerializeObject(banco.GetAll());

    }
    
    [WebMethod()]
    public static string GetMaxDocNum()
    {
       
        return JsonConvert.SerializeObject(csVentaCabecera.GetMaxDocNum());

    }
   
    [WebMethod()]
    public static string Insert(string objVenta)
    {
        csVentaCabecera ventaCabecera = JsonConvert.DeserializeObject<csVentaCabecera>(objVenta);
        try
        {
           
            //valida si tiene un medio de pago credito simple y si es asi, valida si puede acceder a credito el cliente en cuestión.


            

            ventaCabecera.Insert();

            return JsonConvert.SerializeObject(ventaCabecera.estado_transaccion);
        }
        catch (Exception ex) { GlobalClass.SaveLog("Venta.aspx.cs", "Insert", ex.ToString(), DateTime.Now);
            ventaCabecera.estado_transaccion = ex.ToString();
            return JsonConvert.SerializeObject(ventaCabecera.estado_transaccion);
        }
    }

    [WebMethod()]
    public static string GetByParams(string objVenta)
    {

        csVentaCabecera ventaCabecera = JsonConvert.DeserializeObject<csVentaCabecera>(objVenta);

        return JsonConvert.SerializeObject(ventaCabecera.GetByParams());

    }

    [WebMethod()]
    public static string Delete(string objVenta)
    {

        csVentaCabecera ventaCabecera = JsonConvert.DeserializeObject<csVentaCabecera>(objVenta);

        return JsonConvert.SerializeObject(ventaCabecera.Delete());

    }

    protected void btn_Imprimir_Click(object sender, EventArgs e)
    {
        Document document = new Document();

        MemoryStream memorystream = new MemoryStream();

        PdfWriter.GetInstance(document, memorystream);

        try
        {


            csVentaCabecera ventaCabecera = new csVentaCabecera();
            ventaCabecera.vca_id = int.Parse(txtNumInterno.Value);
            ventaCabecera.vca_cli_rut = "";
            ventaCabecera.vca_folio = 0;

            ventaCabecera.GetByParams();

            ventaCabecera = ventaCabecera.GetByParams()[0];

            csCliente cliente = new csCliente();

            cliente.GetByRut(ventaCabecera.vca_cli_rut);




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
            parrafo = new Paragraph("Fecha: " + ventaCabecera.vca_fecha_docto, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Numero Interno
            fuente.Size = 12;
            parrafo = new Paragraph("N° Interno: " + ventaCabecera.vca_id, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 23);
            document.Add(parrafo);

            //Rut 
            
            parrafo = new Paragraph("Rut: " + cliente.rut);
            parrafo.Font = FontFactory.GetFont("Arial", 13, BaseColor.BLACK);
            document.Add(parrafo);

            //Nombre
            fuente.Size = 12;
            parrafo = new Paragraph("Nombre: " + cliente.nombre, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Giro
            fuente.Size = 12;
            parrafo = new Paragraph("Giro: " + cliente.giro, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Documento
            fuente.Size = 12;
            parrafo = new Paragraph("Documento: " + ventaCabecera.vca_tipo_doc, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);


            //Estado documento
            if (ventaCabecera.vca_estado_docto.Equals("C"))
            {
                ventaCabecera.vca_estado_docto = "Cerrado";
            }
            else {
                ventaCabecera.vca_estado_docto = "Abierto";
            }
            fuente.Size = 12;
            parrafo = new Paragraph("Estado: " + ventaCabecera.vca_estado_docto, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);


            //Numero Folio
            fuente.Size = 12;
            parrafo = new Paragraph("N° Folio: " + ventaCabecera.vca_folio, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);


            //Salto de linea

            document.Add(new Chunk(""));

            //Tabla 

            PdfPTable table = new PdfPTable(5);
            table.HorizontalAlignment = 0;
            PdfPCell cell = new PdfPCell(new Phrase("LISTADO DE PRODUCTOS"));

            cell.Colspan = 5;

            cell.HorizontalAlignment = 1; //0=Left, 1=Centre, 2=Right

            table.AddCell(cell);

            table.AddCell("ID");

            table.AddCell("DESCRIPCION");

            table.AddCell("CANTIDAD");

            table.AddCell("PRECIO UNIDAD");

            table.AddCell("TOTAL");

            float[] anchoDeColumnas = new float[] { 20f, 40f, 20f, 20f, 20f };
            table.SetWidths(anchoDeColumnas);

            foreach (csVentaDetalle item in ventaCabecera.lstVentaDetalle)
            {
                table.AddCell(new Phrase(item.vde_pro_id, fuente));
                table.AddCell(new Phrase(item.vde_pro_descripcion));
                table.AddCell(new Phrase(item.vde_cantidad.ToString()));
                table.AddCell(new Phrase("$ " + item.vde_precio_unitario.ToString()));
                table.AddCell(new Phrase("$ " + item.vde_total.ToString()));

            }
            document.Add(table);

            //Sucursal
            fuente.Size = 12;
            parrafo = new Paragraph("Sucursal: " + csSucursal.GetDescripcionById(ventaCabecera.vca_suc_id), fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 20);
            document.Add(parrafo);

            //Total Antes del descuento
            fuente.Size = 12;
            parrafo = new Paragraph("Total Antes Descuento: $ " + (ventaCabecera.vca_total + ventaCabecera.vca_totalDescuento), fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Porcentaje descuento
            fuente.Size = 12;
            parrafo = new Paragraph("Porcentaje Descuento: % " + ventaCabecera.vca_porcDescuento, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Total descuento
            fuente.Size = 12;
            parrafo = new Paragraph("Total Antes Descuento: $ " + ventaCabecera.vca_totalDescuento, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Total 
            fuente.Size = 12;
            parrafo = new Paragraph("Total: $ " + ventaCabecera.vca_total, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            //Comentario
            fuente.Size = 12;
            parrafo = new Paragraph("Comentario: " + ventaCabecera.vca_comentario, fuente);
            parrafo.Font = FontFactory.GetFont("Arial", 13);
            document.Add(parrafo);

            document.Close();

            byte[] pdfContent = memorystream.ToArray();

            //Return PDF
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-disposition", "attachment; filename=ComprobanteNotaVenta.pdf");
            Response.BinaryWrite(pdfContent);
            Response.End();

        }
        catch (Exception ex) { GlobalClass.SaveLog("Venta.aspx.cs", "Imprimir", ex.ToString(), DateTime.Now); }
        finally
        {

            document = null;

            memorystream = null;

            GC.Collect();
        }
    }

}


