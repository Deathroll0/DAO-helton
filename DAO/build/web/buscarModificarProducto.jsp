
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container"> 
            <div class="page-header">
                <center><h1>Menu Producto</h1></center>
        </div>
            <blockquote>
                Ingrese codigo del producto a modificar
            </blockquote>
            <div class="col-sm-5">
          <form action="buscarModificarProducto.do" method="post">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Codigo:</td>
                    <td><input type="text" name="txtCodigo" placeholder="Ingrese codigo"></td>
                </tr>
            </table>
            <input type="submit" value="Buscar" class="btn btn-success"><br>
            <br><a href="index.jsp"> Volver</a>
            <br
        </form>
    </body>
</html>
