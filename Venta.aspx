<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Venta.aspx.cs" Inherits="Venta" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name='viewport' content='width=device-width initial-scale=1'>
    <meta name='mobile-web-app-capable' content='yes'>
    <link rel='stylesheet' href='css/bootstrap.css'>
    <link rel='stylesheet' href='css/estilos.css'>
    <link href="css/datepicker.css" rel="stylesheet" />
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
                        <li class="active"><a href="Venta.aspx">Venta</a></li>
                        <li><a href="Cliente.aspx">Cliente</a></li>
                        <li><a href="Producto.aspx">Producto</a></li>



                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx">Salir</a></li>
                    </ul>
                </div>
            </nav>

        </div>

        <div class="row contenedor-principal container-fluid">

            <fieldset>
                <legend>Nota de Venta</legend>
                <div class="col-lg-4 contenedor1">

                    <div class="row">

                        <div class="col-lg-12 form-group">

                            <label for="txtRut">Rut</label>
                            <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" placeholder="19234231-4" />
                            <button class="pull-right  btn btn-success" type="button">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12  form-group">
                            <label for="txtNombre">Nombre</label>
                            <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Fabial Oliva.." readonly="true">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 form-group">

                            <label for="txtGiro">Giro</label>
                            <input type="text" class="form-control" id="txtGiro" name="txtGiro" placeholder="Particular" readonly="true">
                        </div>
                    </div>
                </div>




                <div class="col-lg-offset-2 col-lg-6 contenedor1">

                    <div class="row">

                        <div class="col-lg-6 form-group">
                            <label for="txtCalle">N° Interno</label>
                            <input type="text" class="form-control" id="txtCalle" name="txtCalle" placeholder="22312" required="required">
                        </div>
                        <div class="col-lg-6 form-group">
                            <label for="cmbEstado">Estado</label>
                            <select id="cmbEstado" class="form-control" name="cmbEstado">
                                <option selected>Abierto</option>
                                <option>Cerrado</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 form-group">
                            <label for="dp4">Contabilizacion</label>
                            <div class="input-group date" id="dp4" data-date="25-11-2017" data-datepicker-format="DD-MM-YYYY">
                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFecContabilizacion" name="txtFecContabilizacion" readonly>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-lg-4 form-group">
                            <label for="dp2">Vencimiento</label>
                            <div class="input-group date" id="dp2" data-date="25-11-2017" data-datepicker-format="DD-MM-YYYY">
                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFecVencimiento" name="txtFecVencimiento" readonly>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-lg-4 form-group">
                            <label for="dp3">Documento</label>
                            <div class="input-group date" id="dp3" data-date="25-11-2017" data-datepicker-format="DD-MM-YYYY">
                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFecDocumento" name="txtFecDocumento" readonly>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 form-group">

                            <label for="txtDepto">N° Folio</label>
                            <input type="text" class="form-control" id="txtFolio" name="txtFolio" placeholder="22134" required="required">
                        </div>
                    </div>

                </div>

            </fieldset>

        </div>

        <div class="row contenedor-principal container-fluid">


            <div class="col-lg-12 contenedor1">

                <div class="row">
                    <div class="col-lg-6">
                        <input type="button" class="btn btn-success" value="Agregar" />
                    </div>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>N° Producto</th>
                            <th>Descripcion</th>
                            <th>Cantidad</th>
                            <th>Precio por Unidad</th>
                            <th>% Descuento</th>
                            <th>Precio tras el Descuento</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>101010</td>
                            <td>Silla</td>
                            <td>1</td>
                            <td>10000</td>
                            <td>0</td>
                            <td>10000</td>
                            <td>10000</td>
                        </tr>
                        <tr>
                            <td>101010</td>
                            <td>Silla</td>
                            <td>1</td>
                            <td>10000</td>
                            <td>0</td>
                            <td>10000</td>
                            <td>10000</td>
                        </tr>
                        <tr>
                            <td>101010</td>
                            <td>Silla</td>
                            <td>1</td>
                            <td>10000</td>
                            <td>0</td>
                            <td>10000</td>
                            <td>10000</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>

        <div class="row contenedor-principal container-fluid">


            <div class="col-lg-12 contenedor1">

                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-12  form-group">

                            <label for="txtEmpleado">Empleado de Ventas</label>
                            <input id="txtEmpleado" name="txtEmpleado" class="form-control" required="required" />
                        </div>
                        <div class="col-lg-12 form-group">

                            <label for="txtComentario">Comentarios</label>
                            <textarea id="txtComentario" name="txtComentario" class="form-control" required="required" rows="5"></textarea>



                        </div>

                    </div>
                </div>
                <div class="col-lg-offset-4 col-lg-4">

                    <div class="row col-lg-12  form-group">

                        <label for="txtTotalAntesDescuento">Total antes del descuento</label>
                        <input id="txtTotalAntesDescuento" name="txtTotalAntesDescuento" class="form-control" readonly="true" />
                    </div>
                    <div class="row col-lg-12  form-group">

                        <label for="txtDescuento">Descuento %</label>
                        <input id="txtDescuento" name="txtDescuento" class="form-control" />
                    </div>
                    <div class="row col-lg-12 form-group">

                        <label for="txtImpuesto">Impuesto</label>
                        <input id="txtImpuesto" name="txtImpuesto" class="form-control" readonly="true" />
                    </div>
                    <div class="row col-lg-12 form-group">

                        <label for="txtTotal">Total</label>
                        <input id="txtTotal" name="txtTotal" class="form-control" readonly="true" />
                    </div>


                </div>
                <div class="row">
                    <div class="col-lg-12 form-group">
                        <%--<input type="button" class="btn btn-success" value="Registrar" />--%>
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphicon-floppy-disk"></span> Crear 
                        </button>
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphicon-credit-card"></span> Medio de Pago
                        </button>
                    </div>
                </div>

            </div>


        </div>
    </div>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/prettify.js"></script>
    <script src="js/knockout-2.3.0.js"></script>


    <script src="js/moment-datepicker.js"></script>
    <script src="js/moment-datepicker-ko.js"></script>

    <script src="js/site.js"></script>
</body>
</html>
