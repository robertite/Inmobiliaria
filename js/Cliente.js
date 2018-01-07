var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var reg_id;

window.onload = function () {

    if (localStorage.getItem("Region") === null) {
        GetAllRegion();
    }
    if (localStorage.getItem("Comuna") === null) {
        GetAllComuna();
    }


    loadCmbRegion();
    $("#cmbRegion").change(function () {

        reg_id = $("#cmbRegion").val();      
        loadComunaByRegionId(reg_id, function (data) {
          
            $("#cmbComuna").html('');
            $("#cmbComuna").append("<option value=0>Seleccionar...</option>");
            for (var i = 0; i < data.length; i++) {
                
                if (data[i].reg_id == parseInt(reg_id)) {

                    $("#cmbComuna").append("<option value=" + data[i].id + ">" + data[i].descripcion + "</option>");
                  

                }
            }
        });
    });
    }
//window.onbeforeunload = function () {

//    limpiarCookies();
//}
//function limpiarCookies() {

//    localStorage.clear();
//}
function loadCmbRegion() {

    var datos = $.parseJSON(localStorage.getItem("Region"));

    $("#cmbRegion").html('');
    $("#cmbRegion").append("<option value = 0>Seleccionar...</option>");
    $.each(datos, function (key, value) {
        $("#cmbRegion").append("<option value=" + datos[key].id + ">" + datos[key].descripcion + "</option>");

    });
}

function loadComunaByRegionId(name, callback) {

     if (typeof callback === 'function') {
         callback($.parseJSON(localStorage.getItem("Comuna")));
     }
 }
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
        url: path_url + '/GetAllComuna',
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
function validaLogin() {

    //if (sessionStorage.getItem("session") == null) {
    //    window.location.href = "http://localhost:9128/Login.aspx";
    //}
    //else { alert("No");}
}
function Insert() {
    if ($('#txtRut').val() == "" || $('#txtNombre').val() == "" || $('#txtEmail').val() == "" || $('#txtGiro').val() == ""
        || $('#txtTelefono').val() == "" || $('#txtCalle').val() == "" || $('#txtNumero').val() == "" || $('#txtDepto').val() == ""
        || $('#cmbComuna').val() == "0") {
        mensajeModal("Ingrese Datos");
        return;
    }
    var estado;
    if ($("#cmbActivo").is(':checked') == true)
    {
        estado = 'A';
    }
    else
    {
        estado = 'E';
    }
    var item = {
        rut: $('#txtRut').val(),
        nombre: $('#txtNombre').val(),
        email: $('#txtEmail').val(),
        giro: $('#txtGiro').val(),
        telefono: $('#txtTelefono').val(),
        estado: estado,
        calle: $('#txtCalle').val(),
        numero: $('#txtNumero').val(),
        departamento: $('#txtDepto').val(),
        comuna: $('#cmbComuna').val(),
    }

    $.ajax({
        type: "POST",
        url: path_url+'/Insert',
        data: $.toJSON({ objCliente: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);
            mensajeModal(data);
            limpiar();
        },
        error: function (response) { mensajeModal("Error"); }
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
function GetByRut() {

    if ($('#txtRut').val() == "")
    {
        mensajeModal("Ingrese Rut", "txtRut");
        return;
       
    }

    $.ajax({
        type: "POST",
        url: path_url+'/GetByRut',
        data: $.toJSON({ rut: JSON.stringify($('#txtRut').val()) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);

            if (data.estado_transaccion == null) { mensajeModal("No Existe Cliente"); limpiar(); return; }

            $('#txtRut').val(data.rut);
            $('#txtNombre').val(data.nombre);
            $('#txtEmail').val(data.email);
            $('#txtGiro').val(data.giro);
            $('#txtTelefono').val(data.telefono);

            if (data.estado == 'A') {
                $('#cmbActivo').prop("checked", true);
            }
            else {

                $('#cmbInactivo').prop("checked", true);
            }
            $('#txtDireccion').val(data.direccion);
            $('#txtCalle').val(data.calle);
            $('#txtNumero').val(data.numero);
            $('#txtDepto').val(data.departamento);
            $('#cmbRegion').val(data.region);


            loadComunaByRegionId(data.region, function (comunas) {

                $("#cmbComuna").html('');
                $("#cmbComuna").append("<option value=0>Seleccionar...</option>");
                for (var i = 0; i < comunas.length; i++) {

                    if ((comunas[i].reg_id == parseInt(data.region))) {

                        if (comunas[i].id == parseInt(data.comuna)) {
                            $("#cmbComuna").append("<option selected=selected value=" + comunas[i].id + ">" + comunas[i].descripcion + "</option>");
                        }
                        else {
                            $("#cmbComuna").append("<option value=" + comunas[i].id + ">" + comunas[i].descripcion + "</option>");
                        }
                    }
                }
            });

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
   $('#txtEmail').val('');
   $('#txtGiro').val('');
   $('#txtTelefono').val('');
   $('#cmbActivo').prop("checked", false);
   $('#cmbInactivo').prop("checked", false);
   $('#txtCalle').val('');
   $('#txtNumero').val('');
   $('#txtDepto').val('');
   $('#cmbRegion').val(0);
   $('#cmbComuna').val(0);
}
function mensajeModal(mensaje, focus)
{
    $('#mensaje').html('<p>'+mensaje+'</p>');
    $('#myModal').modal('show');
    $('#'+focus).focus();
    
}