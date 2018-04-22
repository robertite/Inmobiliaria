var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;

function Initialize() {

    if (sessionStorage.getItem("Login") == undefined || null) {
        location.href = path_url_small + '/Login.aspx';
    }
    var Login = $.parseJSON(sessionStorage.getItem("Login"))


    var existe = false;
    for (var i = 0; i <= Login.lstPerfil.length; i++) {
        if (Login.lstPerfil[i].formulario.toUpperCase() == window.location.pathname.toUpperCase()) {

            if (Login.lstPerfil[i].lectura.toUpperCase() == "A" && Login.lstPerfil[i].escritura == "E") {
                existe = true;
                InitializeLectura();
            }

        }
    }
    if (existe = false)
    {
        InitializeLectura();
    }
}
function InitializeLectura() {


    $('.control_txt').prop("disabled", true);
    $('.control_btn').prop("disabled", true);
    $('.control_cmb').prop("disabled", "disabled");


}

window.onload = function () {

    limpiar();

    $('.datepicker').datepicker({
        format: 'dd-mm-yyyy',
        language: 'es'

    });
    Initialize();
}



function limpiar() {

    document.getElementById("form1").reset();

    $('#tblCuota > tbody ').html('');

}



function GetByParams()
{
    if ($('#txtRut').val() == "" && $('#txtNumInterno').val() == "") { mensajeModal("Para Buscar debe ingresar Rut o Numero de documento"); return; }

    var id = parseInt($('#txtNumInterno').val());


    if (isNaN(parseInt($('#txtNumInterno').val()))) { id = 0; }


    var item = {
        vca_id: id,
        cli_rut: $('#txtRut').val()
    }

    $.ajax({
        type: "POST",
        url: path_url + '/GetByParams',
        data: $.toJSON({ objCredito: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);

            if (data.length == 0) {
                mensajeModal("No Existen datos");
                return;
            }
            else if (data.length == 1) {
                setMedioPagoCS(data[0]);

                loadTablePagoCuota(data[0].lstPagoCuota);
            }
            else if (data.length > 1) {

                var tr_estado;

                $("#tblCreditoSimple tbody").html('');
                for (var i = 0; i < data.length; i++) {

                    if (parseInt(data[i].numero_cuota) <= parseInt(data[i].numero_cuota_pagada)) { tr_estado = "bg-success"; }
                    else { tr_estado = "bg-danger"; }
                    $("#tblCreditoSimple tbody").append("<tr class='" + tr_estado + "'><td>" + data[i].vca_id + "</td>" +
                                                        "<td>" + data[i].fechaDocto + "</td>" +
                                                        "<td>" + data[i].cli_rut + "</td>" +
                                                        "<td>" + data[i].cli_nombre + "</td>" +
                                                        "<td>" + data[i].importe + "</td>" +
                                                        "<td><button type=\"button\" class=\"btn btn-link \" onclick=\"loadCreditoSimple(" + data[i].vca_id + ")\">Seleccionar</button>" +
                                                        "</tr>");

                }
                $('#modalCreditoSimple').modal('show');
            }

        },
        error: function (response) { mensajeModal("Error BBDD"); return; }
    });
    return false;
}
function loadTablePagoCuota(data)
{
    var forma_pago;
    $("#tblCuota tbody").html('');
    for (var i = 0; i < data.length; i++) {

        if (data[i].forma_pago == "EF")
        {
            forma_pago = "EFECTIVO";
        }
        else if (data[i].forma_pago == "TR") {
            forma_pago = "TRANSFERENCIA";
        }
        else if (data[i].forma_pago == "CH") {
            forma_pago = "CHEQUE";
        }
        else if (data[i].forma_pago == "TC") {
            forma_pago = "TAR. CREDITO";
        }
        else if (data[i].forma_pago == "TD") {
            forma_pago = "TAR. DEBITO";
        }

        $("#tblCuota tbody").append("<tr><td>" + data[i].numero_cuota_pagada + "</td>" +
                                            "<td>" + data[i].fecha_pago + "</td>" +
                                            "<td>" + forma_pago + "</td>" +
                                            "<td><button type=\"button\"onclick=\"Panel_Comprobante({id:" + data[i].id + ",cuota_pagada:" + data[i].numero_cuota_pagada + ",fecha_pago:" + data[i].fecha_pago + ",forma_pago:'" + data[i].forma_pago+"'});\" class=\"btn btn-link \">Seleccionar</button>" +
                                            "</tr>");



    }
}

