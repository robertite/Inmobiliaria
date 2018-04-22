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



function Descargar() {

    if ($('#cmbInforme').val() == 0 || $('#txtFechaInicio').val() == "" || $('#txtFechaTermino').val() == "") {

        mensajeModal("Ingrese Datos");
    }
    console.log($('li.activo').text());

}
window.onload = function () {

    $('.datepicker').datepicker({
        format: 'dd-mm-yyyy',
        language: 'es'

    });
    limpiar();
    Initialize();
}

function limpiar(){

    $('#cmbInforme').val(0);
    $('#txtFechaInicio').val('');
    $('#txtFechaTermino').val('');
}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}