<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name='viewport' content='width=device-width initial-scale=1' />
    <meta name='mobile-web-app-capable' content='yes' />
    <link rel='stylesheet' href='css/bootstrap.min.css' />
    <link rel='stylesheet' href='css/estilos.css' />

    <title>Inmobiliaria</title>
</head>
<body class="blog-body">

    <div class="container">
        <div class="row header">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <img src="img/logo.jpg" class="logo-img" />
            </div>


        </div>
        <form id="form" data-toggle="validator">
            <div class="row contenedor-principal container-fluid col-lg-6">


                <fieldset>
                    <legend>Iniciar Sesión</legend>

                    <div class="form-group">
                        <label for="txtEmail">Direccion Email</label>
                        <input type="email" class="form-control" id="txtEmail" name="txtEmail" aria-describedby="smallUser" placeholder="Enter email"
                            data-error="Ingresa un email Válido" required="required" />
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <input type="password" class="form-control" id="txtPassword" name="txtPassword" aria-describedby="smallPassword" placeholder="Password" 
                               data-error="Ingresa contraseña" required ="required"/>
                         <div class="help-block with-errors"></div>
                    </div>
                    <input type="button" class="btn btn-success" value="Entrar" onclick="GetLogin();"/>
                </fieldset>
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


    <script src="js/Login.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/jquery.serializejson.js"></script>
    <script src="js/jquery.json-2.2.min.js"></script>
    <script src="js/loading.js"></script>
</body>
</html>
