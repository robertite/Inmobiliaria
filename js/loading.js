
    $(document).ajaxStart(function () {
        $('#modalLoading').modal('show');
    }).ajaxComplete(function () { $('#modalLoading').modal('hide'); });

$(function () {
    $('input[type=button]').button();
});

    $(function () {
        //Dialog Mensaje para Return
        $('#msg').dialog({
            autoOpen: false,
            height: 'auto',
            width: 'auto',
            resizable: false,
            modal: true,
            bgiframe: true,
            title: 'Mensaje',
            buttons: {
                Aceptar: function () {
                    $(this).dialog('close');
                }
            }
        });

        //Dialog de espera del servidor
        $('#loading').dialog({
            autoOpen: false,
            title: 'Cargando',
            closeOnEscape: false,
            draggable: false,
            width: 460,
            minHeight: 50,
            modal: true,
            resizable: false,
            hide: {
                effect: 'drop'
            },
            buttons: {},
            open: function () {
                $('body').css('overflow', 'hidden');
            },
            close: function () {
                $('body').css('overflow', 'auto');
            }
        });
    });
