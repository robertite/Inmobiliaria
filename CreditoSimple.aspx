<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreditoSimple.aspx.cs" Inherits="CreditoSimple" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name='viewport' content='width=device-width initial-scale=1'>
    <meta name='mobile-web-app-capable' content='yes'>
    <link rel='stylesheet' href='css/estilos.css'>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-datepicker3.min.css" rel="stylesheet" />

    <title>Muebles Oliva</title>

</head>
<body class="blog-body">

    <div class="container">
        <div class="row header">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <img src="img/logo.jpg" class="logo-img" />
            </div>


        </div>
        <div class="row menu">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">

                    <ul class="nav navbar-nav list-inline text-center">
                        <li><a href="Venta.aspx">Venta</a></li>
                        <li><a href="Cliente.aspx">Cliente</a></li>
                        <li><a href="Producto.aspx">Producto</a></li>
                        <li class="active"><a href="CreditoSimple.aspx">Credito Simple</a></li>
                        <li><a href="Informe.aspx">Informes</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx">Salir</a></li>
                    </ul>
                </div>
            </nav>

        </div>
        <form id="form" data-toggle="validator">
            <div class="row contenedor-principal container-fluid">
                <div class="col-lg-6 contenedor2">
                    <fieldset>
                        <legend>Información de Credito</legend>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtNumInterno">N° Venta</label>
                                    <input type="text" id="txtNumInterno" name="txtNumInterno" class="form-control" placeholder="102" />
                                    <%--data-error="Ingrese Numero Venta"--%>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>
                            <div class="col-lg-6 form-group">
                               <label for="txtRut">Rut</label>
                                <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" oninput="checkRut(this)" placeholder="19234231-4" data-error="Ingrese Rut" />
                                <div class="help-block with-errors"></div>
                            </div>

                        </div>

                        <div class="row">


                            <div class="col-lg-6 form-group">

                                <div class="form-group">
                                    <label for="txtDescripcion">Nombre</label>
                                    <input type="text" class="form-control control_txt" id="txtNombre" name="txtNombre" placeholder="alan brito" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>


                            </div>
                            <div class=" col-lg-6 form-group">
                                <label for="txtFecha">Fecha Credito</label>
                                <div class="input-group date datepicker" data-provide="datepicker" >

                                    <input type="text" id="txtFecha" name="txtFecha" class="form-control control_txt" readonly="true">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th" ></span>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtImporte">Importe</label>
                                    <input type="number" class="form-control control_txt" value="" id="txtImporte" name="txtImporte" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtNumeroCuotas">N° Cuotas</label>
                                    <input type="number" class="form-control control_txt" id="txtNumeroCuotas" name="txtNumeroCuotas" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtCuotasPagadas">N° Cuotas Pagadas</label>
                                    <input type="number" class="form-control control_txt" id="txtCuotasPagadas" name="txtCuotasPagadas" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtMontoCuota">Monto Cuota</label>
                                    <input type="number" class="form-control control_txt" id="txtMontoCuota" name="txtMontoCuota" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <button type="button" class="btn btn-success" onclick="GetByParams()">
                                    <span class="glyphicon glyphicon-search"></span>Buscar 
                                </button>
                                <button type="button" class="btn btn-success" onclick="Insert()">
                                    <span class="glyphicon glyphicon-floppy-disk"></span>Pagar Cuota 
                                </button>
                                <button type="reset" class="btn btn-success" onclick="limpiar();">
                                    <span class="glyphicon glyphicon-trash"></span>Limpiar 
                                </button>
                               <%-- <button type="button" class="btn btn-success">
                                    <span class="glyphicon glyphicon-print"></span>Imprimir Comprobante 
                                </button>--%>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </form>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">Validacion de Formulario</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="mensaje"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal Loading-->
    <div class="modal fade" id="modalLoading" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div id="loading_mensaje">
                        <h4>Conectando con el Servidor...</h4>
                    </div>
                </div>
                <div class="modal-body">
                    <div id="msg">
                    </div>
                    <div id="loading">

                        <div style="text-align: center" id="loading_image">
                            <img src="img/loading.GIF" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
     <!--Modal Ventas Cabeceras-->
    <div class="modal fade" id="modalCreditoSimple" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="H2">Lista de Creditos</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="lista-productos">
                       <%-- <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon">Buscar</span>
                                    <input id="Text1" type="text" class="form-control" placeholder="Ingrese el producto que desea Buscar...">
                                </div>
                            </div>

                        </div>--%>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <table id="tblCreditoSimple" class="table table-hover form-group">
                                    <thead>
                                        <tr>
                                            <th class="col-lg-2">N° Interno</th>
                                            <th class="col-lg-2">Rut</th>
                                            <th class="col-lg-3">Nombre</th>
                                            <th class="col-lg-3">Total</th>
                                            <th class="col-lg-2"></th>
                                        </tr>
                                    </thead>
                                    <tbody class="buscar"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Salir</button>

                </div>
            </div>
        </div>
    </div>

    <script src="js/CreditoSimple.js"></script>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/jquery.serializejson.js"></script>
    <script src="js/jquery.json-2.2.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/locales/bootstrap-datepicker.es.min.js"></script>
    <script src="js/loading.js"></script>

</body>
</html>
