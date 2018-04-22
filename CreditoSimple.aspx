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

    <form id="form1" runat="server">

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
            <div class="row contenedor-principal container-fluid">
                <div class="col-lg-5 contenedor1">
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
                                <input type="text" id="txtRut" name="txtRut" class="form-control" required="required" oninput="checkRut(this)" placeholder="19234231-4" data-error="Ingrese Rut" runat="server"/>
                                <div class="help-block with-errors"></div>
                            </div>

                        </div>

                        <div class="row">


                            <div class="col-lg-12 form-group">

                                <div class="form-group">
                                    <label for="txtNombre">Nombre</label>
                                    <input type="text" class="form-control control_txt" id="txtNombre" name="txtNombre" placeholder="alan brito" readonly="true" runat="server">
                                    <div class="help-block with-errors"></div>
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
                                    <input type="number" class="form-control control_txt" id="txtNumeroCuotas" name="txtNumeroCuotas" readonly="true" runat="server">
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
                                    <input type="number" class="form-control control_txt" id="txtMontoCuota" name="txtMontoCuota" readonly="true" runat="server">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtNumeroCredito">N° Credito</label>
                                    <input type="number" class="form-control control_txt" id="txtNumeroCredito" name="txtNumeroCredito" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class=" col-lg-6 form-group">
                                <label for="txtFecha">Fecha Credito</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFecha" name="txtFecha" class="form-control control_txt" readonly="true">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </fieldset>
                </div>
                <div class="col-lg-offset-1 col-lg-6 contenedor1">
                    <fieldset>
                        <legend>Cuotas Pagadas</legend>
                        <table class="table table-hover" id="tblCuota">
                            <thead>
                                <tr>
                                    <th class="col-lg-2">N° CUOTA </th>
                                    <th class="col-lg-2">FECHA PAGO</th>
                                    <th class="col-lg-2">FORMA PAGO</th>
                                    <th class="col-lg-2">Seleccionar</th>

                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                        <br />
                    </fieldset>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <button type="button" class="btn btn-success" onclick="GetByParams()">
                            <span class="glyphicon glyphicon-search"></span>Buscar 
                        </button>
                        <button type="button" class="btn btn-success control_btn" onclick="Panel_PagoCuota();">
                            <span class="glyphicon glyphicon-floppy-disk"></span>Pagar Cuota 
                        </button>
                        <button type="button" class="btn btn-success" onclick="limpiar();">
                            <span class="glyphicon glyphicon-trash"></span>Limpiar 
                        </button>

                        <%--<asp:Button ID="btn_Imprimir" Text="Imprimir Comprobante" runat="server" CssClass="btn btn-success" OnClick="btn_Imprimir_Click" />--%>
                    </div>
                </div>
            </div>
        </div>

        <%--Modal Pago Nueva Cuota--%>

        <div class="modal fade" id="modal_comprobante" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="H3">Comprobante de Pago Cuota</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtNumeroCuota">N° Cuota</label>
                                    <input type="number" class="form-control control_txt" id="txtNumeroCuota" name="txtNumeroCuota" readonly="true" >
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtRutCliente">Rut</label>
                                    <input type="text" class="form-control control_txt" id="txtRutCliente" name="txtRutCliente" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 form-group">
                                <div class="form-group">
                                    <label for="txtNombreCliente">Nombre</label>
                                    <input type="text" class="form-control control_txt" id="txtNombreCliente" name="txtNombreCliente" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="cmbFPComprobante">Forma de Pago</label>
                                    <select id="cmbFPComprobante" class="form-control control_cmb" name="cmbFPComprobante" disabled="disabled">
                                        <option value="0">SELECCIONE...</option>
                                        <option value="EF">EFECTIVO</option>
                                        <option value="TC">TARJETA CREDITO</option>
                                        <option value="TD">TARJETA DEBITO</option>
                                        <option value="CH">CHEQUE</option>
                                        <option value="TR">TRANSFERENCIA</option>
                                    </select>
                                </div>
                            </div>
                             <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtId">Codigo</label>
                                    <input type="text" class="form-control control_txt" id="txtId" name="txtId" readonly="true" runat="server">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>

                    <div class="row">
                        <table class="table table-hover" id="tblPagoCuota">
                            <thead>
                                <tr>
                                    <th>Cuota</th>
                                    <th>Descripcion</th>
                                    <th>Monto</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td id="txtCuota"></td>
                                    <td id="txtDescripcion"></td>
                                    <td id="txtMonto"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btn_Imprimir" Text="Imprimir Comprobante" runat="server" CssClass="btn btn-success" OnClick="btn_Imprimir_Click" />

                    </div>
                </div>
            </div>
        </div>

        <%--Modal Pago Nueva Cuota--%>

        <div class="modal fade" id="modal_PagoCuota" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="H1">Pago de Cuota</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="txtNumeroCuotaPagar">N° Cuota</label>
                                    <input type="number" class="form-control control_txt" id="txtNumeroCuotaPagar" name="txtNumeroCuotaPagar" readonly="true">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <div class="form-group">
                                    <label for="cmbFormaPago">Forma de Pago</label>
                                    <select id="cmbFormaPago" class="form-control control_cmb" name="cmbFormaPago">
                                        <option value="0">SELECCIONE...</option>
                                        <option value="EF">EFECTIVO</option>
                                        <option value="TC">TARJETA CREDITO</option>
                                        <option value="TD">TARJETA DEBITO</option>
                                        <option value="CH">CHEQUE</option>
                                        <option value="TR">TRANSFERENCIA</option>
                                    </select>
                                </div>
                            </div>
                            <div class=" col-lg-6 form-group">
                                <label for="txtFecha">Fecha Pago Cuota</label>
                                <div class="input-group date datepicker" data-provide="datepicker">

                                    <input type="text" id="txtFechaPagoCuota" name="txtFechaPagoCuota" class="form-control control_txt" readonly="true">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal" onclick="Pago_Insert()">Pagar Cuota</button>

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
                                    <table id="tblCreditoSimple" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="col-lg-2">N° Interno</th>
                                                <th class="col-lg-2">Fecha Solicitud</th>
                                                <th class="col-lg-2">Rut</th>
                                                <th class="col-lg-2">Nombre</th>
                                                <th class="col-lg-2">Total</th>
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
        <script src="js/moment.js"></script>

    </form>

</body>
</html>
