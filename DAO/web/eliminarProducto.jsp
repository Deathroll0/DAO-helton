

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar producto</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
         <div class="container">
            <div class="page-header">
        <center><h1>Menu Producto</h1></center>        
            </div>
            <blockquote>
                Ingrese el Codigo del producto que desea eliminar
            </blockquote>
       <form action="eliminarProducto.do" method="post">
            <tr>
                <td>Codigo:</td>
                <td><input type="text" name="txtCodigo" placeholder="Ingrese Codigo"></td>
            </tr><br><br>
            <input type="submit" value="Eliminar" class="btn btn-success"><br>
            <br><a href="index.jsp"> Volver</a>
        </form>
         </div>
    </body>
</html>
