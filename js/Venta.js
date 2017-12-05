
    //$('.nav a').click(function (e) {
    //    $(this).tab('show');

    //    var tabContent = '#tabContent' + this.id;

    //    $('#tabContent1').hide();
    //    $('#tabContent2').hide();
    //    $('#tabContent3').hide();
    //    $(tabContent).show();
    //});

    //$('#myModal').on('shown.bs.modal', function () {
    //    $('#btnMedioDePago').trigger('focus')
    //})

windows.onload = load_date();

    function load_date() {
    $('.input-group.date').datetimepicker({
        locale: 'es',
    });
}