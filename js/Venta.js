var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;
var pro_sel;
window.onload = function () {

    GetAllRegion();
    GetAllComuna();

    //localStorage.setItem("Comuna", GetAllComuna());
};
function GetAllRegion() {

    $.ajax({
        type: "POST",
        url: path_url + '/GetAllRegion',    
        data: '{}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = $.parseJSON(response.d);

            localStorage.setItem("Region", JSON.stringify(data));

            //var datos = $.parseJSON(localStorage.getItem("Region"));
            //var len, index;
            //for (index = 0, len = datos.length; index < len; ++index) {
            //    console.log(datos[index].descripcion);
            //}

        },
        error: function (response) {
            return "error";
        }
    });
    return false;

}

function GetAllComuna() {

    $.ajax({
        type: "POST",
        url: path_url+'/GetAllComuna',
        data: '{}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = $.parseJSON(response.d);

            localStorage.setItem("Comuna", JSON.stringify(data));
            
           
        },
        error: function (response) {
            return "error";
        }
    });
    return false;
}

function GetByRut() {

    if ($('#txtRut').val() == "") {
        mensajeModal("Ingrese Rut", "txtRut");
        return;

    }

    $.ajax({
        type: "POST",

        url: path_url_small + '/Cliente.aspx/GetByRut',
        data: $.toJSON({ rut: JSON.stringify($('#txtRut').val()) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data.estado_transaccion == null) { mensajeModal("No Existe Cliente", "txtRut"); limpiar(); return; }

            $('#txtRut').val(data.rut);
            $('#txtNombre').val(data.nombre);         
            $('#txtGiro').val(data.giro);

        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}
function limpiar() {
    $('#txtRut').val('');
    $('#txtNombre').val('');
    $('#txtGiro').val('');
    $('#tblProductoVenta > tbody ').html('');
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
function CargarProductos()
{
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

function AddProduct(value)
{  
    if ($('#' + value.id)[0] != undefined) { mensajeModal("Usted Ya registró este Producto"); $('#modalProductos').modal('hide'); return; }
    $("#tblProductoVenta tbody").append("<tr id="+value.id+"><td>" + value.id + '</td><td>' + value.descripcion + "</td><td contenteditable=\"true\" onblur=\"updateLineTableProduct("+value.id+");\">1</td><td>" + value.precio + "</td><td id=\"lineTotal\" class="+value.id+">" + value.precio + "</td></tr>");
    $('#modalProductos').modal('hide');

    updateDocTotal();
    return;
}
function updateLineTableProduct(value)
{
   
    $('#' + value)[0].cells[4].innerHTML = parseInt($('#' + value)[0].cells[2].innerHTML) * parseInt($('#' + value)[0].cells[3].innerHTML);

    updateDocTotal();
}
function updateDocTotal() {
    var cont = 0;
    $('#tblProductoVenta > tbody  > tr').each(function (tr) {
       
        
        cont += parseInt($(this).find("td")[4].innerHTML);
    });

    Total(cont);

}
function Total(cont)
{
    if ($("#cmbFactura").is(':checked') == true) {
        $('#txtTotalAntesImpuesto').val(cont)
        $('#txtImpuesto').val(parseInt(cont) * 0.19)
        $('#txtTotal').val(cont * 1.19);
    }
    else {
        $('#txtTotalAntesImpuesto').val(cont)
        $('#txtImpuesto').val(0)
        $('#txtTotal').val(cont);
    }
    
}
function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}