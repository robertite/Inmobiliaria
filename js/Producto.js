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
    Initialize();
   
}
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
        est_id: estado,
        lstProductoAlmacen: GetproductoAlmacenFromTable()
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
            
            GetAlmacenByProductoId($('#txtId').val());

        },
        error: function (response) {
            alert('Error');
        }
    });
    return false;
}
function GetproductoAlmacenFromTable() {

    var _lstProductoAlmacen = [];
    var item;
    $('#tblAlmacen > tbody  > tr').each(function (tr) {

        var productoAlmacen = {

            alm_id: parseInt($(this).find("td")[0].innerHTML),
            alm_nombre: $(this).find("td")[1].innerHTML,
            alm_stock: parseInt($(this).find("td")[2].innerHTML)
           
        }
        _lstProductoAlmacen.push(productoAlmacen)

    });
    return _lstProductoAlmacen;
}
function GetAlmacenByProductoId(txtId) {

    $.ajax({
        type: "POST",
        url: path_url + '/GetAlmacenByProductoId',
        data: $.toJSON({ id: JSON.stringify(txtId) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

           
            $("#tblAlmacen tbody").html('');
            $.each(data, function (key, value) {
                $("#tblAlmacen tbody").append("<tr id=" + value.alm_id + ">" +
                                           "<td>" + value.alm_id + "</td>" +
                                           "<td>" + value.alm_nombre + "</td>" +
                                           "<td contenteditable=\"true\">" + value.alm_stock + "</td>" +
                                           "</tr>");

            });
        },
        error: function (response) {
            alert('Error');
        }
    });
    return false;
}

function limpiar() {

    $("#tblAlmacen tbody").html('');
    $('#txtId').val('');
    $('#txtDescripcion').val('');
    $('#txtPrecio').val('');
    $('#cmbActivo').prop("checked", true);
    $('#cmbInactivo').prop("checked", false);
 
 
}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}