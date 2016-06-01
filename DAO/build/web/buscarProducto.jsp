
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <center><h1>Menu Producto</h1></center>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <blockquote>
                        Ingrese Codigo a buscar
                    </blockquote>      
                </div>
                  <div class="col-sm-5">
       <form action="buscarProducto.do" method="post" >
            <table class="table table-bordered table-responsive table-hover">
                <tr>
                    <td>Codigo:</td>
                    <td><input type="text" name="txtCodigo"></td>
                </tr>
            </table>
            <input type="submit" value="Buscar" class="btn btn-success"><br>
            <br><a href="index.jsp"> Volver</a>
            </div>
        </form>
            </div>
    </body>
</html>
