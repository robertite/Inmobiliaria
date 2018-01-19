var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;

function Initialize() {

    if (sessionStorage.getItem("Login") == undefined) {
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

function Insert() {
    if ($('#txtRut').val() == "" || $('#txtNombre').val() == "" || $('#txtImporte').val() == "") { mensajeModal("Ingrese Datos"); return; }

    if (parseInt($('#txtNumeroCuotas').val()) == parseInt($('#txtCuotasPagadas').val())) { mensajeModal("No Hay Cuotas por pagar, La cuenta ya esta saldada"); return;  }

    //validar que el monto de los medio de pago sea >= al total de la venta



    item = {
        vca_id: $('#txtNumInterno').val(),
        fechaDocto: $('#txtFecha').val(),
        cli_rut: $('#txtRut').val(),
        cli_nombre: $('#txtNombre').val(),
        importe: $('#txtImporte').val(),
        numero_cuota:$('#txtNumeroCuotas').val(),
        numero_cuota_pagada:parseInt($('#txtCuotasPagadas').val()) + 1,
        monto_cuota: $('#txtMontoCuota').val()
}


$.ajax({
    type: "POST",
    url: path_url + '/Insert',
    data: $.toJSON({ objCredito: JSON.stringify(item) }),
    contentType: "application/json; charset=utf-8",
    dataType: "json",

    success: function (response) {
        var data = $.parseJSON(response.d);

        if (parseInt(data) == -1) {
            mensajeModal("Credito Registrado Exitosamente");
        }
        else if (parseInt(data) == -2) {
            mensajeModal("Credito Actualizado Exitosamente");
        }
        else { mensajeModal("Error BBDD"); }

        limpiar();

    },
    error: function (response) { mensajeModal("Error BBDD"); }
});
return false;
}

function limpiar() {

    document.getElementById("form").reset();
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
            }
            else if (data.length > 1) {

               
                $("#tblCreditoSimple tbody").html('');
                for (var i = 0; i < data.length; i++) {
                  
                    $("#tblCreditoSimple tbody").append("<tr><td>" + data[i].vca_id + "</td>" +
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
function loadCreditoSimple(value) {
    $('#txtNumInterno').val(value);
    $('#txtRut').val('');
    GetByParams();
    $('#modalCreditoSimple').modal('hide');

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

    $('#txtFecha').val(data.fechaDocto);
    $('#txtRut').val(data.cli_rut);
    $('#txtNombre').val(data.cli_nombre);
    $('#txtImporte').val(data.importe);
    $('#txtNumeroCuotas').val(data.numero_cuota);
    $('#txtCuotasPagadas').val(data.numero_cuota_pagada);
    $('#txtMontoCuota').val(data.monto_cuota);

}
function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}