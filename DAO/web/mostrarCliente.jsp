
<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver</title>
    </head>
    <body>
        <%
            clienteDTO c= (clienteDTO) request.getSession().getAttribute("myBuscarC");
        %>
        Rut:<%out.print(c.getRut());%><br>
        Nombre:<%out.print(c.getNombre());%><br>
        Edad:<%out.print(c.getEdad());%><br>
       <br> <a href="index.jsp"> Volver</a>
    </body>
</html>
