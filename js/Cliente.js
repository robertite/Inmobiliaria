var path = window.location.pathname;

window.onload = function() {
    validaLogin();
};

function validaLogin (){ 
   
    //if (sessionStorage.getItem("session") == null) {
    //    window.location.href = "http://localhost:9128/Login.aspx";
    //}
    //else { alert("No");}
}
function insert() {
   
    alert(sessionStorage.getItem("Email"));
    $.ajax({
        type: "POST",
        url: '',
        data: $.toJSON({
            //npag: npag,
            //Id: $("#txtFolio").val(),
            rut: $('#txtRut').val()
        }),
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

//var path_url = window.location.pathname;

////Inicializamos Combo Empresa
//$(document).ready(function () {

//    LoadCmbProveedor();

//});


//function LoadCmbProveedor() {

//    //cargar sucursales de SAP en control CMBSucursal
//    $.ajax({
//        type: "POST",
//        url: path_url + '/GetAllProveedor',
//        data: {},
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: function (response) {

//            var data = eval(response.d);

//            armaCmbProveedor(data.array);

//        },
//        error: function (response) {
//            alert(response.responseText);

//        }
//    });
//    return false;

//}