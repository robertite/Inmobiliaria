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
                                    <label for="txtCodigo">Codigo</label>
                                    <input type="text" id="txtCodigo" name="txtCodigo" class="form-control" placeholder="102938" required="required"
                                        data-error="Ingrese Codigo Producto" />
                                    <button class="pull-right  btn btn-success" type="button">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="txtDescripcion">Descripcion</label>
                                    <input type="text" class="form-control" id="txtDescripcion" name="txtDescripcion" placeholder="comedor" required="required"
                                        data-error="Ingrese Descripcion">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-6 ">

                                <div class="form-group">
                                    <label for="txtPrecioUnitario">Precio Unitario </label>
                                    <input type="number" class="form-control" id="txtPrecioUnitario" name="txtPrecioUnitario" placeholder="400000" required="required" data-error="Ingrese Precio Unitario">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-success">
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

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/moment.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap-datetimepicker.es.js"></script>
    <script src="js/Validator.js"></script>
</body>
</html>
