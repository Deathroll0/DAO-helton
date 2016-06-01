
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
        <center><h1>Menu Cliente</h1></center>        
            </div>
            <blockquote>
                Ingrese el rut del cliente que desea eliminar
            </blockquote>
        <form action="eliminarCliente.do" method="post">
            <tr>
                <td>Rut:</td>
                <td><input type="text" name="txtRut"></td>
            </tr><br><br>
            <input type="submit" value="Eliminar" class="btn btn-success"><br>
            <br><a href="index.jsp"> Volver</a>       
        </form>
    </div>
        </body>
</html>
