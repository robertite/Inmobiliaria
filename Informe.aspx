<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Informe.aspx.cs" Inherits="Informe" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name='viewport' content='width=device-width initial-scale=1'>
    <meta name='mobile-web-app-capable' content='yes'>
    <link rel='stylesheet' href='css/estilos.css'>
    <link href="css/venta.css" rel="stylesheet" />
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
                        <li><a href="CreditoSimple.aspx">Credito Simple</a></li>
                        <li class="active"><a href="Informe.aspx">Informes</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx">Salir</a></li>
                    </ul>
                </div>
            </nav>

        </div>
        <form id="form" data-toggle="validator">
            <div class="row contenedor-principal container-fluid">
                <div class="col-lg-6 contenedor1">
                    <fieldset>
                        <legend>Descarga de Informes</legend>
                        <div class="row">
                            <div class="col-lg-12">
                                <select class="form-control form-control-lg control_cmb" id="cmbInforme">
                                    <option value="0" selected="selected">SELECCIONAR...</option>
                                    <option value="1">CLIENTES</option>
                                    <option value="2">CREDITOS</option>
                                    <option value="3">PRODUCTOS</option>
                                    <option value="4">VENTAS</option>


                                </select>
                            </div>
                        </div>
                        <br />
                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <label for="txtFechaInicio">Fecha Inicio</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFechaInicio" name="txtFechaInicio" class="form-control control_txt">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-6 form-group">
                                <label for="txtFechaTermino">Fecha Termino</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFechaTermino" name="txtFechaTermino" class="form-control control_txt">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">

                                <button type="button" class="btn btn-success control_btn" onclick="Descargar()">
                                    <span class="glyphicon glyphicon-download"></span>Descargar 
                                </button>
                                <button type="reset" class="btn btn-success control_btn">
                                    <span class="glyphicon glyphicon-trash"></span>Limpiar 
                                </button>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </form>
        <br />
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
    <script src="js/Informe.js"></script>
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
