<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>


<!DOCTYPE html>
<html lang="es">
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
                <img src="img/logo.jpg" class="logo-img">
            </div>

        </div>
        <div class="row menu">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">

                    <ul class="nav navbar-nav list-inline text-center">
                        <li><a href="Venta.aspx">Venta</a></li>
                        <li class="active"><a href="Cliente.aspx">Cliente</a></li>
                        <li><a href="Producto.aspx">Producto</a></li>


                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx">Salir</a></li>
                    </ul>
                </div>
            </nav>

        </div>
        <form id="form" data-toggle="validator" method="post">
            <div class="row contenedor-principal container-fluid">


                <div class="col-lg-6 contenedor2">
                    <fieldset>
                        <legend>Información de Clientes</legend>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtRut">Rut</label>
                                    <input type="text" id="txtRut" name="txtRut" class="form-control" placeholder="19234231-4" required="required" oninput="checkRut(this)"
                                        data-error="Ingrese Rut" />
                                    <button class="pull-right  btn btn-success" type="button" onclick="GetByRut()">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <label for="txtEmail">Email </label>
                                    <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="name@example.com" required="required" data-error="Ingrese Email">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>


                        </div>

                        <div class="row">

                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label for="txtNombre">Nombre</label>
                                    <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Alan Brito Delgado" required="required" data-error="Ingrese Nombre">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtGiro">Giro</label>
                                    <input type="text" class="form-control" id="txtGiro" name="txtGiro" placeholder="Particular" required="required"
                                        data-error="Ingrese Giro">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label for="txtTelefono">Telefono</label>
                                    <input type="number" class="form-control" id="txtTelefono" name="txtTelefono" />
                                </div>
                            </div>

                            <div class=" col-lg-6 radio">
                                <p></p>
                                <label class="radio-inline">
                                    <input class="form-check-input" checked="checked" type="radio" name="cmbEstado" id="cmbActivo" value="optActivo">
                                    Activo
                                </label>

                                <label class="radio-inline">
                                    <input class="form-check-input" type="radio" name="cmbEstado" id="cmbInactivo" value="optInactivo">
                                    Inactivo
                                </label>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="cmbRegion">Region</label>
                                    <select id="cmbRegion" class="form-control" name="cmbRegion" required="required" data-error="Seleccione Región">
                                        <option value="0">Seleccione...</option>

                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="cmbComuna">Comuna</label>
                                    <select id="cmbComuna" name="cmbComuna" class="form-control" required="required">
                                        <option value="0" selected>Seleccione...</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>



                <div class="col-lg-offset-1 col-lg-5 contenedor2">
                    <fieldset>
                        <legend>Direccion</legend>
                        <div class="row col-lg-12">

                            <div class="form-group">
                                <label for="txtCalle">Calle</label>
                                <input type="text" class="form-control" id="txtCalle" name="txtCalle" placeholder="av. vitacura" required="required" data-error="Ingrese Calle">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="row col-lg-12">

                            <div class="form-group">
                                <label for="txtNumero">Número</label>
                                <input type="number" class="form-control" id="txtNumero" name="txtNumero" placeholder="210" required="required" data-error="Ingrese Numero">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="row col-lg-12">
                            <div class="form-group">
                                <label for="txtDepto">Dpto./ Casa/ Oficina/ Condominio (opcional)</label>
                                <input type="text" class="form-control" id="txtDepto" name="txtDepto" placeholder="Depto 201C" required="required" data-error="Ingrese Dato">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>

                    </fieldset>
                </div>
                <div class="row col-lg-12">
                    <button type="button" class="btn btn-success" onclick="Insert();">
                        <span class="glyphicon glyphicon-floppy-disk"></span>Registrar 
                    </button>
                    <button type="reset" class="btn btn-success">
                        <span class="glyphicon glyphicon-trash"></span>Limpiar 
                    </button>
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

    <script src="js/Cliente.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap-datetimepicker.es.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/jquery.serializejson.js"></script>
    <script src="js/jquery.json-2.2.min.js"></script>
    <script src="js/loading.js"></script>

</body>
</html>
