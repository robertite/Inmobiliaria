<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Producto.aspx.cs" Inherits="Producto" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name='viewport' content='width=device-width initial-scale=1'>
    <meta name='mobile-web-app-capable' content='yes'>
    <link rel='stylesheet' href='css/bootstrap.css'>
    <link rel='stylesheet' href='css/estilos.css'>
    <title>Blog De Música</title>

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
                        <li class="active"><a href="Producto.aspx">Producto</a></li>
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
                        <legend>Información de Productos</legend>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtId">Codigo</label>
                                    <input type="text" id="txtId" name="txtId" class="form-control" placeholder="102938" required="required"
                                        data-error="Ingrese Codigo Producto" />
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtDescripcion">Descripcion</label>
                                    <input type="text" class="form-control control_txt" id="txtDescripcion" name="txtDescripcion" placeholder="comedor" required="required"
                                        data-error="Ingrese Descripcion">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-6 ">

                                <div class="form-group">
                                    <label for="txtPrecio">Precio Unitario </label>
                                    <input type="number" class="form-control control_txt" id="txtPrecio" name="txtPrecio" data-error="Ingrese Precio Unitario">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class=" col-lg-6 radio">
                                <p></p>
                                <label class="radio-inline">
                                    <input class="form-check-input control_txt" type="radio" name="cmbEstado" id="cmbActivo" value="optActivo">
                                    Activo
                                </label>

                                <label class="radio-inline">
                                    <input class="form-check-input control_txt" type="radio" name="cmbEstado" id="cmbInactivo" value="optInactivo">
                                    Inactivo
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <button type="button" class="btn btn-success" onclick="GetById()">
                                    <span class="glyphicon glyphicon-search"></span>Buscar 
                                </button>
                                <button type="button" class="btn btn-success" onclick="Insert()">
                                    <span class="glyphicon glyphicon-floppy-disk"></span>Registrar 
                                </button>
                                <button type="reset" class="btn btn-success">
                                    <span class="glyphicon glyphicon-trash"></span>Limpiar 
                                </button>
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
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap-datetimepicker.es.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/jquery.serializejson.js"></script>
    <script src="js/jquery.json-2.2.min.js"></script>
    <script src="js/Producto.js"></script>
    <script src="js/loading.js"></script>
</body>
</html>
