window.onload = function () {

    GetAllRegion();

    //localStorage.setItem("Comuna", GetAllComuna());
};
function GetAllRegion() {

    $.ajax({
        type: "POST",
        url: 'http://localhost:58910/Venta.aspx/GetAllRegion',
        data: '{}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = $.parseJSON(response.d);

            localStorage.setItem("Region", JSON.stringify(data));

            var datos = $.parseJSON(localStorage.getItem("Region"));
            var len, index;
            for (index = 0, len = datos.length; index < len; ++index) {
                console.log(datos[index].descripcion);
            }
            //alert(data.lstRegion);
            //alert(localStorage.getItem("Region"));
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
        url: 'http://localhost:58910/Venta.aspx/GetAllComuna',
        data: '{}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            var data = $.parseJSON(response.d);
            return data;
        },
        error: function (response) {
            return "error";
        }
    });
    return false;
}