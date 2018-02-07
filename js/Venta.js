var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;
var totalMedioPago = 0;

function Initialize() {

    
    if (typeof sessionStorage.getItem("Login") === undefined || null) {
        location.href = path_url_small + '/Login.aspx';
    }
    var Login = $.parseJSON(sessionStorage.getItem("Login"));

    
    var existe = false;

    for (var i = 0; i < Login.lstPerfil.length; i++) {
        if (Login.lstPerfil[i].formulario.toUpperCase() == window.location.pathname.toUpperCase()) {

            if (Login.lstPerfil[i].lectura.toUpperCase() == "A" && Login.lstPerfil[i].escritura == "E") {
                existe = true;
                InitializeLectura();
            }

        }
    }
  
    if (existe = false) {
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

    GetMaxDocNum();

    loadCmbSucursal($('#cmbSucursal'), function (datos) {
        $("#cmbSucursal").html('');
        $("#cmbSucursal").append("<option value = 0>Seleccionar...</option>");
        $.each(datos, function (key, value) {
            $("#cmbSucursal").append("<option value=" + datos[key].id + ">" + datos[key].descripcion + "</option>");

        });
        setSucursalUser($('#cmbSucursal'), function (datos) {

            $('#cmbSucursal').val(datos.sucursal);

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
    
    Initialize();
   


};


function setSucursalUser(cmbSucursal, Callback) {

    if (typeof Callback === 'function') {
        Callback($.parseJSON(sessionStorage.getItem("Login")));
    }
}
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

function GetByParams() {
    if ($('#txtRut').val() == "" && $('#txtNumInterno').val() == "" && $('#txtFolio').val() == "") { mensajeModal("Para Buscar debe ingresar Rut, Numero de documento o Folio"); return; }

    var id = parseInt($('#txtNumInterno').val());
    var folio = parseInt($('#txtFolio').val());

    if (isNaN(parseInt($('#txtNumInterno').val()))) { id = 0; }
    if (isNaN(parseInt($('#txtFolio').val()))) { folio = 0; }

    var item = {
        vca_id: id,
        vca_folio: folio,
        vca_cli_rut: $('#txtRut').val()
    }

    $.ajax({
        type: "POST",
        url: path_url + '/GetByParams',
        data: $.toJSON({ objVenta: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);

            if (data.length == 0) {
                mensajeModal("No Existen datos");
                return;
            }
            else if (data.length == 1) {
                setVentaCabecera(data);
            }
            else if (data.length > 1) {

                $("#tblVentaCabecera tbody").html('');
                for (var i = 0; i < data.length; i++) {
                   
                    $("#tblVentaCabecera tbody").append("<tr><td>" + data[i].vca_id + "</td>" +
                                                        "<td>" + data[i].vca_cli_rut + "</td>" +
                                                        "<td>" + data[i].vca_folio + "</td>" +
                                                        "<td>" + data[i].vca_total + "</td>" +
                                                        "<td><button type=\"button\" class=\"btn btn-link \" onclick=\"loadVentaCabecera(" + data[i].vca_id + ")\">Seleccionar</button>" +
                                                        "</tr>");

                }
                $('#modalVentaCabecera').modal('show');
            }

        },
        error: function (response) { mensajeModal("Error BBDD"); return; }
    });
    return false;


}

function loadVentaCabecera(value) {
    $('#txtNumInterno').val(value);
    $('#txtRut').val('');
    GetByParams();
    $('#modalVentaCabecera').modal('hide');

}
function setVentaCabecera(data) {
    $('#txtNumInterno').val(data[0].vca_id);
    $('#txtRut').val(data[0].vca_cli_rut);
    GetClienteByRut(data[0].vca_cli_rut);
    $('#txtFechaDocto').val(data[0].vca_fecha_docto);
    $('#txtFolio').val(data[0].vca_folio);
    if (data[0].vca_tipo_doc == "Boleta") {
        $('#cmbBoleta').prop("checked", true);
    }
    else {
        $('#cmbFactura').prop("checked", true);
    }
    $('#cmbSucursal').val(data[0].vca_suc_id);
    $('#txtComentario').val(data[0].vca_comentario);
    $('#txtTotalAntesDescuento').val(parseInt(data[0].vca_total) + parseInt(data[0].vca_totalDescuento));
    //$('#txtTotalAntesDescuento').val(parseInt(data[0].vca_total) - parseInt(data[0].vca_impuesto) + parseInt(data[0].vca_totalDescuento));
    $('#txtPorcDescuento').val(data[0].vca_porcDescuento);
    $('#txtDescuento').val(data[0].vca_totalDescuento);
    //$('#txtImpuesto').val(data[0].vca_impuesto);
    $('#txtTotal').val(data[0].vca_total);
    setTableProduct(data[0].lstVentaDetalle);
    setTableCheque(data[0].lstMedioPagoCH);
    setMedioPagoTR(data[0].objMedioPagoTR);
    setMedioPagoEF(data[0].objMedioPagoEF);
    setMedioPagoTC(data[0].objMedioPagoTC);
    setMedioPagoTD(data[0].objMedioPagoTD);
    setMedioPagoCS(data[0].objMedioPagoCS);

    return;
}
function setTableCheque(lstCheque) {

    $('#tblCheque tbody').html('');
    var importeCH = 0;
    var ban_descripcion = "";
    $.each(lstCheque, function (key, value) {

        GetTextBancoByVal(value.banco, function (data) {
            $.each(data, function (i, valor) {

                if (parseInt(valor.id) == parseInt(value.banco)) {

                    ban_descripcion = valor.descripcion;
                    return;
                }
            });

        });
      
        $("#tblCheque tbody").append("<tr id=" + value.numeroCheque + ">" +
                                            "<td>" + value.numeroCheque + "</td>" +
                                            "<td>" + value.fechaDocto + "</td>" +
                                            "<td>" + value.importe + "</td>" +
                                            "<td id=" + value.banco + ">" + ban_descripcion + "</td>" +
                                            "<td><button type=\"button\" class=\"btn-danger btn-circle\" onclick=\"deleteLineTableCheque(" + value.numeroCheque + ");\">" +
                                            "<span class=\"glyphicon glyphicon glyphicon-remove\"></span></button></td></tr>");

        importeCH += value.importe;

    });
    $('#txtImporteTotalCH').val(importeCH);


}

function GetTextBancoByVal(id, callback) {
    if (typeof callback === 'function') {
        callback($.parseJSON(sessionStorage.getItem("Banco")));
    }
}
function setTableProduct(lstVentaDetalle) {

    $('#tblProductoVenta tbody').html('');

    $.each(lstVentaDetalle, function (key, value) {
        //  $("#cmbRegion").append("<option value=" + value.id + ">" + datos[key].descripcion + "</option>");

        $("#tblProductoVenta tbody").append("<tr id=" + value.vde_pro_id + ">" +
                                        "<td>" + value.vde_pro_id + "</td>" +
                                        "<td>" + value.vde_pro_descripcion + "</td>" +
                                        "<td contenteditable=\"true\" onblur=\"updateLineTableProduct(" + value.vde_pro_id + ");\">" + value.vde_cantidad + "</td>" +
                                        "<td>" + value.vde_precio_unitario + "</td>" +
                                        "<td id=\"lineTotal\" class=" + value.vde_id + ">" + value.vde_total + "</td>" +
                                        "<td><button type=\"button\" class=\"btn-danger btn-circle\" onclick=\"deleteLineTableProduct(" + value.vde_pro_id + ");\">" +
                                        "<span class=\"glyphicon glyphicon glyphicon-remove\"></span></button></td></tr>");
    });


}
function setMedioPagoTR(data) {

    if (data.importe > 0) {
        $('#txtFechaTR').val(data.fechaDocto);
        $('#txtImporteTR').val(data.importe);
        $('#cmbBancoTR').val(data.banco);
        $('#txtNumTransaccionTR').val(data.numero_transaccion);
    }
}
function setMedioPagoEF(data) {
    if (data.importe > 0) {
        $('#txtFechaEF').val(data.fechaDocto);
        $('#txtImporteEF').val(data.importe);
    }

}
function setMedioPagoTC(data) {


    if (data.importe > 0) {
        $('#txtFechaTC').val(data.fechaDocto);
        $('#txtImporteTC').val(data.importe);
        $('#txtNumCuotaTC').val(data.numero_cuota);
        $('#txtNumTransaccionTC').val(data.numero_tran);
        $('#cmbBancoTC').val(data.banco);
    }

}
function setMedioPagoTD(data) {


    if (data.importe > 0) {
        $('#txtFechaTD').val(data.fechaDocto);
        $('#txtImporteTD').val(data.importe);
        $('#txtNumTransaccionTD').val(data.numero_tran);
        $('#cmbBancoTD').val(data.banco);
    }

}

function setMedioPagoCS(data) {


    if (data.importe > 0) {
        
        $('#txtFechaCS').val(data.fechaDocto);
         
        $('#txtImporteCS').val(data.importe);
        $('#txtNumeroCuotaCS').val(data.numero_cuota);
        $('#txtCuotaPagadaCS').val(data.numero_cuota_pagada);
        $('#txtMontoCuotaCS').val(data.monto_cuota);
    }

}
function Insert() {


    if ($('#txtRut').val() == "" || $('#txtNombre').val() == "" || $('#txtGiro').val() == "") { mensajeModal("Debe Cargar Un Cliente"); return; }

    if ($('#txtFolio').val() == "" || $('#txtFechaDocto').val() == "" || $('#cmbSucursal').val() == "0") { mensajeModal("Ingrese Datos"); return; }

    if ($('#txtTotal').val() == "0") { mensajeModal("Debe Agregar Productos a la Venta"); return; }

    if ($('#tblProductoVenta > tbody  > tr').length == 0) { mensajeModal("Debe Agregar Productos a la Venta"); return; }

    var Login = $.parseJSON(sessionStorage.getItem("Login"));
    if (Login.sucursal != $('#cmbSucursal').val()) { mensajeModal("No puede crear ni modificar ventas que no sean de su sucursal"); return; }

    var importeCH = parseInt($('#txtImporteTotalCH').val());
    var importeTR = parseInt($('#txtImporteTR').val());
    var importeEF = parseInt($('#txtImporteEF').val());
    var importeTC = parseInt($('#txtImporteTC').val());
    var importeTD = parseInt($('#txtImporteTD').val());
    var importeCS = parseInt($('#txtImporteCS').val());

    var total = parseInt($('#txtTotal').val());

    if (importeCH == "") { importech = 0; }
    if (importeTR == "" || 0) { importeTR = 0; }
    if (importeEF == "") { importeEF = 0; }
    if (importeTC == "" || 0) { importeTC = 0; }
    if (importeTD == "" || 0) { importeTD = 0; }
    if (importeCS == "" || 0) { importeCS = 0; }

    if ((importeCH + importeTR + importeEF + importeTC + importeTD + importeCS) != total) { mensajeModal('El medio de Pago no corresponde al total de la Venta'); return; }


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
        vca_impuesto: 0,//$('#txtImpuesto').val(),
        vca_total: $('#txtTotal').val(),
        vca_est_id: 'A',
        vca_estado_docto: $('#cmbEstado').val(),
        vca_emp_rut: 'Empleado 1',
        vca_totalDescuento: $('#txtDescuento').val(),
        vca_porcDescuento: $('#txtPorcDescuento').val(),
        lstVentaDetalle: GetProductFromTable(),
        lstMedioPagoCH: GetMedioPagoCHFromHtml(),
        objMedioPagoTR: GetMedioPagoTRFromHtml(),
        objMedioPagoEF: GetMedioPagoEFFromHtml(),
        objMedioPagoTC: GetMedioPagoTCFromHtml(),
        objMedioPagoTD: GetMedioPagoTDFromHtml(),
        objMedioPagoCS: GetMedioPagoCSFromHtml()
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
            else if (parseInt(data) == -3) {
                mensajeModal("Ya alcanzó el limite de creditos. favor seleccione otra forma de Pago");

                $('#txtFechaCS').val(''),

                $('#txtImporteCS').val(''),
                $('#txtNumeroCuotaCS').val(''),
                $('#txtCuotaPagadaCS').val(''),
                $('#txtMontoCuotaCS').val('')
                return;
            }
            else {
                mensajeModal(data);
                return;
            }

            limpiar();

        },
        error: function (jqXHR, exception) {
            var msg = '';
            if (jqXHR.status === 0) {
                msg = 'Not connect.\n Verify Network.';
            } else if (jqXHR.status == 404) {
                msg = 'Requested page not found. [404]';
            } else if (jqXHR.status == 500) {
                msg = 'Internal Server Error [500].';
            } else if (exception === 'parsererror') {
                msg = 'Requested JSON parse failed.';
            } else if (exception === 'timeout') {
                msg = 'Time out error.';
            } else if (exception === 'abort') {
                msg = 'Ajax request aborted.';
            } else {
                msg = 'Uncaught Error.\n' + jqXHR.responseText;
            }
          
         }
    });
    return false;
}

function GetMedioPagoTCFromHtml() {
    if ($('#txtImporteTC').val() == "" || $('#txtImporteTC').val() == 0) { return null; }
    else {
        objMedioPagoTC = {
            fechaDocto: $('#txtFechaTC').val(),
            importe: $('#txtImporteTC').val(),
            banco: $('#cmbBancoTC').val(),
            numero_cuota: $('#txtNumCuotaTC').val(),
            numero_tran: $('#txtNumTransaccionTC').val(),
            vca_id: $('#txtNumInterno').val()
        }
    }
    return objMedioPagoTC;
}
function GetMedioPagoTDFromHtml() {
    if ($('#txtImporteTD').val() == "" || $('#txtImporteTD').val() == 0) { return null; }
    else {
        objMedioPagoTD = {
            fechaDocto: $('#txtFechaTD').val(),
            importe: $('#txtImporteTD').val(),
            banco: $('#cmbBancoTD').val(),
            numero_tran: $('#txtNumTransaccionTD').val(),
            vca_id: $('#txtNumInterno').val()
        }
    }
    return objMedioPagoTD;
}
function GetMedioPagoTRFromHtml() {

    if ($('#txtImporteTR').val() == "" || $('#txtImporteTR').val() == 0) { return null; }
    else {
        objMedioPagoTR = {
            fechaDocto: $('#txtFechaTR').val(),
            importe: $('#txtImporteTR').val(),
            banco: $('#cmbBancoTR').val(),
            numero_transaccion: $('#txtNumTransaccionTR').val(),
            vca_id: $('#txtNumInterno').val()
        }
    }
    return objMedioPagoTR;
}
function GetMedioPagoCHFromHtml() {

    if ($('#txtImporteTotalCH').val() > 0) {
        var _lstMedioPagoCH = [];
        var item;
        $('#tblCheque > tbody  > tr').each(function (tr) {

            var cheque = {

                numeroCheque: $(this).find("td")[0].innerHTML,
                fechaDocto: $(this).find("td")[1].innerHTML,
                importe: $(this).find("td")[2].innerHTML,
                banco: $(this).find("td")[3].id,

                vca_id: $('#txtNumInterno').val()

            }
            _lstMedioPagoCH.push(cheque)

        });
        return _lstMedioPagoCH;
    }
    else { return null; }
}
function GetMedioPagoEFFromHtml() {

    if (parseInt($('#txtImporteEF').val()) == 0) { return null; }
    else {
        objMedioPagoEF = {
            fechaDocto: $('#txtFechaEF').val(),
            importe: $('#txtImporteEF').val(),
            vca_id: $('#txtNumInterno').val()
        }
        return objMedioPagoEF;
    }
}
function GetMedioPagoCSFromHtml() {
    if ($('#txtImporteCS').val() == "" || $('#txtImporteCS').val() == 0) { return null; }
    else {
        objMedioPagoCS = {
            vca_id: $('#txtNumInterno').val(),
            fechaDocto: $('#txtFechaCS').val(),
            cli_rut: $('#txtRut').val(),
            cli_nombre: $('#txtNombre').val(),
            importe: $('#txtImporteCS').val(),
            numero_cuota: $('#txtNumeroCuotaCS').val(),
            numero_cuota_pagada: $('#txtCuotaPagadaCS').val(),
            monto_cuota: $('#txtMontoCuotaCS').val()

        }
    }
    return objMedioPagoCS;
}
function CalcularCuotaCS() {

    var monto_cuota = (parseInt($('#txtImporteCS').val()) / parseInt($('#txtNumeroCuotaCS').val()));
    $('#txtMontoCuotaCS').val(monto_cuota);
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
            vde_precio_unitario: parseInt($(this).find("td")[3].innerHTML),
            vde_pro_descripcion: $(this).find("td")[1].innerHTML


        }
        _lstVentaDetalle.push(producto)

    });
    return _lstVentaDetalle;
}
function GetClienteByRut() {

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

    

    $('#tblProductoVenta > tbody ').html('');
    $('#tblCheque > tbody ').html('');

    

    GetMaxDocNum();
    
    setSucursalUser($('#cmbSucursal'), function (datos) {

        $('#cmbSucursal').val(datos.sucursal);

    });
   
}

