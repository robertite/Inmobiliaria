<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name='viewport' content='width=device-width initial-scale=1'>
    <meta name='mobile-web-app-capable' content='yes'>
    <link rel='stylesheet' href='css/bootstrap.min.css'>
    <link rel='stylesheet' href='css/estilos.css'>
    <title>Blog De Música</title>
</head>
<body class="blog-body">

    <div class="container">
        <div class="row header">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <img src="img/logo.jpg" class="logo-img">
            </div>


        </div>
        <div class="row menu">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">

                    <ul class="nav navbar-nav list-inline text-center">
                        <li class="active"><a href="Default.aspx">Inicio</a></li>
                        <li><a href="Cliente.aspx">Cliente</a></li>
                        <li><a href="Producto.aspx">Producto</a></li>
                        <li><a href="Venta.aspx">Venta</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.aspx">Ingresar</a></li>
                    </ul>
                </div>
            </nav>

        </div>
        <div class="row contenedor-principal">
            <div class="container">
                <div class="jumbotron">
                    <h1>Muebles Oliva</h1>
                    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
                </div>
                <p>This is some text.</p>
                <p>This is another text.</p>
            </div>
        </div>
</body>
</html>
