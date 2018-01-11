var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;
var totalMedioPago = 0;
window.onload = function () {

    
    limpiar();
    GetMaxDocNum();

    loadCmbSucursal($('#cmbSucursal'), function (datos) {
        $("#cmbSucursal").html('');
        $("#cmbSucursal").append("<option value = 0>Seleccionar...</option>");
        $.each(datos, function (key, value) {
            $("#cmbSucursal").append("<option value=" + datos[key].id + ">" + datos[key].descripcion + "</option>");

        });
    });
    var cmbBanco = $('.cmbBanco');


    loadCmbBanco(cmbBanco, function (datos) {
        cmbBanco.html('');
        cmbBanco.append("<option value = 0>Seleccionar...</option>");
        $.each(datos, function (key, value) {
            cmbBanco.append("<option value=" + datos[key].id + ">" + datos[key].descripcion + "</option>");

        });
    });

    $('.datepicker').datepicker({
        format: 'dd-mm-yyyy',
        language: 'es'

    });
    limpiar();
};

function loadCmbBanco(cmbBanco, callback) {

    if (sessionStorage.getItem("Banco") === null) {
        $.ajax({
            type: "POST",
            url: path_url + '/GetAllBanco',
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var data = $.parseJSON(response.d);

                sessionStorage.setItem("Banco", JSON.stringify(data));
                if (typeof callback === 'function') {
                    callback($.parseJSON(sessionStorage.getItem("Banco")));
                }
            },
            error: function (response) {
                return "error";
            }
        });
        return false;
    }
    else {
        callback($.parseJSON(sessionStorage.getItem("Banco")));
    }

}
function loadCmbSucursal(cmbSucursal, callback) {

    if (sessionStorage.getItem("Sucursal") === null) {
        $.ajax({
            type: "POST",
            url: path_url + '/GetAllSucursal',
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var data = $.parseJSON(response.d);

                sessionStorage.setItem("Sucursal", JSON.stringify(data));
                if (typeof callback === 'function') {
                    callback($.parseJSON(sessionStorage.getItem("Sucursal")));
                }
            },
            error: function (response) {
                return "error";
            }
        });
        return false;
    }
    else {
        callback($.parseJSON(sessionStorage.getItem("Sucursal")));
    }

}