function limpiarMedioPagoTR() {

    $('#txtFechaTR').val('');
    $('#txtImporteTR').val(0);
    $('#cmbBancoTR').val(0);
    $('#txtNumTransaccionTR').val(0);

}
function limpiarMedioPagoCS() {

    $('#txtFechaCS').val('');
    $('#txtImporteCS').val(0);
    $('#txtNumeroCuotaCS').val(0);
    $('#txtCuotaPagadaCS').val(0);
    $('#txtMontoCuotaCS').val(0);
}
function limpiarMedioPagoEF() {

    $('#txtFechaEF').val('');
    $('#txtImporteEF').val(0);
   
}
function limpiarMedioPagoTC() {

    $('#txtFechaTC').val('');
    $('#txtImporteTC').val(0);
    $('#txtNumCuotaTC').val(0);
    $('#txtNumTransaccionTC').val(0);
    $('#cmbBancoTC').val(0);
}

function limpiarMedioPagoTD() {

    $('#txtFechaTD').val('');
    $('#txtImporteTD').val(0);
    $('#txtNumTransaccionTD').val(0);
    $('#cmbBancoTD').val(0);
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

        url: path_url_small + '/Producto.aspx/GetBySucursal',
        data: $.toJSON({ sucursal: JSON.stringify($.parseJSON(sessionStorage.getItem("Login")).sucursal) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data == null) { mensajeModal("No hay registro de Productos activos"); return; }

            $("#tblProductoLista tbody").html('');
            $.each(data, function (key, value) {

                        
                $("#tblProductoLista tbody").append("<tr><td class=\"filterable-cell\">" + value.id + '</td>' +
                                                    "<td class=\"filterable-cell\">" + value.descripcion + '</td>' +
                                                    "<td class=\"filterable-cell\">" + value.precio + "</td>" +
                                                    '<td class="filterable-cell">' + value.stock + "</td>" +
                                                    "<td class=\"filterable-cell\"><button type=\"button\" class=\"btn btn-link \" onclick=\"AddProduct({id:" + value.id + ",descripcion:'" + value.descripcion + "'   ,precio:" + value.precio + "})\">Agregar</button>" +
                                                    "</td></tr>");

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
                                        "<td id=" + $('#cmbBancoCH').val() + ">" + $('#cmbBancoCH option:selected').text() + "</td>" +
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
    $('#lblMontoCancelado').html(cont);
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
        //$('#txtTotal').val(Math.round((cont - parseInt($('#txtDescuento').val())) * 1.19), 1);
        $('#txtTotal').val(Math.round((cont - parseInt($('#txtDescuento').val()))), 1);
        $('#lblTotal').html($('#txtTotal').val());
    }
    else {
        $('#txtTotalAntesDescuento').val(Math.round(cont, 1));
        totalDescuento();
        $('#txtTotal').val(Math.round((cont - parseInt($('#txtDescuento').val())), 1));
        $('#lblTotal').html($('#txtTotal').val());
    }

}

function totalImpuesto() {

    if ($("#cmbFactura").is(':checked') == true) {
      //  $('#txtImpuesto').val(Math.round((parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())) * 0.19), 1);
        $('#txtTotal').val(Math.round((parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())) * 1.19), 1);
    }
    else {
     //   $('#txtImpuesto').val(0);
        $('#txtTotal').val(Math.round(parseInt($('#txtTotalAntesDescuento').val()) - parseInt($('#txtDescuento').val())), 1);
    }


}
function totalDescuento() {

    if (parseInt($('#txtPorcDescuento').val()) > 5) {
        mensajeModal("Excede maximo de descuento. esta permitido hasta un 5%", "txtPorcDescuento");
        $('#txtPorcDescuento').val(0);
        $('#txtDescuento').val(0);
        totalImpuesto();
        return;

    } else {
        $('#txtDescuento').val(Math.round((parseInt($('#txtPorcDescuento').val()) * parseInt($('#txtTotalAntesDescuento').val())) / 100), 1);
        totalImpuesto();
        $('#lblTotal').html($('#txtTotal').val());
    }
}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}