function loadCreditoSimple(value) {
    $('#txtNumInterno').val(value);
    $('#txtRut').val('');
    GetByParams();
    $('#modalCreditoSimple').modal('hide');

}

function Panel_Comprobante(data)
{
 
  
    $("#txtId").val(data.id);
    $('#txtNumeroCuota').val(data.cuota_pagada);
    $('#txtRutCliente').val($('#txtRut').val());
    $('#txtNombreCliente').val($('#txtNombre').val());
    $('#cmbFPComprobante').val(data.forma_pago);
    
    $("#tblPagoCuota tbody").html('');
    $("#tblPagoCuota tbody").append("<tr><td>" + data.cuota_pagada + " de " + $('#txtNumeroCuotas').val() + "</td>" +
                                        "<td>Pago Credito Simple</td>" +
                                        "<td>" + $('#txtMontoCuota').val() + "</td>" +
                                        "</tr>");

    $('#modal_comprobante').modal('show');
    

}

function Panel_PagoCuota()
{
    if ($('#txtNumeroCredito').val() == "") {  mensajeModal("Debe Cargar un Credito");  return; }
    if (parseInt($('#txtNumeroCuotas').val()) == parseInt($('#txtCuotasPagadas').val())) { mensajeModal("No Hay Cuotas por pagar, La cuenta ya esta saldada"); return; }

    $('#txtNumeroCuotaPagar').val(parseInt($('#txtCuotasPagadas').val()) + 1);
    $('#modal_PagoCuota').modal('show');
}

function Pago_Insert()
{
    if ($('#cmbFormaPago').val() == 0 || $('#txtFechaPagoCuota').val() == "") { mensajeModal("Ingrese Datos"); return; }

    item = {
        pcs_id: $('#txtNumeroCredito').val(),
        numero_cuota_pagada: $('#txtNumeroCuotaPagar').val(),
        forma_pago: $('#cmbFormaPago').val(),
        fecha_pago: moment($('#txtFechaPagoCuota').val(), "DD-MM-YYYY").format("YYYY-MM-DD")

   
}
    

$.ajax({
    type: "POST",
    url: path_url + '/Cuota_Insert',
    data: $.toJSON({ valform: JSON.stringify(item) }),
    contentType: "application/json; charset=utf-8",
    dataType: "json",

    success: function (response) {
        var data = $.parseJSON(response.d);

        mensajeModal(data); 

        GetByParams();

    },
    error: function (response) { mensajeModal("Error BBDD"); }
});
return false;


 
}

function checkRut(txtRut) {
    // Despejar Puntos
    var valor = txtRut.value.replace('.', '');
    // Despejar Guión
    valor = valor.replace('-', '');

    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0, -1);
    dv = valor.slice(-1).toUpperCase();

    // Formatear RUN
    txtRut.value = cuerpo + '-' + dv

    // Si no cumple con el mínimo ej. (n.nnn.nnn)
    if (cuerpo.length < 7) { txtRut.setCustomValidity("RUT Incompleto"); return false; }

    // Calcular Dígito Verificador
    suma = 0;
    multiplo = 2;

    // Para cada dígito del Cuerpo
    for (i = 1; i <= cuerpo.length; i++) {

        // Obtener su Producto con el Múltiplo Correspondiente
        index = multiplo * valor.charAt(cuerpo.length - i);

        // Sumar al Contador General
        suma = suma + index;

        // Consolidar Múltiplo dentro del rango [2,7]
        if (multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }

    }

    // Calcular Dígito Verificador en base al Módulo 11
    dvEsperado = 11 - (suma % 11);

    // Casos Especiales (0 y K)
    dv = (dv == 'K') ? 10 : dv;
    dv = (dv == 0) ? 11 : dv;

    // Validar que el Cuerpo coincide con su Dígito Verificador
    if (dvEsperado != dv) { txtRut.setCustomValidity("RUT Inválido"); return false; }

    // Si todo sale bien, eliminar errores (decretar que es válido)
    txtRut.setCustomValidity('');
}

function setMedioPagoCS(data) {

    $('#txtNumInterno').val(data.vca_id);
    $('#txtFecha').val(data.fechaDocto);
    $('#txtRut').val(data.cli_rut);
    $('#txtNombre').val(data.cli_nombre);
    $('#txtImporte').val(data.importe);
    $('#txtNumeroCuotas').val(data.numero_cuota);
    $('#txtCuotasPagadas').val(data.numero_cuota_pagada);
    $('#txtMontoCuota').val(data.monto_cuota);
    $('#txtNumeroCredito').val(data.id);

}
function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}