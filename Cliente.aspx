<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

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

        <div class="row contenedor-principal container-fluid">


            <div class="col-lg-6 contenedor2">
                <fieldset>
                    <legend>Información de Clientes</legend>
                    <div class="row">
                        <div class="col-lg-6">

                            <label for="txtRut">Rut</label>
                            <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" placeholder="19234231-4" />
                            <button class="pull-right  btn btn-success" type="button">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>


                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="txtGiro">Giro</label>
                                <input type="text" class="form-control" id="txtGiro" name="txtGiro" placeholder="Particular" required="required">
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-lg-6 ">

                            <div class="form-group">
                                <label for="txtEmail">Email </label>
                                <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="name@example.com">
                            </div>
                        </div>
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label for="txtNombre">Nombre</label>
                                <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Alan Brito Delgado" required="required">
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

                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="radio" name="cmbEstado" id="cmbActivo" value="optActivo">
                                    Activo
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="radio" name="cmbEstado" id="cmbInactivo" value="optInactivo">
                                    Inactivo
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="cmbRegion">Region</label>
                                <select id="cmbRegion" class="form-control" name="cmbRegion" required="required">
                                    <option selected>Seleccione...</option>
                                    <option>...</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="cmbComuna">Comuna</label>
                                <select id="cmbComuna" name="cmbComuna" class="form-control" required="required">
                                    <option selected>Seleccione...</option>
                                    <option>...</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="button" class="btn btn-success" value="Registrar" />
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
                            <input type="text" class="form-control" id="txtCalle" name="txtCalle" placeholder="av. vitacura" required="required">
                        </div>
                    </div>
                    <div class="row col-lg-12">

                        <div class="form-group">
                            <label for="txtNumero">Número</label>
                            <input type="text" class="form-control" id="txtNumero" name="txtNumero" placeholder="210" required="required">
                        </div>
                    </div>
                    <div class="row col-lg-12">
                        <div class="form-group">
                            <label for="txtDepto">Dpto./ Casa/ Oficina/ Condominio (opcional)</label>
                            <input type="text" class="form-control" id="txtDepto" name="txtDepto" placeholder="Depto 201C" required="required">
                        </div>
                    </div>
                </fieldset>
            </div>


        </div>

    </div>









</body>
</html>
