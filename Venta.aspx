<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Venta.aspx.cs" Inherits="Venta" %>

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
    <title>Demo</title>
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
        <form id="form" data-toggle="validator">
            <div class="row contenedor-principal container-fluid">

                <fieldset>
                    <legend>Nota de Venta</legend>
                    <div class="col-lg-4 contenedor1">

                        <div class="row">

                            <div class="col-lg-12 form-group">

                                <label for="txtRut">Rut</label>
                                <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" oninput="checkRut(this)" placeholder="19234231-4" data-error="Ingrese Rut" />

                                <button class="pull-right  btn btn-success" type="button" onclick="GetByRut()">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                                <div class="help-block with-errors"></div>

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

                        <div class="row col-lg-12 radio">

                            <p></p>
                            <label class="radio-inline">
                                <input class="form-check-input " type="radio" name="cmbTipoDocto" id="cmbFactura" value="optFactura" onchange="updateDocTotal()">
                                Factura
                            </label>

                            <label class="radio-inline">
                                <input class="form-check-input" checked="checked" type="radio" name="cmbTipoDocto" id="cmbBoleta" value="optBoleta" onchange="updateDocTotal()">
                                Boleta
                            </label>

                        </div>

                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <label for="txtCalle">N° Interno</label>
                                <input type="text" class="form-control" id="txtNumInterno" name="txtNumInterno" placeholder="22312">
                                <button class="pull-right  btn btn-success" type="button">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
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

                            <div class="col-lg-6 form-group">
                                <label for="txtFechaDocto">Fecha Documento</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFechaDocto" name="txtFechaDocto" class="form-control">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>
                            </div>



                            <div class="col-lg-6 form-group">

                                <label for="txtDepto">N° Folio</label>
                                <input type="text" class="form-control" id="txtFolio" name="txtFolio" placeholder="22134" required="required" data-error="Ingrese N° Folio">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>

                    </div>

                </fieldset>

            </div>

            <div class="row contenedor-principal container-fluid">


                <div class="col-lg-12 contenedor1">

                    <div class="row">
                        <div class="col-lg-6">

                            <button type="button" class="btn btn-success" onclick="CargarProductos();">
                                <span class="glyphicon glyphicon-plus-sign"></span>Agregar 
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <table class="table table-hover" id="tblProductoVenta">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>DESC</th>
                                    <th class="col-lg-2">CANTIDAD</th>
                                    <th>PRECIO</th>
                                    <th>TOTAL</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row contenedor-principal container-fluid">


                <div class="col-lg-12 contenedor1">

                    <div class="col-lg-4">
                        <div class="row">
                            <div class="col-lg-12  form-group">

                                <div class="form-group">
                                    <label for="cmbSucursal">Sucursal</label>
                                    <select id="cmbSucursal" class="form-control" name="cmbSucursal" required="required" data-error="Seleccione Sucursal">
                                        <option value="0">Seleccione...</option>

                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-12 form-group">

                                <label for="txtComentario">Comentarios</label>
                                <textarea id="txtComentario" name="txtComentario" class="form-control" rows="5"></textarea>



                            </div>

                        </div>
                    </div>
                    <div class="col-lg-offset-4 col-lg-4">

                        <div class="row col-lg-12  form-group">

                            <label for="txtTotalAntesImpuesto">Total antes de Impuesto</label>
                            <input id="txtTotalAntesImpuesto" name="txtTotalAntesImpuesto" class="form-control" readonly="true" value="0" />
                        </div>


                        <div class="row col-lg-12 form-group">

                            <label for="txtImpuesto">Impuesto</label>
                            <input id="txtImpuesto" name="txtImpuesto" class="form-control" readonly="true" value="0" />
                        </div>
                        <div class="row col-lg-12 form-group">

                            <label for="txtTotal">Total</label>
                            <input id="txtTotal" name="txtTotal" class="form-control" readonly="true" value="0" />
                        </div>

                        <div class="row col-lg-12 form-group">

                            <button type="submit" class="btn btn-success">
                                <span class="glyphicon glyphicon-floppy-disk"></span>Registrar 
                            </button>

                            <button type="reset" class="btn btn-success" onclick="limpiar();">
                                <span class="glyphicon glyphicon-trash"></span>Limpiar 
                            </button>

                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#MedioDePagoModal">
                                <span class="glyphicon glyphicon-credit-card"></span>Pago
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>


    <div class="modal" id="MedioDePagoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header" aria-hidden="true">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>

                    </button>
                    <h4 class="modal-title" id="myModalLabel">Medios de Pago</h4>

                </div>
                <div class="modal-body">
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#chequeTab" aria-controls="chequeTab" role="tab" data-toggle="tab">Cheque</a>

                            </li>
                            <li role="presentation"><a href="#transferenciaTab" aria-controls="transferenciaTab" role="tab" data-toggle="tab">Transferencia</a>

                            </li>
                            <li role="presentation"><a href="#creditoSimpleTab" aria-controls="creditoSimpleTab" role="tab" data-toggle="tab">Credito Simple</a>

                            </li>
                            <li role="presentation"><a href="#efectivoTab" aria-controls="efectivoTab" role="tab" data-toggle="tab">Efectivo</a>

                            </li>
                            <li role="presentation"><a href="#tarjetaCreditoTab" aria-controls="tarjetaCreditoTab" role="tab" data-toggle="tab">Tarjeta Credito</a>

                            </li>
                            <li role="presentation"><a href="#tarjetaDebitoTab" aria-controls="tarjetaDebitoTab" role="tab" data-toggle="tab">Tarjeta Debito</a>

                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="chequeTab">
                                <div class="row">
                                    <div class="col-lg-3 ">

                                        <div class="form-group">
                                            <label for="txtFechaDocumentoCH">Fecha Documento</label>
                                            <div class="input-group date datepicker" data-provide="datepicker">
                                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFechaDocumentoCH" placeholder="12-02-2017" name="txtFechaDocumentoCH" readonly="true">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">

                                        <div class="form-group">
                                            <label for="txtImporte">Importe</label>
                                            <input type="number" class="form-control" id="txtImporte" name="txtImporte" placeholder="20000" required="required">
                                        </div>
                                    </div>
                                    <div class="col-lg-3">


                                        <div class="form-group">
                                            <label for="cmbBancoChe">Banco</label>
                                            <select id="cmbBancoChe" class="form-control" name="cmbBancoChe" required="required">
                                                <option selected>Seleccione...</option>
                                                <option>Banco de Chile</option>
                                                <option>Banco Santander</option>
                                                <option>Banco Estado</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-lg-3">

                                        <div class="form-group">
                                            <label for="txtNumeroCheque">N° Cheque</label>
                                            <input type="number" class="form-control" id="txtNumeroCheque" name="txtNumeroCheque" placeholder="223024" required="required">
                                        </div>
                                    </div>
                                </div>

                                <button type="button" class="btn btn-success save">Agregar Cheque</button>
                                <table class="table table-hover form-group">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Fecha Venc.</th>
                                            <th>Importe</th>
                                            <th>Banco</th>
                                            <th>N° Cheque</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>10-12-2017</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010209</td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>10-01-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010210</td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>10-02-2018</td>
                                            <td>200000</td>
                                            <td>Banco Chile</td>
                                            <td>20010211</td>

                                        </tr>
                                    </tbody>
                                </table>

                                <div class="col-lg-4">

                                    <div class="form-group">
                                        <label for="txtImporteTotal">Importe Total</label>
                                        <input type="text" class="form-control" id="txtImporteTotal" name="txtImporteTotal" placeholder="600000" readonly="true">
                                    </div>
                                </div>

                            </div>

                            <div role="tabpanel" class="tab-pane" id="transferenciaTab">
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtFechaTR">Fecha</label>
                                            <div class="input-group date datepicker" data-provide="datepicker">
                                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFechaTR" placeholder="12-02-2017" name="txtFechaTR" readonly="true">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtImporteTR">Importe</label>
                                            <input type="number" class="form-control" id="txtImporteTR" name="txtImporteTR" placeholder="20000" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="cmbBancoTR">Banco</label>
                                            <select id="cmbBancoTR" class="form-control" name="cmbBancoTR" required="required">
                                                <option selected>Seleccione...</option>
                                                <option>Banco de Chile</option>
                                                <option>Banco Santander</option>
                                                <option>Banco Estado</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtNumTransaccionTR">N° Transaccion</label>
                                            <input type="number" class="form-control" id="txtNumTransaccionTR" name="txtNumTransaccionTR" placeholder="120000" required="required">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane" id="creditoSimpleTab">
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtFechaCS">Fecha</label>
                                            <div class="input-group date datepicker" data-provide="datepicker">
                                                <input type='text' class="form-control" readonly="true" id="txtFechaCS" name="txtFechaCS" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="txtNumeroCuota">N° Cuotas</label>
                                            <input type="number" class="form-control" id="txtNumeroCuota" name="txtNumeroCuota" max="2" placeholder="12" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtImporteCS">Importe</label>
                                            <input type="number" class="form-control" id="txtImporteCS" name="txtImporteCS" placeholder="120000" required="required">
                                        </div>
                                    </div>
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtCuotaPagadaCS">N° Cuotas Pagadas</label>
                                            <input type="number" class="form-control" id="txtCuotaPagadaCS" name="txtCuotaPagadaCS" max="2" placeholder="2" required="required">
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div role="tabpanel" class="tab-pane" id="efectivoTab">
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtFechaEF">Fecha</label>
                                           <div class="input-group date datepicker" data-provide="datepicker">
                                                <input type='text' class="form-control" readonly="true" id="txtFechaEF" name="txtFechaEF" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtImporteEF">Importe</label>
                                            <input type="number" class="form-control" id="txtImporteEF" name="txtImporteEF" placeholder="120000" required="required">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tarjetaCreditoTab">
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtFechaTC">Fecha</label>
                                           <div class="input-group date datepicker" data-provide="datepicker">
                                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFechaTC" placeholder="12-02-2017" name="txtFechaTC" readonly="true">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtNumCuotasTC">N° Cuotas</label>
                                            <input type="number" class="form-control" id="txtNumCuotaTC" name="txtNumCuotaTC" placeholder="12345678" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtImporteTC">Importe</label>
                                            <input type="number" class="form-control" id="txtImporteTC" name="txtImporteTC" placeholder="20000" required="required">
                                        </div>
                                    </div>
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtNumTransaccionTC">N° Transaccion</label>
                                            <input type="number" class="form-control" id="txtNumTransaccionTC" name="txtNumTransaccionTC" placeholder="12345678" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="cmbBancoTC">Banco</label>
                                            <select id="cmbBancoTC" class="form-control" name="cmbBancoTC" required="required">
                                                <option selected>Seleccione...</option>
                                                <option>Banco de Chile</option>
                                                <option>Banco Santander</option>
                                                <option>Banco Estado</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div role="tabpanel" class="tab-pane" id="tarjetaDebitoTab">
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtFechaTD">Fecha</label>
                                            <div class="input-group date datepicker" data-provide="datepicker">
                                                <input class="form-control" type="text" size="16" value="25-11-2017" id="txtFechaTD" placeholder="12-02-2017" name="txtFechaTD" readonly="true">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">

                                            <div class="form-group">
                                                <label for="txtNumTransaccionTD">N° Transaccion</label>
                                                <input type="number" class="form-control" id="txtNumTransaccionTD" name="txtNumTransaccionTD" placeholder="12345678" required="required">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" col-lg-4">
                                        <div class="form-group">
                                            <label for="txtImporteTD">Importe</label>
                                            <input type="number" class="form-control" id="txtImporteTD" name="txtImporteTD" placeholder="20000" required="required">
                                        </div>
                                    </div>
                                    <div class=" col-lg-4">
                                        <label for="cmbBancoTD">Banco</label>
                                        <select id="cmbBancoTD" class="form-control" name="cmbBancoTD" required="required">
                                            <option selected>Seleccione...</option>
                                            <option>Banco de Chile</option>
                                            <option>Banco Santander</option>
                                            <option>Banco Estado</option>
                                        </select>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        <button type="button" class="btn btn-success save">Registrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalProductos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="H1">Lista de Productos</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="lista-productos">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon">Buscar</span>
                                    <input id="filtrar" type="text" class="form-control" placeholder="Ingrese el producto que desea Buscar...">
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <table id="tblProductoLista" class="table table-hover form-group">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>NOMBRE</th>
                                            <th>PRECIO</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody class="buscar"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
                    <%--  <button type="button" class="btn btn-success save">Agregar</button>--%>
                </div>
            </div>
        </div>
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

    <script src="js/Venta.js"></script>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/jquery.serializejson.js"></script>
    <script src="js/jquery.json-2.2.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/locales/bootstrap-datepicker.es.min.js"></script>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        (function ($) {
            $('#filtrar').keyup(function () {
                var rex = new RegExp($(this).val(), 'i');
                $('.buscar tr').hide();
                $('.buscar tr').filter(function () {
                    return rex.test($(this).text());
                }).show();
            })
        }(jQuery));
    });
</script>
<%--<script type="text/javascript">

        $(function () {
            $('.input-group.date').datetimepicker();
            //$('#dp4').datetimepicker({ 
            //    format: "dd-mm-yyyy",
            ////    lang: 'es',
            ////    scrollMonth: true,

            //});



        });
    </script>--%>
</html>
