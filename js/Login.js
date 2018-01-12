var path_url = window.location.protocol + '//' + window.location.host + window.location.pathname;
var path_url_small = window.location.protocol + '//' + window.location.host;

window.onload = function(){
    Logout();
}
function GetLogin()
{
    if ($('#txtEmail').val() == "" || $('#txtPassword').val() == "")
    {
        mensajeModal("Ingrese Datos", "txtEmail");
        return;
    }
    var Login = { email: $('#txtEmail').val(), 
                   pass: $('#txtPassword').val() };
    
    $.ajax({
        type: "POST",
        url: path_url+'/GetLogin',
        data: $.toJSON({ valform: JSON.stringify(Login) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);
            if (data.estado_transaccion == "-1") {
                mensajeModal("El email o contraseña son incorrectos verifique que el usuario no este deshabilitado", "txtEmail");
                return;
            }
            else {
                sessionStorage.setItem("Login", JSON.stringify(data));
                location.href = path_url_small+"/Venta.aspx";
            }
           // console.log(data.lstPerfil[0].formulario);
          
           
        },
        error: function (response) {
            alert(response.responseText);
        }
    });
    return false;
}

function mensajeModal(mensaje, focus) {
    $('#mensaje').html('<p>' + mensaje + '</p>');
    $('#myModal').modal('show');
    $('#' + focus).focus();

}

function Logout() {

    sessionStorage.clear();
}