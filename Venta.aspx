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

    <title>Muebles Oliva</title>


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
                        <li><a href="CreditoSimple.aspx">Credito Simple</a></li>
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

                <fieldset>
                    <legend>Nota de Venta</legend>
                    <div class="col-lg-4 contenedor1">

                        <div class="row">

                            <div class="col-lg-12 form-group">

                                <label for="txtRut">Rut</label>
                                <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" oninput="checkRut(this)" onblur="GetClienteByRut()" placeholder="19234231-4" data-error="Ingrese Rut" />
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


                            <label class="radio-inline">
                                <input class="form-check-input control_txt" type="radio" name="cmbTipoDocto" id="cmbFactura" value="optFactura" onchange="updateDocTotal()">
                                Factura
                            </label>

                            <label class="radio-inline">
                                <input class="form-check-input control_txt" checked="checked" type="radio" name="cmbTipoDocto" id="cmbBoleta" value="optBoleta" onchange="updateDocTotal()">
                                Boleta
                            </label>

                        </div>

                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <label for="txtCalle">N° Interno</label>
                                <input type="text" class="form-control " id="txtNumInterno" name="txtNumInterno" placeholder="22312">
                            </div>
                            <div class="col-lg-6 form-group">
                                <label for="cmbEstado">Estado</label>
                                <select id="cmbEstado" class="form-control control_cmb" name="cmbEstado">
                                    <option selected value="O">Abierto</option>
                                    <option value="C">Cerrado</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <label for="txtFechaDocto">Fecha Documento</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFechaDocto" name="txtFechaDocto" class="form-control control_txt">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>
                            </div>



                            <div class="col-lg-6 form-group">

                                <label for="txtFolio">N° Folio</label>
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

                            <button type="button" class="btn btn-success control_btn" onclick="CargarProductos();" id="btnAddProduct">
                                <span class="glyphicon glyphicon-plus-sign"></span>Agregar 
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <table class="table table-hover" id="tblProductoVenta">
                            <thead>
                                <tr>
                                    <th class="col-lg-1">ID</th>
                                    <th class="col-lg-4">DESC</th>
                                    <th class="col-lg-1">CANTIDAD</th>
                                    <th class="col-lg-2">PRECIO</th>
                                    <th class="col-lg-2">TOTAL</th>
                                    <th class="col-lg-1">SEL</th>
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
                                    <select id="cmbSucursal" class="form-control control_cmb" name="cmbSucursal" disabled="disabled" required="required" data-error="Seleccione Sucursal">
                                        <option value="0">Seleccione...</option>

                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-12 form-group">

                                <label for="txtComentario">Comentarios</label>
                                <textarea id="txtComentario" name="txtComentario" class="form-control control_txt" rows="5"></textarea>



                            </div>

                        </div>
                    </div>
                    <div class="col-lg-offset-4 col-lg-4">

                        <div class="row col-lg-12  form-group">

                            <label for="txtTotalAntesDescuento">Total antes del descuento</label>
                            <input id="txtTotalAntesDescuento" name="txtTotalAntesDescuento" class="form-control" readonly="true" value="0" />
                        </div>

                        <div class="row">
                            <div class="col-lg-5 form-group">
                                <label for="txtPorcDescuento">% desc</label>
                                <input id="txtPorcDescuento" type="number" name="txtPorcDescuento" class="form-control control_txt" onblur="totalDescuento();" value="0" />
                            </div>
                            <div class="col-lg-6 form-group">
                                <label for="txtDescuento">Descuento</label>
                                <input id="txtDescuento" type="number" name="txtDescuento" readonly="true" class="form-control" value="0" />
                            </div>
                        </div>

                        <div class="row col-lg-12 form-group">

                            <label for="txtImpuesto">Impuesto</label>
                            <input id="txtImpuesto" name="txtImpuesto" class="form-control" readonly="true" value="0" />
                        </div>
                        <div class="row col-lg-12 form-group">

                            <label for="txtTotal">Total</label>
                            <input id="txtTotal" name="txtTotal" class="form-control" readonly="true" value="0" />
                        </div>


                    </div>
                    <div class="row col-lg-12 form-group">

                        <button type="button" class="btn btn-success" onclick="GetByParams();" id="btnBuscar">
                            <span class="glyphicon glyphicon-search"></span>Buscar 
                        </button>

                        <button type="button" class="btn btn-success control_btn" onclick="Insert()" id="btnInsert">
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
                        <form id="formMedioPago">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="chequeTab">
                                    <div class="row">
                                        <div class="col-lg-3">

                                            <div class="form-group">
                                                <label for="txtNumeroCheque">N° Cheque</label>
                                                <input type="number" class="form-control control_txt" id="txtNumeroCheque" name="txtNumeroCheque" required="required">
                                            </div>
                                        </div>
                                        <div class="col-lg-3 ">

                                            <div class="form-group">
                                                <label for="txtFechaDocumentoCH">Fecha Documento</label>
                                                <div class="input-group date datepicker" data-provide="datepicker">
                                                    <input class="form-control control_txt" type="text" size="16" id="txtFechaDocumentoCH" name="txtFechaDocumentoCH" readonly="true">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">

                                            <div class="form-group">
                                                <label for="txtImporteCH">Importe</label>
                                                <input type="number" class="form-control control_txt" id="txtImporteCH" name="txtImporteCH" placeholder="20000" required="required">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">


                                            <div class="form-group">
                                                <label for="cmbBancoCH">Banco</label>
                                                <select id="cmbBancoCH" class="form-control cmbBanco control_cmb" name="cmbBancoCH" required="required">
                                                </select>
                                            </div>

                                        </div>

                                    </div>

                                    <button type="button" class="btn btn-success save control_txt" onclick="AddCheque();">Agregar Cheque</button>
                                    <table class="table table-hover form-group" id="tblCheque">
                                        <thead>
                                            <tr>
                                                <th>N° Cheque</th>
                                                <th>Fecha Venc.</th>
                                                <th>Importe</th>
                                                <th>Banco</th>
                                                <th></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>

                                    <div class="col-lg-4">

                                        <div class="form-group">
                                            <label for="txtImporteTotalCH">Importe Total</label>
                                            <input type="text" class="form-control" id="txtImporteTotalCH" name="txtImporteTotalCH" value="0" readonly="true">
                                        </div>
                                    </div>

                                </div>

                                <div role="tabpanel" class="tab-pane" id="transferenciaTab">
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtFechaTR">Fecha</label>
                                                <div class="input-group date datepicker" data-provide="datepicker">
                                                    <input class="form-control control_txt" type="text" size="16" id="txtFechaTR" name="txtFechaTR" readonly="true">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtImporteTR">Importe</label>
                                                <input type="number" class="form-control control_txt" id="txtImporteTR" name="txtImporteTR" value="0" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="cmbBancoTR">Banco</label>
                                                <select id="cmbBancoTR" class="form-control cmbBanco control_cmb" name="cmbBancoTR" required="required">
                                                    <option selected>Seleccione...</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtNumTransaccionTR">N° Transaccion</label>
                                                <input type="number" class="form-control control_txt" id="txtNumTransaccionTR" name="txtNumTransaccionTR" placeholder="120000" required="required">
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
                                                    <input type='text' class="form-control control_txt" readonly="true" id="txtFechaCS" name="txtFechaCS" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="txtNumeroCuotaCS">N° Cuotas</label>
                                                <input type="number" class="form-control control_txt" id="txtNumeroCuotaCS" value="0" name="txtNumeroCuotaCS" max="2" onblur="CalcularCuotaCS();" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtImporteCS">Importe</label>
                                                <input type="number" class="form-control control_txt" id="txtImporteCS" name="txtImporteCS" onblur="CalcularCuotaCS();" value="0" required="required">
                                            </div>
                                        </div>
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtCuotaPagadaCS">N° Cuotas Pagadas</label>
                                                <input type="number" class="form-control" id="txtCuotaPagadaCS" value="0" readonly="true" name="txtCuotaPagadaCS" max="2" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtMontoCuotaCS">Monto Por Cuota</label>
                                                <input type="number" class="form-control" id="txtMontoCuotaCS" readonly="true" name="txtMontoCuotaCS" value="0" max="2" required="required">
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
                                                    <input type='text' class="form-control control_txt" readonly="true" id="txtFechaEF" name="txtFechaEF" />
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
                                                <input type="number" class="form-control control_txt" id="txtImporteEF" value="0" name="txtImporteEF" required="required">
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
                                                    <input class="form-control control_txt" type="text" size="16" id="txtFechaTC" name="txtFechaTC" readonly="true">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtNumCuotaTC">N° Cuotas</label>
                                                <input type="number" class="form-control control_txt" id="txtNumCuotaTC" name="txtNumCuotaTC" placeholder="12345678" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtImporteTC">Importe</label>
                                                <input type="number" class="form-control control_txt" id="txtImporteTC" value="0" name="txtImporteTC" placeholder="20000" required="required">
                                            </div>
                                        </div>
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtNumTransaccionTC">N° Transaccion</label>
                                                <input type="number" class="form-control control_txt" id="txtNumTransaccionTC" name="txtNumTransaccionTC" placeholder="12345678" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="cmbBancoTC">Banco</label>
                                                <select id="cmbBancoTC" class="form-control cmbBanco control_cmb" name="cmbBancoTC" required="required">
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
                                                    <input class="form-control control_txt" type="text" size="16" id="txtFechaTD" name="txtFechaTD" readonly="true">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">

                                                <div class="form-group">
                                                    <label for="txtNumTransaccionTD">N° Transaccion</label>
                                                    <input type="number" class="form-control control_txt" id="txtNumTransaccionTD" name="txtNumTransaccionTD" placeholder="12345678" required="required">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col-lg-4">
                                            <div class="form-group">
                                                <label for="txtImporteTD">Importe</label>
                                                <input type="number" class="form-control control_txt" id="txtImporteTD" name="txtImporteTD" value="0" placeholder="20000" required="required">
                                            </div>
                                        </div>
                                        <div class=" col-lg-4">
                                            <label for="cmbBancoTD">Banco</label>
                                            <select id="cmbBancoTD" class="form-control cmbBanco control_cmb" name="cmbBancoTD" required="required">
                                            </select>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </form>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal productos --%>
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
                                    <input type="text" class="form-control" id="txtBuscarProducto" name="txtBuscarProducto" placeholder="Ingrese el producto que desea Buscar...">
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                
                                 <table id="tblProductoLista" class="table table-striped form-group">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th >NOMBRE</th>
                                            <th >PRECIO</th>
                                            <th >STOCK</th>
                                            <th >SEL</th>
                                        </tr>
                                    </thead>
                                    <tbody class="buscarProducto"></tbody>
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




    <!--Modal Ventas Cabeceras-->
    <div class="modal fade" id="modalVentaCabecera" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="H2">Lista de Ventas</h4>
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
                                    <input id="Text1" type="text" class="form-control" placeholder="Ingrese el producto que desea Buscar...">
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <table id="tblVentaCabecera" class="table table-hover form-group">
                                    <thead>
                                        <tr>
                                            <th class="col-lg-2">N° Interno</th>
                                            <th class="col-lg-2">Rut</th>
                                            <th class="col-lg-3">Folio</th>
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




    <script src="js/Venta.js"></script>
    <%--<script src="js/Login.js"></script>--%>
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



<script type="text/javascript">
    $(document).ready(function () {
        (function ($) {
            $('#txtBuscarProducto').keyup(function () {
                var rex = new RegExp($(this).val(), 'i');
                $('.buscarProducto tr').hide();
                $('.buscarProducto tr').filter(function () {
                    return rex.test($(this).text());
                }).show();
            })
        }(jQuery));
    });
</script>
</html>
