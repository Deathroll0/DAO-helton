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
                <center><h1>Menu Cliente</h1></center>
        </div>
            <blockquote>
                Ingrese rut del cliente a modificar
            </blockquote>
            <div class="col-sm-5">
        <form action="buscarModificarCliente.do" method="post">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Rut:</td>
                    <td><input type="text" name="txtRut" placeholder="Ingrese rut"></td>
                </tr>
            </table>
            <input type="submit" value="Buscar" class="btn btn-success"><br>
            <br><a href="index.jsp"> Volver</a>

        </form>                
                </div>
        </div>
    </body>
</html>
