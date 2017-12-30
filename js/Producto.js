﻿var path_url = window.location.protocol +'//'+ window.location.host + window.location.pathname;
function Insert() {
    if ($('#txtId').val() == "" || $('#txtDesripcion').val() == "" || $('#txtPrecio').val() == "" )
    {
        mensajeModal("Ingrese Datos");
        return;
    }
    var estado;
    if ($("#cmbActivo").is(':checked') == true) {
        estado = 'A';
    }
    else {
        estado = 'E';
    }
    var item = {
        id: $('#txtId').val(),
        descripcion: $('#txtDescripcion').val(),
        precio: $('#txtPrecio').val(),
        est_id: estado     
    }
 
    $.ajax({
        type: "POST",
        url: path_url + '/Insert',
        data: $.toJSON({ objProducto: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);
            mensajeModal(data);
            limpiar();
        },
        error: function (response) { alert("Error"); }
    });
    return false;
}

function GetById() {

    $.ajax({
        type: "POST",
        url: path_url + '/GetById',
        data: $.toJSON({ id: JSON.stringify($('#txtId').val()) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data.estado_transaccion == null) { mensajeModal("No Existe Producto"); limpiar(); return; }

            $('#txtId').val(data.id);
            $('#txtDescripcion').val(data.descripcion);
           
            $('#txtPrecio').val(data.precio);
            if (data.est_id == 'A') {
                $('#cmbActivo').prop("checked", true);
            }
            else {

                $('#cmbInactivo').prop("checked", true);
            }
            


        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}
function limpiar() {

    $('#txtId').val('');
    $('#txtDescripcion').val('');
    $('#txtPrecio').val('');
    $('#cmbActivo').prop("checked", false);
    $('#cmbInactivo').prop("checked", false);
 
}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}