
<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver</title>
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
                        Usuario Encontrado
                    </blockquote>
                </div>
            
        
        <%
            clienteDTO c= (clienteDTO) request.getSession().getAttribute("myBuscarC");
        %>
        <div class="col-sm-5">
        <table class="table table-bordered table-responsive table-hover">
            <tr>
                <td>Rut:</td>
                <td><%out.print(c.getRut());%></td>
            </tr>
            <tr>
                <td>Nombre:</td>
                <td><%out.print(c.getNombre());%></td>
            </tr>
            <tr>
                <td>Edad:</td>
                <td><%out.print(c.getEdad());%></td>
            </tr>        

       </table>
                   <br> <a href="index.jsp"> Volver</a>
         </div>
            </div>
       </div>
    </body>
</html>
