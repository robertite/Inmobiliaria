
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