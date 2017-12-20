var path = window.location.pathname;


window.onload = function () {
    loadCmbRegion();
};

function loadCmbRegion() {

    var datos = $.parseJSON(localStorage.getItem("Region"));

    $("#cmbRegion").html('');
    $("#cmbRegion").append("<option>Seleccionar...</option>");
    $.each(datos, function (key, value) {
        $("#cmbRegion").append("<option value=" + datos[key].id + ">" + datos[key].descripcion + "</option>");

    });
}

function loadComunaByRegionId(sel) {
    var datos = $.parseJSON(localStorage.getItem("Comuna"));
    $("#cmbComuna").html('');
    $("#cmbComuna").append("<option>Seleccionar...</option>");
    for (var i = 0; i < datos.length; i++) {
        if (datos[i].reg_id == parseInt(sel.value)) {

            $("#cmbComuna").append("<option value=" + datos[i].id + ">" + datos[i].descripcion + "</option>");
            console.log(datos[i].id + ' ' + datos[i].descripcion);

        }
    }

}

function validaLogin() {

    //if (sessionStorage.getItem("session") == null) {
    //    window.location.href = "http://localhost:9128/Login.aspx";
    //}
    //else { alert("No");}
}
function Insert() {

    alert(0);
    var item = {
        rut: $('#txtRut').val(),
        nombre: $('#txtNombre').val(),
        email: $('#txtEmail').val(),
        giro: $('#txtGiro').val(),
        telefono: $('#txtTelefono').val(),
        estado: $('#txtEstado').val(),
        direccion: $('#txtDireccion').val(),
        calle: $('#txtCalle').val(),
        numero: $('#txtNumero').val(),
        departamento: $('#txtDepartamento').val(),
        comuna: $('#txtComuna').value,
    }
    console.log(item);
    $.ajax({
        type: "POST",
        url: 'http://localhost:9128/Cliente.aspx/Insert',
        data: $.toJSON({ cliente: JSON.stringify(item) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            var data = $.parseJSON(response.d);

            alert(data);

        },
        error: function (response) { alert(response.d); }
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

    $.ajax({
        type: "POST",
        url: 'http://localhost:9128/Cliente.aspx/GetByRut',
        data: $.toJSON({ rut: JSON.stringify($('#txtRut').val()) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);


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
            setComunaById(data.comuna, data.region);
            $('#cmbComuna').value = data.comuna;

        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}
