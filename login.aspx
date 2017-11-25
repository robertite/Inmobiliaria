<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name='viewport' content='width=device-width initial-scale=1' />
    <meta name='mobile-web-app-capable' content='yes' />
    <link rel='stylesheet' href='css/bootstrap.min.css' />
    <link rel='stylesheet' href='css/estilos.css' />
    <script src='js/bootstrap.min.js'></script>
    <title>Inmobiliaria</title>
</head>
<body class="blog-body">

    <div class="container">
        <div class="row header">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <img src="img/logo.jpg" class="logo-img" />
            </div>


        </div>
     
            <div class="row contenedor-principal container-fluid col-lg-6">

               
                    <fieldset>
                        <legend>Iniciar Sesión</legend>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Direccion Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="smallUser" placeholder="Enter email" required="required" />
                            <small id="smallUser" class="form-text text-muted">Ingrese su direccion email</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" aria-describedby="smallPassword" placeholder="Password" required="required" />
                            <small id="smallPassword" class="form-text text-muted">Ingrese Password</small>
                        </div>
                       <input type="button" class="btn btn-success" value="Entrar"/>
                    </fieldset>
                </div>


        


    </div>







</body>
</html>