function GetMaxDocNum() {

    $.ajax({
        type: "POST",
        url: path_url + '/GetMaxDocNum',
        data: {},
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data == 0) { $('#txtNumInterno').val("Error en BBDD"); }
            else {

                $('#txtNumInterno').val(data);

            }
        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}

function Insert() {
    if ($('#txtRut').val() == "" || $('#txtNombre').val() == "" || $('#txtGiro').val() == "") { mensajeModal("Debe Cargar Un Cliente"); return; }

    if ($('#txtFolio').val() == "" || $('#txtFechaDocto').val() == "" || $('#cmbSucursal').val() == "0") { mensajeModal("Ingrese Datos"); return; }

    if ($('#txtTotal').val() == "0") { mensajeModal("Debe Agregar Productos a la Venta"); return; }

    if ($('#tblProductoVenta > tbody  > tr').length == 0) { mensajeModal("Debe Agregar Productos a la Venta"); return; }

    

    var importech = parseInt($('#txtImporteTotalCH').val());
    var importeTR = parseInt($('#txtImporteTR').val());
    var total = parseInt($('#txtTotal').val());

    if (importech == "") { importech = 0; }
    if (importeTR == "") { importeTR = 0; }

    if ( (importech + importeTR) != total ) { mensajeModal('El medio de Pago no corresponde al total de la Venta'); return; }


    var _vca_tipo_doc;
    if ($("#cmbFactura").is(':checked') == true) {
        _vca_tipo_doc = 'Factura';
    }
    else {
        _vca_tipo_doc = 'Boleta';
    }

    //validar que el monto de los medio de pago sea >= al total de la venta



    item = {
        vca_id: $('#txtNumInterno').val(),
        vca_folio: $('#txtFolio').val(),
        vca_cli_rut: $('#txtRut').val(),
        vca_fecha_docto: $('#txtFechaDocto').val(),
        vca_suc_id: $('#cmbSucursal').val(),
        vca_comentario: $('#txtComentario').val(),
        vca_tipo_doc: _vca_tipo_doc,
        vca_impuesto: $('#txtImpuesto').val(),
        vca_total: $('#txtTotal').val(),
        vca_est_id: 'A',
        vca_estado_docto: $('#cmbEstado').val(),
        vca_emp_rut: 'Empleado 1',
        vca_totalDescuento: $('#txtDescuento').val(),
        vca_porcDescuento: $('#txtPorcDescuento').val(),
        lstVentaDetalle: GetProductFromTable(),
        lstMedioPagoCH: GetMedioPagoCHFromHtml(),
        objMedioPagoTR: GetMedioPagoTRFromHtml()
    }


    $.ajax({
        type: "POST",
        url: path_url + '/Insert',
        data: $.toJSON({ objVenta: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);

            if (parseInt(data) == -1) {
                mensajeModal("Registro Actualizado Exitosamente");
            }
            else if (parseInt(data) == -2) {
                mensajeModal("Ya existe este folio y rut en otra Venta");
                return;
            }
            else if (parseInt(data) > 0) {
                $('#txtNumInterno').val(data);
                mensajeModal("Registro Ingresado Exitosamente");

            }
            else { mensajeModal("Error BBDD"); }

            limpiar();

        },
        error: function (response) { mensajeModal("Error BBDD"); }
    });
    return false;
}

function GetMedioPagoTRFromHtml(){

    objMedioPagoTR = {
        fechaDocto: $('#txtFechaTR').val(),
        importe: $('#txtImporteTR').val(),
        banco: $('#cmbBancoTR').val(),
        numero_transaccion: $('#txtNumTransaccionTR').val(),
        vca_id: $('#txtNumInterno').val()
    }
    return objMedioPagoTR;
}
function GetMedioPagoCHFromHtml() {

    var _lstMedioPagoCH = [];
    var item;
    $('#tblCheque > tbody  > tr').each(function (tr) {

        var cheque = {

            numeroCheque: $(this).find("td")[0].innerHTML,
            fechaDocto: $(this).find("td")[1].innerHTML,
            importe: $(this).find("td")[2].innerHTML,
            banco: $(this).find("td")[3].id,

            vca_id:$('#txtNumInterno').val()

        }
        _lstMedioPagoCH.push(cheque)

    });
    return _lstMedioPagoCH;
}

function GetProductFromTable() {

    var _lstVentaDetalle = [];
    var item;
    $('#tblProductoVenta > tbody  > tr').each(function (tr) {

        var producto = {

            vde_id: 0,
            vde_vca_id: $('#txtNumInterno').val(),
            vde_pro_id: $(this).find("td")[0].innerHTML,
            vde_cantidad: parseInt($(this).find("td")[2].innerHTML),
            vde_total: parseInt($(this).find("td")[4].innerHTML),
            vde_est_id: 'A',
            vde_precio_unitario: parseInt($(this).find("td")[3].innerHTML)

        }
        _lstVentaDetalle.push(producto)

    });
    return _lstVentaDetalle;
}
function GetByRut() {

    //  vca_id = $('#txtNumInterno').val();

    if ($('#txtRut').val() == "") {
        mensajeModal("Ingrese Rut", "txtRut");
        return;

    }

    $.ajax({
        type: "POST",
        url: path_url_small + '/Cliente.aspx/GetByRutActive',
        data: $.toJSON({ rut: JSON.stringify($('#txtRut').val()) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data.estado_transaccion == null) { mensajeModal("No Existe Cliente o Esta Inactivo en Sistema"); limpiar(); return; }

            $('#txtRut').val(data.rut);
            $('#txtNombre').val(data.nombre);
            $('#txtGiro').val(data.giro);
            //     $('#txtNumInterno').val(vca_id);
        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}
function limpiar() {

    document.getElementById("formMedioPago").reset();
    document.getElementById("form").reset();
    //$('#txtRut').val('');
    //$('#txtNombre').val('');
    //$('#txtGiro').val('');
    //$('#txtFechaDocto').val('');
    //$('#txtFolio').val('');
    $('#tblProductoVenta > tbody ').html('');
    $('#tblCheque > tbody ').html('');
    //$('#txtSucursal').val('0');
    //$('#txtTotalAntesDescuento').val('0');
    //$('#txtPorcDescuento').val('0');
    //$('#txtDescuento').val('0');
    //$('#txtImpuesto').val('0');
    //$('#txtTotal').val('0');

    GetMaxDocNum();
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
function CargarProductos() {
    $.ajax({
        type: "POST",

        url: path_url_small + '/Producto.aspx/GetAll',
        data: '',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data == null) { mensajeModal("No hay registro de Productos activos"); return; }

            $("#tblProductoLista tbody").html('');
            $.each(data, function (key, value) {

                $("#tblProductoLista tbody").append("<tr><td>" + value.id + '</td><td>' + value.descripcion + '</td><td>' + value.precio + "</td>" + "</td><td><button type=\"button\" class=\"btn btn-link \" onclick=\"AddProduct({id:" + value.id + ",descripcion:'" + value.descripcion + "'   ,precio:" + value.precio + "})\">Agregar</button></td></tr>");

            });
            $('#modalProductos').modal('show');
        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;

}


function AddCheque() {

    if ($('#cmbBancoCH').val() == '0' || $('#txtNumeroCheque').val() == '' || $('#txtFechaDocumentoCH').val() == '' || $('#txtImporteCH').val() == '') {
        mensajeModal('Ingrese Información del cheque');
        return;
    }

    $("#tblCheque tbody").append("<tr id=" + $('#txtNumeroCheque').val() + ">" +
                                        "<td>" + $('#txtNumeroCheque').val() + "</td>" +
                                        "<td>" + $('#txtFechaDocumentoCH').val() + "</td>" +
                                        "<td>" + $('#txtImporteCH').val() + "</td>" +
                                        "<td id="+$('#cmbBancoCH').val()+">" + $('#cmbBancoCH option:selected').text() + "</td>" +
                                        "<td><button type=\"button\" class=\"btn-danger btn-circle\" onclick=\"deleteLineTableCheque(" + $('#txtNumeroCheque').val() + ");\">" +
                                        "<span class=\"glyphicon glyphicon glyphicon-remove\"></span></button></td></tr>");

    $('#txtNumeroCheque').val('');
    $('#txtFechaDocumentoCH').val();
    $('#txtImporteCH').val();
    $('#cmbBancoCH').val(0);

    updateChequeDocTotal();
}

function deleteLineTableCheque(value) {
    $('#tblCheque tbody #' + value)[0].remove();
    updateChequeDocTotal();
}
function updateChequeDocTotal() {
    var cont = 0;
    $('#tblCheque > tbody  > tr').each(function (tr) {


        cont += parseInt($(this).find("td")[2].innerHTML);
    });

    TotalCheque(cont);

}
function TotalCheque(cont) {
    $('#txtImporteTotalCH').val(cont);
}
function AddProduct(value) {
    if ($('#' + value.id)[0] != undefined) { mensajeModal("Usted Ya registró este Producto"); $('#modalProductos').modal('show'); return; }
    $("#tblProductoVenta tbody").append("<tr id=" + value.id + ">" +
                                        "<td>" + value.id + "</td>" +
                                        "<td>" + value.descripcion + "</td>" +
                                        "<td contenteditable=\"true\" onblur=\"updateLineTableProduct(" + value.id + ");\">1</td>" +
                                        "<td>" + value.precio + "</td>" +
                                        "<td id=\"lineTotal\" class=" + value.id + ">" + value.precio + "</td>" +
                                        "<td><button type=\"button\" class=\"btn-danger btn-circle\" onclick=\"deleteLineTableProduct(" + value.id + ");\">" +
                                        "<span class=\"glyphicon glyphicon glyphicon-remove\"></span></button></td></tr>");
    $('#modalProductos').modal('hide');

    updateDocTotal();
    return;
}
function updateLineTableProduct(value) {

    if (!$.isNumeric(parseInt($('#' + value)[0].cells[2].innerHTML))) {
        mensajeModal("Ingrese Números, no letras en la columna cantidad");
        $('#' + value)[0].cells[2].innerHTML = 1;
        return;
    } else {
        $('#' + value)[0].cells[4].innerHTML = parseInt($('#' + value)[0].cells[2].innerHTML) * parseInt($('#' + value)[0].cells[3].innerHTML);

        updateDocTotal();
    }
}
function deleteLineTableProduct(value) {
    $('#tblProductoVenta tbody #' + value)[0].remove();
    updateDocTotal();
}

function updateDocTotal() {
    var cont = 0;
    $('#tblProductoVenta > tbody  > tr').each(function (tr) {


        cont += parseInt($(this).find("td")[4].innerHTML);
    });

    Total(cont);

}
function Total(cont) {
    if ($("#cmbFactura").is(':checked') == true) {

        $('#txtTotalAntesDescuento').val(Math.round(cont, 1));
        totalDescuento();
        $('#txtTotal').val(Math.round((cont - parseInt($('#txtDescuento').val())) * 1.19), 1);
    }
    else {
        $('#txtTotalAntesDescuento').val(Math.round(cont, 1));
        totalDescuento();
        $('#txtTotal').val(Math.round((cont - parseInt($('#txtDescuento').val())), 1));
    }

}

function totalImpuesto() {

    if ($("#cmbFactura").is(':checked') == true) {
        $('#txtImpuesto').val(Math.round((parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())) * 0.19), 1);
        $('#txtTotal').val(Math.round((parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())) * 1.19), 1);
    }
    else {
        $('#txtImpuesto').val(0);
        $('#txtTotal').val(Math.round(parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())), 1);
    }


}
function totalDescuento() {

    $('#txtDescuento').val(Math.round((parseInt($('#txtPorcDescuento').val()) * parseInt($('#txtTotalAntesDescuento').val())) / 100), 1);
    totalImpuesto();

}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}