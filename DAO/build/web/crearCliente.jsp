
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cliente</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <center><h1>Menu Cliente</h1></center>     
           </div>
                <div class="row">
                    <div class="col-sm-8">  
            
            <blockquote>
                Ingrese los datos del cliente
            </blockquote>
            </div> 
                    <div class="col-sm-5"> 
        <form action="crearCliente.do" method="post">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Rut</td>
                    <td><input type="text" name="txtRut" placeholder="Ingrese rut del cliente"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="txtNombre" placeholder="Ingrese nombre del cliente"/></td>
                </tr>
                <tr>
                    <td>Edad </td>
                    <td><input type="text" name="txtEdad" placeholder="Ingrese edad del cliente"/></td>
                </tr>
            </table>   
            <input type="submit" value="Crear" class="btn btn-success"/><br><br><br>
            <a href="index.jsp">Volver</a>
        
        </form>
                </div>     
            </div>
        </div>
    </body>
</html>
