

<%@page import="dto.clienteDTO"%>
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
                Complete los datos
            </blockquote>
            <div class="col-sm-5">
        <form action="modificarCliente.do" method="post">  
            <%
                clienteDTO c=(clienteDTO) request.getSession().getAttribute("myModificarC");
            %>
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Rut: </td>
                    <td><input type="text" name="txtRut" value="<%out.print(c.getRut());%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td> <input type="text" name="txtNombre" value="<%out.print(c.getNombre());%>"></td>
                </tr>
                <tr>
                    <td>Edad:</td>
                    <td><input type="text" name="txtEdad" value="<%out.print(c.getEdad());%>"></td>
                </tr>
            </table>       
            <input type="submit" values="Modificar" class="btn btn-success"><br>
            <a href="index.jsp"> Volver</a>
        </form>
                </div>
    </div>
        </body>
</html>
